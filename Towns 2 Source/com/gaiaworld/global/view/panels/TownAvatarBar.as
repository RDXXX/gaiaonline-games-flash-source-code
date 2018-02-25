package com.gaiaworld.global.view.panels
{
   import com.gaiaworld.avatar.constants.AvatarConstants;
   import com.gaiaworld.avatar.controller.AvatarController;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.avatar.model.OthersModel;
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.global.controller.EventController;
   import com.gaiaworld.global.controller.GlobalController;
   import com.gaiaworld.global.controller.MessageController;
   import com.gaiaworld.global.controller.ReportController;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.global.util.AutoComplete;
   import com.gaiaworld.global.view.ui.FaceBox;
   import com.gaiaworld.global.view.ui.WordLine;
   import com.gaiaworld.gobjects.controller.ObjectController;
   import com.gaiaworld.house.controller.DebugController;
   import com.gaiaworld.house.model.HousingModel;
   import com.gaiaworld.pets.model.PetModel;
   import com.gaiaworld.room.constants.MapConstants;
   import com.gaiaworld.room.controller.RoomController;
   import com.gaiaworld.room.model.GpsModel;
   import com.gaiaworld.room.util.LinkToUtil;
   import com.gaiaworld.sushi.constants.ChatConstants;
   import com.gaiaworld.sushi.controller.ChatController;
   import com.gaiaworld.towns.collectables.bugs.controller.ColController;
   import com.gaiaworld.towns.constants.WeatherConstants;
   import com.gaiaworld.towns.view.BackPackInventory;
   import com.gaiaworld.user.controller.UserController;
   import com.gaiaworld.user.model.UserModel;
   import fl.controls.TextInput;
   import flash.display.Loader;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.System;
   import flash.utils.Timer;
   
   public class TownAvatarBar extends Sprite
   {
       
      
      public var btnEmotes:SimpleButton;
      
      public var btnEye:SimpleButton;
      
      public var btnFull:SimpleButton;
      
      public var btnHelp:SimpleButton;
      
      public var btnHistory:SimpleButton;
      
      public var btnItems:SimpleButton;
      
      public var btnPhoto:SimpleButton;
      
      public var btnPose:SimpleButton;
      
      public var btnReport:SimpleButton;
      
      public var chatInput:TextInput;
      
      public var historyPanel:HistoryPanel;
      
      private var avatarController:AvatarController;
      
      private var chatController:ChatController;
      
      private var reportController:ReportController;
      
      private var globalController:GlobalController;
      
      private var userController:UserController;
      
      private var objectController:ObjectController;
      
      private var messageController:MessageController;
      
      private var petModel:PetModel;
      
      private var globalModel:GlobalModel;
      
      private var avatarModel:AvatarModel;
      
      private var userModel:UserModel;
      
      private var othersModel:OthersModel;
      
      private var gpsModel:GpsModel;
      
      private var emoteWin:Loader;
      
      private var disableTimer:Timer;
      
      private var canKneel:Boolean = true;
      
      private var faceBox:FaceBox;
      
      private var myTextLoader:URLLoader;
      
      private var ac:AutoComplete;
      
      private var wordClip:WordLine;
      
      private var backpackFlag:Boolean = false;
      
      private var backpack:BackPackInventory;
      
      private var colController:ColController;
      
      private var housingModel:HousingModel;
      
      private var debugController:DebugController;
      
      private var eventController:EventController;
      
      private var isTyping:Boolean = false;
      
      private var typeTimer:Timer;
      
      public function TownAvatarBar()
      {
         this.avatarController = new AvatarController();
         this.chatController = new ChatController();
         this.reportController = new ReportController();
         this.globalController = new GlobalController();
         this.userController = new UserController();
         this.objectController = new ObjectController();
         this.messageController = new MessageController();
         this.petModel = PetModel.getInstance();
         this.globalModel = GlobalModel.getInstance();
         this.avatarModel = AvatarModel.getInstance();
         this.userModel = UserModel.getInstance();
         this.othersModel = OthersModel.getInstance();
         this.gpsModel = GpsModel.getInstance();
         this.emoteWin = new Loader();
         this.disableTimer = new Timer(2000);
         this.faceBox = new FaceBox();
         this.myTextLoader = new URLLoader();
         this.wordClip = new WordLine();
         this.colController = new ColController();
         this.housingModel = HousingModel.getInstance();
         this.debugController = new DebugController();
         this.eventController = new EventController();
         this.typeTimer = new Timer(10000);
         super();
         this.globalModel.addEventListener(GlobalConstants.BUTTONS_ENABLED_CHANGED,this.enabledChanged);
         this.btnPose.addEventListener(MouseEvent.MOUSE_DOWN,this.kneel);
         this.chatInput.addEventListener(KeyboardEvent.KEY_DOWN,this.chatInput_keydown);
         this.btnEmotes.addEventListener(MouseEvent.MOUSE_DOWN,this.showEmotes);
         this.btnHistory.addEventListener(MouseEvent.MOUSE_DOWN,this.showHistory);
         this.btnReport.addEventListener(MouseEvent.MOUSE_DOWN,this.showReport);
         this.btnPose.focusRect = false;
         this.chatInput.focusRect = false;
         this.btnEmotes.focusRect = false;
         this.btnHistory.focusRect = false;
         this.btnReport.focusRect = false;
         this.btnEye.focusRect = false;
         this.btnPose.tabEnabled = false;
         this.btnEmotes.tabEnabled = false;
         this.btnHistory.tabEnabled = false;
         this.btnReport.tabEnabled = false;
         this.btnPhoto.tabEnabled = false;
         this.btnFull.tabEnabled = false;
         this.btnEye.tabEnabled = false;
         this.btnPhoto.addEventListener(MouseEvent.MOUSE_DOWN,this.takePhoto);
         this.btnFull.addEventListener(MouseEvent.MOUSE_DOWN,this.goFullScreen);
         this.btnHelp.addEventListener(MouseEvent.MOUSE_DOWN,this.getHelp);
         this.btnEye.addEventListener(MouseEvent.MOUSE_DOWN,this.showHideAdmin);
         this.btnItems.addEventListener(MouseEvent.MOUSE_DOWN,this.showHidePack);
         this.btnEye.tabEnabled = false;
         this.btnItems.tabEnabled = false;
         this.btnHelp.tabEnabled = false;
         this.globalModel.addEventListener(GlobalConstants.EMOTE_STATUS_CHANGED,this.onEmoteStatusChanged);
         this.emoteWin.y = -100;
         this.addChild(this.emoteWin);
         this.emoteWin.visible = false;
         this.historyPanel.visible = false;
         this.historyPanel.init();
         this.faceBox.x = 740;
         this.faceBox.y = -180;
         this.addChildAt(this.faceBox,0);
         this.disableTimer.addEventListener(TimerEvent.TIMER,this.enableKneel);
         TextInput(this.chatInput).addEventListener(Event.CHANGE,this.chatInputChanged);
         this.typeTimer.addEventListener(TimerEvent.TIMER,this.resetTypeFlag);
      }
      
      private function chatInputChanged(param1:Event) : void
      {
         if(this.isTyping == false)
         {
            this.isTyping = true;
            this.typeTimer.start();
            this.chatController.sendUserMessage(ChatConstants.TYPING_STARTED,this.userModel.userVo);
         }
         else
         {
            this.typeTimer.reset();
            this.typeTimer.start();
         }
      }
      
      private function resetTypeFlag(param1:TimerEvent) : void
      {
         this.isTyping = false;
         this.typeTimer.stop();
         this.chatController.sendUserMessage(ChatConstants.TYPING_STOPPED,this.userModel.userVo);
      }
      
      private function getHelp(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://www.gaiaonline.com/help"));
      }
      
      private function enabledChanged(param1:Event) : void
      {
         if(this.globalModel.barButtonsEnabled == true)
         {
            this.btnPose.visible = true;
            this.chatInput.visible = true;
            this.btnEmotes.visible = true;
            this.btnHistory.visible = true;
            this.btnReport.visible = true;
         }
         else
         {
            this.btnPose.visible = false;
            this.chatInput.visible = false;
            this.btnEmotes.visible = false;
            this.btnHistory.visible = false;
            this.btnReport.visible = false;
         }
      }
      
      private function setTextFocus(param1:FocusEvent) : void
      {
         TextInput(this.chatInput).setFocus();
      }
      
      public function init() : *
      {
         this.emoteWin.load(new URLRequest("emotes.swf"));
         if(this.userModel.userVo.user_level < 51)
         {
            this.btnEye.visible = false;
         }
      }
      
      private function onEmoteStatusChanged(param1:Event) : *
      {
         if(this.globalModel.emoteEnabled == true)
         {
            this.emoteWin.alpha = 1;
         }
         else
         {
            this.emoteWin.alpha = 0.5;
         }
      }
      
      private function enableKneel(param1:TimerEvent) : void
      {
         this.canKneel = true;
         this.disableTimer.stop();
      }
      
      private function kneel(param1:MouseEvent) : *
      {
         if(this.globalModel.barButtonsEnabled == false)
         {
            return;
         }
         if(this.canKneel == true)
         {
            this.avatarController.doAction(AvatarConstants.ACTION_KNEEL);
         }
         this.canKneel = false;
         this.disableTimer.start();
      }
      
      private function showHideAdmin(param1:Event) : *
      {
         if(this.avatarModel.avatar.clip.alpha == 1)
         {
            this.userController.setVisible(false);
            this.chatController.hideAdmin();
         }
         else
         {
            this.userController.setVisible(true);
            this.chatController.showAdmin();
         }
      }
      
      private function sendChatMessage() : *
      {
         this.doSpecial();
         if(this.userModel.isHellBanned == false)
         {
            this.typeTimer.reset();
            this.isTyping = false;
            this.chatController.sendChat(this.chatInput.text);
            this.chatInput.text = "";
         }
         else
         {
            this.chatController.noteToSelf(this.chatInput.text);
         }
      }
      
      private function doSpecial() : *
      {
         var _loc3_:String = null;
         var _loc4_:LinkToUtil = null;
         var _loc1_:RoomController = new RoomController();
         var _loc2_:String = this.chatInput.text.toLowerCase();
         switch(_loc2_)
         {
            case "12341234":
               this.globalController.showDay();
               this.chatController.noteToSelf("Old School Gaia!");
               break;
            case "1234512345":
               this.globalController.showNight();
               break;
            case "flock":
               this.objectController.startAnimation("flock");
               break;
            case "toggle map":
               this.globalController.toggleSurface();
               break;
            case "toggle pmap":
               this.globalController.togglePMap();
               break;
            case "admin override":
               if(this.userModel.userVo.user_level > 50)
               {
                  this.globalController.toggleAdminOverride();
                  this.chatController.noteToSelf("override set to " + String(this.globalModel.adminOverride));
               }
               break;
            case "pos:":
               _loc3_ = String(this.avatarModel.avatar.x) + "," + String(this.avatarModel.avatar.y);
               this.chatController.noteToSelf(_loc3_);
               System.setClipboard(_loc3_);
               break;
            case "petpos:":
               if(this.petModel.myPet != null)
               {
                  this.chatController.noteToSelf(String(this.petModel.myPet.clip.x) + " " + String(this.petModel.myPet.clip.y));
               }
               else
               {
                  this.chatController.noteToSelf("no pet");
               }
               break;
            case "startPos:":
               this.chatController.noteToSelf(String(this.globalModel.startX) + "  " + String(this.globalModel.startY));
               break;
            case "wtf!":
               if(this.userModel.userVo.user_level > 50)
               {
               }
               break;
            case "venus":
               if(this.userModel.userVo.user_level > 50)
               {
                  _loc1_.changeRoom(MapConstants.VENUS);
               }
               break;
            case "ddr!":
               if(this.userModel.userVo.user_level > 50)
               {
               }
               break;
            case "paintball":
               break;
            case "go to hell!":
            case "go to hell":
               _loc1_.changeRoom(MapConstants.HELL);
               break;
            case "i\'m in heaven":
            case "i\'m in heaven!":
            case "i am in heaven":
               _loc1_.changeRoom(MapConstants.HEAVEN);
               break;
            case "log click":
               this.globalController.setLogClick(!this.globalModel.logClick);
               break;
            case "freeze bugs":
               if(this.userModel.userVo.user_level > 50)
               {
                  this.colController.setPause(true);
               }
               break;
            case "unfreeze bugs":
               if(this.userModel.userVo.user_level > 50)
               {
                  this.colController.setPause(false);
               }
               break;
            case "test bugs":
               if(this.userModel.userVo.user_level > 50)
               {
                  this.colController.testBugs();
               }
               break;
            case "debug":
               this.globalController.showDebugBox();
               break;
            case "show nodes":
               if(this.userModel.userVo.user_level > 50)
               {
                  _loc1_.showNodes();
               }
               break;
            case "hide nodes":
               if(this.userModel.userVo.user_level > 50)
               {
                  _loc1_.hideNodes();
               }
               break;
            case "show paths":
               if(this.userModel.userVo.user_level > 50)
               {
                  _loc1_.showPaths();
               }
               break;
            case "hide paths":
               if(this.userModel.userVo.user_level > 50)
               {
                  _loc1_.hidePaths();
               }
               break;
            case "uservo":
               if(this.userModel.userVo.user_level > 50)
               {
                  this.userModel.describeUserVo();
               }
               break;
            case "toggle ip":
               this.chatController.toggleIpBox();
               break;
            case "smite screen":
               if(this.userModel.userVo.user_level > 50)
               {
                  this.globalController.loadScreen("dialogs/smiteScreen.swf");
               }
               break;
            case "/shake":
               if(this.userModel.userVo.user_level > 50)
               {
                  this.avatarController.shake();
               }
               break;
            case "/flip":
               if(this.userModel.userVo.user_level > 50)
               {
                  this.avatarController.flip();
               }
               break;
            case "/jump":
               if(this.userModel.userVo.user_level > 50)
               {
                  this.avatarController.jump();
               }
               break;
            case "/fly":
               if(this.userModel.userVo.user_level > 50)
               {
                  this.avatarController.ignoreMap(true);
                  this.avatarController.fly();
               }
               break;
            case "/stop fly":
               if(this.userModel.userVo.user_level > 50)
               {
                  this.avatarController.ignoreMap(false);
                  this.avatarController.stopFly();
                  this.chatController.noteToSelf("flying is off");
               }
               break;
            case "rain":
               if(this.userModel.userVo.user_level > 50)
               {
                  this.globalController.setWeather(WeatherConstants.RAIN);
               }
               break;
            case "how many":
               if(this.userModel.userVo.user_level > 50)
               {
                  this.chatController.noteToSelf("There are " + String(this.othersModel.getNumberOfUsersHere()) + " users here.");
               }
               break;
            case "debug bookmarks":
               this.messageController.setMessage(this.gpsModel.getBookMarkString(),true,12);
               break;
            case "call pet":
               if(this.petModel.myPet != null)
               {
                  this.petModel.myPet.clip.x = this.avatarModel.avatar.clip.x;
                  this.petModel.myPet.clip.y = this.avatarModel.avatar.clip.y;
                  this.petModel.myPet.clip.visible = true;
                  this.petModel.myPet.clip.alpha = 1;
               }
               break;
            case "inhouse":
               if(this.userModel.userVo.user_level > 50)
               {
                  this.chatController.noteToSelf(String(this.housingModel.isInHouse));
               }
               break;
            case "listobjects":
               if(this.userModel.userVo.user_level > 50)
               {
                  this.debugController.listAllObjects();
               }
               break;
            case "listsurface":
               if(this.userModel.userVo.user_level > 50)
               {
                  this.debugController.listSurface();
               }
               break;
            case "palsonly":
               if(this.userModel.userVo.user_level > 50)
               {
                  this.userController.setPalsOnly(!this.userModel.palsOnly);
               }
               break;
            case "list rooms":
               if(this.userModel.userVo.user_level > 50)
               {
                  this.debugController.listRooms();
               }
               break;
            case "setatstart":
               if(this.userModel.userVo.user_level > 50)
               {
                  this.avatarController.setAtStart();
               }
               break;
            case "list all events":
               this.eventController.listAll();
               break;
            case "superspeed":
               if(this.userModel.userVo.user_level > 50)
               {
                  this.avatarController.setSpeed(22);
               }
               break;
            case "ignore map":
               if(this.userModel.userVo.user_level > 50)
               {
                  this.avatarController.ignoreMap(true);
               }
               break;
            case "unignore map":
               if(this.userModel.userVo.user_level > 50)
               {
                  this.avatarController.ignoreMap(false);
               }
               break;
            case "/link":
               _loc4_ = new LinkToUtil();
               _loc4_.getLink();
               break;
            case "anim debug":
               if(this.userModel.userVo.user_level > 50)
               {
                  this.globalController.showAnimDebug();
               }
               break;
            case "background":
               if(this.userModel.userVo.user_level > 50)
               {
                  _loc1_.flipBackground();
               }
               break;
            case "objects":
               if(this.userModel.userVo.user_level > 50)
               {
                  _loc1_.flipObjects();
               }
               break;
            case "freeze":
               if(this.userModel.userVo.user_level > 50)
               {
                  this.globalController.toggleIgnoreServer();
               }
               break;
            case "nochat":
               if(this.userModel.userVo.user_level > 50)
               {
                  this.globalController.toggleChat();
               }
               break;
            case "lockscroll":
               this.chatController.lockScroll(true);
               break;
            case "unlockscroll":
               this.chatController.lockScroll(false);
         }
      }
      
      private function chatInput_keydown(param1:KeyboardEvent) : *
      {
         if(param1.charCode == 13)
         {
            this.sendChatMessage();
         }
      }
      
      private function showEmotes(param1:MouseEvent) : *
      {
         this.emoteWin.visible = !this.emoteWin.visible;
      }
      
      private function showHistory(param1:MouseEvent) : *
      {
         this.historyPanel.visible = !this.historyPanel.visible;
      }
      
      private function showReport(param1:MouseEvent) : *
      {
         this.reportController.showReport();
      }
      
      private function takePhoto(param1:Event) : *
      {
         this.globalController.takePhoto();
      }
      
      private function goFullScreen(param1:Event) : *
      {
         this.globalController.fullScreen();
      }
      
      private function showHidePack(param1:MouseEvent) : *
      {
         if(this.backpackFlag == true)
         {
            this.hideBackback();
         }
         else
         {
            this.showBackback();
         }
      }
      
      private function showBackback() : *
      {
         this.backpackFlag = true;
         this.backpack = new BackPackInventory();
         this.backpack.x = 718;
         this.backpack.y = 211;
         this.objectController.addStationaryItem(this.backpack);
      }
      
      private function hideBackback() : *
      {
         this.backpackFlag = false;
         this.objectController.removeStationaryObject(this.backpack);
      }
   }
}
