package com.gaiaworld.towns.smartphone
{
   import com.gaiaworld.avatar.controller.AvatarController;
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.avatar.model.OthersModel;
   import com.gaiaworld.game.constants.GameConstants;
   import com.gaiaworld.game.model.GameModel;
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.global.constants.SmartPhoneConstants;
   import com.gaiaworld.global.controller.GlobalController;
   import com.gaiaworld.global.controller.events.GEvent;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.global.util.StringFunctions;
   import com.gaiaworld.global.view.ui.AvatarCompass;
   import com.gaiaworld.house.model.HousingModel;
   import com.gaiaworld.pets.constants.PetConstants;
   import com.gaiaworld.pets.model.PetModel;
   import com.gaiaworld.room.constants.MapConstants;
   import com.gaiaworld.room.controller.GpsController;
   import com.gaiaworld.room.model.GpsModel;
   import com.gaiaworld.room.model.RoomModel;
   import com.gaiaworld.sushi.constants.ChatConstants;
   import com.gaiaworld.sushi.controller.ChatController;
   import com.gaiaworld.sushi.model.ChatModel;
   import com.gaiaworld.towns.constants.PhoneConstants;
   import com.gaiaworld.towns.hood.model.HoodModel;
   import com.gaiaworld.towns.services.LocBookmark;
   import com.gaiaworld.user.constants.UserConstants;
   import com.gaiaworld.user.model.UserModel;
   import com.gaiaworld.user.services.TrackerData;
   import com.gaiaworld.user.vo.PalTrackVo;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class Phone extends Sprite
   {
       
      
      public var appScreen2:AppScreen2;
      
      public var btnBack:SimpleButton;
      
      public var btnClose2:SimpleButton;
      
      public var btnClosePhone:SimpleButton;
      
      public var btnEndNav:SimpleButton;
      
      public var challengeBox:ChallengeBox;
      
      public var petScreen:PetScreen;
      
      public var phoneBack:MovieClip;
      
      public var phoneScreen:PhoneScreen;
      
      public var roomsList:RoomList;
      
      public var serverList:ServerList;
      
      public var settingScreen:SettingScreen;
      
      public var startScreen:StartScreen;
      
      private var locBookmark:LocBookmark;
      
      private var avatarModel:AvatarModel;
      
      private var roomModel:RoomModel;
      
      private var trackerData:TrackerData;
      
      private var updateTimer:Timer;
      
      private var inRoomUpdateTimer:Timer;
      
      private var othersModel:OthersModel;
      
      private var userModel:UserModel;
      
      private var gpsModel:GpsModel;
      
      private var gpsController:GpsController;
      
      private var avatarCompass:AvatarCompass;
      
      private var globalModel:GlobalModel;
      
      private var globalController:GlobalController;
      
      private var gameModel:GameModel;
      
      private var chatController:ChatController;
      
      private var chatModel:ChatModel;
      
      private var petModel:PetModel;
      
      public function Phone()
      {
         this.locBookmark = new LocBookmark();
         this.avatarModel = AvatarModel.getInstance();
         this.roomModel = RoomModel.getInstance();
         this.updateTimer = new Timer(100000);
         this.inRoomUpdateTimer = new Timer(500);
         this.othersModel = OthersModel.getInstance();
         this.userModel = UserModel.getInstance();
         this.gpsModel = GpsModel.getInstance();
         this.gpsController = new GpsController();
         this.globalModel = GlobalModel.getInstance();
         this.globalController = new GlobalController();
         this.gameModel = GameModel.getInstance();
         this.chatController = new ChatController();
         this.chatModel = ChatModel.getInstance();
         this.petModel = PetModel.getInstance();
         super();
         this.gameModel.addEventListener(GameConstants.NEW_CHALLENGE,this.newChallenge);
         PhoneScreen(this.phoneScreen).addEventListener(PhoneConstants.CSS_LOADED,this.loadFirstScreen);
         this.btnBack.addEventListener(MouseEvent.MOUSE_DOWN,this.goBack);
         this.btnEndNav.addEventListener(MouseEvent.MOUSE_DOWN,this.endNav);
         this.challengeBox.visible = false;
         Sprite(this.phoneBack).addEventListener(MouseEvent.MOUSE_DOWN,this.dragMe);
         Sprite(this.phoneBack).addEventListener(MouseEvent.MOUSE_UP,this.dontDragMe);
         this.addEventListener(GEvent.GENERIC_ACTION,this.doActions);
         this.addEventListener(PhoneConstants.SAVE_BOOKMARKS,this.saveBookmarks);
         this.updateTimer.addEventListener(TimerEvent.TIMER,this.updateOnlinePals);
         this.inRoomUpdateTimer.addEventListener(TimerEvent.TIMER,this.inRoomUpdate);
         this.roomModel.addEventListener(GlobalConstants.CHANGE_ROOMS,this.updateDir);
         this.gpsModel.addEventListener(MapConstants.PAL_FOLLOW_UPDATED,this.startFollow);
         this.addEventListener(PhoneConstants.SHOW_START_SCREEN,this.loadFirstScreen);
         this.addEventListener(PhoneConstants.HIDE_START_SCREEN,this.hideStartScreen);
         this.addEventListener(SmartPhoneConstants.FRIENDS,this.showFriends);
         this.addEventListener(SmartPhoneConstants.HOTSPOTS,this.showHotspots);
         this.addEventListener(SmartPhoneConstants.FAVORITES,this.showFavs);
         this.addEventListener(SmartPhoneConstants.BOOKMARKS,this.showAddScreen);
         this.addEventListener(SmartPhoneConstants.CHALLENGES,this.showChallenges);
         this.addEventListener(SmartPhoneConstants.SETTINGS,this.showSettings);
         this.addEventListener(PhoneConstants.HIDE_PHONE,this.hidePhone);
         this.addEventListener(SmartPhoneConstants.STOP_NAV,this.endNav);
         this.addEventListener(SmartPhoneConstants.HOUSING_OPTIONS,this.showHousingOptions);
         this.addEventListener(SmartPhoneConstants.LANDLORD,this.showLandLordScreen);
         this.globalModel.addEventListener(GlobalConstants.HIDE_PHONE,this.hidePhone);
         this.btnClosePhone.addEventListener(MouseEvent.MOUSE_DOWN,this.hidePhone);
         this.btnClose2.addEventListener(MouseEvent.MOUSE_DOWN,this.hidePhone);
         this.appScreen2.addEventListener(PhoneConstants.SHOW_ROOMS,this.showRooms);
         this.appScreen2.addEventListener(PhoneConstants.SHOW_SERVERS,this.showServers);
         this.addEventListener(PhoneConstants.SHOW_APPS2,this.showApps2);
         this.petModel.addEventListener(PetConstants.PET_SELECTED,this.showPetInfo);
         this.btnEndNav.visible = false;
         this.settingScreen.visible = false;
         this.roomsList.visible = false;
         this.appScreen2.visible = false;
         this.serverList.visible = false;
      }
      
      private function showServers(param1:Event) : void
      {
         this.allOff();
         this.serverList.setUp();
         this.serverList.visible = true;
         this.serverList.fillList();
      }
      
      private function showApps2(param1:Event) : void
      {
         this.allOff();
         this.appScreen2.visible = true;
         this.setChildIndex(this.appScreen2,this.numChildren - 1);
      }
      
      private function newChallenge(param1:Event) : void
      {
         if(this.gameModel.showPhone == true)
         {
            this.allOff();
            this.showChallenges();
            this.visible = true;
         }
      }
      
      private function allOff() : *
      {
         this.petScreen.visible = false;
         this.serverList.visible = false;
         this.appScreen2.visible = false;
         this.settingScreen.visible = false;
         this.challengeBox.visible = false;
         this.roomsList.visible = false;
         this.hideStartScreen();
         PhoneScreen(this.phoneScreen).hideLandLordOptions();
      }
      
      private function showPetInfo(param1:Event) : *
      {
         this.allOff();
         this.petScreen.visible = true;
         PetScreen(this.petScreen).dataProvider = this.petModel.selectedPet;
         this.visible = true;
      }
      
      private function showRooms(param1:Event) : void
      {
         this.allOff();
         this.chatModel.addEventListener(ChatConstants.ROOMS_READY,this.gotRooms);
         this.chatController.getRoomList();
      }
      
      private function gotRooms(param1:Event) : void
      {
         this.chatModel.removeEventListener(ChatConstants.ROOMS_READY,this.gotRooms);
         this.roomsList.setUp();
         this.roomsList.visible = true;
         this.roomsList.fillList();
      }
      
      private function showLandLordScreen(param1:Event) : void
      {
         this.btnBack.visible = false;
         this.hideStartScreen();
         PhoneScreen(this.phoneScreen).showLandLordOptions();
         this.challengeBox.visible = false;
      }
      
      private function showHousingOptions(param1:Event) : void
      {
         this.globalController.loadScreen("dialogs/housingOptions.swf");
         this.visible = false;
      }
      
      private function showSettings(param1:Event) : void
      {
         this.allOff();
         this.settingScreen.visible = true;
         Sprite(this.startScreen).visible = false;
         this.challengeBox.visible = false;
      }
      
      private function showChallenges(param1:Event = null) : void
      {
         this.allOff();
         this.challengeBox.visible = true;
         this.btnEndNav.visible = false;
      }
      
      private function doActions(param1:GEvent) : void
      {
         if(param1.action == "addBookMark")
         {
            this.addBookmark(param1.text);
            this.loadFirstScreen();
         }
      }
      
      private function endNav(param1:Event = null) : *
      {
         this.gpsController.setNavState(false);
         this.gpsController.setFavCord(-1,-1);
         this.gpsController.setFavFlag(false);
         this.btnEndNav.visible = false;
         this.dispatchEvent(new Event(PhoneConstants.HIDE_COMPASS,true));
      }
      
      private function saveBookmarks(param1:Event) : void
      {
         this.locBookmark.saveBookmarks();
      }
      
      private function addBookmark(param1:String) : void
      {
         var _loc2_:HoodModel = HoodModel.getInstance();
         var _loc3_:HousingModel = HousingModel.getInstance();
         var _loc4_:String = this.roomModel.surfaceToLoad;
         if(StringFunctions.startsWith("housing_",_loc4_) == true)
         {
            _loc4_ = "houseArea_" + _loc2_.currentHoodId + "_" + _loc2_.currentCommunity;
         }
         if(_loc4_ == "medHouse")
         {
            _loc4_ = "house_" + _loc3_.house_id;
         }
         this.locBookmark.saveBookmark(param1,this.avatarModel.avatar.clip.x,this.avatarModel.avatar.clip.y,_loc4_);
      }
      
      private function goBack(param1:Event) : void
      {
         PhoneScreen(this.phoneScreen).goBack();
         this.challengeBox.visible = false;
         this.settingScreen.visible = false;
         this.btnEndNav.visible = this.gpsModel.navagationOn;
      }
      
      private function loadFirstScreen(param1:Event = null) : void
      {
         this.allOff();
         this.btnBack.visible = true;
         PhoneScreen(this.phoneScreen).visible = false;
         PhoneScreen(this.phoneScreen).clearAll();
         StartScreen(this.startScreen).visible = true;
         StartScreen(this.startScreen).init();
         this.btnEndNav.visible = this.gpsModel.navagationOn;
      }
      
      private function hideStartScreen(param1:Event = null) : *
      {
         Sprite(this.startScreen).visible = false;
         PhoneScreen(this.phoneScreen).visible = true;
         this.btnEndNav.visible = false;
         this.settingScreen.visible = false;
      }
      
      private function hidePhone(param1:Event) : *
      {
         this.visible = false;
      }
      
      private function showCompass(param1:Event) : *
      {
         this.userModel.addEventListener(UserConstants.ONLINE_PALS_UPDATED,this.updateDir);
      }
      
      private function dragMe(param1:Event) : *
      {
         this.startDrag(false);
      }
      
      private function dontDragMe(param1:Event) : *
      {
         this.stopDrag();
      }
      
      public function hideMe() : *
      {
         this.visible = false;
      }
      
      public function showMe() : *
      {
         this.visible = true;
         this.trackerData.getAllOnline();
         StartScreen(this.startScreen).init();
         if(this.updateTimer.running == false)
         {
            this.updateTimer.start();
         }
      }
      
      public function init() : *
      {
         this.trackerData = new TrackerData();
         this.trackerData.getAllOnline();
         StartScreen(this.startScreen).init();
      }
      
      private function updateOnlinePals(param1:TimerEvent) : *
      {
         this.trackerData.getAllOnline();
      }
      
      private function inRoomUpdate(param1:TimerEvent) : *
      {
         this.updateDir();
      }
      
      private function startFollow(param1:Event) : *
      {
         var _loc3_:ChatController = null;
         var _loc2_:AvatarController = new AvatarController();
         if(this.avatarCompass != null)
         {
            _loc2_.removeItem(this.avatarCompass);
         }
         if(this.gpsModel.palToFollow != null)
         {
            this.avatarCompass = new AvatarCompass();
            _loc2_.addItemToAvatar(-20,-150,this.avatarCompass);
         }
         else
         {
            _loc3_ = new ChatController();
            _loc3_.noteToSelf("The person I was following is now offline");
         }
      }
      
      private function updateDir(param1:Event = null) : *
      {
         var _loc3_:Array = null;
         var _loc4_:Number = NaN;
         var _loc5_:String = null;
         var _loc6_:OthersModel = null;
         var _loc7_:IAvatar = null;
         if(this.gpsModel.palToFollow == null)
         {
            return;
         }
         var _loc2_:PalTrackVo = this.userModel.getTracker(this.gpsModel.palToFollow.id);
         if(_loc2_ != null)
         {
            _loc3_ = _loc2_.room_name.split("_");
            _loc4_ = Number(_loc3_[0]);
            _loc5_ = this.gpsModel.getRoomName(_loc4_);
            _loc6_ = OthersModel.getInstance();
            _loc7_ = _loc6_.getAvatarByID(this.gpsModel.palToFollow.id);
            this.gpsController.getDirectons(this.roomModel.roomID,_loc5_);
            if(this.roomModel.roomID == _loc5_)
            {
               this.gpsController.setFavCord(_loc7_.x,_loc7_.y);
               this.inRoomUpdateTimer.start();
            }
            else
            {
               this.inRoomUpdateTimer.stop();
            }
         }
         else
         {
            this.inRoomUpdateTimer.stop();
            this.updateTimer.stop();
            this.gpsController.setPalToFollow(null);
         }
      }
      
      private function showFriends(param1:Event) : *
      {
         PhoneScreen(this.phoneScreen).showFriends();
         this.hideStartScreen();
      }
      
      private function showHotspots(param1:Event) : void
      {
         PhoneScreen(this.phoneScreen).showHotspots();
         this.hideStartScreen();
      }
      
      private function showFavs(param1:Event) : *
      {
         PhoneScreen(this.phoneScreen).showBookmarks();
         this.hideStartScreen();
      }
      
      private function showAddScreen(param1:Event) : void
      {
         PhoneScreen(this.phoneScreen).addBookmark();
         this.hideStartScreen();
      }
   }
}
