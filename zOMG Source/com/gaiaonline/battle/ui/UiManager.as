package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.ApplicationInterfaces.IFileVersionManager;
   import com.gaiaonline.battle.ApplicationInterfaces.IGatewayFactory;
   import com.gaiaonline.battle.ApplicationInterfaces.ILinkManager;
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.ConColors;
   import com.gaiaonline.battle.ConfigManager;
   import com.gaiaonline.battle.GST;
   import com.gaiaonline.battle.GlobalTexts;
   import com.gaiaonline.battle.ItemManager.ConsumableItemManager;
   import com.gaiaonline.battle.ItemManager.ItemManager;
   import com.gaiaonline.battle.ItemManager.ItemManagerEvent;
   import com.gaiaonline.battle.ItemManager.RingItemManager;
   import com.gaiaonline.battle.ItemManager.RingItemManagerCustomization;
   import com.gaiaonline.battle.StepLoader;
   import com.gaiaonline.battle.emotes.EmoteManagerOld;
   import com.gaiaonline.battle.gateway.BattleEvent;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.gateway.BattleMessage;
   import com.gaiaonline.battle.map.MapFiles;
   import com.gaiaonline.battle.moduleManagers.RegisteredClasses;
   import com.gaiaonline.battle.newactors.ActorManager;
   import com.gaiaonline.battle.newactors.BaseActor;
   import com.gaiaonline.battle.newcollectibles.CollectiblesLoadManager;
   import com.gaiaonline.battle.newcollectibles.CollectiblesManager;
   import com.gaiaonline.battle.newghibuffs.GhiBuffsLoadManager;
   import com.gaiaonline.battle.newghibuffs.GhiManager;
   import com.gaiaonline.battle.preloader.PreloaderProgress;
   import com.gaiaonline.battle.ui.UiGeneric.UiGenericButtonMenu;
   import com.gaiaonline.battle.ui.battlewin.BattleWin;
   import com.gaiaonline.battle.ui.dialogBox.UiDialogBox;
   import com.gaiaonline.battle.ui.events.ActionBarEvent;
   import com.gaiaonline.battle.ui.events.TrackingEvent;
   import com.gaiaonline.battle.ui.events.UiEvents;
   import com.gaiaonline.battle.ui.helpPanel.UiHelpTextPanel;
   import com.gaiaonline.battle.ui.musicplayer.MPEvents;
   import com.gaiaonline.battle.ui.optionPanel.UiOptionPanel;
   import com.gaiaonline.battle.ui.uiactionbar.Menu;
   import com.gaiaonline.battle.ui.uiactionbar.UiActionBar;
   import com.gaiaonline.battle.ui.uiactionbar.UiItemBar;
   import com.gaiaonline.battle.ui.uiitemdisplay.ItemDisplay;
   import com.gaiaonline.battle.userinput.ChatManager;
   import com.gaiaonline.battle.userinput.MouseIcon;
   import com.gaiaonline.battle.userinput.UiMouseIcons;
   import com.gaiaonline.battle.userinput.UserInput;
   import com.gaiaonline.battle.utils.BattleUtils;
   import com.gaiaonline.containers.GameWindowManager;
   import com.gaiaonline.containers.GameWindowSettings;
   import com.gaiaonline.containers.IGameWindowFactory;
   import com.gaiaonline.display.windows.Window;
   import com.gaiaonline.display.wordbubble.BubbleEvent;
   import com.gaiaonline.events.ProgressEventManager;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.flexModulesAPIs.minimap.IMinimapContainer;
   import com.gaiaonline.flexModulesAPIs.shopWidget.IShopWidget;
   import com.gaiaonline.flexModulesAPIs.shopWidget.IShopWidgetEventHandler;
   import com.gaiaonline.flexModulesAPIs.shopWidget.ShopConstants;
   import com.gaiaonline.flexModulesAPIs.uiChooser.IUiChooser;
   import com.gaiaonline.objectPool.LoaderFactory;
   import com.gaiaonline.platform.gateway.IActorRelocateHandler;
   import com.gaiaonline.platform.map.IMapFiles;
   import com.gaiaonline.platform.map.IMapFilesLoadHandler;
   import com.gaiaonline.platform.map.MapFilesFactory;
   import com.gaiaonline.usersettings.UserSettings;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import com.gaiaonline.utils.FrameTimer;
   import com.gaiaonline.utils.Outputter;
   import com.gaiaonline.utils.VisManagerSingleParent;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IEventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TextEvent;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   
   public class UiManager extends EventDispatcher implements IShopWidgetEventHandler, IAsyncCreationHandler, IActorRelocateHandler, IMapFilesLoadHandler, IEmoteEventHandler, IRegisterHandler
   {
      
      public static const UI_LOADED:String = "UiLoaded";
       
      
      private var allowSitStand:Boolean = true;
      
      private var _uiFramework:IUIFramework = null;
      
      private var _configManager:ConfigManager;
      
      private var bar:IShopWidgetEventHandler;
      
      private var _conColors:ConColors = null;
      
      private var hbSound:Sound;
      
      private var collectiblesManager:CollectiblesManager;
      
      private var winDialog;
      
      private var _gatewayFactory:IGatewayFactory = null;
      
      public var youAreDazed:UiYouAreDazed;
      
      private var _gst:GST = null;
      
      private var _placeholderWidgets:Object;
      
      private var _disableDialogDuringMovie:Boolean = false;
      
      public var uiSwapOrbs:UiSwapOrbs;
      
      private var _minimap:DisplayObject = null;
      
      private var _minimapManager:MiniMapManager;
      
      private var _isLoadedExternally:Boolean = false;
      
      private var _winMapResizeTimer:FrameTimer;
      
      private var preloader:PreloaderProgress;
      
      private var _mapFilesLoaded:Boolean = false;
      
      private var lastEmote:uint = 0;
      
      private var _uiTesterWindow:DisplayObjectContainer;
      
      private var _uiTesterInstance:DisplayObject = null;
      
      private var sitStandTimer:Timer;
      
      public var miniMusicPlayer:MovieClip;
      
      private var _linkManager:ILinkManager = null;
      
      private var _selectedActorId:String = null;
      
      private var _useCaptcha:Boolean = false;
      
      private var _uiManager2Loaded:Boolean = false;
      
      private var _flexShopWidgetLayer:DisplayObjectContainer;
      
      private var _gbms:Dictionary;
      
      private var _flexUIManager:IFlexUiManager;
      
      private var winMoviePlayer;
      
      public var ghiBuffsManager:GhiManager;
      
      private var _shopWidgetPending:Boolean = false;
      
      private var winInventory;
      
      private var mapMouseDown:Boolean = false;
      
      private var _emoteManager:EmoteManagerOld = null;
      
      private var _windowFactory:IGameWindowFactory;
      
      private var _centerPrintMap:Object = null;
      
      public var recrewtPanel:UiRecrewt;
      
      private var _gateway:BattleGateway = null;
      
      public var ringInventory:UiRingInventory;
      
      private var winPDAPanel;
      
      private var _uiLoaded:Boolean = false;
      
      private var wslHelpDialog:DialogWindow;
      
      public var chatMode:int = 2;
      
      public var recipePanel:UiRecipes;
      
      private var dialogClick:Boolean = false;
      
      private var winAbuseReport;
      
      private var _uiState:WidgetOpenStates;
      
      public var winUiSwapOrbs:Window;
      
      public var worldTimerManager:WorldTimerManager = null;
      
      public var backImg:UiBackImg;
      
      public var musicPlayer:UiMusicPlayer;
      
      private var _firstMapLoad:Boolean = true;
      
      public var mcBaseWinLayer:Sprite;
      
      private var _mapIsSliding:Boolean = false;
      
      private var dummyLayer:MovieClip;
      
      public var pdaWidget:UiPDA;
      
      private var timerGuest:Timer = null;
      
      public var dialogPanel:UiDialogBox;
      
      public const HIGH:uint = 2;
      
      private var _moduleManager:Array;
      
      private const SIT_STAND_DELAY_TIME:Number = 3000.0;
      
      private var isCharging:Boolean = false;
      
      private var _moveDir:Number = -1000;
      
      public var linksPanel:UiLinksPanel;
      
      private var _actorManager:ActorManager = null;
      
      public var actionBar:UiActionBar;
      
      public var inventoryPanel:UiInventory;
      
      private var _defaultKeys:Object = null;
      
      private var _selectedActor:BaseActor = null;
      
      public var showSpawners:Boolean = false;
      
      private var _shopWidgetInstance:DisplayObject = null;
      
      private var _cachedRegistrationWidgetLoader:RegistrationWidgetLoader = null;
      
      private var _pendingMinimap:Boolean = false;
      
      public var playerStats:Object;
      
      public var worldCounterManager:WorldCounterManager = null;
      
      private var uiCoreLoader:Loader = null;
      
      private var playSoundSoundTransform:SoundTransform;
      
      private var uiManager2Loader:Loader = null;
      
      private var membersOnlyMessageWindow;
      
      private var _progressManager:ProgressEventManager;
      
      private var _partnerId:String = null;
      
      private var mcWinLayer:Sprite;
      
      public var optionPanel:UiOptionPanel;
      
      private var welcomeMessageWindow;
      
      private var winRegister:Window;
      
      private var hbChannel:SoundChannel;
      
      public var mouseIcon:MouseIcon = null;
      
      private var winHelpPanel;
      
      private var winYouAreDazed;
      
      private var winLinksPanel;
      
      private var _keys:Object = null;
      
      private var _showShopCallout:Boolean = false;
      
      private var _shopWidgetWarning:UiAcceptDecline = null;
      
      private var errLayer:Sprite;
      
      private var _userSettings:UserSettings = null;
      
      private var _fileVersionManager:IFileVersionManager = null;
      
      public var uiMoviePlayer:UiMoviePlayer;
      
      private var winRecrewtPanel;
      
      public var mcLoadLayer:Sprite;
      
      private var _uiTesterController:UiTesterController = null;
      
      private var _soundMap:Object = null;
      
      private var _chatController:ChatController = null;
      
      public const LOW:uint = 0;
      
      private var _uiTesterInitiated:Boolean = false;
      
      private var _haveCalloutData:Boolean = false;
      
      private var _gCash:Number = 0;
      
      public var cancelServerHelp:Boolean = false;
      
      public var helpPanel:UiHelpTextPanel;
      
      private var _userLayoutInited:Boolean = false;
      
      private var hbType:String = "none";
      
      private var _backImgDisplayObjectAttacher:VisManagerSingleParent = null;
      
      public var uiAbuseReport:UiAbuseReport;
      
      private var winFrameRate;
      
      public const MEDIUM:uint = 1;
      
      private var winOption;
      
      private var _configManger:ConfigManager;
      
      public var mcDragLayer:Sprite;
      
      private var _allowRingUse:Boolean = true;
      
      public var loadScreenDone:Boolean = false;
      
      private var _windowManager:GameWindowManager;
      
      private const ALWAYS_SHOW_SHOP_CALLOUT:Boolean = false;
      
      private var _flexWinLayer:DisplayObjectContainer;
      
      public var winMap:BattleWin;
      
      public var mcToolTipLayer:Sprite;
      
      public var frameRate:FrameRate;
      
      private var winMusicPlayer;
      
      private var adminPanel:UiAdminPanel;
      
      private var _minimapWindow:DisplayObjectContainer = null;
      
      public function UiManager(gatewayFactory:IGatewayFactory, uiFramework:IUIFramework, linkManager:ILinkManager, gst:GST, fileVersionManager:IFileVersionManager, userSettings:UserSettings, emoteManager:EmoteManagerOld, actorManager:ActorManager, flexUIManager:IFlexUiManager, gameWindowFactory:IGameWindowFactory, partnerId:String, isLoadedExternally:Boolean, useCaptcha:Boolean, flexShopWidgetLayer:DisplayObjectContainer, mcBaseWinLayer:Sprite, mcWinLayer:Sprite, flexWinLayer:DisplayObjectContainer, mcDragLayer:Sprite, mcLoadLayer:Sprite, mcToolTipLayer:Sprite, dummyLayer:MovieClip, errLayer:Sprite, progressManager:ProgressEventManager)
      {
         _moduleManager = [];
         _placeholderWidgets = {};
         _configManger = ConfigManager.getInstance();
         playerStats = {};
         _uiState = new WidgetOpenStates();
         _winMapResizeTimer = new FrameTimer(onWinMapResizeLater);
         sitStandTimer = new Timer(SIT_STAND_DELAY_TIME,1);
         playSoundSoundTransform = new SoundTransform();
         _gbms = new Dictionary(true);
         super();
         this._configManager = ConfigManager.getInstance();
         this._gatewayFactory = gatewayFactory;
         this._gateway = gatewayFactory.battleGateway;
         this._uiFramework = uiFramework;
         this._linkManager = linkManager;
         this._gst = gst;
         this._fileVersionManager = fileVersionManager;
         this._partnerId = partnerId;
         this._useCaptcha = useCaptcha;
         this._isLoadedExternally = isLoadedExternally;
         this._userSettings = userSettings;
         this._emoteManager = emoteManager;
         this._actorManager = actorManager;
         this._flexUIManager = flexUIManager;
         this._flexWinLayer = flexWinLayer;
         this._flexShopWidgetLayer = flexShopWidgetLayer;
         this._windowFactory = gameWindowFactory;
         this.mcBaseWinLayer = mcBaseWinLayer;
         this.mcWinLayer = mcWinLayer;
         this.mcLoadLayer = mcLoadLayer;
         this.mcDragLayer = mcDragLayer;
         this.mcToolTipLayer = mcToolTipLayer;
         this.dummyLayer = dummyLayer;
         this.errLayer = errLayer;
         this._conColors = ConColors.getInstance();
         this._windowManager = new GameWindowManager(flexWinLayer.stage,userSettings);
         DialogWindowFactory.setTypeMappings({
            DialogWindowTypes.ERROR.toString():this.errLayer,
            DialogWindowTypes.LOADING.toString():this.mcLoadLayer,
            DialogWindowTypes.NORMAL.toString():this.mcWinLayer
         });
         this.mcBaseWinLayer.visible = false;
         this.mcWinLayer.visible = false;
         this._flexShopWidgetLayer.visible = false;
         this._flexWinLayer.visible = false;
         this.mcWinLayer.mouseEnabled = false;
         this._flexWinLayer.mouseEnabled = false;
         this.mcBaseWinLayer.stage.showDefaultContextMenu = false;
         this.mouseIcon = new MouseIcon(this._uiFramework);
         this._gateway.addEventListener(BattleEvent.CHAT_EMOTE,onChatEmote,false,0,true);
         _gateway.registerForRelocationEvents(this);
         this._gateway.addEventListener(BattleEvent.ACTOR_LEAVE,onActorLeave,false,0,true);
         this._progressManager = progressManager;
         this._progressManager.addEventListener(ProgressEvent.PROGRESS,onProgress);
         this._progressManager.addEventListener(Event.COMPLETE,onProgressComplete);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MOVE_DIR_CHANGED,onMoveDirChanged);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.DEFAULT_KEY_BINDINGS_LOADED,onDefaultKeyBindingsLoaded);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.KEY_BINDINGS_LOADED,onKeyBindingsLoaded);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.USER_LEVEL_SET,onUserLevelSet);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.ALLOW_SIT_STAND,onAllowSitStand);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_DONE,onMapDone);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_WARP_IN_TRANSITION_START,onMapWarpInTransitionStart);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.CLEAR_SELECTED_TARGET,onClearSelectedTarget);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.ALERT,onAlertEvent);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.PROFILE_REQUESTED,onProfileRequested);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.CUSTOMIZE_AVATAR_REQUESTED,onCustomizeAvatarRequested);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,BubbleEvent.BUBBLE_MOUSE_DOWN,onDialogClick);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_LOAD_ZONE,onLoadZone);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_MOUSE_UP,onMapMouseUp);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_MOUSE_DOWN,onMapMouseDown);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.PLAYER_STATUS_CHANGED,onPlayerStatusChanged);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.ACTOR_SELECTED,onSetSelectedTarget);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.INVALID_GUEST_OPERATION,onInvalidGuestOperation);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.GST_LOADED,onGstLoaded);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.QUESTS_LOADED,onQuestsLoaded);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.WORLD_TIMER_UPDATE,onWorldTimerUpdate);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.WORLD_BROADCAST,onWorldBroadcast);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.WORLD_COUNTER_UPDATE,onWorldCounterUpdate);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.WIDGET_SHOW,onWidgetShow);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.DIALOG_DONE,onDialogDone);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.DIALOG_CLOSE,onDialogClose);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.LINK_CLICKED,onLinkClicked);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.PLAYER_STATS_REQUESTED,onPlayerStatsRequested);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.REPORT_ABUSE,onReportAbuse);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.ABUSE_REPORT_START,onAbuseReportStart);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.TEXT_BASED_UI_COMMAND,onTextBasedUICommand);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.DIALOG_DATA_UPDATED,onDialogDataUpdated);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.GCASH_UPDATE,onGCashUpdated);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_SOUND_LOAD_START,onMapSoundLoadStart);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_LOAD_START,onMapLoadStart);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_DEPENDENCIES_LOAD_START,onMapDependenciesLoadStart);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_SERVER_ZONE_PROGRESS,onMapServerZoneProgress);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_SLIDE_START,onMapSlideStart);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_SLIDE_COMPLETE,onMapSlideComplete);
         DisplayObjectUtils.addWeakListener(this._gateway,BattleEvent.UI_BUTTON_MENU,onUiButtonMenu);
         DisplayObjectUtils.addWeakListener(this._gateway,BattleEvent.UI_BUTTON_MENU_REMOVE,onUiButtonMenuRemove);
      }
      
      public static function formatConLevel(conLevel:Number) : String
      {
         var conLevelRounder:Number = conLevel * 10;
         conLevelRounder = Math.round(conLevelRounder);
         conLevelRounder = conLevelRounder / 10;
         var conLevelText:* = String(conLevelRounder);
         if(conLevelText.indexOf(".") == -1)
         {
            conLevelText = conLevelText + ".0";
         }
         return conLevelText;
      }
      
      private static function createMapDisplay(ttm:ToolTipOld) : UiMapDisplay
      {
         var m:UiMapDisplay = new UiMapDisplay();
         m.init(ttm);
         m.autoCenter = true;
         m.autoCenter = false;
         return m;
      }
      
      private function initUserLayout() : void
      {
         if(_userLayoutInited)
         {
            return;
         }
         if(this.winPDAPanel)
         {
            this.winPDAPanel.savePosition = true;
            this.winPDAPanel.saveSize = true;
            this.winPDAPanel.setDefaultPos(0,0,"Full");
            this.winPDAPanel.setDefaultPos(0,0,"Normal");
            this.winPDAPanel.setDefaultSize(217,275,"Normal");
            this.winPDAPanel.setDefaultSize(217,275,"Full");
         }
         if(this.winDialog)
         {
            this.winDialog.setDefaultPos(350,395,"Full");
            this.winDialog.setDefaultPos(350,395,"Normal");
         }
         this.resetDefautlSetting("Full");
         this.openLocalMiniMap();
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.CHAT_PANE_OPEN,{
            "leadingText":null,
            "setFocus":false
         }));
         if(this._userSettings != null && this._uiFramework.loadUi)
         {
            if(this.winMap)
            {
               this._userSettings.addSetting("battleWin",this.winMap);
            }
            if(this.actionBar)
            {
               this._userSettings.addSetting("actionBar",this.actionBar);
            }
            if(this.winInventory)
            {
               this._userSettings.addSetting("ringInventory",this.winInventory);
            }
            if(this.winOption)
            {
               this._userSettings.addSetting("winOptions",this.winOption);
            }
            if(this.winDialog)
            {
               this._userSettings.addSetting("winDialog",this.winDialog);
            }
            if(this.winPDAPanel)
            {
               this._userSettings.addSetting("PDA",this.winPDAPanel);
            }
         }
         _userLayoutInited = true;
      }
      
      private function closeWindow(w:DisplayObject) : void
      {
         if(this._flexWinLayer.contains(w))
         {
            this._flexWinLayer.removeChild(w);
         }
      }
      
      private function showCalloutsToNewFeatures() : void
      {
         if(_haveCalloutData)
         {
            if(_showShopCallout)
            {
               this.showShopCallout(true);
            }
         }
         else
         {
            this.getCallOutSettings();
         }
      }
      
      private function onPDAClose(evt:Event) : void
      {
         closePDAWidget();
      }
      
      private function onMapSlideStart(event:GlobalEvent) : void
      {
         _mapIsSliding = true;
      }
      
      private function onStopCharging(e:GlobalEvent) : void
      {
         this.isCharging = false;
      }
      
      private function initCenterPrintMap() : void
      {
         this._centerPrintMap = new Object();
         this._centerPrintMap[AlertTypes.YOU_ARE_DAZED_CANT_DO_THAT.toString()] = new CenterPrintData(GlobalTexts.getYoureDazeYouCantDoThatCenterPrint);
         this._centerPrintMap[AlertTypes.YOU_ARE_TOO_FAR.toString()] = new CenterPrintData(GlobalTexts.getYouAreTooFarCenterPrint);
         this._centerPrintMap[AlertTypes.RECIPE_FOUND.toString()] = new CenterPrintData(GlobalTexts.getRecipeFoundCenterPrint,CenterPrintMsg.RECIPE_TYPE);
         this._centerPrintMap[AlertTypes.POWER_UP_FOUND.toString()] = new CenterPrintData(GlobalTexts.getPowerUpFoundCenterPrint,CenterPrintMsg.CONSUMABLE_TYPE);
         this._centerPrintMap[AlertTypes.POWER_UP_PURCHASED.toString()] = new CenterPrintData(GlobalTexts.getPowerUpPurchasedCenterPrint,CenterPrintMsg.CONSUMABLE_TYPE);
         this._centerPrintMap[AlertTypes.QUEST_UPDATE.toString()] = new CenterPrintData(GlobalTexts.getQuestUpdateFoundCenterPrint);
         this._centerPrintMap[AlertTypes.RING_GRANTED.toString()] = new CenterPrintData(GlobalTexts.getNewRingCenterPrint,CenterPrintMsg.RING_TYPE);
      }
      
      private function onGstLoaded(evt:GlobalEvent) : void
      {
         GlobalEvent.eventDispatcher.removeEventListener(GlobalEvent.GST_LOADED,onGstLoaded);
         if(this.pdaWidget)
         {
            this.pdaWidget.loadQuest();
         }
         else
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.PLAYER_INFO_LOADED,{}));
         }
      }
      
      private function getNewDialogBox() : UiDialogBox
      {
         return new UiDialogBox();
      }
      
      private function onRingCancelCharge(evt:ItemManagerEvent) : void
      {
         this.stopCharging();
      }
      
      private function onMapDone(e:GlobalEvent) : void
      {
         initUserLayout();
         this.mouseIcon.reset();
         var isNullChamber:Boolean = e.data.isNullChamber;
         if(this.isInventoryOpen())
         {
            this.showRingUpgrade(isNullChamber);
         }
         RingItemManager.getInstance().allowUnEquip = isNullChamber;
         if(!isNullChamber)
         {
            this.setCLCapVisible(false);
            this.closeUiSwapOrbs();
         }
      }
      
      private function onDialogDone(evt:Event) : void
      {
         if(isWindowOpen(this.winDialog))
         {
            closeWindow(this.winDialog);
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.DIALOG_OPEN_STATUS_CHANGED,{"open":false}));
         }
      }
      
      private function getMusicPlayer() : UiMusicPlayer
      {
         return new UiMusicPlayer(this._gateway,this._uiFramework,this._linkManager.baseURL);
      }
      
      private function onMusicPlayerClose(evt:Event) : void
      {
         this.setMinimizedMPVisible(false);
         this.setFullMPVisible(false);
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MUSIC_PLAYER_STATE_CHANGED,{"state":"closed"}));
      }
      
      private function onErrPopUpClose(e:Event) : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.REFRESH_PAGE,{}));
      }
      
      private function openDialog() : void
      {
         if(!isWindowOpen(this.winDialog))
         {
            openWindow(this.winDialog);
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.DIALOG_OPEN_STATUS_CHANGED,{"open":true}));
         }
      }
      
      private function loadUiManager() : void
      {
         var uiCoreVersion:String = "?v=" + this._fileVersionManager.getClientVersion("ui/uicore.swf");
         uiCoreLoader = LoaderFactory.getInstance().checkOut();
         uiCoreLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,onUiCoreComplete,false,0,true);
         uiCoreLoader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,onLoadProgress,false,0,true);
         uiCoreLoader.load(new URLRequest(this._linkManager.baseURL + "ui/uicore.swf" + uiCoreVersion),this._uiFramework.loaderContextFactory.getLoaderContext());
         var mapFiles:IMapFiles = new MapFiles();
         MapFilesFactory.getInstance().mapFiles = mapFiles;
         mapFiles.registerForLoadEvents(this);
         mapFiles.load(this._linkManager.baseURL + "spaces/" + this._linkManager.spaceName + "/");
      }
      
      private function onTeamUpdated(e:GlobalEvent) : void
      {
         var data:Object = e.data;
         if(data.wasTeamLeader != null && data.wasTeamLeader && !data.isTeamLeader)
         {
            this.closeRecrewt(null);
         }
      }
      
      private function onWinMapResize(e:Event) : void
      {
         this._winMapResizeTimer.startPerFrame(1,1);
      }
      
      private function closeDialogBox() : void
      {
         this.onDialogDone(null);
         if(this.dialogPanel)
         {
            this.dialogPanel.endConv(null);
         }
      }
      
      private function onCustomizeAvatarRequested(e:GlobalEvent) : void
      {
         if(ActorManager.getInstance().myActor.isGuestUser())
         {
            showMembersOnlyMessage();
         }
         var baseUrl:String = this._linkManager.getLink("launch_customize");
         navigateToURL(new URLRequest(baseUrl + e.data.actorId),"_blank");
      }
      
      private function onKeyBindingsLoaded(e:GlobalEvent) : void
      {
         this._keys = e.data.keys;
         this.createOptionPanel();
      }
      
      private function onLogout(e:TimerEvent) : void
      {
         logout();
      }
      
      private function onLfmCallBack(evt:BattleEvent) : void
      {
         var playerList:Array = null;
         var ringList:Object = null;
         var res:Object = null;
         var pi:int = 0;
         var user:Object = null;
         var ri:int = 0;
         var ring:Object = null;
         var obj:Object = new Object();
         obj.userCon = _actorManager.myActor.getSuppressedCL();
         obj.userId = ActorManager.getInstance().myActor.actorId;
         obj.isLeader = ActorManager.getInstance().myActor.isTeamLeader;
         obj.isInGroup = ActorManager.getInstance().myActor.teamList.length > 1;
         obj.usersList = new Array();
         for(var i:int = 0; i < evt.battleMessage.responseObj.length; i++)
         {
            res = evt.battleMessage.responseObj[i];
            playerList = res.connedPlayerList;
            ringList = res.connedRingMap;
         }
         if(playerList)
         {
            for(pi = 0; pi < playerList.length; pi++)
            {
               user = new Object();
               user.userId = playerList[pi].id;
               user.username = playerList[pi].name;
               user.con = playerList[pi].conValueKey;
               user.totalCharge = playerList[pi].totalCharge;
               user.rings = new Array();
               for(ri = 0; ri < playerList[pi].connedPlayerRingIDList.length; ri++)
               {
                  if(ringList[playerList[pi].connedPlayerRingIDList[ri]] != null)
                  {
                     ring = new Object();
                     ring.ringId = ringList[playerList[pi].connedPlayerRingIDList[ri]].rid;
                     ring.image = ringList[playerList[pi].connedPlayerRingIDList[ri]].ringIcon;
                     ring.ringName = ringList[playerList[pi].connedPlayerRingIDList[ri]].ringName;
                     try
                     {
                        ring.chargeLevel = playerList[pi].kConnedPlayerRingCLListKey[ri];
                     }
                     catch(e:Error)
                     {
                        trace("Catched error if CL is not included in server list");
                     }
                     user.rings.push(ring);
                  }
               }
               obj.usersList.push(user);
            }
         }
         this.recrewtPanel.refresh(obj);
         BattleMessage(evt.target).removeEventListener(BattleEvent.CALL_BACK,onLfmCallBack);
      }
      
      private function onPaperDollCallBack(evt:BattleEvent) : void
      {
         var rObj:Object = null;
         if(evt.battleMessage.tag != null && evt.battleMessage.responseObj != null)
         {
            rObj = evt.battleMessage.responseObj[0];
            rObj.tag = evt.battleMessage.tag;
            evt.battleMessage.tag = null;
            rObj.accuracy = rObj.accuracyStat.baseStat + rObj.accuracyStat.passiveStat + rObj.accuracyStat.activeStat;
            rObj.luck = rObj.luckStat.baseStat + rObj.luckStat.passiveStat + rObj.luckStat.activeStat;
            rObj.dodge = rObj.dodgeStat.baseStat + rObj.dodgeStat.passiveStat + rObj.dodgeStat.activeStat;
            rObj.willpower = rObj.willpowerStat.baseStat + rObj.willpowerStat.passiveStat + rObj.willpowerStat.activeStat;
            rObj.speed = rObj.speedStat.baseStat + rObj.speedStat.passiveStat + rObj.speedStat.activeStat;
            rObj.weight = rObj.weightStat.baseStat + rObj.weightStat.passiveStat + rObj.weightStat.activeStat;
            rObj.health = rObj.healthStat.baseStat + rObj.healthStat.passiveStat + rObj.healthStat.activeStat;
            rObj.regen = rObj.regenStat.baseStat;
            rObj.exhaustionRegen = rObj.exhaustionRegenStat.baseStat;
            rObj.suppressedCL = int(rObj.suppressedCL) / int(10);
            processPaperDollCallBackObj(rObj);
         }
      }
      
      private function onMapMouseUp(evt:MouseEvent) : void
      {
         var x:Number = NaN;
         var y:Number = NaN;
         if(this.mapMouseDown && this.mouseIcon.actorTarget == 0 && !this.mouseIcon.isTalkIcon && !this.dialogClick && !_mapIsSliding && !this.mouseIcon.isLink && !this.mouseIcon.isEnvObj)
         {
            x = evt.localX;
            y = evt.localY;
            if(this._moveDir == UserInput.NULL_MOVEDIR)
            {
               _actorManager.myActor.moveTo(x,y);
            }
         }
         this.dialogClick = false;
         this.mapMouseDown = false;
      }
      
      private function onAllowSitStand(e:GlobalEvent) : void
      {
         this.allowSitStand = e.data.allow;
         if(allowSitStand)
         {
            sitStandTimer.stop();
         }
      }
      
      public function playMovie(url:String, width:int = 100, height:int = 100, xPos:int = -1, yPos:int = -1, hideNpcDialog:Boolean = false) : void
      {
         var mapSize:Object = null;
         if(this.uiMoviePlayer == null)
         {
            this.uiMoviePlayer = new UiMoviePlayer(this._uiFramework.volumes);
         }
         if(this.winMoviePlayer == null)
         {
            this.winMoviePlayer = this._windowFactory.createLegacyZomgWindow(this._linkManager.baseURL + this._configManger.genericWindowUrl,this.uiMoviePlayer,true,false,true,false,width,height,width,height,false,false,this._uiFramework.loaderContextFactory);
         }
         DisplayObjectUtils.addWeakListener(this.uiMoviePlayer,UiMoviePlayer.MOVIE_DONE,onMovieDone);
         DisplayObjectUtils.addWeakListener(this.winMoviePlayer,"CLOSE",onMovieDone);
         url.replace("[space]","spaces/" + this._linkManager.spaceName);
         this.uiMoviePlayer.playMovie(url,width,height);
         openWindow(this.winMoviePlayer);
         if(xPos < 0 || yPos < 0)
         {
            mapSize = this.winMap.getSize();
            if(xPos < 0)
            {
               xPos = mapSize.width / 2 - width / 2;
            }
            if(yPos < 0)
            {
               yPos = mapSize.height / 2 - height / 2;
            }
         }
         this.winMoviePlayer.x = this.winMap.x + xPos;
         this.winMoviePlayer.y = this.winMap.y + yPos;
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MAP_SET_DIALOG_BUTTON_VISIBLE,{"visible":!this._disableDialogDuringMovie}));
      }
      
      private function onMapMouseDown(evt:MouseEvent) : void
      {
         this.mapMouseDown = true;
         this.clearFocus();
      }
      
      public function closeUiSwapOrbs() : void
      {
         if(this.winUiSwapOrbs && this.mcDragLayer.contains(this.winUiSwapOrbs))
         {
            this.mcDragLayer.removeChild(this.winUiSwapOrbs);
            this.ringInventory.ringUpgrade.uiSwapOrbsOpen = false;
            this.ringInventory.ringUpgrade.refresh();
            this.uiSwapOrbs.clear();
         }
      }
      
      private function setLfgFlag(v:Boolean) : void
      {
         var msg:BattleMessage = new BattleMessage("lookingForGroup",{"boolean":v});
         this._gateway.sendMsg(msg);
      }
      
      private function onLfgInvite(evt:UiEvents) : void
      {
         ActorManager.getInstance().myActor.inviteUser(String(evt.userId),String(evt.value));
      }
      
      private function closeGameHelp() : void
      {
         if(isWindowOpen(this.winHelpPanel))
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.GENERIC_CLOSE}));
            closeWindow(this.winHelpPanel);
         }
      }
      
      public function stopCharging() : int
      {
         if(this.actionBar)
         {
            return this.actionBar.stopCharging();
         }
         return 0;
      }
      
      private function onVerifyPromptClose(evt:Event = null) : void
      {
         closeWindow(this.winRegister);
         this.winRegister = null;
      }
      
      private function onPlayerStatusChanged(e:GlobalEvent) : void
      {
         var data:Object = e.data;
         var fxn:Function = null;
         switch(data.status)
         {
            case "ktfo":
               fxn = !!data.play?this.openYouAreDazed:this.closeYouAreDazed;
         }
         if(fxn != null)
         {
            fxn();
         }
      }
      
      private function onMapLoadStart(event:GlobalEvent) : void
      {
      }
      
      private function onOptionPanelClose(evt:Event) : void
      {
         if(isWindowOpen(this.winOption))
         {
            this.optionPanel.onOptionPanelClose();
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.GENERIC_CLOSE}));
            closeWindow(this.winOption);
         }
      }
      
      private function onLFGFlagChange(evt:BattleEvent) : void
      {
         if(evt.battleMessage.responseObj[0].boolean != null && _actorManager.myActor != null)
         {
            _actorManager.myActor.isLfg = evt.battleMessage.responseObj[0].boolean;
            if(this.recrewtPanel)
            {
               this.recrewtPanel.setLFG(_actorManager.myActor.isLfg);
            }
         }
      }
      
      public function openRecipesInventory() : void
      {
         openInventory(UiInventory.TAB_RECIPES);
      }
      
      private function onLoadZone(e:GlobalEvent) : void
      {
         this.setUiBackImgVisible(true);
      }
      
      private function onLoadProgress(evt:ProgressEvent) : void
      {
         initPreloader();
         if(evt.bytesLoaded < evt.bytesTotal)
         {
            if(evt.bytesLoaded <= 0)
            {
               this.preloader.setPer(0);
            }
            else
            {
               this.preloader.setPer(evt.bytesLoaded / evt.bytesTotal * 100);
            }
         }
      }
      
      public function loadChatFilterSettings() : void
      {
         var msg:BattleMessage = new BattleMessage("getNkvp",{"keys":["shoutFilter","crewFilter","talkFilter","clanFilter"]});
         msg.addEventListener(BattleEvent.CALL_BACK,onChatFiltersLoaded);
         this._gateway.sendMsg(msg);
      }
      
      private function onServerListHelpLink(e:TextEvent) : void
      {
         var footer:SvrHelpFooter = null;
         var cmd:String = e.text.split(":")[0];
         switch(cmd.toLowerCase())
         {
            case "close":
               footer = this.wslHelpDialog.footer as SvrHelpFooter;
               if(footer != null && footer.checked)
               {
                  this.cancelServerHelp = true;
               }
         }
      }
      
      private function initZomg() : void
      {
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.START_CHARGING,onStartCharging);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.STOP_CHARGING,onStopCharging);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.ALLOW_RING_USE,onAllowRingUse);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.COLLECTIBLES_LOADED,onCollectiblesLoaded);
         this.initActionBar();
         if(this.actionBar)
         {
            this.mcBaseWinLayer.addChild(this.actionBar);
         }
         if(this._uiFramework.loadUi)
         {
            this.inventoryPanel = new UiInventory(this._uiFramework,this._gateway,this._linkManager);
            this.inventoryPanel.addEventListener(UiInventory.TAB_CHANGE,onInventoryTabChange,false,0,true);
            this.ringInventory = this.inventoryPanel.uiRingInventory;
            this.ringInventory.ringUpgrade.addEventListener(UiEvents.RING_UPGRADE,onInventoryRingUpgrade,false,0,true);
            this.ringInventory.ringUpgrade.addEventListener(UiEvents.RING_SALVAGE,onInventoryRingSalvage,false,0,true);
            this.ringInventory.ringUpgrade.addEventListener(UiEvents.OPEN_UI_SWAP_ORBS,onInventorySwapOrbsClick,false,0,true);
            this.winInventory = this._windowFactory.createLegacyZomgWindow(this._linkManager.baseURL + this._configManger.genericWindowUrl,this.inventoryPanel,true,false,true,false,556,248,475,238,false,false,this._uiFramework.loaderContextFactory);
            this.winInventory.useMask(false);
            this.winInventory.saveSize = false;
            this.winInventory.setSize(475,238);
            this.winInventory.addEventListener("CLOSE",closeInventory,false,0,true);
            this.recrewtPanel = new UiRecrewt(this._uiFramework);
            this.recrewtPanel.init(new Object());
            this.recrewtPanel.addEventListener("LFGClick",onLfgFlagClick,false,0,true);
            this.recrewtPanel.addEventListener(UiEvents.ML_INVITE,onLfgInvite,false,0,true);
            this.recrewtPanel.addEventListener(UiEvents.LFG_REFRESH,onLfgRefresh,false,0,true);
            this.winRecrewtPanel = this._windowFactory.createLegacyZomgWindow(this._linkManager.baseURL + this._configManger.genericWindowUrl,this.recrewtPanel,true,false,true,false,475,340,475,340,false,false,this._uiFramework.loaderContextFactory);
            this.winRecrewtPanel.addEventListener("CLOSE",closeRecrewt,false,0,true);
            this._minimapManager = new MiniMapManager(this._gateway,this._uiFramework);
            this.pdaWidget = new UiPDA(this._uiFramework,this._gateway,this._minimapManager);
            this.winPDAPanel = this._windowFactory.createLegacyZomgWindow(this._linkManager.baseURL + this._configManger.genericWindowUrl,this.pdaWidget,true,true,true,false,500,500,190,190,false,false,this._uiFramework.loaderContextFactory);
            this.winPDAPanel.useMask(false);
            this.winPDAPanel.name = "PDAWidget";
            this.winPDAPanel.addEventListener("CLOSE",onPDAClose,false,0,true);
            this.pdaWidget.init(this.winPDAPanel);
            this.pdaWidget.addEventListener("DPA_RECREWT_CLICK",openRecrewt,false,0,true);
            this.youAreDazed = this.getNewYouAreDazed();
            this.winYouAreDazed = this._windowFactory.createLegacyZomgWindow(this._linkManager.baseURL + this._configManger.genericWindowUrl,this.youAreDazed,true,false,false,false,156,40,156,40,false,false,this._uiFramework.loaderContextFactory);
            this.youAreDazed.addEventListener("GOTO",onYouAreDazeGotoClick,false,0,true);
            this.uiSwapOrbs = new UiSwapOrbs();
            this.uiSwapOrbs.init(this._gateway,this._uiFramework,this._linkManager);
            this.winUiSwapOrbs = new Window(this._linkManager.baseURL + this._configManger.genericWindowUrl,this.uiSwapOrbs,true,false,true,false,172,160,172,160,false,false,this._uiFramework.loaderContextFactory);
            this.winUiSwapOrbs.addEventListener("CLOSE",onUiSwapOrbsClose,false,0,true);
            this.uiSwapOrbs.addEventListener(Event.CLOSE,onUiSwapOrbsClose,false,0,true);
            this.helpPanel = this.getHelpTextPanel();
            this.winHelpPanel = this._windowFactory.createLegacyZomgWindow(this._linkManager.baseURL + this._configManger.genericWindowUrl,this.helpPanel,true,false,true,false,746,443,746,443,false,true,this._uiFramework.loaderContextFactory);
            this.winHelpPanel.addEventListener("CLOSE",onGameHelpClose,false,0,true);
            GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.SET_BACK_ALLEY_BARGAINS_SHOW_STATE,this.onShopWidgetOpenStateChanged,false,0,true);
         }
         this.initItemManagers();
         this._gateway.addEventListener(BattleEvent.LFG_FLAG,onLFGFlagChange,false,0,true);
         this._gateway.addEventListener(BattleEvent.GRANT_RING,onGrantRing,false,0,true);
         this._gateway.addEventListener(BattleEvent.GHI_LADDER_ADVANCE,onGhiLadderAdvance,false,0,true);
         this._gateway.addEventListener(BattleEvent.INVENTORY_INFO,onGameItemsInv,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.INVENTORY_UPDATE,onGameItemUpdate,false,0,true);
      }
      
      public function onActorRelocate(data:Object) : void
      {
         this.closeDialogBox();
         this.setCLCapVisible(false);
         this.closeWindow(this.winLinksPanel);
      }
      
      private function onRegClose(e:Event) : void
      {
         this.mcToolTipLayer.removeChild(this.winRegister);
         this.winRegister = null;
      }
      
      private function openMusicPlayer() : void
      {
         if(this.musicPlayer.isMini())
         {
            this.showMinimizedMP(null);
         }
         else
         {
            this.showFullMP(null);
         }
      }
      
      private function getShopWidget() : void
      {
         if(!_shopWidgetPending)
         {
            this._flexUIManager.getModule(ModulePaths.SHOP,this);
            _shopWidgetPending = true;
         }
      }
      
      public function showAcceptDecline(txt:String, id:String) : UiAcceptDecline
      {
         var ad:UiAcceptDecline = this.getNewAcceptDecline();
         ad.setText(txt);
         ad.addButton("Accept");
         ad.addButton("Decline");
         ad.param = {"id":id};
         var w:* = this._windowFactory.createLegacyZomgWindow(this._linkManager.baseURL + this._configManger.genericWindowUrl,ad,true,false,false,false,246,ad.height + 25,246,ad.height + 25,false,false,this._uiFramework.loaderContextFactory);
         w.x = (this.mcWinLayer.stage.stageWidth - 123) / 2;
         w.y = (this.mcWinLayer.stage.stageHeight - 32) / 2;
         openWindow(w);
         return ad;
      }
      
      public function isInventoryOpen() : Boolean
      {
         if(this.winInventory)
         {
            return isWindowOpen(this.winInventory);
         }
         return false;
      }
      
      private function onSetSelectedTarget(e:GlobalEvent) : void
      {
         this._selectedActor = e.data.actor;
         this._selectedActorId = e.data.actorId;
         if(this.actionBar)
         {
            this.actionBar.usePowerMeter = this._selectedActor && this._selectedActor.targetType == BaseActor.TARGETTYPE_POWERUSABLE;
         }
         this.setTargetOpenState(this._selectedActor);
      }
      
      private function onMapDependenciesLoadStart(event:GlobalEvent) : void
      {
      }
      
      public function startCharging() : void
      {
         if(this.actionBar)
         {
            this.actionBar.startCharging();
         }
      }
      
      private function onInventorySwapOrbsClick(evt:UiEvents) : void
      {
         this.openUiSwapOrbs();
      }
      
      private function onActorLeave(evt:BattleEvent) : void
      {
         var actorId:String = evt.battleMessage.responseObj.id;
         if(ActorManager.actorIdToActor(actorId) != null && actorId != ActorManager.getInstance().myActor.actorId)
         {
            if(actorId == this.dialogPanel.actorId)
            {
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.DIALOG_CLOSE,{}));
            }
         }
      }
      
      private function onUiButtonMenu(evt:BattleEvent) : void
      {
         var data:Object = evt.battleMessage.responseObj[0];
         openGenericButtonMenu(data.menuId,data.menuWidth,data.menuText,data.menuOptions,data.menuSubtext);
      }
      
      private function init() : void
      {
         var register:RegisteredClasses = null;
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.OPEN_RECREWT,onOpenRecrewt);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.TEAM_UPDATED,onTeamUpdated);
         this.backImg = new UiBackImg();
         this.backImg.version = this._fileVersionManager.getClientVersion(null);
         this.mcLoadLayer.addChild(this.backImg);
         if(this._uiFramework.map != null)
         {
            trace(this._configManager.mainWindowUrl);
            this.winMap = new BattleWin(this._uiFramework,this._linkManager.baseURL + this._configManager.mainWindowUrl,this._uiFramework.map.getMapDisplayObject());
            this.mcBaseWinLayer.addChild(this.winMap);
            this.winMap.addEventListener(Event.RESIZE,onWinMapResize,false,0,true);
            this.winMap.addEventListener("MOVE",onWinMapMove,false,0,true);
            this.winMap.addEventListener("MouseMove",onWinMapMouseMove,false,0,true);
         }
         BattleUtils.disableMouseOnChildren(this.mcBaseWinLayer);
         if(this._uiFramework.loadUi)
         {
            this._chatController = ChatController.getInstance(this._flexUIManager,this._gateway,this._emoteManager,this,this);
            loadModules();
            this.dialogPanel = this.getNewDialogBox();
            this.dialogPanel.addEventListener("DIALOG",onDialogPanelResponse,false,0,true);
            this.dialogPanel.addEventListener("DONE",onDialogDone,false,0,true);
            this.winDialog = this._windowFactory.createLegacyZomgWindow(this._linkManager.baseURL + this._configManger.genericWindowUrl,this.dialogPanel,true,true,true,false,558,120,558,120,false,false,this._uiFramework.loaderContextFactory);
            this.winDialog.addEventListener(Event.RESIZE,onDialogResize,false,0,true);
            this.winDialog.addEventListener("CLOSE",onDialogClose,false,0,true);
            this.winDialog.x = 350;
            this.winDialog.y = 395;
            this.musicPlayer = this.getMusicPlayer();
            this.winMusicPlayer = this._windowFactory.createLegacyZomgWindow(this._linkManager.baseURL + this._configManger.genericWindowUrl,this.musicPlayer,true,false,true,false,200,225,200,225,false,false,this._uiFramework.loaderContextFactory);
            this.winMusicPlayer.useMask(false);
            this.winMusicPlayer.addEventListener("CLOSE",onMusicPlayerClose,false,0,true);
            this.musicPlayer.addEventListener(MPEvents.MINIMIZE_VIEW,showMinimizedMP,false,0,true);
            this.musicPlayer.addEventListener(UiEvents.SET_MUSIC_VOLUME,onUiSettingVolume,false,0,true);
            this.miniMusicPlayer = this.musicPlayer.getMiniPlayer();
            this.miniMusicPlayer.addEventListener(MPEvents.RESTORE_VIEW,showFullMP,false,0,true);
            this.miniMusicPlayer.addEventListener("MOVE",onMusicplayerMoved,false,0,true);
            this.winMusicPlayer.addEventListener("MOVE",onMusicplayerMoved,false,0,true);
            this.linksPanel = new UiLinksPanel(this._linkManager);
            this.winLinksPanel = this._windowFactory.createLegacyZomgWindow(this._linkManager.baseURL + this._configManger.genericWindowUrl,this.linksPanel,true,false,true,false,500,500,50,50,false,false,this._uiFramework.loaderContextFactory);
            this.winLinksPanel.addEventListener("CLOSE",onLinkPanelClose,false,0,true);
            this.uiAbuseReport = new UiAbuseReport(this._gateway);
            this.winAbuseReport = this._windowFactory.createLegacyZomgWindow(this._linkManager.baseURL + this._configManger.genericWindowUrl,this.uiAbuseReport,true,false,false,false,333,241,333,241,false,false,this._uiFramework.loaderContextFactory);
            this.winAbuseReport.addEventListener("CLOSE",onAbuseReportClose,false,0,true);
            this.uiAbuseReport.addEventListener("CANCEL",onAbuseReportClose,false,0,true);
         }
         this.initWorldEventManagers();
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.PLAY_MOVIE,onPlayMovie,false,0,true);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.WIDGET_SHOW,onWidgetShow);
         this.initAlertMaps();
         if(this._linkManager.spaceName == "zomg")
         {
            this.initZomg();
         }
         _uiLoaded = true;
         this.dispatchEvent(new Event(UI_LOADED));
      }
      
      public function openActiveQuestLog() : void
      {
         if(this.pdaWidget)
         {
            this.openPDAWidget(this.pdaWidget.activeQuestTabIndex);
         }
      }
      
      private function setTargetOpenState(target:BaseActor) : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ACTOR_INFO_SET,{"actor":target}));
         if(target != null)
         {
            if(this.actionBar == null || this.actionBar && !this.actionBar.usePowerMeter)
            {
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ACTOR_INFO_OPEN,null));
               return;
            }
            RingItemManager.getInstance().selectedSlot = -1;
         }
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ACTOR_INFO_CLOSE,null));
      }
      
      private function onWorldBroadcast(evt:GlobalEvent) : void
      {
         var data:Object = evt.data;
         var url:String = data.url;
         var text:String = data.text;
         var name:String = data.name;
         var npcName:String = data.npcName;
         var title:String = "Missing title";
         if(data.title != null)
         {
            title = data.title;
         }
         var show:Boolean = true;
         if(data.show != null)
         {
            show = data.show;
         }
         this.winMap.setMsgBox(name,title,show,text,url,npcName);
      }
      
      public function onShopWidgetLinkClicked(type:String) : void
      {
         if(null != _shopWidgetWarning)
         {
            cleanupShopWidgetWarning();
         }
         var text:String = "This will close zOMG.";
         _shopWidgetWarning = showAcceptDecline(text,"accept_decline");
         _shopWidgetWarning.addEventListener("BtnAcceptClick",onShopWidgetAcceptClick);
         _shopWidgetWarning.addEventListener("BtnDeclineClick",onShopWidgetDeclineClick);
      }
      
      private function resetDefautlSetting(mode:String) : void
      {
         this.winMap.resetDefaultSettings(mode);
         if(this._uiFramework.loadUi)
         {
            if(this.actionBar)
            {
               this.actionBar.resetDefaultSettings(mode);
            }
            if(this.winPDAPanel)
            {
               this.winPDAPanel.resetDefaultSettings(mode);
            }
         }
         this._userSettings.save();
      }
      
      private function onMusicplayerMoved(e:Event) : void
      {
         var dobj:DisplayObject = DisplayObject(e.target);
         this.winMusicPlayer.x = dobj.x;
         this.winMusicPlayer.y = dobj.y;
         this.miniMusicPlayer.x = dobj.x;
         this.miniMusicPlayer.y = dobj.y;
      }
      
      private function onDefaultKeyBindingsLoaded(e:GlobalEvent) : void
      {
         this._defaultKeys = e.data.keys;
      }
      
      private function onProgress(evt:ProgressEvent) : void
      {
         initPreloader();
         this.preloader.setText(this._progressManager.label);
         var per:int = 0;
         if(evt.bytesTotal != 0)
         {
            per = Math.round(evt.bytesLoaded / evt.bytesTotal * 100);
         }
         this.preloader.setPer(per);
         if(!this.mcLoadLayer.contains(this.preloader))
         {
            this.mcLoadLayer.addChild(this.preloader);
         }
      }
      
      private function onAllowRingUse(event:GlobalEvent) : void
      {
         _allowRingUse = event.data.allow;
      }
      
      private function showShopCallout(show:Boolean) : void
      {
         var shopCalloutShown:Object = null;
         var msg:BattleMessage = null;
         this.winMap.showShopCallout(show);
         if(!show)
         {
            this._showShopCallout = false;
            shopCalloutShown = {"shopCalloutShown":true};
            msg = new BattleMessage("putNkvp",shopCalloutShown);
            this._gateway.sendMsg(msg);
         }
      }
      
      public function showVerificationPrompt() : MovieClip
      {
         var vp:UiVerificationPrompt = this.getVerificationPrompt();
         this.winRegister = this._windowFactory.createLegacyZomgWindow(this._linkManager.baseURL + this._configManger.genericWindowUrl,vp,true,false,true,false,255,vp.height + 20,255,vp.height + 20,false,false,this._uiFramework.loaderContextFactory);
         this.winRegister.x = (this._flexWinLayer.stage.stageWidth - vp.height) / 2;
         this.winRegister.y = (this._flexWinLayer.stage.stageHeight - vp.height) / 2;
         openWindow(this.winRegister);
         this.winRegister.addEventListener("CLOSE",onVerifyPromptClose,false,0,true);
         return vp;
      }
      
      private function onPlayMovie(evt:GlobalEvent) : void
      {
         if(this._isLoadedExternally)
         {
            evt.data.url = this._linkManager.baseURL + evt.data.url;
         }
         this.disableDialogDuringMovie = evt.data.hideNpcDialog as Boolean;
         playMovie(evt.data.url,evt.data.width,evt.data.height,evt.data.x,evt.data.y,this._disableDialogDuringMovie);
      }
      
      private function resizeShopWidgetLayer() : void
      {
         var sizeObj:Object = this.winMap.getSize();
         this._flexShopWidgetLayer.x = this.winMap.x;
         this._flexShopWidgetLayer.y = this.winMap.y;
         this._flexShopWidgetLayer.height = sizeObj.height;
         this._flexShopWidgetLayer.width = sizeObj.width;
      }
      
      private function initPreloader() : void
      {
         if(!preloader)
         {
            this.preloader = new PreloaderProgress();
         }
      }
      
      private function onLfgFlagClick(evt:UiEvents) : void
      {
         setLfgFlag(!evt.value);
      }
      
      public function setRingInventoryVisible(show:Boolean) : void
      {
         if(show)
         {
            this.openRingInventory();
         }
         else
         {
            this.closeInventory(null);
         }
      }
      
      private function onStartCharging(e:GlobalEvent) : void
      {
         this.isCharging = true;
      }
      
      private function getVerificationPrompt() : UiVerificationPrompt
      {
         return new UiVerificationPrompt();
      }
      
      private function onActionBarBtnPDAClick(evt:Event) : void
      {
         this.openClosePDAWidget();
      }
      
      public function onShopWidgetClose() : void
      {
         this.showShopWidget(false);
      }
      
      public function showRegistrationPrompt(txtTitle:String, txtBody:String, origin:String, priority:uint = 0) : MovieClip
      {
         var rp:* = undefined;
         var winWidth:Number = NaN;
         var winHeight:Number = NaN;
         if(regPromptShowing())
         {
            if(priority != 0)
            {
               onRegPromptClose();
            }
            else
            {
               return winRegister.getContainer() as MovieClip;
            }
         }
         var isLogout:Boolean = Boolean(priority == 2);
         if(this._isLoadedExternally && isLogout != true && origin != "invite")
         {
            rp = this.getExternalRegistrationPrompt();
            rp.setText(txtTitle,txtBody);
            winWidth = 225;
            winHeight = 160;
         }
         else
         {
            rp = this.getRegistrationPrompt(isLogout);
            rp.setText(txtTitle,txtBody);
            winWidth = 255;
            winHeight = rp.height + 20;
         }
         rp.origin = origin;
         this.winRegister = new Window(this._linkManager.baseURL + this._configManger.genericWindowUrl,rp,true,false,true,false,winWidth,winHeight,winWidth,winHeight,false,false,this._uiFramework.loaderContextFactory);
         this.winRegister.x = origin == "prompt1"?Number((this.mcWinLayer.stage.stageWidth - rp.height) / 4):Number((this.mcWinLayer.stage.stageWidth - rp.height) / 2);
         this.winRegister.y = origin == "prompt1"?Number((this.mcWinLayer.stage.stageHeight - rp.height) / 4):Number((this.mcWinLayer.stage.stageHeight - rp.height) / 2);
         this.mcToolTipLayer.addChild(this.winRegister);
         this.winRegister.addEventListener("CLOSE",onRegPromptClose,false,0,true);
         if(isLogout)
         {
            rp.addEventListener("QuitClick",onRegPromptLogout);
         }
         rp.addEventListener(UiEvents.REGISTER,onRegister);
         return rp;
      }
      
      private function getMinimap() : void
      {
         if(!_pendingMinimap)
         {
            this._flexUIManager.getModule(ModulePaths.MINIMAP,this);
            this._pendingMinimap = true;
         }
      }
      
      private function openOptionsPanel() : void
      {
         if(!isWindowOpen(this.winOption))
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.GENERIC_OPEN}));
            openWindow(this.winOption);
         }
      }
      
      private function onUiManager2Complete(event:Event) : void
      {
         var dispatcher:IEventDispatcher = event.target as IEventDispatcher;
         dispatcher.removeEventListener(event.type,arguments.callee);
         dispatcher.removeEventListener(ProgressEvent.PROGRESS,onLoadProgress);
         _uiManager2Loaded = true;
         var loaderInfo:LoaderInfo = event.target as LoaderInfo;
         this._uiFramework.assetFactory.addAppDomain(loaderInfo.applicationDomain);
         LoaderFactory.getInstance().checkIn(uiManager2Loader);
         uiManager2Loader = null;
         checkIfContentIsLoaded();
      }
      
      private function getRegistrationPrompt(isLogout:Boolean = false) : UiRegistrationPrompt
      {
         var regPrompt:MovieClip = MovieClip(this._uiFramework.assetFactory.getInstance("UiRegistrationPromptFl"));
         return new UiRegistrationPrompt(regPrompt,isLogout);
      }
      
      private function onCalloutSettingsRetrieved(e:BattleEvent) : void
      {
         var responseObj:Object = e.battleMessage.responseObj[0].values;
         if(responseObj)
         {
            if(!ALWAYS_SHOW_SHOP_CALLOUT && responseObj["shopCalloutShown"])
            {
               this._showShopCallout = !Boolean(responseObj["shopCalloutShown"]);
            }
            else
            {
               this._showShopCallout = true;
            }
         }
         this._haveCalloutData = true;
         this.showCalloutsToNewFeatures();
      }
      
      private function onWorldTimerUpdate(evt:GlobalEvent) : void
      {
         var startTime:Date = null;
         var finishTime:Date = null;
         var data:Object = evt.data;
         var name:String = data.name;
         var title:String = data.title;
         var value:uint = data.value;
         var show:Boolean = data.show;
         var playing:Boolean = data.playing;
         var start:String = data.start;
         var finish:String = data.finish;
         var startComponents:Array = start.split(":");
         var finishComponents:Array = finish.split(":");
         if(startComponents.length < 3 || finishComponents.length < 3)
         {
            return;
         }
         startTime = new Date();
         startTime.setHours(startComponents[0]);
         startTime.setMinutes(startComponents[1]);
         startTime.setSeconds(startComponents[2]);
         finishTime = new Date();
         finishTime.setHours(finishComponents[0]);
         finishTime.setMinutes(finishComponents[1]);
         finishTime.setSeconds(finishComponents[2]);
         var countUp:* = startTime.getTime() < finishTime.getTime();
         this.winMap.updateTimer(name,title,startTime,finishTime,playing,show);
      }
      
      private function onShopWidgetLoaded(instance:Object) : void
      {
         this._shopWidgetInstance = DisplayObject(instance);
         this._flexShopWidgetLayer.addChild(this._shopWidgetInstance);
         var shopWidgetImpl:IShopWidget = this._shopWidgetInstance as IShopWidget;
         shopWidgetImpl.init(null,this._linkManager.getLink("gcash_home"),this._gateway,this._gateway,this._gateway,this._gCash);
         shopWidgetImpl.registerForEvents(this);
         this.positionShopWidget();
         this._shopWidgetInstance.addEventListener(Event.RESIZE,onShopWidgetResize,false,0,true);
         _shopWidgetPending = false;
      }
      
      private function onRegPromptClose(evt:Event = null) : void
      {
         if(regPromptShowing())
         {
            this.mcToolTipLayer.removeChild(this.winRegister);
            this.winRegister = null;
         }
      }
      
      private function logout() : void
      {
         this._gateway.logout();
         if(ExternalInterface.available)
         {
            try
            {
               ExternalInterface.call("YAHOO.gaia.app.flash.close");
            }
            catch(error:Error)
            {
               trace("Err: ",error.message);
            }
         }
      }
      
      private function onDialogCallBack(evt:BattleEvent) : void
      {
         trace("[UiManager onDialogCallBack]");
         BattleMessage(evt.target).removeEventListener(BattleEvent.CALL_BACK,onDialogCallBack);
      }
      
      private function regPromptShowing() : Boolean
      {
         return winRegister != null && this.mcToolTipLayer.contains(this.winRegister);
      }
      
      private function onSitStandTimerDone(e:TimerEvent) : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALLOW_SIT_STAND,{"allow":true}));
      }
      
      private function onActorStatsUpdated(e:Event) : void
      {
         var actor:BaseActor = BaseActor(e.target);
         var obj:Object = actor.getPaperDollObject();
         var window:* = this.playerStats[actor.actorId];
         var playerStats:UiPlayerStats = UiPlayerStats(window.getContainer());
         obj.tag = playerStats.paperDoll;
         processPaperDollCallBackObj(obj);
      }
      
      public function sitStand() : void
      {
         var param:Array = null;
         var msg2:BattleMessage = null;
         var param3:Array = null;
         var msg3:BattleMessage = null;
         if(!this.allowSitStand || _actorManager.myActor == null)
         {
            return;
         }
         var isSitting:Boolean = _actorManager.myActor.isSitting;
         var sit:* = !isSitting;
         if(isSitting)
         {
            startSitStandTimer();
         }
         if(this.actionBar)
         {
            this.actionBar.setSitting(sit);
         }
         if(sit)
         {
            if(_actorManager.myActor != null)
            {
               param = new Array();
               param[0] = 1;
               msg2 = new BattleMessage("106",param);
               this._gateway.sendMsg(msg2);
               _actorManager.myActor.sit(true);
            }
         }
         else if(_actorManager.myActor != null)
         {
            param3 = new Array();
            param3[0] = 0;
            msg3 = new BattleMessage("106",param3);
            this._gateway.sendMsg(msg3);
            _actorManager.myActor.stand();
         }
      }
      
      private function onReportAbuse(evt:GlobalEvent) : void
      {
         var sessionId:String = null;
         var reportType:String = null;
         var offenderName:String = null;
         var reportNotes:String = null;
         var chatLog:String = null;
         var data:Object = evt.data;
         if(data != null)
         {
            sessionId = this._gateway.sessionId;
            reportType = data.reportType;
            offenderName = data.offenderName;
            reportNotes = data.reportNotes || "";
            if(sessionId && reportType && offenderName)
            {
               chatLog = this._chatController.getAbuseLog();
               this._gateway.gsiInvoke(ChatManager.REPORT_ABUSE_CALL_ID,sessionId,reportType,"13",offenderName,reportNotes,chatLog);
            }
         }
      }
      
      private function onDialogPanelResponse(evt:UiEvents) : void
      {
         var params:Object = null;
         var msg:BattleMessage = null;
         if(evt.value.getNext == null || evt.value.getNext == true)
         {
            params = new Object();
            params.npc = evt.value.npcId;
            params.con = evt.value.convId;
            params.dlg = evt.value.dialogId;
            if(evt.value.optionId != null)
            {
               params.opt = evt.value.optionId;
            }
            else
            {
               params.opt = 0;
            }
            msg = new BattleMessage("dialogClick",params);
            msg.addEventListener(BattleEvent.CALL_BACK,onDialogCallBack);
            this._gateway.sendMsg(msg);
         }
         if(evt.value.numberOfTimesSent < 2)
         {
            this._chatController.addText("dialog",evt.value.npcId,evt.value.actorName,evt.value.txt);
         }
      }
      
      private function onRingStartCharge(evt:ItemManagerEvent) : void
      {
      }
      
      private function onIoError(evt:IOErrorEvent) : void
      {
         trace("onIoError: " + evt.text,10);
         removeLoaderListeners(LoaderInfo(evt.target).loader.contentLoaderInfo);
      }
      
      private function onRegisterPrompt(evt:TimerEvent) : void
      {
         var title:String = "Save Your Game and more";
         var body:String = "\tKeep your loot\n\tUnique Username and Avatar\n\tChat and Crew up, and more...";
         showRegistrationPrompt(title,body,"prompt" + String(evt.target.currentCount + 1));
      }
      
      private function onClickRegisterMembersOnlyMessage(evt:Event) : void
      {
         onRegister(null);
      }
      
      public function openCompetedQuestLog() : void
      {
         if(this.pdaWidget)
         {
            this.openPDAWidget(this.pdaWidget.completedQuestTabIndex);
         }
      }
      
      private function onRegister(evt:UiEvents) : void
      {
         onRegPromptClose();
         if(evt)
         {
            this.dispatchEvent(new TrackingEvent(TrackingEvent.TRACKING,TrackingEvent.GUEST_REGISTRATION,evt.command));
         }
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.TRACKING_EVENT,"click_register_dialog"));
         _cachedRegistrationWidgetLoader = new RegistrationWidgetLoader(RegistrationWidgetLoader.MODE_REGISTER_GUEST,this._gateway.gsiSubdomain,this._linkManager.baseURL,this._partnerId,this._useCaptcha);
         DisplayObjectUtils.addWeakListener(_cachedRegistrationWidgetLoader,Event.INIT,onRegistrationLoaded);
      }
      
      private function onLinkPanelClose(evt:Event) : void
      {
         closeWindow(this.winLinksPanel);
      }
      
      private function onGameItemsInv(evt:BattleEvent) : void
      {
         var items:Array = evt.battleMessage.responseObj as Array;
         if(this.inventoryPanel)
         {
            this.inventoryPanel.uiGameItems.updateItems(items);
         }
      }
      
      private function showMembersOnlyMessage() : void
      {
         var membersOnlyMessage:MovieClip = null;
         if(!membersOnlyMessageWindow)
         {
            membersOnlyMessage = new MembersOnlyMessage();
            membersOnlyMessage.addEventListener("register",onClickRegisterMembersOnlyMessage);
            membersOnlyMessageWindow = this._windowFactory.createLegacyZomgWindow(this._linkManager.baseURL + this._configManger.genericWindowUrl,membersOnlyMessage,true,false,true,false,membersOnlyMessage.width,membersOnlyMessage.height + 15,membersOnlyMessage.width,membersOnlyMessage.height + 15,false,false,this._uiFramework.loaderContextFactory);
            membersOnlyMessageWindow.addEventListener("CLOSE",onCloseMembersOnlyMessage);
            this.centerOnMap(membersOnlyMessageWindow,membersOnlyMessage.width,membersOnlyMessage.height);
            openWindow(membersOnlyMessageWindow);
         }
      }
      
      private function onDialogClick(evt:Event) : void
      {
         this.dialogClick = true;
      }
      
      private function getNewOptionPanel(initObject:Object, stage:Stage) : UiOptionPanel
      {
         var s:Stage = null;
         return new UiOptionPanel(this._uiFramework,this._linkManager,this._gateway,stage,initObject);
      }
      
      public function get uiFramework() : IUIFramework
      {
         return _uiFramework;
      }
      
      private function showFullMP(e:MPEvents) : void
      {
         this.musicPlayer.setMini(false);
         this.setMinimizedMPVisible(false);
         this.setFullMPVisible(true);
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.GENERIC_OPEN}));
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MUSIC_PLAYER_STATE_CHANGED,{"state":"full"}));
         DisplayObjectUtils.bringToFront(this.winMusicPlayer);
      }
      
      private function onHttpStatus(evt:HTTPStatusEvent) : void
      {
         trace("onHttpStatus: " + evt.status,10);
      }
      
      private function onAlertEvent(e:GlobalEvent) : void
      {
         var data:Object = null;
         var extra:String = null;
         var volume:Number = NaN;
         var textFnArgs:Array = null;
         var textParam:String = null;
         var text:String = null;
         var centerPrintType:String = null;
         data = e.data;
         var type:AlertTypes = data.type;
         var soundId:String = this._soundMap[type];
         if(type == AlertTypes.ITEM_SPECIFIC)
         {
            extra = data.extraId || "";
            soundId = "item_" + extra;
         }
         if(soundId)
         {
            volume = Number(data.volume) || Number(1);
            this.playSound(soundId,volume);
         }
         var centerPrintData:CenterPrintData = this._centerPrintMap[type];
         if(centerPrintData != null)
         {
            textFnArgs = new Array();
            textParam = data.textParam;
            if(textParam != null)
            {
               textFnArgs.push(textParam);
            }
            text = centerPrintData.textFn.apply(null,textFnArgs);
            centerPrintType = centerPrintData.type;
            this.winMap.addCenterPrint(text,centerPrintType);
         }
      }
      
      public function onCreation(object:Object, modulePath:String) : void
      {
         switch(modulePath)
         {
            case ModulePaths.UITESTER:
               onUiTesterLoaded(object);
               break;
            case ModulePaths.SHOP:
               onShopWidgetLoaded(object);
               break;
            case ModulePaths.MINIMAP:
               onMinimapLoaded(object);
         }
      }
      
      private function onChatEmote(evt:BattleEvent) : void
      {
         var obj:Object = null;
         var ba:BaseActor = null;
         for(var i:int = 0; i < evt.battleMessage.responseObj.length; i++)
         {
            obj = evt.battleMessage.responseObj[i];
            if(obj.emoticonID != null && obj.senderID != null)
            {
               ba = ActorManager.actorIdToActor(obj.senderID);
               if(ActorManager.getInstance().myActor.actorId != obj.senderID && ba != null)
               {
                  this._emoteManager.playEmoteAnim(obj.emoticonID,this._uiFramework.map.getEmoteLayer(),ba,ba.getActorBound());
               }
            }
         }
      }
      
      private function initWorldEventManagers() : void
      {
         this.worldCounterManager = WorldCounterManager.getInstance();
         this.worldTimerManager = WorldTimerManager.getInstance();
      }
      
      private function onAbuseReportStart(e:GlobalEvent) : void
      {
         var data:Object = e.data;
         var actor:BaseActor = data.actor;
         if(actor)
         {
            this.openAbuseReport(actor.actorName);
         }
      }
      
      private function getUiTester() : void
      {
         if(!_uiTesterInitiated)
         {
            this._flexUIManager.getModule(ModulePaths.UITESTER,this);
            _uiTesterInitiated = true;
         }
      }
      
      private function onInventoryTabChange(evt:Event) : void
      {
         if(this.inventoryPanel.activeTab == UiInventory.TAB_RING && this.mouseIcon.isPointTarget >= 0)
         {
            this.mouseIcon.isPointTarget = -1;
         }
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALLOW_RING_USE,{"allow":this.inventoryPanel.activeTab != UiInventory.TAB_RING}));
         var notConsTab:* = this.inventoryPanel.activeTab != UiInventory.TAB_CONSUMABLES;
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALLOW_CONSUMABLE_USE,{
            "allow":notConsTab,
            "allowCure":notConsTab
         }));
      }
      
      private function openAbuseReport(userName:String = "") : void
      {
         if(!isWindowOpen(this.winAbuseReport))
         {
            this.winAbuseReport.x = this.mcWinLayer.stage.stageWidth / 2 - this.winAbuseReport.getSize().width / 2;
            this.winAbuseReport.y = 100;
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.GENERIC_OPEN}));
            this.uiAbuseReport.newReport(userName);
            openWindow(this.winAbuseReport);
         }
      }
      
      public function openGameItemsInventory() : void
      {
         openInventory(UiInventory.TAB_GAME);
      }
      
      private function set disableDialogDuringMovie(disable:Boolean) : void
      {
         this._disableDialogDuringMovie = disable;
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.DISABLE_DIALOG,{"disable":this._disableDialogDuringMovie}));
      }
      
      private function getNewAdminPanel() : UiAdminPanel
      {
         return new UiAdminPanel();
      }
      
      private function onCloseWelcomeMessage(evt:Event) : void
      {
         if(welcomeMessageWindow)
         {
            closeWindow(welcomeMessageWindow);
            welcomeMessageWindow = null;
            this.winDialog.visible = true;
         }
      }
      
      public function onShopWidgetNPCDialogue(message:String, npcName:String) : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.CHATTABLE_MSG,{
            "msg":message,
            "type":"dialog",
            "received":true,
            "fromSystem":false,
            "name":npcName
         }));
      }
      
      private function onMapSlideComplete(event:GlobalEvent) : void
      {
         _mapIsSliding = false;
      }
      
      private function onUiTesterLoaded(instance:Object) : void
      {
         this._uiTesterInstance = DisplayObject(instance);
         var title:String = "UI Toggles";
         _uiTesterWindow = this._windowFactory.createWindow(title,false);
         _uiTesterWindow.addChild(this._uiTesterInstance);
         this._windowManager.add(_uiTesterWindow,new GameWindowSettings(title).setPos(200,200));
         this._uiTesterController = new UiTesterController(this._uiTesterInstance as IUiChooser);
         setUiTesterVisible(true);
         this._uiTesterController.init();
      }
      
      private function onWinMapResizeLater() : void
      {
         this.resizeShopWidgetLayer();
         this.positionShopWidget();
         this.showCalloutsToNewFeatures();
      }
      
      private function getCallOutSettings() : void
      {
         var msg:BattleMessage = null;
         if(this._gateway.connectedToGameServer)
         {
            msg = new BattleMessage("getNkvp",{"keys":["shopCalloutShown"]});
            msg.addEventListener(BattleEvent.CALL_BACK,onCalloutSettingsRetrieved);
            this._gateway.sendMsg(msg);
         }
      }
      
      public function onMapFilesLoaded() : void
      {
         _mapFilesLoaded = true;
         MapFilesFactory.getInstance().mapFiles.unregisterForLoadEvents(this);
         checkIfContentIsLoaded();
      }
      
      public function onClCapPanelClose(evt:Event) : void
      {
         this.setCLCapVisible(false);
      }
      
      public function setPDAWidgetVisible(visible:Boolean) : void
      {
         if(visible)
         {
            openPDAWidget();
         }
         else
         {
            closePDAWidget();
         }
      }
      
      private function onShopWidgetResize(e:Event) : void
      {
         this.positionShopWidget();
      }
      
      private function onEmoteClick(evt:UiEvents) : void
      {
         playEmote(evt.command);
      }
      
      private function onWinMapMouseMove(e:Event) : void
      {
         this.resizeShopWidgetLayer();
      }
      
      private function onDialogClose(evt:Event) : void
      {
         this.closeDialogBox();
      }
      
      private function openInventory(activeTab:String = null) : void
      {
         var isNullChamber:Boolean = false;
         if(this._uiState.forcedInventoryClose)
         {
            return;
         }
         if(this.inventoryPanel)
         {
            activeTab = activeTab || UiInventory.TAB_RING;
            if(!isInventoryOpen())
            {
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.GENERIC_OPEN}));
               trace("OPENING INVENTORY PANEL TO ",activeTab," AND COORDS ARE X: ",this.winInventory.x," Y: ",this.winInventory.y," WIDTH: ",this.winInventory.width," HEIGHT: ",this.winInventory.height);
               openWindow(this.winInventory);
            }
            RingItemManager.getInstance().ensureItemSelected();
            ConsumableItemManager.getInstance().ensureItemSelected();
            this.inventoryPanel.activeTab = activeTab;
            isNullChamber = this._uiFramework.map.isNullChamber();
            this.showRingUpgrade(isNullChamber);
         }
      }
      
      public function LoadUi() : void
      {
         loadUiManager();
      }
      
      private function playSound(soundId:String, vol:Number = 1.0) : void
      {
         var s:Sound = this.getSound(soundId);
         if(s)
         {
            this.playSoundSoundTransform.volume = this._uiFramework.volumes.soundVolume / 100 * vol;
            s.play(0,0,this.playSoundSoundTransform);
         }
      }
      
      public function openConsumablesInventory() : void
      {
         openInventory(UiInventory.TAB_CONSUMABLES);
      }
      
      private function onContentLoaded() : void
      {
         this.mouseIcon.setMouseMc(this.getNewMouseIcons());
         init();
      }
      
      private function closeInventory(e:Event) : void
      {
         if(this.winInventory && isWindowOpen(this.winInventory))
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.GENERIC_CLOSE}));
            closeWindow(this.winInventory);
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALLOW_RING_USE,{"allow":true}));
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALLOW_CONSUMABLE_USE,{
               "allow":true,
               "allowCure":true
            }));
            this.inventoryPanel.onClose();
         }
      }
      
      public function openUiSwapOrbs() : void
      {
         if(!this.mcDragLayer.contains(this.winUiSwapOrbs))
         {
            this.winUiSwapOrbs.x = this.winInventory.x + 260;
            this.winUiSwapOrbs.y = this.winInventory.y + 85;
            this.mcDragLayer.addChild(this.winUiSwapOrbs);
         }
      }
      
      private function removeLoaderListeners(target:EventDispatcher) : void
      {
         target.removeEventListener(ProgressEvent.PROGRESS,onLoadProgress);
         target.removeEventListener(IOErrorEvent.IO_ERROR,onIoError);
         target.removeEventListener(Event.UNLOAD,onUnloaded);
         target.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,onSecError);
         target.removeEventListener(HTTPStatusEvent.HTTP_STATUS,onHttpStatus);
      }
      
      private function onYouAreDazeGotoClick(evt:UiEvents) : void
      {
         var msg:BattleMessage = null;
         if(isWindowOpen(this.winYouAreDazed))
         {
            msg = new BattleMessage("awaken",{"gtfo":true});
            this._gateway.sendMsg(msg);
            closeYouAreDazed();
         }
      }
      
      public function showExternalWelcomeMessage() : void
      {
         var welcomeMessage:MovieClip = new ExternalWelcomeMessage();
         welcomeMessage.addEventListener("CLOSE",onCloseWelcomeMessage);
         welcomeMessageWindow = this._windowFactory.createLegacyZomgWindow(this._linkManager.baseURL + this._configManger.genericWindowUrl,welcomeMessage,true,false,true,false,200,160,200,160,false,false,this._uiFramework.loaderContextFactory);
         welcomeMessageWindow.addEventListener("CLOSE",onCloseWelcomeMessage);
         welcomeMessageWindow.x = (this._flexWinLayer.stage.stageWidth - welcomeMessage.width) / 2;
         welcomeMessageWindow.y = (this._flexWinLayer.stage.stageHeight - welcomeMessage.height) / 2 + 10;
         openWindow(welcomeMessageWindow);
         var autoCloseTimer:Timer = new Timer(1000 * 5,1);
         autoCloseTimer.addEventListener(TimerEvent.TIMER,onCloseWelcomeMessage);
         autoCloseTimer.start();
      }
      
      private function onGenericButtonMenuClick(evt:GlobalEvent) : void
      {
         this._gateway.sendMsg(new BattleMessage(BattleEvent.UI_BUTTON_MENU,{
            "menuId":evt.data.menuId,
            "menuSelection":evt.data.option
         }));
         removeButtonMenuViaID(evt.data.menuId);
      }
      
      public function openGlobalMiniMap() : void
      {
         if(this.pdaWidget)
         {
            this.openPDAWidget(this.pdaWidget.globalMapTabIndex);
         }
      }
      
      private function onGrantRing(evt:BattleEvent) : void
      {
         var r:Object = evt.battleMessage.responseObj[0];
         var outputter:Outputter = new Outputter("onGrantRing",Outputter.LEVEL_INFO);
         outputter.traceObject(r);
         if(this.winMap != null)
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{
               "type":AlertTypes.RING_GRANTED,
               "textParam":r.ringName
            }));
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.TRACKING_EVENT,"ring_grant_" + r.rid));
         }
         if(_actorManager.myActor != null)
         {
            if(!CollectiblesLoadManager.contain(r.rid))
            {
               _actorManager.myActor.playEffectAnim("NewRing","caster");
            }
            ActorManager.getInstance().myActor.updateRings();
         }
      }
      
      public function onPlayerStatsClose(evt:Event) : void
      {
         var actor:BaseActor = null;
         if(collectiblesManager != null)
         {
            collectiblesManager.dispose();
            collectiblesManager = null;
         }
         if(ghiBuffsManager != null)
         {
            ghiBuffsManager.dispose();
            ghiBuffsManager = null;
         }
         var w:* = evt.target;
         var ps:UiPlayerStats = UiPlayerStats(w.getContainer());
         var actorId:String = ps.actorId;
         if(actorId != null && this.playerStats[actorId] != null)
         {
            actor = ActorManager.actorIdToActor(actorId);
            unsubscribeToPaperDollUpdates(actor);
            this.playerStats[actorId] = null;
            delete this.playerStats[actorId];
         }
         closeWindow(w);
         w.removeEventListener("CLOSE",onPlayerStatsClose);
         w.dispose();
         ps.dispose();
         ps = null;
      }
      
      private function onRegistrationLoaded(e:Event) : void
      {
         var registration:* = _cachedRegistrationWidgetLoader.widget;
         _cachedRegistrationWidgetLoader = null;
         var REG_WIDTH:uint = !!this._useCaptcha?uint(618):uint(480);
         var REG_HEIGHT:uint = 365;
         this.winRegister = new Window(this._linkManager.baseURL + this._configManger.genericWindowUrl,registration,true,false,false,false,REG_WIDTH,REG_HEIGHT,REG_WIDTH,REG_HEIGHT,false,false,this._uiFramework.loaderContextFactory);
         this.winRegister.x = (this.mcWinLayer.stage.stageWidth - REG_WIDTH) / 2;
         this.winRegister.y = (this.mcWinLayer.stage.stageHeight - REG_HEIGHT) / 2;
         this.mcToolTipLayer.addChild(this.winRegister);
         EventDispatcher(registration).addEventListener("CLOSE",onRegClose);
         EventDispatcher(registration).addEventListener("REGISTRATION_COMPLETE",onRegComplete);
      }
      
      private function setFullMPVisible(visible:Boolean) : void
      {
         if(isWindowOpen(this.winMusicPlayer) && !visible)
         {
            closeWindow(this.winMusicPlayer);
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.GENERIC_CLOSE}));
         }
         else if(!isWindowOpen(this.winMusicPlayer) && visible)
         {
            openWindow(this.winMusicPlayer);
         }
      }
      
      private function checkIfContentIsLoaded() : void
      {
         if(_uiManager2Loaded && _mapFilesLoaded)
         {
            onContentLoaded();
         }
      }
      
      public function errPopUp(msg:String, reset:Boolean) : void
      {
         var dw:DialogWindow = DialogWindowFactory.getInstance().getNewDialogWindow(this._uiFramework,this._linkManager,DialogWindowTypes.ERROR,300);
         dw.autoCenter = true;
         dw.setHtmlText(msg);
         if(reset)
         {
            dw.addEventListener("CLOSE",onErrPopUpClose);
         }
      }
      
      public function toggleAdminPanel() : void
      {
         if(_actorManager.myActor.isDev())
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.OPEN_ADMIN_PANEL,null));
         }
      }
      
      private function onUiCoreComplete(event:Event) : void
      {
         var uiManager2Version:String = null;
         var dispatcher:IEventDispatcher = event.target as IEventDispatcher;
         dispatcher.removeEventListener(event.type,arguments.callee);
         dispatcher.removeEventListener(ProgressEvent.PROGRESS,onLoadProgress);
         var loaderInfo:LoaderInfo = event.target as LoaderInfo;
         this._uiFramework.assetFactory.addAppDomain(loaderInfo.applicationDomain);
         LoaderFactory.getInstance().checkIn(uiCoreLoader);
         uiCoreLoader = null;
         if(this._linkManager.spaceName == "zomg")
         {
            uiManager2Version = "?v=" + this._fileVersionManager.getClientVersion("ui/uimanager2.swf");
            uiManager2Loader = LoaderFactory.getInstance().checkOut();
            uiManager2Loader.contentLoaderInfo.addEventListener(Event.COMPLETE,onUiManager2Complete,false,0,true);
            uiManager2Loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,onLoadProgress,false,0,true);
            uiManager2Loader.load(new URLRequest(this._linkManager.baseURL + "ui/uimanager2.swf" + uiManager2Version),this._uiFramework.loaderContextFactory.getLoaderContext());
         }
         else
         {
            _uiManager2Loaded = true;
            checkIfContentIsLoaded();
         }
      }
      
      private function showMinimizedMP(e:MPEvents) : void
      {
         this.musicPlayer.setMini(true);
         this.setMinimizedMPVisible(true);
         this.setFullMPVisible(false);
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MUSIC_PLAYER_STATE_CHANGED,{"state":"mini"}));
         DisplayObjectUtils.bringToFront(this.miniMusicPlayer);
      }
      
      public function setGameStarted() : void
      {
         this.mcWinLayer.visible = true;
         this.mcBaseWinLayer.visible = true;
         this._flexShopWidgetLayer.visible = true;
         this._flexWinLayer.visible = true;
         if(this.winMap)
         {
            this.winMap.winHeader.startFps();
         }
         if(!this._chatController)
         {
            this.clearFocus();
         }
      }
      
      private function onActionBarBtnConsumableClick(evt:Event) : void
      {
         this.openCloseConsumable();
      }
      
      private function isPDAWidgetOpen() : Boolean
      {
         if(this.pdaWidget)
         {
            return this.winPDAPanel && isWindowOpen(this.winPDAPanel);
         }
         return false;
      }
      
      private function onActionBarBtnPoseClick(evt:ActionBarEvent) : void
      {
         this.sitStand();
      }
      
      public function showFirstRegisterPrompt(widgetPromptTitle:String, widgetPromptContent:String) : void
      {
         var title:String = null;
         var body:String = null;
         if(ActorManager.getInstance().myActor.isGuestUser())
         {
            title = widgetPromptTitle;
            body = widgetPromptContent;
            showRegistrationPrompt(title,body,"prompt1");
            if(timerGuest != null)
            {
               this.timerGuest.start();
            }
         }
      }
      
      private function onUiSwapOrbsClose(evt:Event) : void
      {
         this.closeUiSwapOrbs();
         this.uiSwapOrbs.clear();
      }
      
      private function openPDAWidget(activeTabIndex:int = -1) : void
      {
         if(!this.pdaWidget)
         {
            return;
         }
         if(!this._uiState.forcedPDAClose && !this.isPDAWidgetOpen())
         {
            if(this.actionBar)
            {
               this.actionBar.setPDAOpen(true);
            }
            this.pdaWidget.setPDAOpen(true);
            openWindow(this.winPDAPanel);
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.GENERIC_OPEN}));
         }
         if(!this._uiState.forcedPDAClose)
         {
            if(activeTabIndex >= 0)
            {
               this.pdaWidget.activeTab = activeTabIndex;
            }
         }
      }
      
      private function closePDAWidget() : void
      {
         if(!this.pdaWidget)
         {
            return;
         }
         if(isPDAWidgetOpen())
         {
            if(this.actionBar)
            {
               this.actionBar.setPDAOpen(false);
            }
            this.pdaWidget.setPDAOpen(false);
            closeWindow(this.winPDAPanel);
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.GENERIC_CLOSE}));
         }
      }
      
      private function onMinimapLoaded(module:Object) : void
      {
         var local:UiMapDisplay = null;
         var global:UiMapDisplay = null;
         var title:String = null;
         if(this._pendingMinimap)
         {
            local = createMapDisplay(this._uiFramework.tooltipManager);
            this._minimapManager.addView(local,true);
            global = createMapDisplay(this._uiFramework.tooltipManager);
            this._minimapManager.addView(global,false);
            this._minimap = DisplayObjectContainer(module);
            IMinimapContainer(this._minimap).setRawMinimapDisplay(local,global);
            title = "MAP";
            this._minimapWindow = this._windowFactory.createWindow(title,true);
            this._minimapWindow.width = 200;
            this._minimapWindow.height = 200;
            this._minimapWindow.addChild(this._minimap);
            this._windowManager.add(this._minimapWindow,new GameWindowSettings(title).setPos(10,80).setSize(200,200));
            openWindow(this._minimapWindow);
            this._pendingMinimap = false;
         }
      }
      
      private function onProgressComplete(evt:Event) : void
      {
         if(this.preloader && this.mcLoadLayer.contains(this.preloader))
         {
            this.mcLoadLayer.removeChild(this.preloader);
         }
         this.preloader = null;
      }
      
      private function onUiButtonMenuRemove(evt:BattleEvent) : void
      {
         var data:Object = evt.battleMessage.responseObj[0];
         removeButtonMenuViaID(data.menuId);
      }
      
      private function onRegComplete(e:Event) : void
      {
         var url:String = null;
         this.mcToolTipLayer.removeChild(this.winRegister);
         this.winRegister = null;
         var msg:BattleMessage = new BattleMessage("postRegUpdateUserInfo",null);
         this._gateway.sendMsg(msg);
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.TRACKING_EVENT,"registration_complete"));
         var regCompleteTrackingURLs:Array = ["http://media.fastclick.net/w/roitrack.cgi?aid=7366","http://network.realmedia.com/RealMedia/ads/adstream_nx.ads/TRACK_Gaiaonline/Trackit_Confirmationpage_Nonsecure@Bottom3","http://server.cpmstar.com/action.aspx?advertiserid=83&gif=1"];
         for each(url in regCompleteTrackingURLs)
         {
            StepLoader.add(new Loader(),new URLRequest(url),this._uiFramework.loaderContextFactory.getLoaderContext());
         }
         onCloseMembersOnlyMessage(null);
      }
      
      private function onTextBasedUICommand(e:GlobalEvent) : void
      {
         var restParams:String = null;
         var topicName:String = null;
         var params:String = e.data.paramString;
         var parameters:Array = params.split(":");
         var firstParam:String = parameters[0];
         restParams = parameters[1];
         switch(firstParam.toLowerCase())
         {
            case "minimap":
               this.openLocalMiniMap();
               break;
            case "questlog":
               this.openActiveQuestLog();
               break;
            case "ringinventory":
               this.openRingInventory();
               break;
            case "consumableinventory":
               this.openConsumablesInventory();
               break;
            case "gameiteminventory":
               this.openGameItemsInventory();
               break;
            case "recipeinventory":
               this.openRecipesInventory();
               break;
            case "lfg":
               this.openRecrewt();
               break;
            case "help":
               topicName = restParams;
               this.openGameHelp(topicName);
         }
      }
      
      private function clearFocus() : void
      {
         this._uiFramework.stage.focus = null;
      }
      
      private function getNewAcceptDecline() : UiAcceptDecline
      {
         return new UiAcceptDecline();
      }
      
      public function showRingUpgrade(visible:Boolean) : void
      {
         this.ringInventory.showRingUpgrade(visible);
         var invWidth:Number = !!visible?Number(556):Number(475);
         this.winInventory.setSize(invWidth,238);
      }
      
      private function setMinimizedMPVisible(visible:Boolean) : void
      {
         if(this.mcWinLayer.contains(this.miniMusicPlayer) && !visible)
         {
            this.mcWinLayer.removeChild(this.miniMusicPlayer);
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.GENERIC_CLOSE}));
         }
         else if(!this.mcWinLayer.contains(this.miniMusicPlayer) && visible)
         {
            this.mcWinLayer.addChild(this.miniMusicPlayer);
         }
      }
      
      private function onCollectiblesLoaded(e:GlobalEvent) : void
      {
         if(this.collectiblesManager)
         {
            this.collectiblesManager.refresh(CollectiblesLoadManager.collectibles);
         }
      }
      
      private function onShopWidgetOpenStateChanged(e:GlobalEvent) : void
      {
         if(e.data.show && ActorManager.getInstance().myActor.isGuestUser())
         {
            this.showMembersOnlyMessage();
            BattleUtils.killEvent(e);
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.SET_BACK_ALLEY_BARGAINS_SHOW_STATE,{"show":false}));
            return;
         }
         if(!ActorManager.getInstance().myActor.isGuestUser())
         {
            this.showShopWidget(e.data.show,e.data.source);
         }
      }
      
      private function onWidgetShow(evt:GlobalEvent) : void
      {
         var obj:DisplayObject = null;
         var widgetName:String = evt.data.widgetName;
         var show:Boolean = evt.data.widgetShow;
         var enable:Boolean = evt.data.widgetEnable != undefined?Boolean(evt.data.widgetEnable):false;
         var widgetPromptTitle:String = evt.data.widgetPromptTitle;
         var widgetPromptContent:String = evt.data.widgetPromptContent;
         switch(widgetName)
         {
            case "GameHelp":
               this._uiState.forcedGameHelpClose = !!enable?false:!show;
               if(!show)
               {
                  this.closeGameHelp();
               }
               else
               {
                  this.openGameHelp();
               }
               break;
            case "QuestLog":
               this._uiState.forcedPDAClose = !!enable?false:!show;
               if(!show)
               {
                  closePDAWidget();
               }
               else
               {
                  this.openActiveQuestLog();
               }
               break;
            case "MiniMap":
               this._uiState.forcedPDAClose = !!enable?false:!show;
               if(!show)
               {
                  closePDAWidget();
               }
               else
               {
                  this.openLocalMiniMap();
               }
               break;
            case "PDA":
               this._uiState.forcedPDAClose = !!enable?false:!show;
               setPDAWidgetVisible(show);
               break;
            case "CLCap":
               this._uiState.forcedCLCapClose = !!enable?false:!show;
               setCLCapVisible(show);
               break;
            case "InventoryPanel":
               this._uiState.forcedInventoryClose = !!enable?false:!show;
               setRingInventoryVisible(show);
               break;
            case "showRegPrompt":
               this.showFirstRegisterPrompt(widgetPromptTitle,widgetPromptContent);
               break;
            case UiTesterController.OLD_RECREWT:
               break;
            case UiTesterController.NEW_MAP:
               getMinimap();
               break;
            case UiTesterController.NEW_TASK:
            case UiTesterController.NEW_RECREWT:
               if(show)
               {
                  if(!_placeholderWidgets[widgetName])
                  {
                     obj = this._windowFactory.createWindow(widgetName,true);
                     _placeholderWidgets[widgetName] = obj;
                     this._windowManager.add(obj,new GameWindowSettings("test1" + widgetName).setPos(10,10).setSize(300,300));
                     openWindow(obj);
                  }
               }
               else if(_placeholderWidgets[widgetName])
               {
                  closeWindow(DisplayObject(_placeholderWidgets[widgetName]));
                  delete _placeholderWidgets[widgetName];
               }
         }
      }
      
      private function playEmote(emoticonID:String) : void
      {
         var obj:Object = null;
         var msg:BattleMessage = null;
         var now:int = getTimer();
         if(this._uiFramework.map != null && this._uiFramework.map.isMapLoaded && now - lastEmote > 2000)
         {
            this._emoteManager.playEmoteAnim(emoticonID,this._uiFramework.map.getEmoteLayer(),_actorManager.myActor,_actorManager.myActor.getActorBound());
            obj = new Object();
            obj.emoticonID = emoticonID;
            obj.chatChannel = "room";
            msg = new BattleMessage("showEmoticon",obj);
            this._gateway.sendMsg(msg);
            this.lastEmote = now;
         }
      }
      
      private function getExternalRegistrationPrompt() : UiExternalRegistrationPrompt
      {
         return new UiExternalRegistrationPrompt();
      }
      
      private function onGCashUpdated(e:GlobalEvent) : void
      {
         this._gCash = e.data.count;
         if(this._shopWidgetInstance)
         {
            (this._shopWidgetInstance as IShopWidget).gCash = this._gCash;
         }
      }
      
      public function removeAcceptDecline(mc:MovieClip) : void
      {
         closeWindow(mc.parent.parent);
      }
      
      private function onUserLevelSet(evt:GlobalEvent) : void
      {
         var showNetworkStats:Boolean = false;
         var panelHeight:Number = NaN;
         var clientVersion:String = null;
         var serverVersion:String = null;
         if(evt.data.isGuest)
         {
            if(this.timerGuest == null)
            {
               this.timerGuest = new Timer(1000 * 60 * 20);
               this.timerGuest.addEventListener(TimerEvent.TIMER,onRegisterPrompt,false,0,true);
            }
         }
         else if(this.timerGuest != null)
         {
            this.timerGuest.stop();
         }
         if(_actorManager.myActor.isDev())
         {
            if(this._uiFramework.showFrameRate)
            {
               showNetworkStats = true;
               panelHeight = 120 + (!!showNetworkStats?25:0);
               this.frameRate = new FrameRate(_uiFramework,this._gateway,showNetworkStats);
               if(this._fileVersionManager)
               {
                  clientVersion = this._fileVersionManager.getClientVersion(null);
                  if(clientVersion != null)
                  {
                     this.frameRate.setClientVer(clientVersion);
                  }
                  serverVersion = this._fileVersionManager.getServerVersion();
                  if(serverVersion != null)
                  {
                     this.frameRate.setServerVer(serverVersion);
                  }
               }
               GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.MAP_MOUSE_MOVE,onMapMouseMove,false,0,true);
               this.winFrameRate = this._windowFactory.createLegacyZomgWindow(this._linkManager.baseURL + this._configManger.genericWindowUrl,this.frameRate,true,false,false,false,140,panelHeight,140,83,false,false,this._uiFramework.loaderContextFactory);
               this.winFrameRate.name = "FrameRate";
               openWindow(this.winFrameRate);
            }
         }
      }
      
      private function onQuestsLoaded(evt:GlobalEvent) : void
      {
         GlobalEvent.eventDispatcher.removeEventListener(GlobalEvent.QUESTS_LOADED,onQuestsLoaded);
         var msg2:BattleMessage = new BattleMessage("orb",null);
         this._gateway.sendMsg(msg2);
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.PLAYER_INFO_LOADED,{}));
      }
      
      private function onMapServerZoneProgress(event:ProgressEvent) : void
      {
      }
      
      public function playHeartSound(hpPer:Number) : void
      {
         var v:Number = NaN;
         var t:SoundTransform = null;
         var start:Boolean = false;
         if(hpPer < 35 && hpPer > 20 && this.hbType != "Normal")
         {
            this.hbSound = this.getSound("ui_heartbeat");
            this.hbType = "Normal";
            start = true;
         }
         else if(hpPer <= 20 && this.hbType != "Critical")
         {
            this.hbSound = this.getSound("heartbeat_critic");
            this.hbType = "Critical";
            start = true;
         }
         else if(hpPer >= 35)
         {
            start = false;
            this.hbType = "none";
            if(this.hbChannel != null)
            {
               this.hbChannel.stop();
               this.hbChannel = null;
               this.hbSound = null;
            }
         }
         if(start)
         {
            if(this.hbChannel != null)
            {
               this.hbChannel.stop();
            }
            v = this._uiFramework.volumes.soundVolume / 100;
            t = new SoundTransform(v);
            try
            {
               this.hbChannel = this.hbSound.play(0,1000000,t);
            }
            catch(err:Error)
            {
               this.hbChannel = null;
            }
         }
      }
      
      public function openGameHelp(topicName:String = null) : void
      {
         this.helpPanel.rebuildHelpTopics();
         if(!isWindowOpen(this.winHelpPanel))
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.GENERIC_OPEN}));
            openWindow(this.winHelpPanel);
         }
         if(topicName != null)
         {
            this.helpPanel.displayTopicContentByName(topicName);
         }
      }
      
      private function initActionBar() : void
      {
         this.actionBar = new UiActionBar(this._uiFramework,this._gateway,this._actorManager);
         this.actionBar.addEventListener(ActionBarEvent.MENU_ITEM_CLICK,onMenuItemClick,false,0,true);
         this.actionBar.addEventListener(ActionBarEvent.BTN_POSE_CLICK,onActionBarBtnPoseClick,false,0,true);
         this.actionBar.addEventListener(ActionBarEvent.BTN_PDA_CLICK,onActionBarBtnPDAClick,false,0,true);
         this.actionBar.itemBarRotator.addEventListener(ActionBarEvent.BTN_INVENTORY_CLICK,onActionBarBtnInventoryClick,false,0,true);
         this.actionBar.itemBarRotator.addEventListener(ActionBarEvent.BTN_CONSUMABLE_CLICK,onActionBarBtnConsumableClick,false,0,true);
      }
      
      public function openCloseConsumable() : void
      {
         if(!isInventoryOpen())
         {
            openConsumablesInventory();
            if(this.inventoryPanel.activeTab == UiInventory.TAB_CONSUMABLES && this.mouseIcon.isPointTarget >= 0)
            {
               this.mouseIcon.isPointTarget = -1;
            }
         }
         else
         {
            closeInventory(null);
         }
      }
      
      private function openWindow(w:DisplayObject) : void
      {
         if(!this._flexWinLayer.contains(w))
         {
            this._flexWinLayer.addChild(w);
         }
      }
      
      private function onShopWidgetAddedToStage(e:Event) : void
      {
         var widget:DisplayObject = e.target as DisplayObject;
         this.positionShopWidget();
      }
      
      private function onUnloaded(evt:Event) : void
      {
         trace("onUnloaded: ",10);
         removeLoaderListeners(LoaderInfo(evt.target).loader.contentLoaderInfo);
      }
      
      private function getHelpTextPanel() : UiHelpTextPanel
      {
         return new UiHelpTextPanel(this._gateway,this._linkManager,this._fileVersionManager,this._isLoadedExternally);
      }
      
      private function onInventoryRingSalvage(evt:UiEvents) : void
      {
         var param:Object = null;
         var msg:BattleMessage = null;
         var slot:int = ItemManager(RingItemManager.getInstance()).selectedSlot;
         if(slot >= 0 && ActorManager.getInstance().myActor.rings[slot] != null && !ActorManager.getInstance().myActor.isSlotLock(slot))
         {
            this.ringInventory.ringUpgrade.disableButtons();
            ActorManager.getInstance().myActor.rings[slot].isUpdating = true;
            param = {
               "ringSlot":slot,
               "upgrade":"SALVAGE"
            };
            msg = new BattleMessage("changeRing",param);
            this._gateway.sendMsg(msg);
         }
      }
      
      private function onShopWidgetDeclineClick(event:Event) : void
      {
         cleanupShopWidgetWarning();
      }
      
      private function positionShopWidget() : void
      {
         if(this._shopWidgetInstance && this.winMap && this._flexShopWidgetLayer)
         {
            this._shopWidgetInstance.x = this._flexShopWidgetLayer.width - this._shopWidgetInstance.width - this.winMap.getShopButtonOffset() + 20;
            this._shopWidgetInstance.y = this.winMap.getShopButtonBottom() - 1;
            (this._shopWidgetInstance as IShopWidget).setTabGap(this._shopWidgetInstance.width - 20 - this.winMap.getShopButtonWidth() + 2,this.winMap.getShopButtonWidth() - 2);
         }
      }
      
      private function setCLCapVisible(visible:Boolean) : void
      {
         if(visible)
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.CL_CAP_OPEN,null));
         }
         else
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.CL_CAP_CLOSE,null));
         }
      }
      
      public function onEmotePopupChange(shown:Boolean) : void
      {
         var type:AlertTypes = !!shown?AlertTypes.GENERIC_OPEN:AlertTypes.GENERIC_CLOSE;
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":type}));
      }
      
      public function onEmoteActivated(emoteID:String) : void
      {
         playEmote(emoteID);
      }
      
      private function showPlayerStats(actor:BaseActor) : void
      {
         var showAllTabs:* = false;
         var ps:UiPlayerStats = null;
         var w:* = undefined;
         var obj:Object = null;
         var pd:UiPaperDoll = null;
         var param:Object = null;
         var msg:BattleMessage = null;
         if(!actor)
         {
            return;
         }
         if(ActorManager.getInstance().myActor.isGuestUser())
         {
            this.showMembersOnlyMessage();
            return;
         }
         if(this.playerStats[actor.actorId] == null)
         {
            showAllTabs = actor.actorId == ActorManager.getInstance().myActor.actorId;
            ps = new UiPlayerStats(this._uiFramework,this._linkManager,showAllTabs);
            if(actor == _actorManager.myActor)
            {
               ps.ghiProgess = _actorManager.myActor.ghiProgress;
            }
            w = this._windowFactory.createLegacyZomgWindow(this._linkManager.baseURL + this._configManger.genericWindowUrl,ps,true,false,true,false,290,400,290,400,false,false,this._uiFramework.loaderContextFactory);
            w.useMask(false);
            this.playerStats[actor.actorId] = w;
            w.addEventListener("CLOSE",onPlayerStatsClose);
            openWindow(w);
            obj = new Object();
            obj.actorId = actor.actorId;
            obj.userName = actor.actorName;
            obj.avatarUrl = actor.url.substring(0,actor.url.lastIndexOf("_strip")) + "_flip" + actor.url.substring(actor.url.lastIndexOf("_strip") + 6,actor.url.length);
            ps.setInfo(obj);
            if(ActorManager.getInstance().myActor.actorId == actor.actorId)
            {
               collectiblesManager = new CollectiblesManager(ps.collectiblesHolder);
               collectiblesManager.refresh(CollectiblesLoadManager.collectibles);
               ghiBuffsManager = new GhiManager(ps.ghiHolder,ps.ghiInfo,ps.noGhiText);
               ghiBuffsManager.refresh(GhiBuffsLoadManager.ghiBuffs);
            }
            actor.setPaperDollSubscription(true);
            actor.addEventListener(BaseActor.PAPER_DOLL_STATS_UPDATED,onActorStatsUpdated,false,0,true);
            pd = ps.paperDoll;
            param = {"id":actor.actorId};
            param = {"id":actor.actorId};
            msg = new BattleMessage("subscribeToPaperDollInfo",param);
            msg.tag = pd;
            this._gateway.sendMsg(msg);
            actor.addEventListener(BaseActor.REMOVING_ACTOR_FROM_LIST,onActorRemovingFromActorList,false,0,true);
         }
         else
         {
            DisplayObjectUtils.bringToFront(this.playerStats[actor.actorId]);
         }
      }
      
      private function initSoundMap() : void
      {
         this._soundMap = new Object();
         this._soundMap[AlertTypes.GENERIC_OPEN.toString()] = "ui_tutorial_box_open";
         this._soundMap[AlertTypes.GENERIC_CLOSE.toString()] = "ui_tutorial_box_close";
         this._soundMap[AlertTypes.GENERIC_SUCCESS.toString()] = "ui_tutorial_box_open";
         this._soundMap[AlertTypes.GENERIC_FAIL.toString()] = "ui_avatar_atk_dryfire";
         this._soundMap[AlertTypes.MESSAGE_RECIEVED_OR_SENT.toString()] = "ui_whisper";
         this._soundMap[AlertTypes.IRIS_OPEN.toString()] = "ui_iris_open";
         this._soundMap[AlertTypes.IRIS_CLOSE.toString()] = "ui_iris_close";
         this._soundMap[AlertTypes.RING_UPGRADE.toString()] = "ui_ring_upgrade";
         this._soundMap[AlertTypes.RING_EQUIP.toString()] = "ui_ring_equip";
         this._soundMap[AlertTypes.RECIPE_FOUND.toString()] = "ui_loot_uncommon";
         this._soundMap[AlertTypes.LOOT_COMMON.toString()] = "ui_loot_common";
         this._soundMap[AlertTypes.LOOT_RING.toString()] = "ui_loot_ring";
         this._soundMap[AlertTypes.LOOT_RARE.toString()] = "ui_loot_rare";
         this._soundMap[AlertTypes.POWER_UP_FOUND.toString()] = "ui_loot_rare";
         this._soundMap[AlertTypes.POWER_UP_PURCHASED.toString()] = "ui_loot_rare";
         this._soundMap[AlertTypes.MISSION_COMPLETED.toString()] = "ui_mission_completed_4";
         this._soundMap[AlertTypes.UPDATE_PDA_STEP.toString()] = "update_pda_step";
         this._soundMap[AlertTypes.GHI_ABILITY_EARNED.toString()] = "ghi_ability";
         this._soundMap[AlertTypes.COUNTER_START.toString()] = "ui_zonebc_slide_in";
         this._soundMap[AlertTypes.COUNTER_DONE.toString()] = "ui_zonebc_slide_out";
         this._soundMap[AlertTypes.ZONE_BROADCAST_START.toString()] = "ui_zonebc_slide_in";
         this._soundMap[AlertTypes.ZONE_BROADCAST_STOP.toString()] = "ui_zonebc_slide_out";
         this._soundMap[AlertTypes.CENTER_PRINT_START.toString()] = "ui_centerprint_beep";
      }
      
      public function openLocalMiniMap() : void
      {
         if(this.pdaWidget)
         {
            this.openPDAWidget(this.pdaWidget.localMapTabIndex);
         }
      }
      
      private function onGameItemUpdate(evt:GlobalEvent) : void
      {
         var item:Object = null;
         var bm:BattleMessage = null;
         var fullUpdate:Boolean = false;
         for each(item in evt.data.items)
         {
            if(this.inventoryPanel.uiGameItems.containItem(item.id))
            {
               this.inventoryPanel.uiGameItems.updateItemCount(item.id,item.qt);
               continue;
            }
            fullUpdate = true;
            break;
         }
         if(fullUpdate)
         {
            bm = new BattleMessage(BattleEvent.INVENTORY_INFO,null);
            this._gateway.sendMsg(bm);
         }
      }
      
      public function openRingInventory() : void
      {
         openInventory(UiInventory.TAB_RING);
      }
      
      private function onWinMapMove(e:Event) : void
      {
         this.resizeShopWidgetLayer();
      }
      
      private function onCloseMembersOnlyMessage(evt:Event) : void
      {
         if(membersOnlyMessageWindow)
         {
            closeWindow(membersOnlyMessageWindow);
            membersOnlyMessageWindow = null;
         }
         if(evt)
         {
            DisplayObject(evt.target).removeEventListener("CLOSE",onCloseMembersOnlyMessage);
         }
      }
      
      private function onRegPromptLogout(evt:Event) : void
      {
         onRegPromptClose();
         this.dispatchEvent(new TrackingEvent(TrackingEvent.TRACKING,TrackingEvent.GUEST_REGISTRATION,"quitNoRegister"));
         logout();
      }
      
      private function cleanupShopWidgetWarning() : void
      {
         removeAcceptDecline(_shopWidgetWarning);
         _shopWidgetWarning.removeEventListener("BtnAcceptClick",onShopWidgetAcceptClick);
         _shopWidgetWarning.removeEventListener("BtnDeclineClick",onShopWidgetDeclineClick);
         _shopWidgetWarning = null;
      }
      
      private function unsubscribeToPaperDollUpdates(actor:BaseActor) : void
      {
         var actorId:String = null;
         var param:Object = null;
         var msg:BattleMessage = null;
         if(actor != null)
         {
            actor.removeEventListener(BaseActor.PAPER_DOLL_STATS_UPDATED,onActorStatsUpdated);
            actor.removeEventListener(BaseActor.REMOVING_ACTOR_FROM_LIST,onActorRemovingFromActorList);
            actor.setPaperDollSubscription(false);
            actorId = actor.actorId;
            param = {"id":actorId};
            if(actorId == ActorManager.getInstance().myActor.actorId)
            {
               msg = new BattleMessage("unsubscribeToPaperDollInfo",param);
               this._gateway.sendMsg(msg);
            }
         }
      }
      
      private function isWindowOpen(w:DisplayObject) : Boolean
      {
         return w && this._flexWinLayer.contains(w);
      }
      
      private function initAlertMaps() : void
      {
         this.initSoundMap();
         this.initCenterPrintMap();
      }
      
      private function onMapSoundLoadStart(event:GlobalEvent) : void
      {
      }
      
      private function onLfgRefresh(evt:UiEvents) : void
      {
         this.updateLfgList();
      }
      
      public function openCloseInventory() : void
      {
         if(this.inventoryPanel)
         {
            if(!isInventoryOpen())
            {
               openInventory();
               if(this.inventoryPanel.activeTab == UiInventory.TAB_RING && this.mouseIcon.isPointTarget >= 0)
               {
                  this.mouseIcon.isPointTarget = -1;
               }
            }
            else
            {
               closeInventory(null);
            }
         }
      }
      
      private function closeYouAreDazed() : void
      {
         if(isWindowOpen(this.winYouAreDazed))
         {
            closeWindow(this.winYouAreDazed);
         }
      }
      
      private function onDialogDataUpdated(e:GlobalEvent) : void
      {
         var isNaturalDone:Boolean = false;
         var ac:BaseActor = null;
         var txt:String = null;
         var actorMc:Sprite = null;
         var options:Array = null;
         var oid:int = 0;
         var obj:Object = e.data.data;
         if(obj == null)
         {
            return;
         }
         if(obj.dlg == "DONE" && obj.con != null)
         {
            isNaturalDone = true;
            if(obj.isInfo)
            {
               isNaturalDone = obj.isNaturalDone;
            }
            this.dialogPanel.endConv(obj.con,isNaturalDone);
            return;
         }
         if(obj.dlg != null && obj.con != null && obj.npc != null)
         {
            ac = ActorManager.actorIdToActor(obj.npc);
            if(ac != null && _actorManager.myActor != null)
            {
               txt = "";
               if(obj.npcText != null)
               {
                  txt = obj.npcText;
                  actorMc = ac.getActorDisplay().getDialogPortrait();
                  if(this.dialogPanel)
                  {
                     this.dialogPanel.addText(obj.con,obj.dlg,obj.npc,ac.actorId,ac.actorName,actorMc,txt,null);
                  }
               }
               if(obj.playerText != null || obj.options != null)
               {
                  if(obj.options != null)
                  {
                     options = new Array();
                     for(oid = 0; oid < obj.options.length; oid++)
                     {
                        options.push({
                           "id":oid,
                           "txt":obj.options[oid]
                        });
                     }
                  }
                  if(obj.playerText != null)
                  {
                     txt = obj.playerText;
                  }
                  else
                  {
                     txt = null;
                  }
                  ac = _actorManager.myActor;
                  actorMc = ac.getActorDisplay().getDialogPortrait();
                  this.dialogPanel.addText(obj.con,obj.dlg,obj.npc,ac.actorId,ac.actorName,actorMc,txt,options);
               }
               if(this.winDialog && !isWindowOpen(this.winDialog))
               {
                  this.openDialog();
                  this.winDialog.setMaxHeight(170);
               }
            }
         }
      }
      
      private function onSecError(evt:SecurityErrorEvent) : void
      {
         trace("onSecError: " + evt.text,10);
         removeLoaderListeners(LoaderInfo(evt.target).loader.contentLoaderInfo);
      }
      
      private function onGhiLadderAdvance(evt:BattleEvent) : void
      {
         _actorManager.myActor.ghiBuffsUpdater.updateGhiBuffs();
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.GHI_ABILITY_EARNED}));
      }
      
      private function openRecrewt(e:UiEvents = null) : void
      {
         if(recrewtPanel != null)
         {
            if(ActorManager.getInstance().myActor.isGuestUser())
            {
               this.showMembersOnlyMessage();
               return;
            }
            this.updateLfgList();
            if(!isRecrewtOpen())
            {
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.GENERIC_OPEN}));
               openWindow(this.winRecrewtPanel);
            }
         }
      }
      
      private function onVerify(evt:UiEvents) : void
      {
         showVerificationPrompt();
      }
      
      private function onActorRemovingFromActorList(e:Event) : void
      {
         var w:* = undefined;
         var actor:BaseActor = e.target as BaseActor;
         if(actor != null)
         {
            actor.removeEventListener(BaseActor.PAPER_DOLL_STATS_UPDATED,onActorStatsUpdated);
            actor.removeEventListener(BaseActor.REMOVING_ACTOR_FROM_LIST,onActorRemovingFromActorList);
            w = this.playerStats[actor.actorId];
            if(w != null)
            {
               w.dispatchEvent(new Event("CLOSE"));
            }
         }
      }
      
      private function onChatFiltersLoaded(evt:BattleEvent) : void
      {
      }
      
      private function onPlayerStatsRequested(e:GlobalEvent) : void
      {
         var data:Object = e.data;
         var actor:BaseActor = data.actor;
         if(actor)
         {
            this.showPlayerStats(actor);
         }
      }
      
      private function startSitStandTimer() : void
      {
         if(!sitStandTimer.running)
         {
            sitStandTimer.addEventListener(TimerEvent.TIMER,onSitStandTimerDone);
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALLOW_SIT_STAND,{"allow":false}));
            sitStandTimer.start();
         }
      }
      
      private function onRingItemMove(evt:ItemManagerEvent) : void
      {
         ActorManager.getInstance().myActor.moveRing(evt.params.startSlot,evt.params.endSlot);
         if(evt.params.endSlot <= UiItemBar.MAX_BAR_SLOT_INDEX)
         {
            ActorManager.getInstance().myActor.selectedRingSlot = evt.params.endSlot;
         }
         else
         {
            ActorManager.getInstance().myActor.selectedRingSlot = -1;
         }
      }
      
      private function getSound(soundId:String) : Sound
      {
         var c:Class = null;
         var s:Sound = null;
         try
         {
            c = this._uiFramework.assetFactory.getClass(soundId);
            s = new c() as Sound;
         }
         catch(e:Error)
         {
            trace(e.message);
         }
         return s;
      }
      
      private function onClearSelectedTarget(e:GlobalEvent) : void
      {
         if(this.actionBar && !this.actionBar.usePowerMeter)
         {
            ActorManager.getInstance().clearSelectedTarget();
         }
      }
      
      private function removeButtonMenuViaID(id:String) : void
      {
         var w:* = this._gbms[id];
         if(w && w.parent)
         {
            w.parent.removeChild(w);
            delete this._gbms[id];
         }
      }
      
      public function onRegisteredThroughChat() : void
      {
         var e:UiEvents = new UiEvents(UiEvents.REGISTER,"chat");
         this.onRegister(e);
      }
      
      private function updateLfgList() : void
      {
         var msg:BattleMessage = new BattleMessage("lookingForMembers",null);
         msg.addEventListener(BattleEvent.CALL_BACK,onLfmCallBack);
         this._gateway.sendMsg(msg);
      }
      
      public function openClosePDAWidget() : void
      {
         if(isWindowOpen(this.winPDAPanel))
         {
            closePDAWidget();
         }
         else
         {
            openPDAWidget();
         }
      }
      
      private function onRingStopCharge(evt:ItemManagerEvent) : void
      {
      }
      
      private function onMusicPlayerLinkClick(e:Event) : void
      {
         openMusicPlayer();
      }
      
      public function onLinkClicked(e:GlobalEvent) : void
      {
         var w:int = 0;
         var h:int = 0;
         var list:Array = e.data.links;
         if(list != null)
         {
            this.openWindow(this.winLinksPanel);
            this.linksPanel.setLinks(list);
            this.winLinksPanel.x = this.mcWinLayer.mouseX;
            this.winLinksPanel.y = this.mcWinLayer.mouseY;
            w = this.linksPanel.width + 15;
            h = this.linksPanel.height + 10;
            if(w < 80)
            {
               w = 80;
            }
            if(h < 50)
            {
               h = 50;
            }
            this.winLinksPanel.setSize(w,h);
            this.winLinksPanel.checkPos();
         }
      }
      
      private function onUiSettingVolume(evt:UiEvents) : void
      {
         if(evt.type == UiEvents.SET_MUSIC_VOLUME)
         {
            this._uiFramework.volumes.musicVolume = int(evt.value);
         }
         else if(evt.type == UiEvents.SET_SFX_VOLUME)
         {
            this._uiFramework.volumes.soundVolume = int(evt.value);
         }
      }
      
      private function onInventoryRingUpgrade(evt:UiEvents) : void
      {
         var param:Object = null;
         var msg:BattleMessage = null;
         var slot:int = ItemManager(RingItemManager.getInstance()).selectedSlot;
         if(slot >= 0 && ActorManager.getInstance().myActor.rings[slot] != null && !ActorManager.getInstance().myActor.isSlotLock(slot))
         {
            this.ringInventory.ringUpgrade.disableButtons();
            ActorManager.getInstance().myActor.rings[slot].isUpdating = true;
            param = {
               "ringSlot":slot,
               "upgrade":"STEP"
            };
            msg = new BattleMessage("changeRing",param);
            this._gateway.sendMsg(msg);
         }
      }
      
      private function onAbuseReportClose(evt:Event) : void
      {
         if(ActorManager.getInstance().myActor.isGuestUser())
         {
            this.showMembersOnlyMessage();
            return;
         }
         if(isWindowOpen(this.winAbuseReport))
         {
            closeWindow(this.winAbuseReport);
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.GENERIC_CLOSE}));
         }
      }
      
      private function getNewMouseIcons() : UiMouseIcons
      {
         return new UiMouseIcons();
      }
      
      private function onMapWarpInTransitionStart(evt:GlobalEvent) : void
      {
         if(!_firstMapLoad)
         {
            this.setUiBackImgVisible(false);
         }
         _firstMapLoad = false;
      }
      
      private function getNewYouAreDazed() : UiYouAreDazed
      {
         var youAreDazed:MovieClip = MovieClip(this._uiFramework.assetFactory.getInstance("UiYouAreDazedFl"));
         return new UiYouAreDazed(youAreDazed);
      }
      
      private function onShopWidgetAcceptClick(event:Event) : void
      {
         cleanupShopWidgetWarning();
         if(!ExternalInterface.available)
         {
         }
      }
      
      private function onMapMouseMove(evt:MouseEvent) : void
      {
         this.frameRate.mx = evt.localX;
         this.frameRate.my = evt.localY;
      }
      
      private function onDialogResize(evt:Event) : void
      {
         var size:Object = this.winDialog.getSize();
         this.dialogPanel.resize(size.width,size.height);
      }
      
      private function openYouAreDazed() : void
      {
         var size:Object = null;
         this.closeDialogBox();
         if(!isWindowOpen(this.winYouAreDazed))
         {
            openWindow(this.winYouAreDazed);
            size = this.winYouAreDazed.getSize();
            this.centerOnMap(this.winYouAreDazed,size.width,size.height);
         }
      }
      
      private function onInvalidGuestOperation(e:GlobalEvent) : void
      {
         this.showMembersOnlyMessage();
      }
      
      public function centerOnMap(displayObject:DisplayObject, width:Number = NaN, height:Number = NaN) : void
      {
         var size:Object = this.winMap.getSize();
         var _width:Number = width;
         if(isNaN(width))
         {
            _width = displayObject.width;
         }
         var _height:Number = height;
         if(isNaN(height))
         {
            _height = displayObject.height;
         }
         displayObject.x = this.winMap.x + (size.width - _width) / 2;
         displayObject.y = this.winMap.y + (size.height - _height) / 2;
      }
      
      private function setUiBackImgVisible(visible:Boolean) : void
      {
         if(this._backImgDisplayObjectAttacher == null)
         {
            this._backImgDisplayObjectAttacher = new VisManagerSingleParent(this.mcLoadLayer);
         }
         if(!visible)
         {
            this.backImg.clear();
         }
         this._backImgDisplayObjectAttacher.setVisible(this.backImg,visible);
         if(visible)
         {
            trace("************* STOP ");
            this.winMap.winHeader.stopFps();
         }
         else
         {
            trace("************* START ");
            this.winMap.winHeader.startFps();
         }
      }
      
      private function onRingSelectionChange(evt:ItemManagerEvent) : void
      {
         var params:Object = null;
         if(evt.itemIcon != null)
         {
            params = evt.params;
            if(params.selectionChanged)
            {
               this.ringInventory.setRingInfo(evt.itemIcon.itemId,evt.itemIcon.slot);
            }
            if(evt.itemIcon.slot <= UiItemBar.MAX_BAR_SLOT_INDEX)
            {
               ActorManager.getInstance().myActor.selectedRingSlot = evt.itemIcon.slot;
            }
            else
            {
               ActorManager.getInstance().myActor.selectedRingSlot = -1;
            }
         }
         else
         {
            ActorManager.getInstance().myActor.selectedRingSlot = -1;
         }
      }
      
      private function onWorldCounterUpdate(evt:GlobalEvent) : void
      {
         var data:Object = evt.data;
         var name:String = data.name;
         var title:String = data.title;
         var value:uint = data.value;
         var show:Boolean = data.show;
         var goal:int = data.goal;
         this.winMap.updateCounter(name,title,value,goal,show);
      }
      
      private function onMovieDone(evt:Event) : void
      {
         if(this.winMoviePlayer != null)
         {
            closeWindow(this.winMoviePlayer);
            this.winMoviePlayer = null;
         }
         if(this.uiMoviePlayer != null)
         {
            this.uiMoviePlayer.stopMovie();
         }
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MOVIE_DONE,this.uiMoviePlayer.url));
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MAP_SET_DIALOG_BUTTON_VISIBLE,{"visible":true}));
         this.disableDialogDuringMovie = false;
      }
      
      public function showShopWidget(show:Boolean, source:DisplayObject = null) : void
      {
         if(this._shopWidgetInstance == null)
         {
            if(show)
            {
               this.getShopWidget();
            }
            return;
         }
         if(show && !this._flexShopWidgetLayer.contains(this._shopWidgetInstance))
         {
            this._flexShopWidgetLayer.addChild(this._shopWidgetInstance);
            this.positionShopWidget();
            this._shopWidgetInstance.addEventListener(Event.RESIZE,onShopWidgetResize,false,0,true);
            this.showShopCallout(false);
         }
         else if(!show && this._flexShopWidgetLayer.contains(this._shopWidgetInstance))
         {
            this._flexShopWidgetLayer.removeChild(this._shopWidgetInstance);
            this._flexUIManager.clearContentCache(ShopConstants.SHOP_WIDGET_CONTENT_CACHE);
            this._shopWidgetInstance.removeEventListener(Event.RESIZE,onShopWidgetResize);
         }
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.BACK_ALLEY_BARGAINS_SHOW_CHANGED,{
            "showing":show,
            "source":source
         }));
      }
      
      public function get uiLoaded() : Boolean
      {
         return _uiLoaded;
      }
      
      private function setUiTesterVisible(visible:Boolean) : void
      {
         if(!_uiTesterInstance)
         {
            this.getUiTester();
            return;
         }
         if(visible)
         {
            openWindow(this._uiTesterWindow);
         }
         else if(!visible && isWindowOpen(this._uiTesterWindow.parent))
         {
            closeWindow(this._uiTesterWindow);
         }
      }
      
      public function openGenericButtonMenu(menuId:String, width:Number, text:String, btnLabels:Array, subText:String = null) : void
      {
         var gbm:UiGenericButtonMenu = null;
         var size:Object = null;
         var w:* = this._gbms[menuId];
         if(!w)
         {
            gbm = new UiGenericButtonMenu(menuId,width,text,btnLabels,subText);
            gbm.addEventListener("ButtonClick",onGenericButtonMenuClick,false,0,true);
            gbm.x = gbm.y = 5;
            w = this._windowFactory.createLegacyZomgWindow(this._linkManager.baseURL + this._configManger.genericWindowUrl,gbm,true,false,false,false,gbm.width + 10,gbm.height + 10,gbm.width + 10,gbm.height + 10,false,false,this._uiFramework.loaderContextFactory);
            size = this.winMap.getSize();
            w.x = size.width / 2 - (gbm.width + 10) / 2 + this.winMap.x;
            w.y = size.height / 2 - (gbm.height + 10) / 2 + this.winMap.y;
            this._gbms[menuId] = w;
         }
         openWindow(w);
      }
      
      private function loadModules() : void
      {
         var classRef:Class = null;
         var instance:Object = null;
         var module:XML = null;
         var params:XML = null;
         for each(module in _configManger.moduleXMLList)
         {
            classRef = getDefinitionByName(module.name) as Class;
            instance = new classRef();
            params = new XML(String(module.params));
            instance.init(module.path,module.@title,this._gateway,_flexWinLayer,_flexUIManager,_windowManager,_windowFactory,params);
            _moduleManager.push(instance);
         }
      }
      
      private function onProfileRequested(e:GlobalEvent) : void
      {
         if(ActorManager.getInstance().myActor.isGuestUser())
         {
            showMembersOnlyMessage();
         }
         var baseUrl:String = this._linkManager.getLink("launch_profile");
         navigateToURL(new URLRequest(baseUrl + e.data._actorId),"_blank");
      }
      
      private function onGameHelpClose(evt:Event) : void
      {
         this.closeGameHelp();
      }
      
      public function isRecrewtOpen() : Boolean
      {
         return this.mcWinLayer && this.winRecrewtPanel && isWindowOpen(this.winRecrewtPanel);
      }
      
      private function initItemManagers() : void
      {
         var itemDisplay:ItemDisplay = !!this.ringInventory?this.ringInventory.ringItemDisplay:null;
         var itemBar:UiItemBar = !!this.actionBar?this.actionBar.itemBarRotator.ringBar:null;
         RingItemManager.getInstance().init(this._uiFramework,new RingItemManagerCustomization(),itemDisplay,itemBar,this.mcDragLayer);
         RingItemManager.getInstance().addEventListener(ItemManagerEvent.ITEM_MOVE,onRingItemMove,false,0,true);
         RingItemManager.getInstance().addEventListener(ItemManagerEvent.SELECTION_CHANGE,onRingSelectionChange,false,0,true);
         RingItemManager.getInstance().addEventListener(ItemManagerEvent.START_CHARGE,onRingStartCharge,false,0,true);
         RingItemManager.getInstance().addEventListener(ItemManagerEvent.STOP_CHARGE,onRingStopCharge,false,0,true);
         RingItemManager.getInstance().addEventListener(ItemManagerEvent.CANCEL_CHARGE,onRingCancelCharge,false,0,true);
         if(uiSwapOrbs)
         {
            RingItemManager.getInstance().uiSwapOrbs = this.uiSwapOrbs;
         }
         itemDisplay = !!this.inventoryPanel?this.inventoryPanel.uiConsumableItems.itemDisplay:null;
         itemBar = !!this.actionBar?this.actionBar.itemBarRotator.consumableBar:null;
         ConsumableItemManager.getInstance().init(this._uiFramework,null,itemDisplay,itemBar,this.mcDragLayer);
      }
      
      private function onActionBarBtnInventoryClick(evt:Event) : void
      {
         this.openCloseInventory();
      }
      
      private function closeRecrewt(evt:Event) : void
      {
         if(this.recrewtPanel != null && isWindowOpen(this.winRecrewtPanel))
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.GENERIC_CLOSE}));
            closeWindow(this.winRecrewtPanel);
         }
      }
      
      private function onMoveDirChanged(e:GlobalEvent) : void
      {
         this._moveDir = e.data.moveDir;
      }
      
      private function onOpenRecrewt(e:GlobalEvent) : void
      {
         this.openRecrewt(null);
      }
      
      private function createOptionPanel() : void
      {
         var obj:Object = new Object();
         obj.dW = 400;
         obj.dH = 300;
         obj.tabs = new Array();
         obj.tabs[0] = {
            "title":"SOUND",
            "resetButtonText":"Reset sound to defaults",
            "controls":{
               "typ":"volume",
               "data":[{
                  "title":"MUSIC",
                  "event":UiEvents.SET_MUSIC_VOLUME,
                  "_defVol":this._uiFramework.volumes.musicVolume,
                  "addPlayerLink":true
               },{
                  "title":"SOUND",
                  "event":UiEvents.SET_SFX_VOLUME,
                  "_defVol":this._uiFramework.volumes.soundVolume
               }]
            }
         };
         obj.tabs[1] = {
            "title":"CONTROLS",
            "resetButtonText":"Reset keys to defaults",
            "controls":{
               "typ":"key_controls",
               "defaultData":this._defaultKeys,
               "data":this._keys
            }
         };
         obj.tabs[2] = {
            "title":"Graphics Options",
            "resetButtonText":"Reset graphics options to defaults",
            "controls":{"typ":"graphicOptions"}
         };
         obj.tabs[3] = {
            "title":"Game Settings",
            "resetButtonText":"Reset game settings to defaults",
            "controls":{"typ":"gameSettings"}
         };
         this.optionPanel = this.getNewOptionPanel(obj,this.mcBaseWinLayer.stage);
         this.optionPanel.addEventListener(UiEvents.SET_MUSIC_VOLUME,onUiSettingVolume,false,0,true);
         this.optionPanel.addEventListener(UiEvents.SET_SFX_VOLUME,onUiSettingVolume,false,0,true);
         this.optionPanel.addEventListener(UiEvents.MUSIC_PLAYER_LINK_CLICK,onMusicPlayerLinkClick,false,0,true);
         this.winOption = _windowFactory.createLegacyZomgWindow(this._linkManager.baseURL + this._configManger.genericWindowUrl,this.optionPanel,true,false,true,false,375,325,375,325,false,false,this._uiFramework.loaderContextFactory);
         this.winOption.addEventListener("CLOSE",onOptionPanelClose,false,0,true);
      }
      
      private function onMenuItemClick(evt:ActionBarEvent) : void
      {
         var e:UiEvents = null;
         switch(evt.menuItemName.toLowerCase())
         {
            case Menu.CMD_CLCAP.toLowerCase():
               this.setCLCapVisible(true);
               break;
            case Menu.CMD_UI_TESTER.toLowerCase():
               this.setUiTesterVisible(true);
               break;
            case Menu.CMD_ADMIN_PANEL.toLocaleLowerCase():
               toggleAdminPanel();
               break;
            case Menu.CMD_OPTIONS.toLowerCase():
               openOptionsPanel();
               break;
            case Menu.CMD_MUSIC_PLAYER.toLowerCase():
               openMusicPlayer();
               break;
            case Menu.CMD_HELP.toLowerCase():
               this.openGameHelp();
               break;
            case Menu.CMD_REGISTER.toLowerCase():
               e = new UiEvents(UiEvents.REGISTER,"menu");
               this.onRegister(e);
               break;
            case Menu.CMD_DISCONNECT.toLowerCase():
            case Menu.CMD_QUIT.toLowerCase():
               if(ActorManager.getInstance().myActor.isGuestUser())
               {
                  showRegistrationPrompt("Quit Now?","Are you sure you want to do that? If you quit without registering, you will lose ALL of your progress!\n\nRegistering an account is quick, easy, and free and opens up many useful Gaia features!","quit",HIGH);
               }
               else
               {
                  logout();
               }
               break;
            case Menu.CMD_REPORT_ABUSE.toLowerCase():
               this.openAbuseReport();
               break;
            case Menu.CMD_SHOPS.toLowerCase():
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.SET_BACK_ALLEY_BARGAINS_SHOW_STATE,{"show":true}));
         }
      }
      
      private function processPaperDollCallBackObj(rObj:Object) : void
      {
         var conLevelNum:Number = NaN;
         var ri:int = 0;
         var obj:Object = new Object();
         obj.userName = rObj.name;
         obj.clanName = rObj.clanName || " ";
         if(rObj.conLevel)
         {
            conLevelNum = rObj.conLevel;
            obj.conLevel = conLevelNum;
         }
         obj.totalCharge = rObj.totalCharge;
         obj.accuracy = rObj.accuracy;
         obj.luck = rObj.luck;
         obj.dodge = rObj.dodge;
         obj.willpower = rObj.willpower;
         obj.speed = rObj.speed;
         obj.weight = rObj.weight;
         obj.health = rObj.health;
         obj.regen = rObj.regen / 100;
         obj.exhaustionRegen = rObj.exhaustionRegen / 100;
         obj.suppressedCL = rObj.suppressedCL;
         if(rObj.ringInfoList != null)
         {
            obj.rings = new Array();
            for(ri = 0; ri < rObj.ringInfoList.length; ri++)
            {
               obj.rings.push({
                  "ringId":rObj.ringInfoList[ri].id,
                  "url":rObj.ringInfoList[ri].url,
                  "name":rObj.ringInfoList[ri].name,
                  "description":rObj.ringInfoList[ri].description
               });
            }
         }
         else
         {
            obj.rings = rObj.rings;
         }
         UiPaperDoll(rObj.tag).setInfo(obj);
         rObj.tag = null;
      }
   }
}

class WidgetOpenStates
{
    
   
   public var forcedPDAClose:Boolean = false;
   
   public var forcedInventoryClose:Boolean = false;
   
   public var forcedGameHelpClose:Boolean = false;
   
   public var forcedCLCapClose:Boolean = false;
   
   function WidgetOpenStates()
   {
      super();
   }
}

class CenterPrintData
{
    
   
   private var _textFn:Function;
   
   private var _type:String;
   
   function CenterPrintData(textFn:Function, type:String = "")
   {
      super();
      this._textFn = textFn;
      this._type = type;
   }
   
   public function get textFn() : Function
   {
      return _textFn;
   }
   
   public function get type() : String
   {
      return _type;
   }
}
