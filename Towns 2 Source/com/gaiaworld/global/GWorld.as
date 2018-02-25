package com.gaiaworld.global
{
   import com.gaiaworld.avatar.controller.AvatarController;
   import com.gaiaworld.avatar.controller.OthersController;
   import com.gaiaworld.avatar.controller.events.AvatarMoveEvent;
   import com.gaiaworld.avatar.controller.events.MoveEvent;
   import com.gaiaworld.avatar.controller.events.OtherEvent;
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.avatar.model.OthersModel;
   import com.gaiaworld.avatar.view.OthersWorldAvatar;
   import com.gaiaworld.avatar.view.WorldAvatar;
   import com.gaiaworld.game.constants.GameConstants;
   import com.gaiaworld.game.controller.GameController;
   import com.gaiaworld.game.model.GameModel;
   import com.gaiaworld.game.vo.ChallengedVo;
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.global.constants.MessageConstants;
   import com.gaiaworld.global.constants.SpaceConstants;
   import com.gaiaworld.global.controller.EventController;
   import com.gaiaworld.global.controller.GlobalController;
   import com.gaiaworld.global.controller.MessageController;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.global.model.ReportModel;
   import com.gaiaworld.global.services.GraphicPaths;
   import com.gaiaworld.global.util.SaveImage;
   import com.gaiaworld.global.util.StringFunctions;
   import com.gaiaworld.gobjects.controller.ObjectController;
   import com.gaiaworld.room.controller.GpsController;
   import com.gaiaworld.room.controller.RoomController;
   import com.gaiaworld.room.controller.events.JumpRoomEvent;
   import com.gaiaworld.room.model.RoomModel;
   import com.gaiaworld.room.view.RoomScroller;
   import com.gaiaworld.room.view.Surface;
   import com.gaiaworld.sushi.DataExchange;
   import com.gaiaworld.sushi.constants.ChatConstants;
   import com.gaiaworld.sushi.controller.ChatController;
   import com.gaiaworld.sushi.controller.events.ChatErrorEvent;
   import com.gaiaworld.sushi.controller.events.ChatEvent;
   import com.gaiaworld.sushi.model.ChatModel;
   import com.gaiaworld.sushi.services.ChatInit;
   import com.gaiaworld.sushi.vo.ServerVo;
   import com.gaiaworld.user.constants.UserConstants;
   import com.gaiaworld.user.model.UserModel;
   import com.gaiaworld.user.services.UserDataLoader;
   import fl.transitions.Tween;
   import fl.transitions.TweenEvent;
   import fl.transitions.easing.None;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.display.StageDisplayState;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class GWorld extends Sprite
   {
      
      public static const SUSHI_ERROR:String = "sushiError";
       
      
      protected var avatarController:AvatarController;
      
      protected var othersController:OthersController;
      
      protected var gameController:GameController;
      
      protected var globalController:GlobalController;
      
      protected var messageController:MessageController;
      
      private var gpsController:GpsController;
      
      protected var objectController:ObjectController;
      
      protected var roomController:RoomController;
      
      protected var chatController:ChatController;
      
      protected var avatarModel:AvatarModel;
      
      protected var userModel:UserModel;
      
      protected var chatModel:ChatModel;
      
      protected var roomModel:RoomModel;
      
      protected var globalModel:GlobalModel;
      
      protected var othersModel:OthersModel;
      
      protected var reportModel:ReportModel;
      
      protected var gameModel:GameModel;
      
      protected var pathLoader:GraphicPaths;
      
      public var userLoader:UserDataLoader;
      
      protected var chatInit:ChatInit;
      
      public var dataExchange:DataExchange;
      
      protected var roomScroller:RoomScroller;
      
      public var room:Surface;
      
      protected var avatar:WorldAvatar;
      
      private var hideTimer:Timer;
      
      public var gameID:Number = 10;
      
      private var reportLoader:Loader;
      
      private var listenersSet:Boolean = false;
      
      private var yTween:Tween;
      
      private var xTween:Tween;
      
      private var eventController:EventController;
      
      public function GWorld()
      {
         this.avatarController = new AvatarController();
         this.othersController = new OthersController();
         this.gameController = new GameController();
         this.globalController = new GlobalController();
         this.messageController = new MessageController();
         this.gpsController = new GpsController();
         this.objectController = new ObjectController();
         this.roomController = new RoomController();
         this.chatController = new ChatController();
         this.avatarModel = AvatarModel.getInstance();
         this.userModel = UserModel.getInstance();
         this.chatModel = ChatModel.getInstance();
         this.roomModel = RoomModel.getInstance();
         this.globalModel = GlobalModel.getInstance();
         this.othersModel = OthersModel.getInstance();
         this.reportModel = ReportModel.getInstance();
         this.gameModel = GameModel.getInstance();
         this.roomScroller = new RoomScroller();
         this.avatar = new WorldAvatar();
         this.hideTimer = new Timer(5000);
         this.eventController = new EventController();
         super();
         this.addChild(this.roomScroller);
         this.eventController.addEventListener(this,SUSHI_ERROR,this.disconnect);
         this.eventController.addEventListener(this.othersModel,OtherEvent.OTHER_ACTION,this.actionReceived);
      }
      
      private function disconnect(param1:Event) : void
      {
         this.messageController.setMessage(MessageConstants.LOGGED_OUT,false);
      }
      
      private function userLeft(param1:ChatEvent) : void
      {
         var _loc2_:IAvatar = this.othersModel.getAvatar(param1.userVo) as IAvatar;
         if(_loc2_ != null && this.room != null)
         {
            this.room.removeOtherAvatar(_loc2_);
         }
         this.othersController.userGone(param1.userVo);
      }
      
      private function updateGpsRoom(param1:Event) : void
      {
         if(this.globalModel.spaceName == SpaceConstants.TOWNS)
         {
            this.gpsController.setMyRoom(this.roomModel.roomID);
         }
      }
      
      public function init() : *
      {
         this.userLoader = new UserDataLoader();
         this.dataExchange = new DataExchange();
         this.chatInit = new ChatInit();
         this.chatInit.gameID = this.gameID;
         this.eventController.addEventListener(this.chatModel,ChatEvent.USER_HAS_JOINED_ROOM,this.newUserInWorld);
         this.eventController.addEventListener(this.userModel,UserConstants.USER_DATA_SET,this.loadServers);
         this.eventController.addEventListener(this.chatInit,ChatConstants.INIT_DONE,this.connectToChat);
         this.eventController.addEventListener(this.dataExchange,ChatErrorEvent.CHAT_ERROR,this.chatError);
         this.pathLoader = new GraphicPaths();
         this.eventController.addEventListener(this.pathLoader,GraphicPaths.PATHS_LOADED,this.pathsLoaded);
         this.eventController.addEventListener(this.chatModel,ChatEvent.USER_HAS_LEFT_ROOM,this.userLeft);
         this.eventController.addEventListener(this.chatModel,ChatConstants.FRIEND_REQUEST_REC,this.loadFriendRequest);
         this.eventController.addEventListener(this.chatModel,ChatConstants.CONFIRM_IGNORE,this.requestIgnore);
         this.eventController.addEventListener(this.chatModel,ChatConstants.CONFIRM_UNIGNORE,this.requestUnignore);
         this.eventController.addEventListener(this.reportModel,GlobalConstants.SHOW_REPORT,this.loadReport);
         this.eventController.addEventListener(this.globalModel,GlobalConstants.TAKE_PHOTO,this.takePhoto);
         this.eventController.addEventListener(this.globalModel,GlobalConstants.FULL_SCREEN,this.goFullScreen);
      }
      
      public function start() : void
      {
         this.userLoader = new UserDataLoader();
         this.dataExchange = new DataExchange();
         this.chatInit = new ChatInit();
         this.chatInit.gameID = this.gameID;
         this.objectController.setDataExchange(this.dataExchange);
         this.eventController.addEventListener(this.chatModel,ChatEvent.USER_HAS_JOINED_ROOM,this.newUserInWorld);
         this.eventController.addEventListener(this.userModel,UserConstants.USER_DATA_SET,this.loadServers);
         this.eventController.addEventListener(this.chatInit,ChatConstants.INIT_DONE,this.connectToChat);
         this.eventController.addEventListener(this.dataExchange,ChatConstants.CONNECTED,this.buildWorld);
         this.eventController.addEventListener(this.roomModel,GlobalConstants.CHANGE_ROOMS,this.changeRooms);
         this.eventController.addEventListener(this.roomModel,GlobalConstants.UPDATE_SCROLL,this.setScrollPos);
         this.eventController.addEventListener(this.globalModel,GlobalConstants.TAKE_PHOTO,this.takePhoto);
         this.eventController.addEventListener(this.globalModel,GlobalConstants.FULL_SCREEN,this.goFullScreen);
         this.dataExchange.myRoomName = this.roomModel.roomName;
         this.pathLoader.getPaths();
      }
      
      public function startTowns() : *
      {
         this.userLoader = new UserDataLoader();
         this.dataExchange = new DataExchange();
         this.chatInit = new ChatInit();
         this.chatInit.gameID = this.gameID;
         this.objectController.setDataExchange(this.dataExchange);
         this.setUpListeners();
         this.eventController.addEventListener(this.dataExchange,ChatConstants.CONNECTED,this.buildWorld);
         this.pathLoader = new GraphicPaths();
         this.eventController.addEventListener(this.pathLoader,GraphicPaths.PATHS_LOADED,this.pathsLoaded);
         this.dataExchange.myRoomName = this.roomModel.roomName;
         this.pathLoader.getPaths();
      }
      
      private function setUpListeners() : *
      {
         if(this.listenersSet == false)
         {
            this.eventController.addEventListener(this.chatModel,ChatEvent.USER_HAS_JOINED_ROOM,this.newUserInWorld);
            this.eventController.addEventListener(this.chatModel,ChatConstants.ROOM_CHANGED,this.changeRooms);
            this.eventController.addEventListener(this.userModel,UserConstants.USER_DATA_SET,this.loadServers);
            this.eventController.addEventListener(this.roomModel,GlobalConstants.UPDATE_SCROLL,this.setScrollPos);
            this.eventController.addEventListener(this.roomModel,GlobalConstants.UPDATE_SCROLL_TO,this.setScrollTo);
            this.eventController.addEventListener(this.roomModel,GlobalConstants.ROOM_ID_UPDATED,this.updateGpsRoom);
            this.eventController.addEventListener(this.roomModel,GlobalConstants.SILENT_MOB_UPDATE,this.updateMobObjectSilent);
            this.eventController.addEventListener(this.chatModel,ChatEvent.USER_HAS_LEFT_ROOM,this.userLeft);
            this.eventController.addEventListener(this.chatModel,ChatConstants.FOLLOW_REQUEST_REC,this.loadFollowRequest);
            this.eventController.addEventListener(this.chatModel,ChatConstants.FRIEND_REQUEST_REC,this.loadFriendRequest);
            this.eventController.addEventListener(this.chatModel,ChatConstants.CONFIRM_IGNORE,this.requestIgnore);
            this.eventController.addEventListener(this.chatModel,ChatConstants.CONFIRM_UNIGNORE,this.requestUnignore);
            this.eventController.addEventListener(this.reportModel,GlobalConstants.SHOW_REPORT,this.loadReport);
            this.eventController.addEventListener(this.globalModel,GlobalConstants.TAKE_PHOTO,this.takePhoto);
            this.eventController.addEventListener(this.globalModel,GlobalConstants.FULL_SCREEN,this.goFullScreen);
            this.eventController.addEventListener(this,MoveEvent.MOVE,this.bridgeMove);
            this.eventController.addEventListener(this,JumpRoomEvent.CHANGE_ROOM,this.jumpRooms);
            this.eventController.addEventListener(this.gameModel,GameConstants.USER_CHALLENGED,this.userChallenged);
            this.eventController.addEventListener(this.chatInit,ChatConstants.INIT_DONE,this.connectToChat);
            this.eventController.addEventListener(this.othersModel,ChatConstants.UNIGNORE,this.unIgnored);
            this.eventController.addEventListener(this.othersModel,ChatConstants.IGNORE,this.ignored);
            this.eventController.addEventListener(this,Event.ENTER_FRAME,this.walkOthers);
            this.listenersSet = true;
         }
      }
      
      private function jumpRooms(param1:JumpRoomEvent) : void
      {
         this.avatarController.setUserControl(true);
         this.avatarController.setTransportCoords(param1.startX,param1.startY,param1.room);
      }
      
      private function pathsLoaded(param1:Event) : *
      {
         this.userLoader.getSid();
      }
      
      protected function connectToChat(param1:Event) : *
      {
         var _loc2_:ServerVo = this.chatModel.getServer(0);
         this.dataExchange.portArray = _loc2_.portArray;
         if(this.globalModel.useLink == true)
         {
            this.dataExchange.connect(this.globalModel.linkIP,this.globalModel.linkPort);
         }
         if(this.globalModel.spaceName == SpaceConstants.TOWNS)
         {
            this.dataExchange.selectRoomFromServer();
         }
         else
         {
            this.dataExchange.connect(_loc2_.ip,_loc2_.port);
         }
      }
      
      public function loadServers(param1:Event = null) : *
      {
         this.eventController.removeEventListener(this.userModel,UserConstants.USER_DATA_SET,this.loadServers);
         this.chatInit.getServerList();
      }
      
      public function buildWorld(param1:Event) : *
      {
         this.eventController.removeEventListener(this.dataExchange,ChatConstants.CONNECTED,this.buildWorld);
         this.room = new Surface(this.roomModel.w,this.roomModel.h,"myWorld");
         this.room.name = "surface";
         this.roomScroller.setRoom(this.room);
         this.objectController.setSurface(this.room);
         if(this.roomModel.backgroundImage != "")
         {
            this.roomScroller.setBackground(this.roomModel.backgroundImage);
         }
         if(this.roomModel.backClass != null)
         {
            this.roomScroller.setBackgroundClass(this.roomModel.backClass);
         }
         this.room.init();
         this.avatar.setAtStart();
         this.avatar.setSurface(this.room);
         this.avatar.setScroller(this.roomScroller);
         this.avatar.dataProvider = this.userModel.userVo;
         if(this.userModel.userVo.user_level > 50)
         {
            this.avatar.clip.alpha = 0.5;
         }
         this.room.addAvatar(this.avatar);
         var _loc2_:String = this.userModel.userVo.avatar_url;
         _loc2_ = StringFunctions.findReplace("flip",_loc2_,"strip");
         this.avatar.setStrip(_loc2_);
         this.avatarController.setAvatar(this.avatar);
         this.setUpListeners();
         this.dataExchange.getListOfRooms();
         this.globalController.worldIsBuilt();
      }
      
      private function newUserInWorld(param1:ChatEvent) : *
      {
         var _loc2_:OthersWorldAvatar = null;
         if(this.globalModel.isInSittingGame == false)
         {
            if(param1.userVo == null)
            {
               return;
            }
            if(this.othersModel.isThereAlready(param1.userVo) == false)
            {
               _loc2_ = new OthersWorldAvatar();
               this.othersController.registerOther(_loc2_);
            }
            else
            {
               _loc2_ = this.othersModel.getAvatar(param1.userVo) as OthersWorldAvatar;
               if(_loc2_ != null)
               {
                  if(param1.userVo.wasHereBeforeMe == false)
                  {
                     _loc2_.setAtStart();
                  }
               }
            }
            if(_loc2_ == null)
            {
               _loc2_ = new OthersWorldAvatar();
            }
            if(_loc2_ != null)
            {
               _loc2_.ignorePos = false;
               _loc2_.dataProvider = param1.userVo;
               if(param1.userVo.wasHereBeforeMe == false)
               {
                  _loc2_.setAtStart();
               }
               if(_loc2_.clip != null)
               {
                  _loc2_.clip.scaleX = this.avatarModel.scale / 100;
                  _loc2_.clip.scaleY = this.avatarModel.scale / 100;
                  if(_loc2_.dataProvider.user_level > 50)
                  {
                     if(this.userModel.userVo.user_level < 50)
                     {
                        _loc2_.clip.visible = _loc2_.dataProvider.visible;
                     }
                     else if(_loc2_.dataProvider.visible == false)
                     {
                        _loc2_.clip.alpha = 0.5;
                     }
                  }
               }
               if(this.room != null)
               {
                  _loc2_.setSurface(this.room);
                  this.room.addOtherAvatar(_loc2_);
                  this.room.findBlockedItem(_loc2_,true);
                  _loc2_.processBlockedItem();
               }
               else
               {
                  this.othersController.addJustJoined(param1.userVo);
               }
               _loc2_.ignorePos = false;
            }
            this.dispatchEvent(new AvatarMoveEvent(AvatarMoveEvent.JOINED,_loc2_,true));
         }
      }
      
      private function chatError(param1:ChatErrorEvent) : *
      {
         this.messageController.setMessage(param1.message);
      }
      
      protected function changeRooms(param1:Event) : *
      {
         var _loc2_:Array = null;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:IAvatar = null;
         this.gpsController.setRoomImIn(this.roomModel.surfaceToLoad);
         if(this.room)
         {
            this.eventController.addEventListener(this.room,GlobalConstants.MAP_LOADED,this.mapLoaded);
            _loc2_ = this.room.avatarArray;
            _loc3_ = _loc2_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = _loc2_[_loc4_];
               _loc5_.destroy();
               _loc4_++;
            }
            this.room.clearAvatars();
            this.room.loadMap();
         }
      }
      
      protected function updateMobObjectSilent(param1:Event) : *
      {
         this.dataExchange.setMobDataSilent(this.roomModel.mobObject,this.roomModel.mobData);
      }
      
      private function mapLoaded(param1:Event) : *
      {
         this.dataExchange.listAlreadyHere();
         this.roomScroller.forceScroll = true;
         this.dispatchEvent(new AvatarMoveEvent(AvatarMoveEvent.JOINED,this.avatar,true));
         this.globalController.hideChangeScreen();
      }
      
      protected function setScrollPos(param1:Event) : *
      {
         this.roomScroller.x = this.roomModel.scrollX;
         this.roomScroller.y = this.roomModel.scrollY;
      }
      
      protected function setScrollTo(param1:Event) : *
      {
         this.xTween = new Tween(this.roomScroller,"x",None.easeNone,this.roomScroller.x,this.roomModel.scrollX,this.roomModel.tweenSpeed,true);
         this.yTween = new Tween(this.roomScroller,"y",None.easeNone,this.roomScroller.y,this.roomModel.scrollY,this.roomModel.tweenSpeed,true);
         this.eventController.addEventListener(this.yTween,TweenEvent.MOTION_FINISH,this.roomScrollDone);
      }
      
      private function roomScrollDone(param1:TweenEvent) : *
      {
         this.eventController.removeEventListener(this.yTween,TweenEvent.MOTION_FINISH,this.roomScrollDone);
         this.roomController.setRoomScrollDone();
      }
      
      private function loadReport(param1:Event) : *
      {
         this.reportLoader = new Loader();
         this.reportLoader.load(new URLRequest("dialogs/Report.swf"));
         this.addChild(this.reportLoader);
         this.reportLoader.x = 400;
         this.reportLoader.y = 200;
      }
      
      private function loadFriendRequest(param1:Event) : *
      {
         this.reportLoader = new Loader();
         this.reportLoader.x = 200;
         this.reportLoader.y = 300;
         this.reportLoader.load(new URLRequest("dialogs/friendRequest.swf"));
         this.addChild(this.reportLoader);
      }
      
      private function loadFollowRequest(param1:Event) : *
      {
         if(this.reportLoader != null)
         {
            if(this.contains(this.reportLoader))
            {
               this.removeChild(this.reportLoader);
            }
         }
         this.reportLoader = new Loader();
         this.reportLoader.x = 400;
         this.reportLoader.y = 300;
         this.reportLoader.load(new URLRequest("dialogs/followInvite.swf"));
         this.addChild(this.reportLoader);
      }
      
      private function requestIgnore(param1:Event) : *
      {
         this.reportLoader = new Loader();
         this.reportLoader.x = 200;
         this.reportLoader.y = 300;
         this.reportLoader.load(new URLRequest("dialogs/ignoreUser.swf"));
         this.addChild(this.reportLoader);
      }
      
      private function requestUnignore(param1:Event) : *
      {
         this.reportLoader = new Loader();
         this.reportLoader.x = 200;
         this.reportLoader.y = 300;
         this.reportLoader.load(new URLRequest("dialogs/unignore.swf"));
         this.addChild(this.reportLoader);
      }
      
      private function setRoomData(param1:Event) : *
      {
      }
      
      private function centerReport(param1:Event) : *
      {
         this.reportLoader.x = this.globalModel.viewWidth - this.reportLoader.width / 2;
         this.reportLoader.y = this.globalModel.viewHeight - this.reportLoader.height / 2;
      }
      
      private function takePhoto(param1:Event) : *
      {
         var _loc2_:CameraSound = new CameraSound();
         _loc2_.play();
         var _loc3_:SaveImage = new SaveImage();
         _loc3_.imageObject = this.room;
         _loc3_.saveImageToDisk(param1);
      }
      
      private function bridgeMove(param1:MoveEvent) : *
      {
         this.avatarController.setTarget(param1.x,param1.y);
      }
      
      private function goFullScreen(param1:Event) : *
      {
         var _loc2_:Stage = TheStage.getInstance().STAGE;
         if(_loc2_.displayState == "normal")
         {
            this.globalController.setFull(true);
            _loc2_.scaleMode = StageScaleMode.EXACT_FIT;
            _loc2_.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;
         }
         else
         {
            _loc2_.scaleMode = StageScaleMode.NO_SCALE;
            _loc2_.displayState = "normal";
         }
      }
      
      protected function userChallenged(param1:Event) : *
      {
         var _loc2_:Number = this.gameModel.gameIndex;
         var _loc3_:Number = int(Math.random() * 100000);
         var _loc4_:Number = int(Math.random() * 4) + 1;
         var _loc5_:ChallengedVo = new ChallengedVo(this.userModel.userVo,this.gameModel.challengedUser,_loc2_,_loc3_,_loc4_);
         this.gameController.challengeIssued(_loc5_);
         this.chatController.sendUserMessage("gameChallenge:" + this.gameModel.challengedUser.gaia_id + ":" + String(_loc2_) + ":" + String(_loc3_) + ":" + String(_loc4_),this.userModel.userVo);
      }
      
      private function ignored(param1:Event) : *
      {
         var _loc2_:IAvatar = this.othersModel.getAvatarByID(this.othersModel.ignoreID);
         if(_loc2_ != null)
         {
            if(_loc2_.clip)
            {
               _loc2_.clip.alpha = 0.3;
            }
         }
      }
      
      private function unIgnored(param1:Event) : *
      {
         var _loc2_:IAvatar = this.othersModel.getAvatarByID(this.othersModel.unIgnoreID);
         if(_loc2_ != null)
         {
            if(_loc2_.clip)
            {
               _loc2_.clip.alpha = 1;
            }
         }
      }
      
      private function actionReceived(param1:OtherEvent) : void
      {
         var _loc2_:IAvatar = this.othersModel.getAvatarByID(param1.id);
         if(_loc2_ != null)
         {
            _loc2_.actionReceived(param1);
         }
      }
      
      private function walkOthers(param1:Event) : *
      {
         var _loc5_:IAvatar = null;
         var _loc2_:Array = this.othersModel.allAvatars();
         var _loc3_:Number = _loc2_.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = _loc2_[_loc4_];
            _loc5_.doTheWalk3();
            _loc4_++;
         }
      }
      
      private function walkPets() : *
      {
      }
   }
}
