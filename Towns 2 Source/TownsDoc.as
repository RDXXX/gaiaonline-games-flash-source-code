package
{
   import com.gaiamobile.global.constants.DebugConstants;
   import com.gaiaworld.avatar.actionGroups.towns.SmiteActionGroup;
   import com.gaiaworld.avatar.constants.AvatarConstants;
   import com.gaiaworld.avatar.controller.AvatarController;
   import com.gaiaworld.avatar.controller.OthersController;
   import com.gaiaworld.avatar.controller.events.AvatarCollisionEvent;
   import com.gaiaworld.avatar.controller.events.AvatarMoveEvent;
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.avatar.model.OthersModel;
   import com.gaiaworld.avatar.util.AFK;
   import com.gaiaworld.avatar.util.KeyUtil;
   import com.gaiaworld.avatar.view.parts.BodyPart;
   import com.gaiaworld.effects.EffectLoader;
   import com.gaiaworld.game.constants.GameConstants;
   import com.gaiaworld.game.model.GameModel;
   import com.gaiaworld.global.GWorld;
   import com.gaiaworld.global.TheStage;
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.global.constants.MessageConstants;
   import com.gaiaworld.global.constants.SmartPhoneConstants;
   import com.gaiaworld.global.constants.SpaceConstants;
   import com.gaiaworld.global.controller.EventController;
   import com.gaiaworld.global.controller.GlobalController;
   import com.gaiaworld.global.controller.MessageController;
   import com.gaiaworld.global.interfaces.ISurface;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.global.model.MessageModel;
   import com.gaiaworld.global.services.GaiaTimer;
   import com.gaiaworld.global.services.PrefService;
   import com.gaiaworld.global.sounds.BgSound;
   import com.gaiaworld.global.sounds.SoundFXUtil;
   import com.gaiaworld.global.util.AutoMod;
   import com.gaiaworld.global.util.Preferences;
   import com.gaiaworld.global.util.ServerTimer;
   import com.gaiaworld.global.util.StringFunctions;
   import com.gaiaworld.global.view.ChangeScreen;
   import com.gaiaworld.global.view.debug.AnimatedItemBox;
   import com.gaiaworld.global.view.debug.IpBox;
   import com.gaiaworld.global.view.panels.MessageBox;
   import com.gaiaworld.global.view.panels.TownAvatarBar;
   import com.gaiaworld.global.view.panels.TownsUserInfo;
   import com.gaiaworld.global.view.ui.AvatarCompass;
   import com.gaiaworld.global.view.ui.CarButton;
   import com.gaiaworld.global.view.ui.FaceBox;
   import com.gaiaworld.gobjects.controller.ObjectController;
   import com.gaiaworld.gobjects.controller.events.ObjectEvent;
   import com.gaiaworld.gobjects.model.ObjectModel;
   import com.gaiaworld.gobjects.view.WorldMap;
   import com.gaiaworld.hangouts.controller.events.CreateRoomEvent;
   import com.gaiaworld.hangouts.controller.events.RoomEvent;
   import com.gaiaworld.hangouts.controller.events.ServerEvent;
   import com.gaiaworld.hangouts.dialogs.ItemGrantScreen;
   import com.gaiaworld.house.controller.DebugController;
   import com.gaiaworld.house.controller.HousingController;
   import com.gaiaworld.house.model.DebugModel;
   import com.gaiaworld.house.model.HousingModel;
   import com.gaiaworld.house.view.DebugTextViewer;
   import com.gaiaworld.monsters.controller.MonsterController;
   import com.gaiaworld.room.constants.MapConstants;
   import com.gaiaworld.room.constants.RoomConstants;
   import com.gaiaworld.room.controller.GpsController;
   import com.gaiaworld.room.controller.RoomController;
   import com.gaiaworld.room.data.TownMapData;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.room.model.GpsModel;
   import com.gaiaworld.room.model.RoomModel;
   import com.gaiaworld.room.util.LinkToUtil;
   import com.gaiaworld.room.util.PFind;
   import com.gaiaworld.room.util.TaxiFinder;
   import com.gaiaworld.room.view.JumpArrow;
   import com.gaiaworld.sushi.constants.ChatConstants;
   import com.gaiaworld.sushi.controller.ChatController;
   import com.gaiaworld.sushi.controller.events.ChatEvent;
   import com.gaiaworld.sushi.model.ChatModel;
   import com.gaiaworld.sushi.vo.SRoomVo;
   import com.gaiaworld.sushi.vo.ServerVo;
   import com.gaiaworld.towns.collectables.FlowersTrash;
   import com.gaiaworld.towns.collectables.bugs.view.Bugs;
   import com.gaiaworld.towns.constants.PhoneConstants;
   import com.gaiaworld.towns.games.rally.model.RallyModel;
   import com.gaiaworld.towns.hood.constants.HoodConstants;
   import com.gaiaworld.towns.hood.controller.HoodController;
   import com.gaiaworld.towns.hood.model.HoodModel;
   import com.gaiaworld.towns.hood.services.HoodService;
   import com.gaiaworld.towns.hood.util.DirectToHood;
   import com.gaiaworld.towns.hood.util.DirectToHouse;
   import com.gaiaworld.towns.objectGroups.PaintBalls;
   import com.gaiaworld.towns.olympics.view.Imp;
   import com.gaiaworld.towns.smartphone.Phone;
   import com.gaiaworld.towns.vhollywood.model.VHModel;
   import com.gaiaworld.user.controller.UserController;
   import com.gaiaworld.user.model.UserModel;
   import com.gaiaworld.user.vo.UserVo;
   import fl.controls.BaseButton;
   import fl.controls.Button;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.net.SharedObject;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.Security;
   import flash.utils.Timer;
   
   public class TownsDoc extends Sprite
   {
       
      
      public var animBox:AnimatedItemBox;
      
      public var avatarBar:TownAvatarBar;
      
      public var btnCar:CarButton;
      
      public var btnData:Button;
      
      public var btnPhone:SimpleButton;
      
      public var btnWalk:SimpleButton;
      
      public var challengeGlow:MovieClip;
      
      public var changeScreen:ChangeScreen;
      
      public var db:DebugTextViewer;
      
      public var grantScreen:ItemGrantScreen;
      
      public var ipBox:IpBox;
      
      public var messageBox:MessageBox;
      
      public var phone:Phone;
      
      public var userInfoBar:TownsUserInfo;
      
      private var world:GWorld;
      
      private var globalModel:GlobalModel;
      
      private var userModel:UserModel;
      
      private var autoMod:AutoMod;
      
      private var vhModel:VHModel;
      
      private var rallyModel:RallyModel;
      
      private var housingModel:HousingModel;
      
      private var hoodModel:HoodModel;
      
      private var debugModel:DebugModel;
      
      private var roomModel:RoomModel;
      
      private var avatarModel:AvatarModel;
      
      private var objectModel:ObjectModel;
      
      private var gameModel:GameModel;
      
      private var gpsModel:GpsModel;
      
      private var messageModel:MessageModel;
      
      private var chatModel:ChatModel;
      
      private var roomController:RoomController;
      
      private var globalController:GlobalController;
      
      private var avatarController:AvatarController;
      
      private var chatController:ChatController;
      
      private var objectController:ObjectController;
      
      private var userController:UserController;
      
      private var debugController:DebugController;
      
      private var eventController:EventController;
      
      private var linkTimer:Timer;
      
      private var prefService:PrefService;
      
      private var screenLoader:Loader;
      
      private var paramList:Object;
      
      private var keyUtil:KeyUtil;
      
      private var townData:TownMapData;
      
      private var bugs:Bugs;
      
      private var flowersTrash:FlowersTrash;
      
      private var pFind:PFind;
      
      private var gTimer:GaiaTimer;
      
      private var mapCode:String = "";
      
      private var noSound:String = "1";
      
      private var othersModel:OthersModel;
      
      private var stationaryClip:Sprite;
      
      private var si:String;
      
      private var initAvTimer:Timer;
      
      private var hoodService:HoodService;
      
      private var hoodController:HoodController;
      
      private var kickTimer:Timer;
      
      private var bgSound:BgSound;
      
      private var avatarCompass:AvatarCompass;
      
      private var gpsController:GpsController;
      
      private var smiteCount:Number;
      
      private var today:Number;
      
      private var pref:Preferences;
      
      private var houseCode:String;
      
      private var comCode:String;
      
      private var hoodCode:String;
      
      private var taxiFinder:TaxiFinder;
      
      private var msPreview:String;
      
      private var soundFX:SoundFXUtil;
      
      private var childArray:Array;
      
      private var othersController:OthersController;
      
      private var monsterController:MonsterController;
      
      private var afk:AFK;
      
      private var todaysDate:Date;
      
      private var effectLoader:EffectLoader;
      
      public var paintBalls:PaintBalls;
      
      public function TownsDoc()
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.world = new GWorld();
         this.globalModel = GlobalModel.getInstance();
         this.userModel = UserModel.getInstance();
         this.vhModel = VHModel.getInstance();
         this.rallyModel = RallyModel.getInstance();
         this.housingModel = HousingModel.getInstance();
         this.hoodModel = HoodModel.getInstance();
         this.debugModel = DebugModel.getInstance();
         this.roomModel = RoomModel.getInstance();
         this.avatarModel = AvatarModel.getInstance();
         this.objectModel = ObjectModel.getInstance();
         this.gameModel = GameModel.getInstance();
         this.gpsModel = GpsModel.getInstance();
         this.messageModel = MessageModel.getInstance();
         this.chatModel = ChatModel.getInstance();
         this.roomController = new RoomController();
         this.globalController = new GlobalController();
         this.avatarController = new AvatarController();
         this.chatController = new ChatController();
         this.objectController = new ObjectController();
         this.userController = new UserController();
         this.debugController = new DebugController();
         this.eventController = new EventController();
         this.linkTimer = new Timer(500);
         this.screenLoader = new Loader();
         this.townData = new TownMapData();
         this.gTimer = new GaiaTimer();
         this.othersModel = OthersModel.getInstance();
         this.stationaryClip = new Sprite();
         this.initAvTimer = new Timer(4000);
         this.hoodController = new HoodController();
         this.kickTimer = new Timer(2000);
         this.bgSound = BgSound.getInstance();
         this.gpsController = new GpsController();
         this.pref = Preferences.getInstance();
         this.taxiFinder = new TaxiFinder();
         this.soundFX = new SoundFXUtil();
         this.othersController = new OthersController();
         this.monsterController = new MonsterController();
         super();
         Security.loadPolicyFile("http://a2.cdn.gaiaonline.com/crossdomain.xml");
         Security.allowDomain("a2.cdn.gaiaonline.com");
         Security.allowDomain("s.cdn.gaiaonline.com");
         Security.allowDomain("wclarkson.dev.gaiaonline.com");
         Security.allowDomain("www.gaiaonline.com");
         Security.allowDomain("www.mediaspike.com");
         this.paramList = this.root.loaderInfo.parameters;
         var _loc1_:String = this.paramList.gsiUrl;
         this.mapCode = this.paramList.g;
         this.noSound = this.paramList.sound;
         this.houseCode = this.paramList.house;
         this.comCode = this.paramList.community;
         this.hoodCode = this.paramList.neighborhood;
         this.si = this.paramList.si;
         if(this.houseCode != "")
         {
            this.globalController.setHideOverride(true);
         }
         if(this.paramList.eventID)
         {
            this.mapCode = this.paramList.eventID;
         }
         if(this.paramList.action == "link")
         {
            _loc3_ = this.paramList.ip;
            _loc4_ = this.paramList.port;
            this.globalController.useLink(true);
            this.globalController.setLinkIp(_loc3_);
            this.globalController.setPortIP(_loc4_);
            this.globalController.setHideOverride(true);
         }
         this.globalController.setSubdomain(_loc1_);
         ServerTimer.getInstance();
         this.autoMod = new AutoMod();
         this.prefService = new PrefService();
         this.prefService.getPrefs();
         var _loc2_:Number = this.paramList.gver;
         this.globalController.setVersion(_loc2_);
         this.globalController.setSpace(SpaceConstants.TOWNS);
         this.world.gameID = 20;
         this.roomController.setRoomName("towns");
         this.avatarController.setPathFinding(false);
         this.eventController.addEventListener(this.world,AvatarMoveEvent.JOINED,this.newAv);
         this.monsterController.viewObj = this;
         this.eventController.addEventListener(this.roomModel,AvatarCollisionEvent.AVATAR_HIT_SOMETHING,this.handleCollisions);
         this.eventController.addEventListener(this.roomModel,RoomConstants.ITEM_TO_ITEM_COLLISION,this.itemToItemCollisions);
         this.eventController.addEventListener(this.roomModel,RoomConstants.ITEM_MAP_COLLISON,this.itemMapCollision);
         this.eventController.addEventListener(this.roomModel,GlobalConstants.ROOM_CHANGED,this.roomChanged);
         this.messageModel.addEventListener(MessageConstants.NEW_MESSAGE,this.showMessage);
         this.eventController.addEventListener(this.globalModel,GlobalConstants.WORLD_IS_BUILT,this.worldIsBuilt);
         this.eventController.addEventListener(this.globalModel,GlobalConstants.LOAD_SCREEN,this.loadScreen);
         this.eventController.addEventListener(this.globalModel,GlobalConstants.UNLOAD_SCREEN,this.unloadScreen);
         this.eventController.addEventListener(this.roomModel,GlobalConstants.LOG_USER_CHANGED_SPACES,this.logChange);
         this.eventController.addEventListener(this.othersModel,ChatConstants.SMITE,this.smiteUser);
         this.todaysDate = new Date();
         this.custom();
         this.standard();
         this.btnData.addEventListener(MouseEvent.MOUSE_DOWN,this.clearMobData);
         this.eventController.addEventListener(this.objectModel,ObjectEvent.ADD_STATIONARY_OBJECT,this.addStationaryObject);
         this.eventController.addEventListener(this.objectModel,ObjectEvent.CLEAR_STATIONARY_OBJECTS,this.removeStationaryObjects);
         this.eventController.addEventListener(this.objectModel,ObjectEvent.REMOVE_STATIONARY_OBJECT,this.removeStationaryObject);
         this.eventController.addEventListener(this,MouseEvent.MOUSE_DOWN,this.globalClick,true);
         this.btnPhone.tabEnabled = false;
         this.btnWalk.tabEnabled = false;
         this.eventController.addEventListener(this.btnPhone,MouseEvent.MOUSE_DOWN,this.togglePhone);
         this.eventController.addEventListener(this.btnWalk,MouseEvent.MOUSE_DOWN,this.togglePathFinding);
         this.eventController.addEventListener(this,PhoneConstants.SHOW_COMPASS,this.showAvatarCompass);
         this.eventController.addEventListener(this,PhoneConstants.HIDE_COMPASS,this.removeAvatarCompass);
         this.phone.visible = false;
         this.btnWalk.alpha = 0.5;
         this.addChild(this.stationaryClip);
         this.challengeGlow.visible = false;
         this.eventController.addEventListener(this.gameModel,GameConstants.NEW_CHALLENGE,this.newChallenge);
         this.eventController.addEventListener(this.gameModel,GameConstants.NUM_CHALLENGES_CHANGED,this.newChallenge);
         this.eventController.addEventListener(this.gameModel,GameConstants.HIDE_CHALLENGE_GLOW,this.hideGlow);
         this.eventController.addEventListener(this.debugModel,DebugConstants.LIST_ALL_OBJECTS,this.listAllChildren);
         this.eventController.addEventListener(this.debugModel,DebugConstants.LIST_SURFACE,this.listSurface);
         this.eventController.addEventListener(this,ServerEvent.CHOOSE_SEVER,this.serverSelected);
         this.eventController.addEventListener(this,CreateRoomEvent.CREATE_ROOM,this.createCustomRoom);
         this.eventController.addEventListener(this,SmartPhoneConstants.SHOW_WORLD_MAP,this.showWorldMap);
         this.today = this.todaysDate.getTime();
         this.getSmites();
         this.__setProp_btnData_Scene1_Layer1_0();
      }
      
      private function showWorldMap(param1:Event) : void
      {
         var _loc2_:WorldMap = new WorldMap();
         this.objectController.addStationaryItem(_loc2_);
      }
      
      private function serverSelected(param1:ServerEvent) : void
      {
         trace("SERVER SELECTED");
         this.chatModel.addEventListener(ChatConstants.ROOMS_READY,this.listRooms);
         this.globalController.setIsHangout(true);
         var _loc2_:ServerVo = this.chatModel.getServer(param1.serverIndex);
         this.world.dataExchange.portArray = _loc2_.portArray;
         this.world.dataExchange.connect(_loc2_.ip,_loc2_.port);
      }
      
      private function listRooms(param1:Event) : void
      {
         trace("LIST ROOMS");
         this.chatModel.removeEventListener(ChatConstants.ROOMS_READY,this.listRooms);
         this.chatModel.addEventListener(RoomEvent.CHOOSE_ROOM_ID,this.roomChoosen);
         this.globalController.loadScreen("dialogs/RoomChooser.swf");
      }
      
      private function roomChoosen(param1:RoomEvent) : void
      {
         this.chatModel.removeEventListener(RoomEvent.CHOOSE_ROOM,this.roomChoosen);
         trace("index=" + param1.roomIndex);
         var _loc2_:SRoomVo = this.chatModel.getRoomByID(param1.roomIndex);
         this.world.dataExchange.myRoomName = _loc2_.name;
         trace("ROOM CHOOSEN " + _loc2_.id);
         this.globalController.setRoom(_loc2_.name);
         this.roomController.setRoomName(_loc2_.name);
         this.chatController.setPrefix("");
         this.chatController.lockToCustom(true);
         this.globalController.unloadScreen();
         this.world.dataExchange.room_id = _loc2_.id;
         this.world.dataExchange.joinHangoutRoom();
      }
      
      private function createCustomRoom(param1:CreateRoomEvent) : *
      {
         trace("CREATE ROOM");
         this.chatController.setSelectedRoom(param1.roomName);
         this.world.dataExchange.addEventListener(ChatConstants.CONNECTED,this.roomHasBeenJoined);
         this.world.dataExchange.createCustomHangout(param1.roomName);
      }
      
      private function roomHasBeenJoined(param1:Event) : void
      {
         this.world.dataExchange.removeEventListener(ChatConstants.CONNECTED,this.roomHasBeenJoined);
         this.globalController.unloadScreen();
      }
      
      private function showMessage(param1:Event) : void
      {
         this.setChildIndex(this.messageBox,this.numChildren - 1);
      }
      
      private function logChange(param1:Event) : void
      {
         var _loc2_:String = "";
         switch(this.roomModel.area)
         {
            case SpaceConstants.AREA_GAMBINO:
               _loc2_ = "javascript:setGame(\'towns2\')";
               break;
            case SpaceConstants.AREA_HOLLYWOOD:
               _loc2_ = "javascript:setGame(\'hollywood\')";
               break;
            case SpaceConstants.AREA_RALLY:
               _loc2_ = "javascript:setGame(\'rally\')";
         }
         if(_loc2_ != "")
         {
            navigateToURL(new URLRequest(_loc2_),"_self");
         }
      }
      
      private function removeStationaryObject(param1:Event) : void
      {
         if(this.stationaryClip.contains(this.objectModel.stationaryObject.clip))
         {
            this.stationaryClip.removeChild(this.objectModel.stationaryObject.clip);
         }
      }
      
      private function addStationaryObject(param1:Event) : void
      {
         this.stationaryClip.addChild(this.objectModel.stationaryObject.clip);
      }
      
      private function removeStationaryObjects(param1:Event) : *
      {
         var _loc2_:Number = this.stationaryClip.numChildren;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.stationaryClip.removeChildAt(0);
            _loc3_++;
         }
      }
      
      private function newAv(param1:AvatarMoveEvent) : void
      {
         var _loc2_:Imp = null;
         if(this.globalModel.spaceName != SpaceConstants.RALLY_GAME)
         {
         }
         if(this.roomModel.surfaceToLoad == MapConstants.PAINTBALL_ROOM)
         {
            _loc2_ = new Imp();
            _loc2_.setAvatar(param1.avatar);
            param1.avatar.attachItem(10,-150,_loc2_);
            param1.avatar.immunity = true;
            if(param1.avatar == this.avatarModel.avatar)
            {
               this.globalController.hideChangeScreen();
            }
         }
      }
      
      private function loadScreen(param1:Event) : void
      {
         this.screenLoader.load(new URLRequest(this.globalModel.screenToLoad + "?ver=" + String(this.globalModel.version)));
         this.addChild(this.screenLoader);
      }
      
      private function unloadScreen(param1:Event) : *
      {
         if(this.contains(this.screenLoader))
         {
            this.removeChild(this.screenLoader);
         }
      }
      
      private function togglePathFinding(param1:MouseEvent) : void
      {
         if(this.globalModel.barButtonsEnabled == false)
         {
            return;
         }
         this.avatarController.setPathFinding(!this.avatarModel.pathFinding);
         this.userController.setPathFinding(this.avatarModel.pathFinding);
         if(this.avatarModel.pathFinding == true)
         {
            this.btnWalk.alpha = 1;
            this.eventController.addEventListener(this.avatarModel,AvatarConstants.DISABLED_PATH_FINDING,this.disablePathFinding);
         }
         else
         {
            this.btnWalk.alpha = 0.5;
            this.eventController.removeEventListener(this.avatarModel,AvatarConstants.DISABLED_PATH_FINDING,this.disablePathFinding);
         }
         this.chatController.changePathFinding();
      }
      
      private function disablePathFinding(param1:Event) : *
      {
         this.eventController.removeEventListener(this.avatarModel,AvatarConstants.DISABLED_PATH_FINDING,this.disablePathFinding);
         this.avatarController.setPathFinding(false);
         this.userController.setPathFinding(this.avatarModel.pathFinding);
         this.btnWalk.alpha = 0.5;
         this.chatController.changePathFinding();
      }
      
      private function clearMobData(param1:MouseEvent) : void
      {
         this.world.dataExchange.clearMob();
      }
      
      private function custom() : *
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:DirectToHood = null;
         this.roomController.setIsLoadedMap(true);
         this.roomController.setMapToLoad("gambinoMarket");
         var _loc1_:Array = [411,1339,1177,433];
         var _loc2_:Array = [421,693,1363,1447];
         var _loc3_:Number = int(Math.random() * _loc1_.length);
         var _loc4_:Number = _loc1_[_loc3_];
         var _loc5_:Number = _loc2_[_loc3_];
         this.globalController.setStartPos(_loc4_,_loc5_);
         this.globalController.setSpace(SpaceConstants.TOWNS);
         if(this.mapCode == "weapon")
         {
            this.roomController.setMapToLoad("weapon");
            this.globalController.setStartPos(1423,1226);
         }
         if(this.mapCode == "rally")
         {
            this.globalController.setSpace(SpaceConstants.RALLY);
            this.avatarController.setTextSize(10);
            this.avatarController.setUseWhiteText(true);
            this.globalController.setStartPos(320,500);
            this.roomController.setMapToLoad("RallyMap3");
         }
         if(this.mapCode == "wtf")
         {
            this.roomController.setMapToLoad(MapConstants.WEST_MARKET);
            this.globalController.setStartPos(1615,950);
         }
         if(this.mapCode == "hollywood")
         {
            this.globalController.setSpace(SpaceConstants.HOLLYWOOD);
            this.avatarController.setTextSize(10);
            this.avatarController.setUseWhiteText(true);
            this.globalController.setStartPos(398,667);
            this.roomController.setMapToLoad("vh_map2");
         }
         else
         {
            this.vhModel.alreadyStarted = true;
         }
         if(this.mapCode == MapConstants.EDAY)
         {
            this.globalController.setSpace(SpaceConstants.EDAY);
            this.avatarController.setUseWhiteText(false);
            this.globalController.setStartPos(398,900);
            this.roomController.setMapToLoad("eday");
         }
         if(this.comCode != null && this.hoodCode != null)
         {
            _loc6_ = Number(this.comCode);
            _loc7_ = Number(this.hoodCode);
            if(isNaN(_loc6_) == false && isNaN(_loc7_) == false)
            {
               _loc8_ = new DirectToHood();
               _loc8_.gotoHood(_loc6_,_loc7_);
            }
         }
         if(this.si == "1")
         {
         }
         AvatarConstants.TOP_BORDER = 100;
         AvatarConstants.BOTTOM_BORDER = 450;
         this.roomController.setBackground("");
         this.avatarController.setSpeed(3);
         this.avatarController.setDelay(40);
         this.setChildIndex(this.db,this.numChildren - 1);
         this.setChildIndex(this.btnData,this.numChildren - 1);
         this.setChildIndex(this.ipBox,this.numChildren - 1);
         this.setChildIndex(this.animBox,this.numChildren - 1);
         this.setChildIndex(this.userInfoBar,this.numChildren - 1);
         this.setChildIndex(this.btnCar,this.numChildren - 1);
         this.setChildIndex(this.changeScreen,this.numChildren - 1);
         this.setChildIndex(this.messageBox,this.numChildren - 1);
         this.setChildIndex(this.grantScreen,this.numChildren - 1);
         this.townData.fillData();
      }
      
      private function standard() : *
      {
         this.globalController.setIsHangout(false);
         TheStage.getInstance().STAGE = this.stage;
         this.keyUtil = new KeyUtil();
         this.world.startTowns();
         this.addChild(this.world);
         this.setChildIndex(this.avatarBar,this.numChildren - 1);
         this.setChildIndex(this.phone,this.numChildren - 1);
         this.setChildIndex(this.btnPhone,this.numChildren - 1);
         this.setChildIndex(this.btnWalk,this.numChildren - 1);
         this.setChildIndex(this.ipBox,this.numChildren - 1);
         this.setChildIndex(this.animBox,this.numChildren - 1);
         this.setChildIndex(this.userInfoBar,this.numChildren - 1);
         this.setChildIndex(this.btnCar,this.numChildren - 1);
         this.setChildIndex(this.changeScreen,this.numChildren - 1);
         this.setChildIndex(this.messageBox,this.numChildren - 1);
         this.setChildIndex(this.grantScreen,this.numChildren - 1);
      }
      
      private function roomChanged(param1:Event) : *
      {
         this.setChildIndex(this.db,this.numChildren - 1);
         this.setChildIndex(this.btnData,this.numChildren - 1);
         this.setChildIndex(this.ipBox,this.numChildren - 1);
         this.setChildIndex(this.animBox,this.numChildren - 1);
         this.setChildIndex(this.changeScreen,this.numChildren - 1);
         this.addCustomItems();
         this.eventController.addEventListener(this.roomModel,AvatarCollisionEvent.AVATAR_HIT_SOMETHING,this.handleCollisions);
         if(this.hoodModel.currentCommunity == 0 && this.hoodModel.currentHoodId == 0)
         {
            this.avatarController.setUserControl(true);
         }
      }
      
      private function newChallenge(param1:Event) : void
      {
         if(this.gameModel.challenges.length > 0)
         {
            this.challengeGlow.gotoAndPlay(2);
            this.challengeGlow.visible = true;
            this.setChildIndex(this.challengeGlow,this.numChildren - 1);
            this.setChildIndex(this.btnPhone,this.numChildren - 1);
         }
         else
         {
            this.challengeGlow.visible = false;
         }
      }
      
      private function hideGlow(param1:Event) : void
      {
         this.challengeGlow.visible = false;
      }
      
      private function togglePhone(param1:Event) : *
      {
         if(this.globalModel.barButtonsEnabled == false)
         {
            return;
         }
         this.challengeGlow.gotoAndStop(1);
         this.challengeGlow.visible = false;
         if(this.phone.visible == true)
         {
            this.phone.hideMe();
         }
         else
         {
            this.phone.showMe();
         }
      }
      
      private function globalClick(param1:MouseEvent) : *
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Sprite = null;
         var _loc5_:String = null;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         if(param1.target.name == "changeScreen")
         {
            return;
         }
         if(this.globalModel.logClick == true)
         {
            trace("name=" + param1.target.name);
            trace("type=" + typeof param1.target);
         }
         if(this.globalModel.ignoreGlobalClick == true)
         {
            return;
         }
         if(param1.target.name == "userInfoBar" || param1.target.name == "gstIcon")
         {
            return;
         }
         if(param1.target is SimpleButton || param1.target is BaseButton)
         {
            return;
         }
         if(param1.target is IAvatar || param1.target is BodyPart || param1.target is FaceBox)
         {
            return;
         }
         if(param1.target is ISurfaceObject)
         {
            _loc4_ = ISurfaceObject(param1.target).clip;
         }
         if(param1.target is ISurface)
         {
            _loc4_ = ISurface(param1.target).clip;
         }
         if(param1.target is MovieClip || param1.target is Sprite)
         {
            _loc4_ = param1.target as Sprite;
         }
         if(param1.target is JumpArrow)
         {
            _loc4_ = param1.target as Sprite;
         }
         if(param1.target.name == "background")
         {
            _loc4_ = param1.target as Sprite;
            if(this.avatarModel.pathFinding == true)
            {
               this.moveAvTo(this.avatarModel.avatar.x,this.avatarModel.avatar.y,_loc4_.x + _loc4_.mouseX,_loc4_.y + _loc4_.mouseY);
            }
            else
            {
               this.avatarController.keyWasUsed(false);
               this.avatarController.setTarget(_loc4_.x + _loc4_.mouseX,_loc4_.y + _loc4_.mouseY);
            }
         }
         if(param1.target is Sprite || param1.target is MovieClip || _loc4_ is Sprite)
         {
            this.globalController.globalClickItem(param1.target as Sprite);
            _loc5_ = param1.target.name;
            _loc6_ = _loc5_.substr(0,3) == "btn"?true:false;
            if(param1.target.name != "phoneBack" && param1.target.name != "uiBar" && _loc6_ == false)
            {
               _loc4_ = param1.target as Sprite;
               _loc7_ = false;
               if(param1.target is JumpArrow)
               {
                  _loc7_ = true;
               }
               if(this.avatarModel.pathFinding == true && _loc7_ == false && _loc5_ != "obj" && this.housingModel.isInHouse == false)
               {
                  if(_loc4_.name == "hitSpot" || param1.target.name == "subHouse")
                  {
                     _loc4_ = Sprite(_loc4_.parent);
                  }
                  this.moveAvTo(this.avatarModel.avatar.x,this.avatarModel.avatar.y,_loc4_.x + _loc4_.mouseX,_loc4_.y + _loc4_.mouseY);
               }
               else
               {
                  if(this.avatarModel.pathFinding == true)
                  {
                     if(this.avatarModel.userControl == true)
                     {
                        this.moveAvTo(this.avatarModel.avatar.x,this.avatarModel.avatar.y,this.world.room.mouseX,this.world.room.mouseY);
                     }
                  }
                  this.avatarController.keyWasUsed(false);
                  if(this.avatarModel.pathFinding == false)
                  {
                     this.avatarController.setTarget(this.world.room.mouseX,this.world.room.mouseY);
                  }
               }
            }
            return;
         }
         if(_loc4_ != null)
         {
            if(this.avatarModel.pathFinding == true)
            {
               if(this.avatarModel.userControl == true)
               {
                  this.moveAvTo(this.avatarModel.avatar.x,this.avatarModel.avatar.y,_loc4_.x + _loc4_.mouseX,_loc4_.y + _loc4_.mouseY);
               }
            }
            else
            {
               this.avatarController.keyWasUsed(false);
               this.avatarController.setTarget(_loc4_.x + _loc4_.mouseX,_loc4_.y + _loc4_.mouseY);
            }
         }
      }
      
      private function moveAvTo(param1:Number, param2:Number, param3:Number, param4:Number) : *
      {
         var _loc5_:Sprite = this.roomModel.collisionMap;
         var _loc6_:BitmapData = new BitmapData(_loc5_.width,_loc5_.height);
         _loc6_.draw(_loc5_);
         var _loc7_:Number = _loc6_.getPixel(param3,param4);
         trace("move from " + param1 + "  " + param2 + " to " + param3 + "  " + param4);
         if(_loc7_ != 0)
         {
            this.pFind.plot(param1,param2,param3,param4);
         }
      }
      
      private function worldIsBuilt(param1:Event) : *
      {
         var _loc2_:HousingController = null;
         this.paintBalls = new PaintBalls();
         this.hoodService = new HoodService();
         this.afk = new AFK();
         if(this.mapCode != "hollywood" && this.mapCode != "rally")
         {
            this.bgSound.loadStandard();
         }
         this.phone.init();
         this.avatarBar.init();
         this.hoodController.getMyHome();
         if(this.mapCode == "myHouse")
         {
            _loc2_ = new HousingController();
            _loc2_.setHouseID(this.userModel.userVo.gaia_id);
            this.roomController.setMapToLoad(MapConstants.MED_HOUSE);
         }
         this.linkTimer.addEventListener(TimerEvent.TIMER,this.checkLink);
         this.linkTimer.start();
      }
      
      private function setMyHome(param1:Event) : void
      {
         this.eventController.removeEventListener(this.hoodModel,HoodConstants.MY_FRIENDS_HOME_DATA_SET,this.setMyHome);
         this.hoodController.getMyHome();
      }
      
      private function addCustomItems() : *
      {
         if(this.bugs != null)
         {
            this.bugs.destroy();
         }
         if(this.pFind != null)
         {
            this.pFind.destroy();
         }
         this.pFind = new PFind();
         if(this.roomModel.surfaceToLoad == MapConstants.HOUSING_GAMBINO || this.roomModel.surfaceToLoad == MapConstants.HOUSING_DUREM || this.roomModel.surfaceToLoad == MapConstants.HOUSING_BARTON || this.roomModel.surfaceToLoad == MapConstants.HOUSING_AKEA)
         {
            this.bugs = new Bugs();
            this.flowersTrash = new FlowersTrash();
            this.bugs.init();
            this.flowersTrash.init();
         }
         if(this.todaysDate.month == 11)
         {
            trace("roomModel.surfaceToLoad : " + this.roomModel.surfaceToLoad);
            if(this.roomModel.surfaceToLoad == MapConstants.GAMBINO_MARKET || this.roomModel.surfaceToLoad == MapConstants.WEST_MARKET || this.roomModel.surfaceToLoad == MapConstants.WEAPON || StringFunctions.containsWord(this.roomModel.surfaceToLoad,"gambino") == true)
            {
               this.effectLoader = new EffectLoader();
               this.objectController.addTopItem(this.effectLoader.clip);
               this.effectLoader.loadEffect("weather/snowScreen.swf");
            }
            else
            {
               trace("turn off snow!");
               this.objectController.clearTopItems();
               if(this.effectLoader)
               {
                  this.effectLoader.visible = false;
               }
            }
         }
         this.userController.setSpeed(this.avatarModel.walkSpeed);
         this.avatarController.setSpeed(this.avatarModel.walkSpeed);
         this.chatController.setNewEvent(new ChatEvent(ChatEvent.UPDATE_SPEED,this.userModel.userVo,"",true));
      }
      
      private function showRoomData(param1:MouseEvent) : *
      {
         this.world.dataExchange.showRoomData();
      }
      
      private function handleCollisions(param1:AvatarCollisionEvent) : *
      {
         var _loc2_:JumpArrow = null;
         if(param1.item is JumpArrow && this.avatarModel.keyIsDown == true && param1.av == this.avatarModel.avatar)
         {
            _loc2_ = JumpArrow(param1.item);
            _loc2_.steppedOn();
            if(this.hoodModel.wanderFlag == true)
            {
               trace("WANDERING");
               this.hoodController.setCurrentHood(this.hoodModel.pendingHood);
               this.hoodController.setWander(false);
               this.avatarModel.avatar.setAvPos(this.hoodModel.pendingX,this.hoodModel.pendingY);
               this.roomController.changeRoom(this.roomModel.surfaceToLoad);
            }
            else
            {
               this.avatarModel.avatar.setAvPos(_loc2_.startX,_loc2_.startY);
               this.roomController.changeRoom(_loc2_.room);
            }
            this.eventController.removeEventListener(this.roomModel,AvatarCollisionEvent.AVATAR_HIT_SOMETHING,this.handleCollisions);
         }
      }
      
      private function itemToItemCollisions(param1:Event) : *
      {
      }
      
      private function itemMapCollision(param1:Event) : void
      {
      }
      
      private function smiteUser(param1:Event) : *
      {
         var _loc3_:UserVo = null;
         var _loc2_:SmiteActionGroup = new SmiteActionGroup();
         trace("othersModel.smiteNumber : " + this.othersModel.smiteNumber);
         if(this.othersModel.badID == this.userModel.userID)
         {
            if(this.userModel.userVo.user_level < 51)
            {
               if(this.othersModel.smiteNumber == 1)
               {
                  this.eventController.addEventListener(this.kickTimer,TimerEvent.TIMER,this.kick);
                  _loc2_.setAvatar(this.avatarModel.avatar);
                  this.kickTimer.start();
               }
               if(this.othersModel.smiteNumber == 2)
               {
                  this.roomController.changeRoom(MapConstants.HELL);
               }
            }
         }
         else
         {
            if(this.othersModel.smiteNumber == 1)
            {
               this.eventController.addEventListener(this.kickTimer,TimerEvent.TIMER,this.kickOther);
               _loc2_.setAvatar(this.othersModel.badAv);
               this.kickTimer.start();
            }
            if(this.othersModel.smiteNumber == 3)
            {
               _loc3_ = this.othersModel.getOthersUserVo(this.othersModel.badID);
               if(this.userModel.userVo.user_level < 50)
               {
                  this.othersController.removeOtherAvatar(_loc3_);
                  this.chatController.setNewEvent(new ChatEvent(ChatEvent.USER_HAS_LEFT_ROOM,_loc3_,"",false));
               }
               else
               {
                  this.othersModel.getAvatar(_loc3_).clip.alpha = 0.1;
               }
            }
         }
         _loc2_.setAction(String(this.othersModel.smiteNumber));
      }
      
      private function kickOther(param1:TimerEvent) : *
      {
         this.eventController.removeEventListener(this.kickTimer,TimerEvent.TIMER,this.kickOther);
         var _loc2_:UserVo = this.othersModel.getOthersUserVo(this.othersModel.badID);
         if(_loc2_ != null)
         {
            if(this.userModel.userVo.user_level < 50)
            {
               this.othersController.removeOtherAvatar(_loc2_);
               this.chatController.setNewEvent(new ChatEvent(ChatEvent.USER_HAS_LEFT_ROOM,_loc2_,"",false));
            }
            else
            {
               this.othersModel.getAvatar(_loc2_).clip.alpha = 0.1;
            }
         }
      }
      
      private function getSmites() : *
      {
         var _loc1_:SharedObject = SharedObject.getLocal("smites");
         this.smiteCount = Number(_loc1_.data.smiteCount);
         if(isNaN(this.smiteCount))
         {
            this.smiteCount = 0;
         }
         var _loc2_:Number = 1000 * 60 * 60 * 24;
         var _loc3_:Number = Number(_loc1_.data.lastSmite);
         var _loc4_:Number = Math.abs(_loc3_ - this.today);
         if(_loc4_ < _loc2_)
         {
            if(this.smiteCount > 2)
            {
               this.userController.setHellBan(true);
            }
         }
      }
      
      private function regSmite() : *
      {
         var _loc1_:SharedObject = SharedObject.getLocal("smites");
         this.smiteCount++;
         _loc1_.data.smiteCount = this.smiteCount;
         _loc1_.data.lastSmite = this.today;
         _loc1_.flush();
      }
      
      private function kick(param1:TimerEvent) : *
      {
         this.kickTimer.stop();
         this.eventController.removeEventListener(this.kickTimer,TimerEvent.TIMER,this.kick);
         this.chatController.disconnect();
         var _loc2_:MessageController = new MessageController();
         _loc2_.setMessage(MessageConstants.WARNING,false);
      }
      
      private function showAvatarCompass(param1:Event) : *
      {
         this.removeAvatarCompass();
         this.gpsController.setNavState(true);
         this.avatarCompass = new AvatarCompass();
         this.avatarController.addItemToAvatar(-20,-150,this.avatarCompass);
      }
      
      private function removeAvatarCompass(param1:Event = null) : *
      {
         this.gpsController.setNavState(false);
         if(this.avatarCompass != null)
         {
            this.avatarModel.avatar.removeItem(this.avatarCompass);
         }
      }
      
      private function listAllChildren(param1:Event) : *
      {
         trace("list all children");
         this.listAllChildrenOf(this);
      }
      
      private function listSurface(param1:Event) : *
      {
         this.listAllChildrenOf(this.world.room);
      }
      
      private function listAllChildrenOf(param1:DisplayObjectContainer) : *
      {
         var _loc4_:* = undefined;
         trace("get children of " + param1);
         var _loc2_:Number = param1.numChildren;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.getChildAt(_loc3_);
            trace(_loc4_);
            if(_loc4_ is DisplayObjectContainer)
            {
               this.listAllChildrenOf(_loc4_);
            }
            _loc3_++;
         }
      }
      
      private function checkLink(param1:TimerEvent) : *
      {
         var _loc2_:DirectToHouse = null;
         var _loc3_:String = null;
         var _loc4_:Array = null;
         var _loc5_:LinkToUtil = null;
         this.linkTimer.removeEventListener(TimerEvent.TIMER,this.checkLink);
         this.linkTimer.stop();
         trace("CHECK LINK");
         if(this.houseCode != null)
         {
            if(!isNaN(Number(this.houseCode)))
            {
               _loc2_ = new DirectToHouse();
               _loc2_.gotDirectlyToHouse(Number(this.houseCode));
               return;
            }
         }
         if(this.paramList.action)
         {
            if(this.paramList.action == "link")
            {
               _loc3_ = String(this.paramList.room);
               _loc4_ = _loc3_.split("_");
               _loc5_ = new LinkToUtil();
               _loc5_.goLink(_loc3_);
            }
         }
         else
         {
            this.globalController.setHideOverride(false);
            this.globalController.hideChangeScreen();
         }
         trace("mapCode=" + this.mapCode);
         if(this.mapCode == "catCafe")
         {
            this.globalController.setStartPos(205,618);
            this.roomController.changeRoom(MapConstants.CAT_CAFE);
         }
         if(this.mapCode == "vday")
         {
            this.globalController.setStartPos(405,500);
            this.roomController.changeRoom(MapConstants.VDAY);
         }
         trace("roomModel.surfaceToLoad : " + this.roomModel.surfaceToLoad);
         if(this.roomModel.surfaceToLoad == "gambinoMarket")
         {
            if(this.todaysDate.month == 9 && this.todaysDate.date > 12)
            {
               trace("set for halloween");
               this.roomController.changeRoom("gambinoMarketHalloween");
            }
            if(this.todaysDate.month == 11)
            {
               trace("set for Christmas");
               this.roomController.changeRoom("gambinoMarketChristmas");
            }
         }
      }
      
      function __setProp_btnData_Scene1_Layer1_0() : *
      {
         try
         {
            this.btnData["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.btnData.emphasized = false;
         this.btnData.enabled = true;
         this.btnData.label = "clear mob";
         this.btnData.labelPlacement = "right";
         this.btnData.selected = false;
         this.btnData.toggle = false;
         this.btnData.visible = true;
         try
         {
            this.btnData["componentInspectorSetting"] = false;
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
   }
}
