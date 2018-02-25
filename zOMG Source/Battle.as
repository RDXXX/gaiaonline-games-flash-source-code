package
{
   import com.gaiaonline.battle.ApplicationImplementations.GatewayFactory;
   import com.gaiaonline.battle.ApplicationImplementations.LinkManagerImpl;
   import com.gaiaonline.battle.ApplicationImplementations.UIFrameworkImpl;
   import com.gaiaonline.battle.ApplicationInterfaces.IFileVersionManager;
   import com.gaiaonline.battle.ApplicationInterfaces.IGatewayFactory;
   import com.gaiaonline.battle.ApplicationInterfaces.ILinkManager;
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.ConfigManager;
   import com.gaiaonline.battle.FileVersionManager;
   import com.gaiaonline.battle.GST;
   import com.gaiaonline.battle.GameStateMachineStates;
   import com.gaiaonline.battle.GameStateMachineSymbols;
   import com.gaiaonline.battle.GlobalTexts;
   import com.gaiaonline.battle.Globals;
   import com.gaiaonline.battle.ItemLoadManager.EventManager;
   import com.gaiaonline.battle.ItemLoadManager.EventManagerData;
   import com.gaiaonline.battle.ItemLoadManager.GSIEventManager;
   import com.gaiaonline.battle.emotes.EmoteManagerOld;
   import com.gaiaonline.battle.gateway.BattleEvent;
   import com.gaiaonline.battle.gateway.BattleGSIEvent;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.gateway.BattleMessage;
   import com.gaiaonline.battle.jabberchat.JabberGateway;
   import com.gaiaonline.battle.map.AwarenessLayer;
   import com.gaiaonline.battle.map.DebuggingLayer;
   import com.gaiaonline.battle.map.GameTransitionManager;
   import com.gaiaonline.battle.map.Map;
   import com.gaiaonline.battle.map.MapLoadManager;
   import com.gaiaonline.battle.map.MapRoomManager;
   import com.gaiaonline.battle.map.NullMapEffect;
   import com.gaiaonline.battle.map.TalkIconManager;
   import com.gaiaonline.battle.map.TintManager;
   import com.gaiaonline.battle.newactors.ActorManager;
   import com.gaiaonline.battle.newactors.BaseActor;
   import com.gaiaonline.battle.newrings.RingIconFactory;
   import com.gaiaonline.battle.newrings.RingLoadManager;
   import com.gaiaonline.battle.preloader.PreloaderProgress;
   import com.gaiaonline.battle.sounds.AudioSettings;
   import com.gaiaonline.battle.sounds.SoundManager;
   import com.gaiaonline.battle.ui.FlexUIManagerImpl;
   import com.gaiaonline.battle.ui.IFlexUiManager;
   import com.gaiaonline.battle.ui.ToolTipOld;
   import com.gaiaonline.battle.ui.UiLoadScreen;
   import com.gaiaonline.battle.ui.UiManager;
   import com.gaiaonline.battle.ui.WorldListManagerZomg;
   import com.gaiaonline.battle.ui.events.StatsCollector;
   import com.gaiaonline.battle.ui.events.TrackingEvent;
   import com.gaiaonline.battle.userServerSettings.UserServerSettings;
   import com.gaiaonline.battle.userinput.ChatManager;
   import com.gaiaonline.battle.userinput.UserInput;
   import com.gaiaonline.battle.utils.LoadPolicyFileManager;
   import com.gaiaonline.containers.GameWindowFactory;
   import com.gaiaonline.events.ProgressEventManager;
   import com.gaiaonline.flexModulesAPIs.FlexBattleUtils;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.objectPool.LoaderFactory;
   import com.gaiaonline.platform.ITrackingManager;
   import com.gaiaonline.platform.gateway.IResponseHandler;
   import com.gaiaonline.platform.login.ILoginManagerController;
   import com.gaiaonline.platform.login.ILoginSuccessHandler;
   import com.gaiaonline.platform.login.LoginManagerControllerFactory;
   import com.gaiaonline.platform.serverSelect.WorldListManagerEvent;
   import com.gaiaonline.tracking.TrackingProxy;
   import com.gaiaonline.usersettings.UserSettings;
   import com.gaiaonline.utils.ApplicationInstanceMonitor;
   import com.gaiaonline.utils.ApplicationInstanceMonitorEvent;
   import com.gaiaonline.utils.DisplayObjectStopper;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import com.gaiaonline.utils.FrameTimer;
   import com.gaiaonline.utils.Outputter;
   import com.gaiaonline.utils.statemachine.EventBastedStateMachine;
   import com.gaiaonline.utils.statemachine.StateMachineExecutionTable;
   import com.gaiaonline.utils.statemachine.StateMachineTransitionTable;
   import com.gaiaonline.utils.wordfilter.WordFilter;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.Security;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import mx.core.Application;
   import mx.core.Container;
   import mx.core.IUIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.managers.FocusManager;
   import mx.managers.IDragManager;
   import mx.managers.PopUpManager;
   import mx.managers.SystemManager;
   import mx.managers.ToolTipManager;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   use namespace mx_internal;
   
   public class Battle extends Application implements IResponseHandler, ILoginSuccessHandler
   {
      
      private static const SEVERITY_INFO:String = "info";
      
      private static const SEVERITY_ERROR:String = "error";
      
      mx_internal static var _Battle_StylesInit_done:Boolean = false;
      
      private static const TOOLTIP_DELAY:Number = 500;
       
      
      private var ttm:ToolTipManager;
      
      private var loadLayer:Sprite;
      
      private var _uiFramework:IUIFramework = null;
      
      private var _actorAssets = null;
      
      private var actorAssetsLoader:Loader = null;
      
      private var _transitionManager:GameTransitionManager = null;
      
      private var screenMode:String;
      
      private var _bugFix_:IDragManager;
      
      private var _gatewayFactory:IGatewayFactory = null;
      
      private var _gst:GST = null;
      
      private var _gsiURL:String = null;
      
      private var _loginDataLoaded:EventManager = null;
      
      private var sm:SystemManager;
      
      private var settingVersion:String = "07/11/09 10:48";
      
      private var _partnerID:String = null;
      
      private var dragLayer:Sprite;
      
      private var _fsm:EventBastedStateMachine = null;
      
      private var _progressManager:ProgressEventManager;
      
      private var _embed__font_myVerdanaItalic_medium_italic_876154233:Class;
      
      private var _loadScreen:UiLoadScreen = null;
      
      private var _linkManager:ILinkManager = null;
      
      private var _worldListManager:WorldListManagerZomg = null;
      
      private var _map:Map;
      
      private var _flexShopWidgetLayer:Container;
      
      private var _flexUIManager:IFlexUiManager = null;
      
      private var isGameStarted:Boolean = false;
      
      private var _connectingToGameServer:Boolean = false;
      
      private var _preLoginGSIEventManager:GSIEventManager = null;
      
      private var _trackingManager:ITrackingManager = null;
      
      private var _flashVars:Object = null;
      
      private var preloaderProgress:PreloaderProgress;
      
      private var fm:FocusManager;
      
      private var _autoconnectIP:String = null;
      
      private var _firstTimeThrough:Boolean = true;
      
      private var winLayer:Sprite;
      
      private var _savedPlayerInfo:Object;
      
      private var _displayObjectStopper:DisplayObjectStopper = null;
      
      private var _embed__font_myVerdana_medium_normal_873783463:Class;
      
      private var errLayer:Sprite;
      
      private var _userSettings:UserSettings = null;
      
      private var _emoteManager:EmoteManagerOld = null;
      
      private var _fileVersionManager:IFileVersionManager = null;
      
      private var _uiManager:UiManager = null;
      
      private var _jabberGateway:JabberGateway;
      
      private var _gateway:BattleGateway = null;
      
      private var pum:PopUpManager;
      
      private var percentageZoneLoaded:Number = NaN;
      
      private var errPopupQueue:Array;
      
      private var _embed__font_myArialBold_bold_normal_1952988730:Class;
      
      private var toolTipLayer:Sprite;
      
      private var _spaceName:String = "zomg";
      
      private var _userInput:UserInput = null;
      
      private var _revision:String = "????";
      
      private var _appInstanceMonitor:ApplicationInstanceMonitor;
      
      private var _volumes:AudioSettings = null;
      
      private var _nonloginEventManager:EventManager = null;
      
      private var _chatManager:ChatManager = null;
      
      private var _loaderFactory:LoaderFactory = null;
      
      private var _configManger:ConfigManager;
      
      private var mcBaseWinLayer:Sprite;
      
      private var _debugForceIp:String = null;
      
      private var _actorAssetsLoaded:Boolean = false;
      
      private var dummyLayer:MovieClip;
      
      private var _subdomain:String = null;
      
      private var _isZoneReady:Boolean = false;
      
      private var _embed__font_myArial_medium_normal_500819251:Class;
      
      private var _baseUrl:String = null;
      
      private var _monLog:Outputter;
      
      private var _embed__font_myVerdanaBold_bold_normal_469408810:Class;
      
      private var _instanceMonitorTimeout:uint = 0;
      
      private var _flexWinLayer:Container;
      
      private var _userServerSettings:UserServerSettings = null;
      
      private var _actorManager:ActorManager = null;
      
      private var _loginManager:ILoginManagerController = null;
      
      private var contentLoader:EventManager = null;
      
      private var _rootUrl:String = null;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var serverIsFull:Boolean = false;
      
      public function Battle()
      {
         _documentDescriptor_ = new UIComponentDescriptor({"type":Application});
         _configManger = ConfigManager.getInstance();
         _progressManager = new ProgressEventManager();
         errPopupQueue = new Array();
         _embed__font_myArialBold_bold_normal_1952988730 = Battle__embed__font_myArialBold_bold_normal_1952988730;
         _embed__font_myArial_medium_normal_500819251 = Battle__embed__font_myArial_medium_normal_500819251;
         _embed__font_myVerdanaBold_bold_normal_469408810 = Battle__embed__font_myVerdanaBold_bold_normal_469408810;
         _embed__font_myVerdanaItalic_medium_italic_876154233 = Battle__embed__font_myVerdanaItalic_medium_italic_876154233;
         _embed__font_myVerdana_medium_normal_873783463 = Battle__embed__font_myVerdana_medium_normal_873783463;
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.backgroundColor = 3815994;
         };
         mx_internal::_Battle_StylesInit();
         this.layout = "absolute";
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
         this.clipContent = false;
         this.addEventListener("applicationComplete",___Battle_Application1_applicationComplete);
         this.addEventListener("addedToStage",___Battle_Application1_addedToStage);
      }
      
      private function handleLinkList(data:Object) : void
      {
         var d:Array = null;
         for(var i:int = 0; i < data.length; i++)
         {
            d = data[i].split("|");
            this._linkManager.setLink(d[0],d[1]);
            Security.allowDomain(d[1]);
            LoadPolicyFileManager.LoadPolicyFile(d[1]);
         }
      }
      
      public function onServerChosen(worldListEvent:WorldListManagerEvent) : void
      {
         var time:Number = NaN;
         var me:Battle = null;
         IEventDispatcher(worldListEvent.target).removeEventListener(worldListEvent.type,arguments.callee);
         var data:Object = worldListEvent.data;
         var serverName:String = data.name;
         var id:String = data.id;
         var ip:String = data.ip;
         var port:int = data.port;
         _connectingToGameServer = true;
         this.destroyWorldList();
         removePreloader(true);
         if(this._uiManager && this._uiManager.uiLoaded)
         {
            _gateway.sfLogIn(serverName,ip,port);
            this._uiManager.winMap.serverName = serverName;
            this._progressManager.addProgressObject(this,"connecting to server : " + serverName,1,50,100);
            time = 15000;
            if(this._gateway.serverIp == "127.0.0.1")
            {
               time = 60000;
            }
         }
         else
         {
            this._progressManager.addProgressObject(this,"Loading UI",1,50,100);
            me = this;
            this._uiManager.addEventListener(UiManager.UI_LOADED,function(uiManagerEvent:Event):void
            {
               me._uiManager.removeEventListener(uiManagerEvent.type,arguments.callee);
               onServerChosen(worldListEvent);
            },false,0,false);
         }
      }
      
      private function getPlayerData() : void
      {
         var msg:BattleMessage = new BattleMessage("getOwnedEmoticons",null);
         msg.addEventListener(BattleEvent.CALL_BACK,onUserEmotes,false,0,true);
         this._gateway.sendMsg(msg);
         var myActor:BaseActor = _actorManager.myActor;
         if(!_actorManager.myActor.isDev())
         {
            startInstanceMonitor();
         }
         DisplayObjectUtils.debug = myActor.isDev();
         if(this._spaceName == "zomg")
         {
            contentLoader = new EventManager([new EventManagerData(GlobalEvent.eventDispatcher,GlobalEvent.COLLECTIBLES_LOADED),new EventManagerData(_actorManager.myActor,BaseActor.RING_LOADED),new EventManagerData(GlobalEvent.eventDispatcher,GlobalEvent.GHI_BUFFS_LOADED),new EventManagerData(GlobalEvent.eventDispatcher,GlobalEvent.MAP_WARP_IN_TRANSITION_START)]);
            myActor.collectiblesUpdater.updateCollectibles();
            myActor.consumableManager.update();
            myActor.updateRings();
            myActor.ghiBuffsUpdater.updateGhiBuffs();
         }
         else
         {
            contentLoader = new EventManager([new EventManagerData(GlobalEvent.eventDispatcher,GlobalEvent.MAP_WARP_IN_TRANSITION_START)]);
         }
         contentLoader.addEventListener(Event.COMPLETE,onLoginDependantDataLoaded,false,0,true);
         var room:String = myActor.roomId;
         var instance:String = myActor.instanceId;
         var position:Point = myActor.position;
         _transitionManager.loadMap(room,instance,position.x,position.y,new NullMapEffect());
         this._progressManager.addProgressObject(contentLoader,"Loading Player Data",0);
      }
      
      private function onGetGlobals(evt:BattleEvent) : void
      {
         var obj:Object = evt.battleMessage.responseObj[0];
         if(obj.orbType1MaxLevel != null && obj.orbType1MaxStep != null)
         {
            ActorManager.getInstance().myActor.ringMaxLevel = obj.orbType1MaxLevel + obj.orbType1MaxStep / 10;
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.RING_MAX_LEVEL_UPDATE,{"maxLevel":ActorManager.getInstance().myActor.ringMaxLevel}));
         }
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.GLOBAL_FLAGS_LOADED,null));
         BattleMessage(evt.target).removeEventListener(BattleEvent.CALL_BACK,onGetGlobals);
      }
      
      private function startInstanceMonitor() : void
      {
         clearTimeout(_instanceMonitorTimeout);
         _instanceMonitorTimeout = 0;
         if(!_appInstanceMonitor)
         {
            _monLog = new Outputter("ApplicationInstanceMonitor",Outputter.LEVEL_INFO);
            _monLog.log("starting");
            _appInstanceMonitor = new ApplicationInstanceMonitor();
            DisplayObjectUtils.addWeakListener(_appInstanceMonitor,ApplicationInstanceMonitorEvent.INSTANCE_EXISTS,onFoundPreviousInstance);
            DisplayObjectUtils.addWeakListener(_appInstanceMonitor,ApplicationInstanceMonitorEvent.INSTANCE_STARTING,onNewInstanceStarting);
            DisplayObjectUtils.addWeakListener(_appInstanceMonitor,ApplicationInstanceMonitorEvent.SEND_ERROR,onAppMonitorSendError);
         }
         _appInstanceMonitor.start("zomg",true);
      }
      
      private function onShowIntro(e:GlobalEvent = null) : void
      {
         var me:Battle = null;
         if(this._uiManager.backImg)
         {
            this._uiManager.backImg.loadVideo(this._linkManager.getLink("intro"));
         }
         else
         {
            me = this;
            this._uiManager.addEventListener(UiManager.UI_LOADED,function(event:Event):void
            {
               me._uiManager.removeEventListener(event.type,arguments.callee);
               onShowIntro();
            },false,0,false);
         }
      }
      
      private function removePreloader(dispose:Boolean = false) : void
      {
         if(this.preloaderProgress && this.contains(this.preloaderProgress))
         {
            this.removeChild(this.preloaderProgress);
         }
         if(dispose)
         {
            this.preloaderProgress = null;
         }
      }
      
      private function onSfConnectionLost(evt:BattleEvent) : void
      {
         if(showConnectionLost())
         {
            this.errPopUp("Connection Lost","Connection to server lost",true);
         }
      }
      
      private function onUiManagerExists(event:GlobalEvent) : void
      {
         GlobalEvent.eventDispatcher.removeEventListener(event.type,arguments.callee);
         this._uiManager.addEventListener(UiManager.UI_LOADED,onUiLoaded,false,0,true);
      }
      
      private function onKeysLoaded(evt:GlobalEvent) : void
      {
         this._progressManager.addProgressObject(this,"Loading Character Info: GST",1,80,100);
         this._gst.loadGst();
      }
      
      private function onNewMap(evt:GlobalEvent) : void
      {
         if(evt.data.room != null)
         {
            this.dispatchEvent(new Event(Event.COMPLETE));
            DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_LOADPROGRESS,onLoadProgress);
            DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_LOADED,onMapLoaded);
         }
         else
         {
            this.errPopUp("Battle.as","invalid new map room id",false);
         }
      }
      
      private function errPopUp(header:String = "Error", msg:String = "Unknown Error", reset:Boolean = true) : void
      {
         var htmlMode:Boolean = false;
         var queuePopup:Boolean = false;
         if(this._uiManager)
         {
            if(this._uiManager.uiLoaded)
            {
               htmlMode = ExternalInterface.available;
               msg = "<H1>" + header + "</H><br><p>" + msg + "</p>";
               if(htmlMode)
               {
                  msg = msg + "<p align=\'right\'><a href =\'event:close\'>OK</a></p>";
               }
               else
               {
                  msg = msg + "<p>Ok button only working in HtmlMode.</p><p>Please restart the aplication</p>";
               }
               if(errLayer != null)
               {
                  this._uiManager.errPopUp(msg,reset);
               }
            }
            else
            {
               queuePopup = true;
               this._uiManager.addEventListener(UiManager.UI_LOADED,onUiLoaded,false,0,true);
            }
         }
         else
         {
            queuePopup = true;
            GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.UI_MANAGER_EXISTS,onUiManagerExists,false,0,true);
         }
         if(queuePopup)
         {
            errPopupQueue.push({
               "header":header,
               "msg":msg,
               "reset":reset
            });
         }
      }
      
      private function onPlayerInfo(responseObj:Object) : void
      {
         if(_actorAssetsLoaded)
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.PLAYER_INFO_RECEIVED,{"responseObj":responseObj}));
         }
         else
         {
            _savedPlayerInfo = responseObj;
         }
      }
      
      private function initLayers() : void
      {
         this.mouseEnabled = false;
         this.dummyLayer = new MovieClip();
         this.dummyLayer.visible = false;
         this.dummyLayer.mouseEnabled = false;
         this._flexUIManager = new FlexUIManagerImpl();
         this.mcBaseWinLayer = new Sprite();
         this.winLayer = new Sprite();
         this._flexWinLayer = FlexBattleUtils.createFlexLayer();
         this._flexWinLayer.visible = false;
         this._flexWinLayer.mouseEnabled = false;
         this._flexShopWidgetLayer = FlexBattleUtils.createFlexLayer();
         this._flexShopWidgetLayer.visible = false;
         this._flexShopWidgetLayer.mouseEnabled = false;
         this.dragLayer = new Sprite();
         this.dragLayer.mouseEnabled = false;
         this.loadLayer = new Sprite();
         this.toolTipLayer = new Sprite();
         this.errLayer = new Sprite();
         this.addChild(this.mcBaseWinLayer);
         this.addChild(this.dummyLayer);
         this.addChild(this._flexWinLayer);
         this.addChild(this.winLayer);
         this.addChild(this._flexShopWidgetLayer);
         this.addChild(this.dragLayer);
         this.addChild(this.loadLayer);
         this.addChild(this.toolTipLayer);
         this.addChild(this.errLayer);
         this._volumes = new AudioSettings(this._gateway);
         this._gst = new GST(this._gateway);
         var mapRoomManager:MapRoomManager = new MapRoomManager(_gateway);
         var soundManager:SoundManager = new SoundManager(mapRoomManager,_volumes);
         var bUrl:* = _baseUrl + "spaces/" + this._spaceName + "/";
         var _mapLoadManager:MapLoadManager = new MapLoadManager(soundManager,bUrl,_fileVersionManager,_gateway,this._progressManager);
         var debuggingLayer:DebuggingLayer = null;
         var awarenessLayer:AwarenessLayer = new AwarenessLayer(this._gateway,mapRoomManager);
         _map = new Map(mapRoomManager,new TintManager(mapRoomManager,_gst),new TalkIconManager(),soundManager,_mapLoadManager,this._linkManager.baseURL,awarenessLayer,debuggingLayer);
         _transitionManager = new GameTransitionManager(_map,_gateway);
         this._uiFramework = new UIFrameworkImpl(new ToolTipOld(this.toolTipLayer,TOOLTIP_DELAY),_map,this._volumes,this.isLoadedExternally,this.stage);
         this._uiFramework.loaderContextFactory.baseUrl = this._baseUrl;
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.LAYERS_INITIALIZED,{}));
      }
      
      private function destroyWorldList() : void
      {
         GlobalEvent.eventDispatcher.removeEventListener(GlobalEvent.SHOW_INTRO,onShowIntro);
         if(this._worldListManager)
         {
            _worldListManager.removeEventListener(WorldListManagerEvent.UI_LOADED,onServerUILoaded);
            _worldListManager.removeEventListener(WorldListManagerEvent.SERVER_CHOSEN,onServerChosen);
            _worldListManager.destroyWorldList();
            this._worldListManager = null;
         }
      }
      
      public function ___Battle_Application1_addedToStage(event:Event) : void
      {
         onAddedToStage(event);
      }
      
      mx_internal function _Battle_StylesInit() : void
      {
         var _loc1_:CSSStyleDeclaration = null;
         var _loc2_:Array = null;
         if(mx_internal::_Battle_StylesInit_done)
         {
            return;
         }
         mx_internal::_Battle_StylesInit_done = true;
         StyleManager.mx_internal::initProtoChainRoots();
      }
      
      private function onServerVersion(evt:BattleEvent) : void
      {
         BattleMessage(evt.target).removeEventListener(BattleEvent.CALL_BACK,onServerVersion);
         this._fileVersionManager.setServerVersion(evt.battleMessage.responseObj[0].version);
         if(this._uiManager.frameRate != null)
         {
            this._uiManager.frameRate.setServerVer(this._fileVersionManager.getServerVersion());
            this._uiManager.frameRate.setClientVer(this._fileVersionManager.getClientVersion(null));
         }
         this._progressManager.addProgressObject(this,"Loading Character Info: Globals Flags",1,40,100);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.GLOBAL_FLAGS_LOADED,onGlobalFlagsLoaded,false,0,true);
         this.loadGlobalFlags();
      }
      
      private function preLogin() : void
      {
         var path:String = this._baseUrl + this._configManger.loginPath;
         _loginManager = LoginManagerControllerFactory.getLoginManagerController(this,path,this.gsiUrl,this,_gateway,"/ui/login.swf",isLoadedExternally,partnerID,useCaptcha,loaderInfo.parameters);
         _loginManager.start();
      }
      
      private function onUILoaded(event:Event) : void
      {
         this._uiManager.removeEventListener(UiManager.UI_LOADED,onUILoaded);
         this.removeChild(_loadScreen);
         this.dragLayer.addChild(this._uiManager.mouseIcon);
         if(_loadScreen.content)
         {
            this._uiManager.backImg.addBackImg(_loadScreen.content);
            if(_loadScreen.content && _loadScreen.content is MovieClip)
            {
               (_loadScreen.content as MovieClip).play();
            }
         }
         _loadScreen.destroy();
         _loadScreen = null;
      }
      
      private function onGetLevelColors(event:BattleGSIEvent) : void
      {
         this._gateway.removeEventListener(BattleGSIEvent.LEVEL_COLORS_RECEIVED,onGetLevelColors);
         this.handleLevelColors(event.gsiData);
      }
      
      private function loadPlayerInfo() : void
      {
         this._progressManager.addProgressObject(this,"Loading Player: Base Info",0,0,100);
         _gateway.getPlayerInfo(this);
      }
      
      private function onUiLoaded(event:Event) : void
      {
         var errorPopup:Object = null;
         this._uiManager.removeEventListener(event.type,arguments.callee);
         for each(errorPopup in errPopupQueue)
         {
            errPopUp(errorPopup.header,errorPopup.msg,errorPopup.reset);
         }
         errPopupQueue = null;
      }
      
      private function onLoginDataLoaded(event:Event) : void
      {
         _loginDataLoaded.removeEventListener(Event.COMPLETE,onLoginDataLoaded);
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.DEPENDANT_DATA_LOADED,{}));
      }
      
      private function onRefreshPage(e:GlobalEvent) : void
      {
         var url:* = null;
         var target:String = null;
         var htmlMode:Boolean = ExternalInterface.available;
         if(htmlMode && this._flashVars.websrv != null)
         {
            if(this.isLoadedExternally)
            {
               url = this._flashVars["externalGameURL"];
               target = this._flashVars["externalGameURLTarget"];
            }
            else
            {
               url = "http://" + this._flashVars.websrv + "/games/launch.php?g=zomg";
               target = "_self";
            }
            navigateToURL(new URLRequest(url),target);
         }
      }
      
      private function onLoadProgress(evt:ProgressEvent) : void
      {
      }
      
      private function handleLevelColors(data:Object) : void
      {
         for(var i:int = 0; i < data.length; i++)
         {
            this._uiFramework.userLevelColors[data[i].id] = data[i].color;
         }
      }
      
      private function startloadUiFiles() : void
      {
         this._linkManager.baseURL = this._baseUrl;
         _loginDataLoaded = new EventManager([new EventManagerData(GlobalEvent.eventDispatcher,GameStateMachineSymbols.LOGIN_DEPENDANT_DATA_LOADED.toString()),new EventManagerData(GlobalEvent.eventDispatcher,GameStateMachineSymbols.LOGIN_NOT_DEPENDANT_DATA_LOADED.toString())]);
         _loginDataLoaded.addEventListener(Event.COMPLETE,onLoginDataLoaded,false,0,true);
         ActorManager.initialize(this.stage,this._gatewayFactory.battleGateway,this._uiFramework,this._linkManager,this._fileVersionManager,this._progressManager);
         this._actorManager = ActorManager.getInstance();
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.MAP_LOAD_ZONE,onNewMap,false,0,true);
         this._userInput = new UserInput(this._gateway,this._uiFramework,this._actorManager);
         this._userServerSettings = new UserServerSettings(this._gateway);
         GlobalTexts.init(this._linkManager.baseURL);
         this._chatManager = new ChatManager(this._gateway,this._uiFramework,this._linkManager);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.KEY_BINDINGS_LOADED,onKeysLoaded,false,0,true);
         RingLoadManager.fileVersionManager = this._fileVersionManager;
         RingLoadManager.loaderContextFactory = this._uiFramework.loaderContextFactory;
         this._emoteManager = new EmoteManagerOld(this._uiFramework,this._linkManager.baseURL);
         Globals.uiManager = this._uiManager = new UiManager(this._gatewayFactory,this._uiFramework,this._linkManager,this._gst,this._fileVersionManager,this._userSettings,this._emoteManager,this._actorManager,this._flexUIManager,new GameWindowFactory(),this.partnerID,this.isLoadedExternally,this.useCaptcha,this._flexShopWidgetLayer,this.mcBaseWinLayer,this.winLayer,this._flexWinLayer,this.dragLayer,this.loadLayer,this.toolTipLayer,this.dummyLayer,this.errLayer,this._progressManager);
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.UI_MANAGER_EXISTS,null));
         this._uiManager.addEventListener(TrackingEvent.TRACKING,callStatsURL,false,0,true);
         var statsCollector:StatsCollector = StatsCollector.getInstance();
         statsCollector.gateway = this._gateway;
         statsCollector.stage = this._uiFramework.stage;
         this._uiManager.addEventListener(UiManager.UI_LOADED,onUILoaded,false,0,true);
         actorAssetsLoader = _loaderFactory.checkOut();
         actorAssetsLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,onActorAssetsLoaded);
         var actorAssetsUrl:String = "?v=" + this._fileVersionManager.getClientVersion("actorassets/actorassets.swf");
         this._gateway.addEventListener(BattleGSIEvent.LEVEL_COLORS_RECEIVED,onGetLevelColors,false,0,true);
         this._gateway.addEventListener(BattleGSIEvent.LINK_LIST_RECEIVED,onGetLinkList,false,0,true);
         _nonloginEventManager = new EventManager([new EventManagerData(actorAssetsLoader.contentLoaderInfo,Event.COMPLETE),new EventManagerData(this._gateway,BattleGSIEvent.LEVEL_COLORS_RECEIVED),new EventManagerData(this._uiManager,UiManager.UI_LOADED),new EventManagerData(this._gateway,BattleGSIEvent.LINK_LIST_RECEIVED)]);
         _nonloginEventManager.addEventListener(Event.COMPLETE,onNonLoginDependenciesLoaded,false,0,true);
         this._uiManager.LoadUi();
         actorAssetsLoader.load(new URLRequest(this._baseUrl + "actorassets/actorassets.swf" + actorAssetsUrl),this._uiFramework.loaderContextFactory.getLoaderContext());
         this._gateway.getLevelColors(true);
         this._gateway.getLinkList(true);
         this._gateway.gsiSendQueue();
      }
      
      private function callStatsURL(evt:TrackingEvent) : void
      {
         var fid:String = this.isLoadedExternally && this._flashVars["partnerID"] != null?this.partnerID:evt.fid;
         var queryString:String = "?fid=" + fid + "&cls=" + evt.cls + "&tm=" + String(new Date().time);
         if(partnerID && partnerID != "0")
         {
            queryString = queryString + ("&_gaia_mkt_t_=" + partnerID);
         }
         var statsURL:String = "http://www.gaiaonline.com/internal/fls_t.php" + queryString;
         var statsURLLoader:EventDispatcher = new URLLoader(new URLRequest(statsURL));
         statsURLLoader.addEventListener(Event.COMPLETE,cleanupStatsURL);
         statsURLLoader.addEventListener(IOErrorEvent.IO_ERROR,cleanupStatsURL);
         statsURLLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,cleanupStatsURL);
      }
      
      private function onUserEmotes(evt:BattleEvent) : void
      {
         var obj:Object = null;
         var emotes:Array = [];
         for(var i:int = 0; i < evt.battleMessage.responseObj.length; i++)
         {
            obj = evt.battleMessage.responseObj[i];
            if(obj.bmt == "emoticonInfo")
            {
               emotes.push(obj);
            }
         }
         this._emoteManager.setEmotes(emotes);
      }
      
      private function get useCaptcha() : Boolean
      {
         var useCaptcha:* = false;
         var useCaptchaString:String = this._flashVars["captcha"];
         if(useCaptchaString != null)
         {
            useCaptcha = useCaptchaString.toLowerCase() == "true";
         }
         return useCaptcha;
      }
      
      override public function removeChild(child:DisplayObject) : DisplayObject
      {
         var component:IUIComponent = child as IUIComponent;
         if(component)
         {
            return super.removeChild(child);
         }
         return this.rawChildren.removeChild(child);
      }
      
      private function onAppMonitorSendError(e:Event) : void
      {
         _monLog.log("send error",Outputter.LEVEL_ERROR);
      }
      
      override public function addChild(child:DisplayObject) : DisplayObject
      {
         var component:IUIComponent = child as IUIComponent;
         if(component)
         {
            return super.addChild(child);
         }
         return this.rawChildren.addChild(child);
      }
      
      private function initGateway() : void
      {
         var serverIp:String = "127.0.0.1";
         var gateway:BattleGateway = new BattleGateway(serverIp,this.gsiUrl);
         _gatewayFactory = new GatewayFactory(gateway);
         this._gateway = _gatewayFactory.battleGateway;
         this._gateway.setSpaceName(this._spaceName);
         gateway.cacheSfoxPacketType("worldEvent");
         gateway.addEventListener(BattleEvent.SF_LOGIN_FAIL,onSfLoginFail,false,0,true);
         gateway.addEventListener(BattleEvent.CONNECTION_LOST,onSfConnectionLost,false,0,true);
         gateway.addEventListener(BattleEvent.SERVER_FULL,onServerFull,false,0,true);
         gateway.addEventListener(BattleEvent.SERVER_MESSAGE,onServerMessage,false,0,true);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,BattleEvent.ZOMG_LOGIN,onPlayerConnect);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.REFRESH_PAGE,onRefreshPage);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.GENERIC_ERR_MSG,onGenericErrorMessage);
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.GATEWAY_INITIALIZED,{}));
         this._jabberGateway = JabberGateway.getInstance(gateway);
      }
      
      private function battleCreationStarting() : void
      {
         this.preloaderProgress = new PreloaderProgress();
         LoadPolicyFileManager.LoadPolicyFile("http://a2.cdn.gaiaonline.com");
         getRevision();
         this._configManger.loadConfigFile(this._baseUrl + "spaces/" + this._spaceName + "/config.xml");
         this._configManger.addEventListener(Event.COMPLETE,onConfigLoaded);
         _trackingManager = new TrackingProxy(this._baseUrl);
         _trackingManager.campaign = this.partnerID == null?"0":this.partnerID;
         var trackingPrefix:String = this.gsiUrl || "unknown";
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.TRACKING_PREFIX_EVENT,trackingPrefix + "_"));
         _trackingManager.track("zomg_launch");
      }
      
      private function loadVersion() : void
      {
         var l:URLLoader = new URLLoader();
         l.dataFormat = URLLoaderDataFormat.TEXT;
         l.addEventListener(Event.COMPLETE,onVersionLoaded);
         l.addEventListener(IOErrorEvent.IO_ERROR,onVersionLoadedIOError);
         l.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onVersionLoadedSecurityError);
         l.load(new URLRequest(this._baseUrl + "revision.txt"));
      }
      
      private function cleanupStatsURL(e:Event) : void
      {
         var statsURLLoader:EventDispatcher = EventDispatcher(e.target);
         statsURLLoader.removeEventListener(Event.COMPLETE,cleanupStatsURL);
         statsURLLoader.removeEventListener(IOErrorEvent.IO_ERROR,cleanupStatsURL);
         statsURLLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,cleanupStatsURL);
      }
      
      private function removeIntroContainer() : void
      {
         if(this._uiManager.mcLoadLayer.contains(this._uiManager.backImg))
         {
            this._uiManager.backImg.clear(true);
            this._uiManager.mcLoadLayer.removeChild(this._uiManager.backImg);
         }
         startGame();
      }
      
      private function onPlayerConnect(ge:GlobalEvent) : void
      {
         GlobalEvent.eventDispatcher.removeEventListener(BattleEvent.ZOMG_LOGIN,onPlayerConnect);
         this._actorManager.useRasterize = this._userSettings.getSimpleSetting("useRasterize") as Boolean;
         this._progressManager.addProgressObject(this,"Loading charater Info",1,0,100);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.PLAYER_INFO_LOADED,onPlayerInfo2,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.PLAYER_CREATED,onPlayerCreated,false,0,true);
         this.loadPlayerInfo();
         if(this._uiManager.cancelServerHelp)
         {
            this._gateway.sendMsg(new BattleMessage("cancelServerHelp",null));
         }
         this._volumes.getSettings();
      }
      
      private function onPlayerCreated(evt:GlobalEvent) : void
      {
         var responseObj:Object = evt.data.playerInfo;
         this._chatManager.bindIgnoreList(ActorManager.getInstance().myActor);
         ActorManager.getInstance().myActor.updateTeam();
         var charge:int = 0;
         if(responseObj.totalCharge != null)
         {
            charge = parseInt(responseObj.totalCharge);
         }
         _actorManager.myActor.totalCharge = charge;
         _actorManager.myActor.clanId = String(responseObj.clanID);
         if(responseObj.clanName)
         {
            _actorManager.myActor.clanName = String(responseObj.clanName);
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.CLAN_MEMBERSHIP_UPDATE,{
               "clanName":responseObj.clanName,
               "clanID":responseObj.clanID
            }));
         }
         _actorManager.myActor.wordFilterLevel = parseInt(responseObj.filterLevel);
         WordFilter.getInstance().addEventListener(Event.COMPLETE,onWordFilterReady,false,0,true);
         WordFilter.init(this._gateway.gsiSubdomain);
         this._progressManager.addProgressObject(this,"Loading Character Info: Server Version",1,20,100);
         var msg:BattleMessage = new BattleMessage("version",null);
         msg.addEventListener(BattleEvent.CALL_BACK,onServerVersion);
         this._gateway.sendMsg(msg);
      }
      
      private function onCreationComplete(e:Event) : void
      {
         ToolTipManager.showDelay = TOOLTIP_DELAY;
         this._flashVars = this.parameters;
         this._rootUrl = this.url;
         this.onPreloaderComplete();
      }
      
      private function get gsiUrl() : String
      {
         var gsiUrl:String = null;
         if(!this._gsiURL)
         {
            gsiUrl = this._flashVars["gsiUrl"] || null;
            this._gsiURL = gsiUrl;
         }
         return this._gsiURL;
      }
      
      private function onLoggedIn() : void
      {
      }
      
      public function onResponse(data:Object) : void
      {
         onPlayerInfo(data[0]);
      }
      
      private function get enableGIM() : Boolean
      {
         if(this.isLoadedExternally)
         {
            return false;
         }
         var enabled:* = false;
         var enabledString:String = this._flashVars["enableGIM"];
         if(enabledString != null)
         {
            enabled = enabledString.toLowerCase() == "true";
         }
         return enabled;
      }
      
      private function getRevision() : void
      {
         var u:String = null;
         var swfSuffixPos:uint = 0;
         if(this._rootUrl)
         {
            swfSuffixPos = this._rootUrl.indexOf(".swf");
            u = _rootUrl.substring(0,this._rootUrl.lastIndexOf("/",swfSuffixPos) + 1);
         }
         if(u == "file://")
         {
            u = this._rootUrl.substring(0,this._rootUrl.lastIndexOf("\\") + 1);
         }
         else if(this._flashVars["baseURL"])
         {
            u = this._flashVars["baseURL"];
         }
         this._baseUrl = u;
         var spaceName:String = this._flashVars["g"];
         if(spaceName)
         {
            this._spaceName = spaceName;
         }
         var debugForceIP:String = this._flashVars["debugForceIP"];
         if(debugForceIP)
         {
            this._debugForceIp = debugForceIP;
         }
         _configManger.spaceName = this._spaceName;
         this._linkManager = new LinkManagerImpl();
         this._linkManager.baseURL = this._baseUrl;
         this._linkManager.spaceName = this._spaceName;
      }
      
      private function onNewInstanceStarting(e:Event) : void
      {
         _monLog.log("a new instance is starting, logging out",Outputter.LEVEL_ERROR);
         _appInstanceMonitor.stop();
         this._gateway.logout();
      }
      
      private function onVersionLoaded(evt:Event) : void
      {
         this._revision = evt.target.data;
         initFileVersionManager(this._revision);
         removeVersionLoadedEventListeners(URLLoader(evt.target));
      }
      
      private function onMapLoaded(evt:Event) : void
      {
         GlobalEvent.eventDispatcher.removeEventListener(GlobalEvent.MAP_LOADPROGRESS,onLoadProgress);
         GlobalEvent.eventDispatcher.removeEventListener(GlobalEvent.MAP_LOADED,onMapLoaded);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_INIT_PROGRESS,onLoadProgress);
      }
      
      private function onVersionLoadedIOError(e:IOErrorEvent) : void
      {
         initFileVersionManager("???!");
         removeVersionLoadedEventListeners(URLLoader(e.target));
      }
      
      private function showServerList() : void
      {
         if(!_connectingToGameServer)
         {
            if(_worldListManager && _worldListManager.ready)
            {
               preWorldList();
            }
         }
      }
      
      private function onConfigLoaded(evt:Event) : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.LOAD_INTRO,{}));
      }
      
      public function onLoginLoaded() : void
      {
         _loginManager.showLogin();
      }
      
      private function startGame() : void
      {
         this.isGameStarted = true;
         this._gateway.uncacheSfoxPacketType("worldEvent");
         var msg:BattleMessage = new BattleMessage("getRoomActorInfo",null);
         this._gateway.sendMsg(msg);
         this._gateway.sendMsg(new BattleMessage("150",null));
         this._gateway.sendMsg(new BattleMessage("getIgnoreList",null));
         this._userInput.init();
         this._userServerSettings.loadGraphicOptions();
         this._uiManager.loadChatFilterSettings();
         this._uiManager.setGameStarted();
      }
      
      private function showConnectionLost() : Boolean
      {
         return !serverIsFull;
      }
      
      private function onLoginDependantDataLoaded(event:Event) : void
      {
         contentLoader.removeEventListener(event.type,onLoginDependantDataLoaded);
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.LOGIN_DEPENDANT_DATA_LOADED,{}));
      }
      
      private function initFileVersionManager(version:String) : void
      {
         _fileVersionManager = new FileVersionManager();
         _fileVersionManager.setClientVersion(version);
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.VERSION_INITIALIZED,{}));
      }
      
      public function onLoginUILoadError(errorMessage:String) : void
      {
         errPopUp("Error",errorMessage);
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      private function onPlayerInfo2(evt:GlobalEvent) : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ON_PLAYER_INFO,{}));
      }
      
      private function onNonLoginDependenciesLoaded(event:Event) : void
      {
         _nonloginEventManager.removeEventListener(Event.COMPLETE,onNonLoginDependenciesLoaded);
         _loaderFactory.checkIn(actorAssetsLoader);
         actorAssetsLoader = null;
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.LOGIN_NOT_DEPENDANT_DATA_LOADED,{}));
      }
      
      private function onAddedToStage(e:Event) : void
      {
         FrameTimer.init(stage);
         RingIconFactory.init();
      }
      
      private function onServerMessage(evt:BattleEvent) : void
      {
         var text:String = null;
         var title:String = null;
         var severity:String = null;
         if(evt.battleMessage && evt.battleMessage.responseObj)
         {
            text = evt.battleMessage.responseObj[0].msg;
            title = evt.battleMessage.responseObj[0].title;
            severity = evt.battleMessage.responseObj[0].severity;
            this.errPopUp(title,text,severity == SEVERITY_ERROR);
         }
      }
      
      public function ___Battle_Application1_applicationComplete(event:FlexEvent) : void
      {
         onCreationComplete(event);
      }
      
      private function onFoundPreviousInstance(e:Event) : void
      {
         _monLog.log("found a previous instance, trying to reacquire the channel",Outputter.LEVEL_ERROR);
         if(_instanceMonitorTimeout)
         {
            clearTimeout(_instanceMonitorTimeout);
         }
         _instanceMonitorTimeout = setTimeout(startInstanceMonitor,5000);
      }
      
      public function onPreloaderComplete() : void
      {
         _loaderFactory = LoaderFactory.getInstance();
         startStateMachine();
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.CREATE_BATTLE,{}));
      }
      
      private function onGlobalFlagsLoaded(evt:GlobalEvent) : void
      {
         GlobalEvent.eventDispatcher.removeEventListener(GlobalEvent.GLOBAL_FLAGS_LOADED,onGlobalFlagsLoaded);
         this._progressManager.addProgressObject(this,"Loading Character Info: Keyboard Setting",1,60,100);
      }
      
      public function createWorldList() : void
      {
         var data:Array = null;
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.SHOW_INTRO,onShowIntro);
         _worldListManager = new WorldListManagerZomg(_gateway,this._linkManager.baseURL,this,this._userSettings,_partnerID,this._debugForceIp != null);
         _worldListManager.addEventListener(WorldListManagerEvent.UI_LOADED,onServerUILoaded,false,0,true);
         _worldListManager.addEventListener(WorldListManagerEvent.SERVER_CHOSEN,onServerChosen,false,0,true);
         if(this._autoconnectIP && this._autoconnectIP.length > 0)
         {
            _worldListManager.forceAutoconnectIP = this._autoconnectIP;
         }
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.WORLD_LIST_CREATED,{}));
         if(this._debugForceIp)
         {
            data = new Array();
            data.push({
               "bmt":"flags",
               "autoconnect":1
            });
            data.push({
               "bmt":"server",
               "id":1,
               "ip":this._debugForceIp,
               "port":8080,
               "name":this._debugForceIp
            });
            this._gateway.onServerListReceived(data);
         }
      }
      
      private function onServerFull(evt:BattleEvent) : void
      {
         this.serverIsFull = true;
         this.errPopUp("Server Full","The server is full.  Please try logging in again.",true);
      }
      
      public function onServerUILoaded(event:WorldListManagerEvent) : void
      {
         IEventDispatcher(event.target).removeEventListener(event.type,arguments.callee);
         showServerList();
      }
      
      private function onSfLoginFail(evt:BattleEvent) : void
      {
         this.errPopUp("Error",evt.battleMessage.error.msg);
         this.showServerList();
      }
      
      private function onWordFilterReady(e:Event) : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.WORD_FILTER_READY,{}));
      }
      
      private function get isLoadedExternally() : Boolean
      {
         return this._flashVars["partnerID"] != null;
      }
      
      private function onGetLinkList(event:BattleGSIEvent) : void
      {
         this._gateway.removeEventListener(BattleGSIEvent.LINK_LIST_RECEIVED,onGetLinkList);
         this.handleLinkList(event.gsiData);
      }
      
      private function startIntroLoader() : void
      {
         _loadScreen = new UiLoadScreen(this._baseUrl + "spaces/" + this._spaceName + "/splashscreen/",this.isLoadedExternally);
         this.addChild(_loadScreen);
      }
      
      public function loadGlobalFlags() : void
      {
         var msg:BattleMessage = new BattleMessage("getGlobals",null);
         msg.addEventListener(BattleEvent.CALL_BACK,onGetGlobals);
         this._gateway.sendMsg(msg);
      }
      
      private function onActorAssetsLoaded(evt:Event) : void
      {
         var assetsLoaderInfo:LoaderInfo = LoaderInfo(evt.target).loader.contentLoaderInfo;
         this._uiFramework.assetFactory.addAppDomain(assetsLoaderInfo.applicationDomain);
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ACTOR_ASSETS_LOADED,{"actorAssets":this._actorAssets}));
         this._actorAssetsLoaded = true;
         if(this._savedPlayerInfo)
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.PLAYER_INFO_RECEIVED,{"responseObj":_savedPlayerInfo}));
            _savedPlayerInfo = null;
         }
         assetsLoaderInfo.removeEventListener(Event.COMPLETE,onActorAssetsLoaded);
         assetsLoaderInfo.removeEventListener(ProgressEvent.PROGRESS,onLoadProgress);
         _loaderFactory.checkIn(LoaderInfo(evt.target).loader);
      }
      
      private function get partnerID() : String
      {
         var partnerID:String = null;
         if(!this._partnerID)
         {
            partnerID = this._flashVars["partnerID"];
            if(partnerID)
            {
               this._partnerID = partnerID;
            }
         }
         return this._partnerID;
      }
      
      private function preWorldList() : void
      {
         var startEvent:Event = null;
         removePreloader();
         _worldListManager.showPanel();
         if(this._flashVars["partnerID"])
         {
            startEvent = new Event("zomgStarted");
            this.parent.dispatchEvent(startEvent);
         }
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.PRE_WORLD_LIST,null));
      }
      
      private function onVersionLoadedSecurityError(e:SecurityErrorEvent) : void
      {
         URLLoader(e.target).removeEventListener(Event.COMPLETE,onVersionLoaded);
         URLLoader(e.target).removeEventListener(IOErrorEvent.IO_ERROR,onVersionLoadedIOError);
         URLLoader(e.target).removeEventListener(SecurityErrorEvent.SECURITY_ERROR,onVersionLoadedSecurityError);
      }
      
      private function onGenericErrorMessage(e:GlobalEvent) : void
      {
         var data:Object = e.data;
         var header:String = data.header || "";
         var message:String = data.message || "";
         var reset:Boolean = data.reset || true;
         this.errPopUp(header,message,reset);
      }
      
      private function startStateMachine() : void
      {
         var executionTable:StateMachineExecutionTable = new StateMachineExecutionTable();
         var transitionTable:StateMachineTransitionTable = new StateMachineTransitionTable();
         transitionTable.addState(GameStateMachineStates.BATTLE_START_STATE).addTransition(GameStateMachineSymbols.CREATE_BATTLE,GameStateMachineStates.BATTLE_CREATION);
         executionTable.addTransitionExecutor(GameStateMachineStates.BATTLE_CREATION,battleCreationStarting,this);
         transitionTable.addState(GameStateMachineStates.BATTLE_CREATION).addTransition(GameStateMachineSymbols.LOAD_INTRO,GameStateMachineStates.INTRO_LOAD);
         executionTable.addTransitionExecutor(GameStateMachineStates.INTRO_LOAD,startIntroLoader,this);
         transitionTable.addState(GameStateMachineStates.INTRO_LOAD).addTransition(GameStateMachineSymbols.END_INTRO,GameStateMachineStates.GATEWAY_INIT);
         executionTable.addTransitionExecutor(GameStateMachineStates.GATEWAY_INIT,initGateway,this);
         transitionTable.addState(GameStateMachineStates.GATEWAY_INIT).addTransition(GameStateMachineSymbols.GATEWAY_INITIALIZED,GameStateMachineStates.INIT_VERSION);
         executionTable.addTransitionExecutor(GameStateMachineStates.INIT_VERSION,loadVersion,this);
         transitionTable.addState(GameStateMachineStates.INIT_VERSION).addTransition(GameStateMachineSymbols.VERSION_INITIALIZED,GameStateMachineStates.INIT_LAYERS);
         executionTable.addTransitionExecutor(GameStateMachineStates.INIT_LAYERS,initLayers,this);
         transitionTable.addState(GameStateMachineStates.INIT_LAYERS).addTransition(GameStateMachineSymbols.LAYERS_INITIALIZED,GameStateMachineStates.PRE_LOGIN);
         executionTable.addTransitionExecutor(GameStateMachineStates.PRE_LOGIN,preLogin,this);
         transitionTable.addState(GameStateMachineStates.PRE_LOGIN).addTransition(GameStateMachineSymbols.ON_LOGGED_IN,GameStateMachineStates.ON_LOGGED_IN);
         executionTable.addTransitionExecutor(GameStateMachineStates.ON_LOGGED_IN,createWorldList,this);
         transitionTable.addState(GameStateMachineStates.ON_LOGGED_IN).addTransition(GameStateMachineSymbols.WORLD_LIST_CREATED,GameStateMachineStates.WORLD_LIST_CREATED);
         executionTable.addTransitionExecutor(GameStateMachineStates.WORLD_LIST_CREATED,startloadUiFiles,this);
         transitionTable.addState(GameStateMachineStates.WORLD_LIST_CREATED).addTransition(GameStateMachineSymbols.SERVER_LOGIN,GameStateMachineStates.LOAD_LOGIN_ASSETS);
         transitionTable.addState(GameStateMachineStates.LOAD_LOGIN_ASSETS).addTransition(GameStateMachineSymbols.ON_PLAYER_INFO,GameStateMachineStates.GET_PLAYER_DATA);
         executionTable.addTransitionExecutor(GameStateMachineStates.GET_PLAYER_DATA,getPlayerData,this);
         transitionTable.addState(GameStateMachineStates.GET_PLAYER_DATA).addTransition(GameStateMachineSymbols.DEPENDANT_DATA_LOADED,GameStateMachineStates.REMOVE_INTRO);
         executionTable.addTransitionExecutor(GameStateMachineStates.REMOVE_INTRO,removeIntroContainer,this);
         transitionTable.addState(GameStateMachineStates.REMOVE_INTRO);
         _fsm = new EventBastedStateMachine(transitionTable,executionTable,GameStateMachineStates.BATTLE_START_STATE,GlobalEvent.eventDispatcher);
      }
      
      private function showPreloader() : void
      {
         if(!this.contains(preloaderProgress))
         {
            addChild(preloaderProgress);
         }
      }
      
      public function onLoginSuccess() : void
      {
         this._userSettings = new UserSettings(this._spaceName,_loginManager.getUserName(),this.settingVersion);
         _autoconnectIP = _loginManager.getAutoConnectIP();
         _loginManager = null;
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ON_LOGGED_IN,{}));
      }
      
      private function removeVersionLoadedEventListeners(target:URLLoader) : void
      {
         target.removeEventListener(Event.COMPLETE,onVersionLoaded);
         target.removeEventListener(IOErrorEvent.IO_ERROR,onVersionLoadedIOError);
         target.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,onVersionLoadedSecurityError);
      }
   }
}
