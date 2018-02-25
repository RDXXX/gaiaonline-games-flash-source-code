package com.gaiaworld.sushi
{
   import com.gaiaonline.gsi.GSICompleteEvent;
   import com.gaiaonline.gsi.GSIGateway;
   import com.gaiaonline.serializers.JSONSerializer;
   import com.gaiaworld.avatar.constants.AvatarConstants;
   import com.gaiaworld.avatar.controller.AvatarController;
   import com.gaiaworld.avatar.controller.OthersController;
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.avatar.model.OthersModel;
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.global.constants.GsiConstants;
   import com.gaiaworld.global.constants.MessageConstants;
   import com.gaiaworld.global.constants.SpaceConstants;
   import com.gaiaworld.global.controller.GlobalController;
   import com.gaiaworld.global.controller.MessageController;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.global.util.BadWordFilter;
   import com.gaiaworld.global.util.DebugTool;
   import com.gaiaworld.global.util.StringFunctions;
   import com.gaiaworld.gobjects.controller.ObjectController;
   import com.gaiaworld.gobjects.model.ObjectModel;
   import com.gaiaworld.house.model.HousingModel;
   import com.gaiaworld.room.constants.MapConstants;
   import com.gaiaworld.room.constants.RoomConstants;
   import com.gaiaworld.room.controller.RoomController;
   import com.gaiaworld.room.model.GpsModel;
   import com.gaiaworld.room.model.RoomModel;
   import com.gaiaworld.sushi.constants.ChatConstants;
   import com.gaiaworld.sushi.controller.ChatController;
   import com.gaiaworld.sushi.controller.events.ChatErrorEvent;
   import com.gaiaworld.sushi.controller.events.ChatEvent;
   import com.gaiaworld.sushi.interfaces.IDataExchange;
   import com.gaiaworld.sushi.model.ChatModel;
   import com.gaiaworld.sushi.vo.SRoomVo;
   import com.gaiaworld.towns.hood.model.HoodModel;
   import com.gaiaworld.towns.vo.RoomObjectVo;
   import com.gaiaworld.user.controller.UserController;
   import com.gaiaworld.user.model.UserModel;
   import com.gaiaworld.user.services.UserDataLoader;
   import com.gaiaworld.user.vo.PalTrackVo;
   import com.gaiaworld.user.vo.UserVo;
   import com.rawfishsoftware.sushi.SushiAPI;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.net.XMLSocket;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class DataExchange extends EventDispatcher implements IDataExchange
   {
       
      
      private var api:SushiAPI;
      
      private var currentSocket:XMLSocket;
      
      private var userDataLoader:UserDataLoader;
      
      private var gateway:GSIGateway;
      
      private var othersController:OthersController;
      
      private var chatController:ChatController;
      
      private var chatModel:ChatModel;
      
      private var userModel:UserModel;
      
      private var othersModel:OthersModel;
      
      private var globalModel:GlobalModel;
      
      private var roomModel:RoomModel;
      
      private var avatarModel:AvatarModel;
      
      private var housingModel:HousingModel;
      
      private var messageController:MessageController;
      
      private var globalController:GlobalController;
      
      private var roomController:RoomController;
      
      private var objectController:ObjectController;
      
      private var avatarController:AvatarController;
      
      private var userController:UserController;
      
      private var userArray:Array;
      
      public var room_id:Number;
      
      private var userArray2:Array;
      
      private var memberData:Array;
      
      public var myRoomName:String;
      
      private var _roomName:String;
      
      public var portArray:Array;
      
      private var _connectOverrideFlag:Boolean = false;
      
      private var portIndex:Number = 0;
      
      private var delimiter:String = ":";
      
      private var emoteEnabled:Boolean = true;
      
      private var emoteTimer:Timer;
      
      private var ip:String;
      
      private var pluginInitFlag:Boolean = false;
      
      private var pluginMessage:Array;
      
      private var haveJoined:Boolean = false;
      
      private var port:Number;
      
      private var newConnection:Boolean = true;
      
      private var connected:Boolean = false;
      
      private var pendingRoom:Number = -1;
      
      private var serverSelectedRoom:String = "";
      
      private var transportFlag:Boolean = false;
      
      private var lastSelect:Number = 0;
      
      private var senders:Dictionary;
      
      private var ignoreServer:Boolean = false;
      
      private var ignoreChat:Boolean = false;
      
      public function DataExchange()
      {
         this.api = new SushiAPI();
         this.userDataLoader = new UserDataLoader();
         this.othersController = new OthersController();
         this.chatController = new ChatController();
         this.chatModel = ChatModel.getInstance();
         this.userModel = UserModel.getInstance();
         this.othersModel = OthersModel.getInstance();
         this.globalModel = GlobalModel.getInstance();
         this.roomModel = RoomModel.getInstance();
         this.avatarModel = AvatarModel.getInstance();
         this.housingModel = HousingModel.getInstance();
         this.messageController = new MessageController();
         this.globalController = new GlobalController();
         this.roomController = new RoomController();
         this.objectController = new ObjectController();
         this.avatarController = new AvatarController();
         this.userController = new UserController();
         this.emoteTimer = new Timer(5000);
         this.senders = new Dictionary();
         super();
         this.gateway = new GSIGateway(this.globalModel.gsiSubdomain);
         this.gateway.serializerClass = JSONSerializer;
         this.chatModel.addEventListener(ChatEvent.AVATAR_UPDATE,this.updateAvatar);
         this.chatModel.addEventListener(ChatEvent.AVATAR_HAS_STOPPED,this.updateMePos);
         this.chatModel.addEventListener(ChatEvent.SILENT_UPDATE,this.silentMeUpdate);
         this.chatModel.addEventListener(ChatConstants.SEND_USER_CHAT,this.sendChatMessage);
         this.chatModel.addEventListener(ChatConstants.SEND_EMOTE,this.sendEmote);
         this.chatModel.addEventListener(ChatConstants.DISCONNECT,this.disconnect);
         this.chatModel.addEventListener(ChatConstants.FRIEND_REQUEST_SEND,this.sendFriendReqest);
         this.chatModel.addEventListener(ChatConstants.FOLLOW_REQUEST_SEND,this.sendFollowRequest);
         this.chatModel.addEventListener(ChatConstants.PRIVATE_MESSAGE,this.sendPrivateMessage);
         this.chatModel.addEventListener(ChatConstants.IGNORE,this.ignore);
         this.chatModel.addEventListener(ChatConstants.UNIGNORE,this.unignore);
         this.chatModel.addEventListener(ChatConstants.ERROR,this.showError);
         this.chatModel.addEventListener(ChatConstants.SMITE,this.smite);
         this.chatModel.addEventListener(ChatEvent.USER_MESSAGE,this.sendUserMessage);
         this.chatModel.addEventListener(ChatConstants.CHANGE_INSTANCE,this.changeToRoomInstance);
         this.chatModel.addEventListener(ChatConstants.CHANGE_TO_INSTANCE,this.changeToSelectedInstance);
         this.chatModel.addEventListener(ChatConstants.SHOW_ADMIN,this.showMod);
         this.chatModel.addEventListener(ChatConstants.HIDE_ADMIN,this.hideMod);
         this.chatModel.addEventListener(ChatConstants.CHANGE_PATH_FINDING,this.updatePathFinding);
         this.chatModel.addEventListener(ChatEvent.UPDATE_CAR,this.updateCar);
         this.chatModel.addEventListener(ChatEvent.UPDATE_SPEED,this.updateCar);
         this.chatModel.addEventListener(ChatConstants.GET_ROOM_LIST,this.getListOfRooms2);
         this.emoteTimer.addEventListener(TimerEvent.TIMER,this.resetEmote);
         this.roomModel.addEventListener(GlobalConstants.CHANGE_ROOMS,this.changeRoom);
         this.roomModel.addEventListener(RoomConstants.FETCH_DATA,this.updateRoomData);
         this.roomModel.addEventListener(RoomConstants.SET_ROOM_DATA,this.setRoomData2);
         this.globalModel.addEventListener(GlobalConstants.TOGGLE_IGNORE_SERVER,this.ignoreServerToggle);
         this.globalModel.addEventListener(GlobalConstants.TOGGLE_CHAT,this.chatIgnoreToggle);
      }
      
      private function chatIgnoreToggle(param1:Event) : void
      {
         this.ignoreChat = !this.ignoreChat;
      }
      
      private function ignoreServerToggle(param1:Event) : void
      {
         this.ignoreServer = !this.ignoreServer;
      }
      
      private function setUpListeners() : *
      {
         this.api.event.onChatMessage.setCallback(this.onChatReceived,this);
         this.api.event.onUserMessage.setCallback(this.onUserMessage,this);
         this.api.event.onMemberChangesRoom.setCallback(this.onUserChangeRoom,this);
         this.api.event.onRemoveMember.setCallback(this.userHasLeftRoom,this);
         this.api.event.onUpdateMob.setCallback(this.mobUpdated,this);
      }
      
      private function showError(param1:Event) : *
      {
         this.useBackupPort();
      }
      
      public function connect(param1:String, param2:Number) : void
      {
         trace("connect : " + param1 + "-" + param2);
         if(this.ip == param1 && this.port == param2 && this.globalModel.isHangout == false)
         {
            trace("already connected here");
            if(this._connectOverrideFlag == true)
            {
               this._connectOverrideFlag = false;
               this.chatController.connected();
            }
            return;
         }
         if(this.connected == true)
         {
            this.api.disconnectFromServer();
         }
         this.chatController.lockUserData(true);
         this.avatarController.setUserControl(false,"data exchange");
         this.api.clearTraffic();
         this.port = param2;
         this.ip = param1;
         this.chatController.setIp(param1);
         this.chatController.setPort(param2);
         this.haveJoined = false;
         this.currentSocket = this.api.connectToServerSocket(param1,param2,String(this.userModel.userID),this.onConnect,this);
      }
      
      private function useBackupPort() : *
      {
         this.portIndex++;
         if(this.portArray == null)
         {
            this.messageController.setMessage(MessageConstants.SUSHI_ERROR + "---" + this.api.errorMessage);
         }
         else if(this.portIndex < this.portArray.length)
         {
            this.connect(this.ip,this.portArray[this.portIndex]);
         }
         else
         {
            this.messageController.setMessage(MessageConstants.SUSHI_ERROR + "---" + this.api.errorMessage);
         }
      }
      
      private function onConnect(param1:String) : void
      {
         var _loc2_:UserVo = this.userModel.userVo;
         trace(" connected stat=" + param1);
         this.connected = true;
         if(param1 == "1")
         {
            this.useBackupPort();
            return;
         }
         if(param1 == "3")
         {
            this.messageController.setMessage(MessageConstants.SUSHI_ERROR + "---Sever Full---" + this.api.errorMessage);
            return;
         }
         this.setUpListeners();
         if(_loc2_.user_level > 50)
         {
            _loc2_.visible = false;
            this.userController.setVisible(false);
         }
         var _loc3_:String = _loc2_.visible == true?"1":"0";
         var _loc4_:String = this.avatarModel.pathFinding == true?"btn1":"btn0";
         this.userController.setUserData(_loc2_);
         this.userArray = [_loc2_.x,_loc2_.y,_loc3_,_loc4_,_loc2_.avatar,_loc2_.userName,_loc2_.gaia_id,"0",_loc2_.user_level,"0",this.userModel.sid,"0",_loc2_.team];
         trace("on connect");
         DebugTool.pr(this.userArray);
         if(this.haveJoined == false)
         {
            this.api.me.joinSession(String(this.userModel.userID),1,1,1,this.userArray,this.sessionJoined,this);
         }
      }
      
      private function sessionJoined(param1:String) : void
      {
         trace("joined session");
         this.haveJoined = true;
         if(this._connectOverrideFlag == true)
         {
            this._connectOverrideFlag = false;
            this.chatController.connected();
            return;
         }
         this.joinRoom();
      }
      
      private function joinRoom() : *
      {
         var _loc5_:String = null;
         var _loc6_:Number = NaN;
         trace("JOIN ROOM");
         var _loc1_:UserVo = this.userModel.userVo;
         var _loc2_:String = _loc1_.visible == true?"1":"0";
         var _loc3_:String = this.avatarModel.pathFinding == true?"btn1":"btn0";
         var _loc4_:String = this.makeDirString(_loc1_);
         this.userArray2 = [String(int(_loc1_.x)) + this.delimiter + String(int(_loc1_.y)),_loc4_,_loc2_,_loc3_,_loc1_.avatar,_loc1_.userName,_loc1_.gaia_id,"",_loc1_.user_level,"0","0",_loc1_.team];
         if(this.globalModel.isHangout == false)
         {
            this.myRoomName = this.globalModel.roomName;
            if(this.globalModel.spaceName != SpaceConstants.TOWNS && this.globalModel.spaceName != SpaceConstants.HOLLYWOOD && this.globalModel.spaceName != SpaceConstants.RALLY)
            {
               _loc5_ = this.chatModel.areaPrefix + this.myRoomName + ";" + this.roomModel.roomSubName;
            }
            else
            {
               _loc5_ = this.roomModel.roomSubName;
            }
            trace("chatModel.areaPrefix : " + this.chatModel.areaPrefix);
            trace("myRoomName : " + this.myRoomName);
            trace("roomModel.roomSubName : " + this.roomModel.roomSubName);
            trace("Join roomLoc=" + _loc5_);
            _loc6_ = this.checkForRoom(_loc5_);
            if(_loc6_ == -1)
            {
               if(this.globalModel.spaceName != SpaceConstants.TOWNS && this.globalModel.spaceName != SpaceConstants.RALLY && this.globalModel.spaceName != SpaceConstants.HOLLYWOOD)
               {
                  this.createRoom(_loc5_);
               }
               else
               {
                  this.selectRoomFromServer();
               }
            }
            else if(this.globalModel.spaceName != SpaceConstants.TOWNS && this.globalModel.spaceName != SpaceConstants.RALLY && this.globalModel.spaceName != SpaceConstants.HOLLYWOOD)
            {
               this.pendingRoom = _loc6_;
               this.chatController.lockUserData(true);
               this.api.clearTraffic();
               this.api.me.changeRoom(_loc6_,this.userArray2,this.onRoomChanged,this);
            }
            else
            {
               this.selectRoomFromServer();
            }
         }
         else
         {
            this.getListOfRooms();
         }
      }
      
      public function checkForRoom(param1:String) : Number
      {
         var _loc2_:Array = this.api.session.getRoomIDs();
         var _loc3_:Number = _loc2_.length;
         trace("there are " + _loc3_ + " rooms");
         var _loc4_:* = 0;
         while(_loc4_ < _loc3_)
         {
            trace("room=" + this.api.room.getName(_loc2_[_loc4_]));
            if(this.api.room.getName(_loc2_[_loc4_]) == param1)
            {
               this.chatController.setRoomID(_loc2_[_loc4_]);
               return _loc2_[_loc4_];
            }
            _loc4_++;
         }
         return -1;
      }
      
      private function createRoom(param1:String) : *
      {
         trace("try to create room " + param1);
         this.roomName = param1;
         this.api.me.createRoom(param1,this.roomModel.templateName,this.onRoomCreated,this);
      }
      
      private function onRoomCreated(param1:String, param2:Number) : *
      {
         trace("room created stat=" + param1);
         this.pendingRoom = param2;
         this.chatController.lockUserData(true);
         this.api.clearTraffic();
         this.api.me.changeRoom(this.pendingRoom,this.userArray2,this.onRoomChanged,this);
      }
      
      private function onRoomChanged(param1:String) : void
      {
         trace("change the room stat=" + param1);
         this.room_id = this.pendingRoom;
         this.chatController.setRoomID(this.room_id);
         trace("changed to room id=" + this.room_id);
         this.dispatchEvent(new Event(ChatConstants.CONNECTED,true,false));
         this.getMobIDs();
         this.chatController.roomIsChanged();
         this.chatController.lockUserData(false);
         this.avatarController.setUserControl(true);
      }
      
      private function onRoomChangedPassword(param1:String) : void
      {
         if(param1 == "0")
         {
            this.room_id = this.pendingRoom;
            this.chatController.setRoomID(this.room_id);
            this.dispatchEvent(new Event(ChatConstants.CONNECTED,true,false));
            this.getMobIDs();
            this.chatController.roomIsChanged();
            this.chatController.lockUserData(false);
            this.avatarController.setUserControl(true);
         }
         if(param1 == "5")
         {
            this.messageController.setMessage("Wrong Password");
         }
      }
      
      public function joinHangoutRoom() : void
      {
         var _loc1_:UserVo = this.userModel.userVo;
         var _loc2_:String = _loc1_.visible == true?"1":"0";
         var _loc3_:String = this.avatarModel.pathFinding == true?"btn1":"btn0";
         var _loc4_:String = this.makeDirString(_loc1_);
         this.userArray2 = [String(int(_loc1_.x)) + this.delimiter + String(int(_loc1_.y)),_loc4_,_loc2_,_loc3_,_loc1_.avatar,_loc1_.userName,_loc1_.gaia_id,"",_loc1_.user_level,"0","0",_loc1_.team];
         trace("userArray=" + this.userArray2);
         trace("this.room_id=" + this.room_id);
         trace("roomName=" + this.api.room.getName(this.room_id));
         this.pendingRoom = this.room_id;
         trace("this.pendingRoom : " + this.pendingRoom);
         this.chatController.lockUserData(true);
         var _loc5_:Object = this.getCurrentRoomData();
         DebugTool.pr(_loc5_);
         if(this.api.room.hasPassword(this.room_id) == 0)
         {
            this.api.clearTraffic();
            this.api.me.changeRoom(this.room_id,this.userArray2,this.onRoomChanged,this);
         }
         else
         {
            this.chatController.showPasswordBox();
         }
      }
      
      public function joinHangoutWithPassword(param1:String) : *
      {
         this.api.me.changeRoomPassword(this.room_id,param1,this.userArray2,this.onRoomChangedPassword,this);
      }
      
      public function listAlreadyHere() : void
      {
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:UserVo = null;
         var _loc7_:Array = null;
         var _loc1_:Array = this.api.room.getMemberIDs(this.room_id);
         var _loc2_:Number = _loc1_.length;
         this.roomController.setAlreadyHere(_loc2_);
         var _loc3_:* = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.api.member.getData(_loc1_[_loc3_]);
            if(_loc4_)
            {
               _loc6_ = new UserVo(Number(_loc4_[6]),_loc4_[5],_loc4_[4],_loc4_[8]);
               _loc6_.team = _loc4_[11];
               _loc6_.wasHereBeforeMe = true;
               if(_loc4_[2] == "0" && _loc6_.user_level > 50)
               {
                  _loc6_.visible = false;
               }
               if(_loc6_.gaia_id != this.userModel.userID)
               {
                  if(_loc4_[0])
                  {
                     _loc7_ = _loc4_[0].split(this.delimiter);
                     _loc6_.x = Number(_loc7_[0]);
                     _loc6_.y = Number(_loc7_[1]);
                  }
                  else
                  {
                     _loc6_.x = 0;
                     _loc6_.y = 0;
                  }
                  if(_loc4_[1])
                  {
                     _loc5_ = _loc4_[1].split(this.delimiter);
                     _loc6_.dir = _loc5_[0];
                     _loc6_.face = _loc5_[1];
                     if(_loc5_[3])
                     {
                        _loc6_.carSlot = Number(_loc5_[3]);
                     }
                     if(_loc5_[4])
                     {
                        _loc6_.speed = Number(_loc5_[4]);
                     }
                  }
                  if(_loc5_)
                  {
                     if(_loc5_.length > 2)
                     {
                        _loc6_.isKneeling = Number(_loc5_[2]);
                     }
                  }
                  this.chatController.setNewEvent(new ChatEvent(ChatEvent.USER_HAS_JOINED_ROOM,_loc6_,"",false));
               }
               else
               {
                  if(_loc6_.x == -1)
                  {
                     _loc6_.x = this.avatarModel.avatar.x;
                  }
                  if(_loc6_.y == -1)
                  {
                     _loc6_.y = this.avatarModel.avatar.y;
                  }
                  this.userController.setUserData(_loc6_);
                  this.avatarModel.avatar.dataProvider = _loc6_;
               }
            }
            _loc3_++;
         }
      }
      
      private function getUserVo(param1:Number) : UserVo
      {
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc2_:Array = this.api.member.getData(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         if(_loc2_.length == 0)
         {
            return null;
         }
         var _loc3_:UserVo = new UserVo(Number(_loc2_[6]),_loc2_[5],_loc2_[4],_loc2_[8]);
         _loc3_.team = _loc2_[11];
         _loc3_.visible = Number(_loc2_[2]) == 1?true:false;
         if(_loc3_.gaia_id != this.userModel.userID)
         {
            _loc4_ = _loc2_[0].split(this.delimiter);
            _loc3_.x = Number(_loc4_[0]);
            _loc3_.y = Number(_loc4_[1]);
            _loc5_ = _loc2_[1].split(this.delimiter);
            _loc3_.dir = _loc5_[0];
            _loc3_.face = _loc5_[1];
            if(_loc5_[3])
            {
               _loc3_.carSlot = Number(_loc5_[3]);
            }
            if(_loc5_[4])
            {
               _loc3_.speed = Number(_loc5_[4]);
            }
         }
         return _loc3_;
      }
      
      private function onChatReceived(param1:Number, param2:Number, param3:Object, param4:String) : *
      {
         var _loc6_:BadWordFilter = null;
         var _loc7_:IAvatar = null;
         if(this.ignoreChat == true)
         {
            return;
         }
         var _loc5_:UserVo = this.getUserVo(param1);
         if(this.userModel.userVo.filter_level != 0)
         {
            _loc6_ = new BadWordFilter();
            param4 = _loc6_.filterWords(param4);
         }
         if(this.userModel.checkIfIgnored(_loc5_.gaia_id) == false)
         {
            _loc7_ = this.othersModel.getAvatarByID(_loc5_.gaia_id);
            if(_loc7_ != null)
            {
               _loc7_.chatStatus = "";
            }
            if(this.othersModel.isUserMute(_loc5_.gaia_id) == false)
            {
               this.chatController.setNewEvent(new ChatEvent(ChatEvent.CHAT_MESSAGE_RECEIVED,_loc5_,param4,true));
            }
         }
      }
      
      private function sendChatMessage(param1:Event) : *
      {
         var _loc2_:String = null;
         if(this.chatModel.messageLock == false)
         {
            _loc2_ = this.chatModel.chatMessage;
            this.api.room.chat(this.room_id,_loc2_);
         }
      }
      
      private function onUserMessage(param1:String, param2:Number, param3:Number, param4:Object, param5:Array) : *
      {
         var _loc12_:IAvatar = null;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Array = null;
         var _loc16_:Array = null;
         var _loc17_:Number = NaN;
         var _loc18_:IAvatar = null;
         var _loc19_:IAvatar = null;
         var _loc20_:IAvatar = null;
         if(this.ignoreServer == true)
         {
            return;
         }
         if(this.globalModel.worldIsBuilt == false)
         {
            return;
         }
         var _loc6_:Boolean = true;
         var _loc7_:Array = param1.split(this.delimiter);
         var _loc8_:Number = -1;
         if(_loc7_ != null)
         {
            if(_loc7_.length > 0)
            {
               _loc8_ = Number(_loc7_[1]);
            }
         }
         var _loc9_:UserVo = this.getUserVo(param2);
         if(_loc9_ != null)
         {
            _loc12_ = this.othersModel.getAvatar(_loc9_);
         }
         var _loc10_:Number = this.othersModel.getLastSend(_loc9_.gaia_id);
         var _loc11_:Number = getTimer() - _loc10_;
         if(StringFunctions.contains(param1,"friendReq:") == true)
         {
            if(_loc11_ < 1000)
            {
               trace("BAD AV HACKER!" + _loc9_.userName);
               trace(param1);
               this.othersController.setBadAv(_loc9_.gaia_id);
               this.othersController.smite(1);
               return;
            }
            this.othersController.regSend(_loc9_.gaia_id);
         }
         if(_loc8_ != -1)
         {
            if(param1.substr(0,6) == "emote:")
            {
               _loc13_ = this.othersModel.getLastEmote(_loc9_.gaia_id);
               _loc14_ = getTimer() - _loc13_;
               trace("emoteElapsed : " + _loc14_);
               if(_loc14_ > 2000)
               {
                  this.chatController.setNewEvent(new ChatEvent(ChatEvent.EMOTE_RECEIVED,_loc9_,param1,true));
                  _loc6_ = false;
                  this.othersController.regEmote(_loc9_.gaia_id);
               }
               else
               {
                  trace("BAD AV!");
                  this.othersController.setBadAv(_loc9_.gaia_id);
                  this.othersController.smite(1);
               }
            }
            if(param1.substr(0,10) == "friendReq:")
            {
               if(this.senders[_loc9_.gaia_id] == 1)
               {
                  return;
               }
               this.senders[_loc9_.gaia_id] = 1;
               if(this.userModel.userID == _loc8_)
               {
                  this.chatController.setContacted(_loc9_);
                  this.chatController.friendRequestRec(param2);
               }
               _loc6_ = false;
            }
            if(param1.substr(0,18) == "changePathFinding:")
            {
               _loc15_ = param1.split(":");
               if(_loc15_[1] == "btn1")
               {
                  if(_loc12_ != null)
                  {
                     _loc12_.dataProvider.pathFinding = true;
                  }
               }
               else if(_loc12_ != null)
               {
                  _loc12_.dataProvider.pathFinding = false;
               }
            }
            if(param1.substr(0,10) == "mod:smite:")
            {
               _loc16_ = param1.split(":");
               _loc17_ = Number(_loc16_[2]);
               this.othersController.setBadAv(_loc17_);
               this.othersController.smite(Number(_loc16_[3]));
            }
            if(param1 == "mod:hide")
            {
               _loc18_ = this.othersModel.getAvatarByID(_loc9_.gaia_id);
               if(_loc18_ != null)
               {
                  _loc18_.dataProvider.visible = false;
                  _loc18_.clip.alpha = 0.5;
                  if(this.userModel.userVo.user_level < 51)
                  {
                     _loc18_.clip.visible = false;
                  }
               }
            }
            if(param1 == "mod:show")
            {
               _loc19_ = this.othersModel.getAvatarByID(_loc9_.gaia_id);
               if(_loc19_ != null)
               {
                  _loc19_.clip.visible = true;
                  _loc19_.dataProvider.visible = true;
                  _loc19_.clip.alpha = 1;
               }
            }
            if(param1 == ChatConstants.AWAY_FROM_KEYBOARD || param1 == ChatConstants.AT_KEYBOARD || param1 == ChatConstants.TYPING_STARTED || param1 == ChatConstants.TYPING_STOPPED)
            {
               _loc20_ = this.othersModel.getAvatarByID(_loc9_.gaia_id);
               if(_loc20_ != null)
               {
                  _loc20_.chatStatus = param1;
               }
            }
         }
         if(param2 == 0)
         {
            this.chatController.sendServerMessage(param1,param5);
            _loc6_ = false;
         }
         if(_loc6_ == true)
         {
            this.othersController.broadcastUpdate(param1,_loc9_.gaia_id);
         }
         this.chatController.setUserMessageRec(param1,_loc9_);
      }
      
      private function sendPrivateMessage(param1:Event) : *
      {
         if(this.chatModel.otherContacted != null)
         {
            if(this.chatModel.messageLock == false)
            {
               this.api.sendUserMessage("private:" + this.chatModel.otherContacted.gaia_id + this.delimiter + this.chatModel.privateMessage,1,this.room_id);
            }
         }
      }
      
      private function sendFriendReqest(param1:Event) : *
      {
         if(this.chatModel.otherSelected != null)
         {
            this.askForFriend();
         }
      }
      
      private function sendFollowRequest(param1:Event) : *
      {
         if(this.chatModel.messageLock == false)
         {
            this.api.sendUserMessage("followReq:" + this.chatModel.followSelected.id,1,this.room_id);
         }
      }
      
      public function askForFriend() : void
      {
         this.gateway.addEventListener(GSICompleteEvent.COMPLETE,this.askDone);
         this.gateway.queue(GsiConstants.FRIEND_REQUEST,"add",this.chatModel.otherSelected.gaia_id,this.userModel.sid);
         this.gateway.send();
      }
      
      private function askDone(param1:GSICompleteEvent) : *
      {
         var _loc3_:String = null;
         this.gateway.removeEventListener(GSICompleteEvent.COMPLETE,this.askDone);
         var _loc2_:String = param1.methods[0].data;
         if(_loc2_.substr(0,1) == "0")
         {
            _loc3_ = param1.methods[0].data[1];
            _loc3_ = StringFunctions.convertToPlainText(_loc3_);
            this.chatController.noteToSelf(_loc3_);
         }
         else
         {
            _loc2_ = StringFunctions.convertToPlainText(_loc2_);
            this.chatController.noteToSelf(_loc2_);
            if(this.chatModel.messageLock == false)
            {
               this.api.sendUserMessage("friendReq:" + this.chatModel.otherSelected.gaia_id,1,this.room_id);
            }
         }
      }
      
      public function ignore(param1:Event) : void
      {
         this.chatModel.otherSelected.isIgnored = true;
         this.othersController.ignoreAvatar(this.chatModel.otherSelected.gaia_id);
         this.userController.ignore(String(this.chatModel.otherSelected.gaia_id));
         this.gateway.queue(GsiConstants.FRIEND_REQUEST,"ignore",this.chatModel.otherSelected.gaia_id,this.userModel.sid);
         this.gateway.send();
      }
      
      private function ignoreDone(param1:GSICompleteEvent) : void
      {
         this.gateway.removeEventListener(GSICompleteEvent.COMPLETE,this.ignoreDone);
      }
      
      public function unignore(param1:Event) : void
      {
         this.chatModel.otherSelected.isIgnored = false;
         this.othersController.unignoreAvatar(this.chatModel.otherSelected.gaia_id);
         this.gateway.addEventListener(GSICompleteEvent.COMPLETE,this.unignoreDone);
         this.gateway.queue(GsiConstants.FRIEND_REQUEST,"unignore",this.chatModel.otherSelected.gaia_id,this.userModel.sid);
         this.gateway.send();
      }
      
      private function unignoreDone(param1:GSICompleteEvent) : void
      {
         this.gateway.removeEventListener(GSICompleteEvent.COMPLETE,this.unignoreDone);
      }
      
      private function sendEmote(param1:Event) : *
      {
         var _loc2_:String = null;
         if(this.chatModel.messageLock == true)
         {
            return;
         }
         if(this.emoteEnabled == true)
         {
            this.emoteEnabled = false;
            this.emoteTimer.start();
            _loc2_ = "emote:" + this.chatModel.emote.join(this.delimiter);
            this.api.sendUserMessage(_loc2_,1,this.room_id);
            this.globalController.setEmoteEnabled(false);
         }
      }
      
      private function resetEmote(param1:TimerEvent) : *
      {
         this.emoteEnabled = true;
         this.emoteTimer.stop();
         this.globalController.setEmoteEnabled(true);
      }
      
      private function userHasJoinedRoom(param1:Number, param2:Number, param3:Number, param4:String, param5:Array) : *
      {
         var _loc7_:String = null;
         var _loc8_:String = null;
         if(this.room_id != param3)
         {
            return;
         }
         var _loc6_:UserVo = new UserVo(param5[6],param5[5],param5[4],param5[8]);
         _loc6_.team = param5[11];
         if(_loc6_.gaia_id != this.userModel.userID)
         {
            _loc6_.x = -1;
            _loc6_.y = -1;
            _loc6_.face = AvatarConstants.FACE_FRONT;
            _loc6_.dir = AvatarConstants.DIR_LEFT;
            _loc7_ = _loc6_.visible == true?"1":"0";
            _loc8_ = this.makeDirString(_loc6_);
            this.userArray2 = [String(int(_loc6_.x)) + this.delimiter + String(int(_loc6_.y)),_loc8_,_loc7_,"1",_loc6_.avatar,_loc6_.userName,_loc6_.gaia_id,"0",_loc6_.user_level,"0","0",-1];
            _loc6_.wasHereBeforeMe = false;
            this.chatController.setNewEvent(new ChatEvent(ChatEvent.USER_HAS_JOINED_ROOM,_loc6_,"",false));
         }
      }
      
      private function updateAvatar(param1:ChatEvent) : *
      {
         if(this.chatModel.messageLock == false)
         {
            this.api.sendUserMessage(param1.param,1,this.room_id);
         }
      }
      
      private function smite(param1:Event) : *
      {
         var _loc2_:* = "mod:smite:" + String(this.chatModel.otherSelected.gaia_id) + ":" + String(this.chatModel.smiteNumber);
         this.api.sendUserMessage(_loc2_,1,this.room_id);
      }
      
      private function hideMod(param1:Event) : *
      {
         var _loc2_:String = "mod:hide";
         this.api.sendUserMessage(_loc2_,1,this.room_id);
         this.avatarController.hideMod();
         var _loc3_:String = this.userModel.userVo.visible == true?"1":"0";
         this.api.me.indexUpdate([2,_loc3_]);
      }
      
      private function showMod(param1:Event) : *
      {
         var _loc2_:String = "mod:show";
         this.api.sendUserMessage(_loc2_,1,this.room_id);
         this.avatarController.showMod();
         var _loc3_:String = this.userModel.userVo.visible == true?"1":"0";
         this.api.me.indexUpdate([2,_loc3_]);
      }
      
      private function updateMePos(param1:ChatEvent) : *
      {
         var _loc2_:UserVo = this.userModel.userVo;
         var _loc3_:String = _loc2_.visible == true?"1":"0";
         var _loc4_:String = this.makeDirString(_loc2_);
         this.api.me.indexUpdate([0,String(int(_loc2_.x)) + this.delimiter + String(int(_loc2_.y)),1,_loc4_]);
      }
      
      private function updateCar(param1:ChatEvent) : *
      {
         this.updateMePos(param1);
      }
      
      private function silentMeUpdate(param1:ChatEvent) : *
      {
         var _loc2_:UserVo = this.userModel.userVo;
         var _loc3_:String = _loc2_.visible == true?"1":"0";
         var _loc4_:String = this.avatarModel.pathFinding == true?"btn1":"btn0";
         var _loc5_:String = this.makeDirString(_loc2_);
         this.userArray2 = [String(int(_loc2_.x)) + this.delimiter + String(int(_loc2_.y)),_loc5_,_loc3_,_loc4_,_loc2_.avatar,_loc2_.userName,_loc2_.gaia_id,"0",_loc2_.user_level,"0","0"];
         this.api.me.silentUpdate(this.userArray2);
      }
      
      private function makeDirString(param1:UserVo) : *
      {
         var _loc2_:String = param1.dir + this.delimiter + param1.face + this.delimiter + String(param1.isKneeling) + this.delimiter + String(param1.carSlot) + this.delimiter + String(param1.speed);
         return _loc2_;
      }
      
      private function userHasLeftRoom(param1:Number, param2:String, param3:String) : *
      {
         var _loc4_:UserVo = null;
         if(Number(param3) == this.room_id)
         {
            _loc4_ = this.getUserVo(param1);
            if(_loc4_ != null)
            {
               this.othersController.removeOtherAvatar(_loc4_);
            }
            this.chatController.setNewEvent(new ChatEvent(ChatEvent.USER_HAS_LEFT_ROOM,_loc4_,"",false));
         }
      }
      
      private function disconnect(param1:Event) : *
      {
         this.api.disconnectFromServer();
      }
      
      private function onUserChangeRoom(param1:Number, param2:Number, param3:Number, param4:Array) : void
      {
         var _loc6_:Array = null;
         trace("onUserChangeRoom");
         var _loc5_:UserVo = this.getUserVo(param1);
         if(_loc5_ != null)
         {
            if(_loc5_.user_level > 50)
            {
            }
            if(_loc5_.gaia_id == this.userModel.userVo.gaia_id)
            {
               if(param3 != this.room_id && param2 != this.room_id)
               {
               }
            }
         }
         if(param3 == this.room_id)
         {
            _loc5_ = this.getUserVo(param1);
            if(_loc5_ != null)
            {
               this.othersController.removeOtherAvatar(_loc5_);
               this.chatController.setNewEvent(new ChatEvent(ChatEvent.USER_HAS_LEFT_ROOM,_loc5_,"",false));
            }
         }
         if(param2 == this.room_id)
         {
            _loc5_ = new UserVo(param4[6],param4[5],param4[4],param4[8]);
            _loc5_.team = param4[11];
            if(_loc5_.gaia_id != this.userModel.userID)
            {
               _loc6_ = param4[0].split(":");
               _loc5_.x = Number(_loc6_[0]);
               _loc5_.y = Number(_loc6_[1]);
               _loc5_.face = AvatarConstants.FACE_FRONT;
               _loc5_.dir = AvatarConstants.DIR_LEFT;
               _loc5_.wasHereBeforeMe = false;
               if(param4[2] == "0" && _loc5_.user_level > 50)
               {
                  _loc5_.visible = false;
               }
               else
               {
                  _loc5_.visible = true;
               }
               if(param4[3] == "btn1")
               {
                  _loc5_.pathFinding = true;
               }
               else
               {
                  _loc5_.pathFinding = false;
               }
               this.chatController.setNewEvent(new ChatEvent(ChatEvent.USER_HAS_JOINED_ROOM,_loc5_,"",false));
            }
         }
      }
      
      private function getListOfRooms2(param1:Event) : *
      {
         this.getListOfRooms();
      }
      
      public function getListOfRooms() : void
      {
         var _loc4_:* = undefined;
         var _loc5_:SRoomVo = null;
         var _loc1_:Array = new Array();
         var _loc2_:* = this.api.session.getRoomIDs();
         trace("number of rooms=" + _loc2_.length);
         var _loc3_:Number = _loc2_.length;
         if(_loc3_ > 0)
         {
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = new SRoomVo(_loc2_[_loc4_],this.api.room.getName(_loc2_[_loc4_]),this.api.room.getNumberOfMembers(_loc2_[_loc4_]));
               trace("got room " + _loc5_.id + " " + _loc5_.name + " occ=" + _loc5_.players);
               if(_loc5_.id != 1)
               {
                  _loc1_.push(_loc5_);
               }
               _loc4_++;
            }
            this.chatController.setRooms(_loc1_);
         }
         else
         {
            this.createRoom("main");
         }
      }
      
      public function createCustomHangout(param1:String) : void
      {
         if(this.checkForRoom(param1) == -1)
         {
            if(this.roomModel.createRoomPassword == null)
            {
               this.api.me.createRoom(param1,this.roomModel.templateName,this.onHangoutCreated,this);
            }
            else
            {
               this.api.me.createRoomPassword(param1,this.roomModel.createRoomPassword,this.roomModel.templateName,this.onHangoutCreated,this);
            }
         }
         else
         {
            this.dispatchEvent(new ChatErrorEvent(ChatErrorEvent.CHAT_ERROR,MessageConstants.HANGOUT_ALREADY_THERE));
         }
      }
      
      public function showRoomData() : void
      {
      }
      
      public function getCurrentRoomData() : Array
      {
         return this.api.room.getData(this.room_id);
      }
      
      public function setRoomData(param1:Number, param2:Array) : void
      {
         this.api.room.indexUpdate(param1,param2);
      }
      
      private function setRoomData2(param1:Event) : *
      {
         this.setRoomData(this.roomModel.roomDataIndex,this.roomModel.roomData);
      }
      
      private function updateRoomData(param1:Event) : *
      {
         this.roomController.setFetchedData(this.api.room.getData(this.room_id));
      }
      
      public function setMobDataSilent(param1:String, param2:Array) : void
      {
         if(param1 != null)
         {
            this.api.mob.silentUpdate(param1,param2);
         }
      }
      
      public function updateMobData(param1:String, param2:Array) : void
      {
         var _loc3_:ObjectModel = null;
         var _loc4_:RoomObjectVo = null;
         if(param1 == null)
         {
            _loc3_ = ObjectModel.getInstance();
            _loc4_ = new RoomObjectVo();
            _loc4_.fromArray(param2);
            param1 = _loc3_.getObject(_loc4_.name).mobID;
         }
         if(param1 != null && param2 != null)
         {
            this.api.mob.update(param1,param2);
         }
      }
      
      private function mobUpdated(param1:String, param2:Array) : void
      {
         var _loc3_:RoomObjectVo = new RoomObjectVo();
         _loc3_.fromArray(param2);
         _loc3_.mobID = param1;
         this.objectController.updateObject(_loc3_,false);
      }
      
      private function onHangoutCreated(param1:String, param2:Number = -1) : void
      {
         this.pendingRoom = param2;
         this.chatController.lockUserData(true);
         this.api.clearTraffic();
         this.api.me.changeRoom(this.room_id,this.userArray2,this.onRoomChanged,this);
      }
      
      private function changeRoom2(param1:String) : *
      {
         trace("changeRoom2 new room=" + param1);
         this.chatController.setRoom(param1);
         var _loc2_:Number = this.checkForRoom(param1);
         this.roomName = param1;
         if(_loc2_ == -1)
         {
            this.createRoom(param1);
         }
         else
         {
            this.pendingRoom = _loc2_;
            this.chatController.lockUserData(true);
            this.api.clearTraffic();
            this.api.me.changeRoom(_loc2_,this.userArray2,this.onRoomChanged,this);
         }
      }
      
      private function changeToRoomInstance(param1:Event) : *
      {
         this.selectRoomFromServer();
      }
      
      private function changeToSelectedInstance(param1:Event) : *
      {
      }
      
      private function changeRoom(param1:Event) : *
      {
         var _loc6_:String = null;
         this.chatController.lockUserData(true);
         var _loc2_:UserVo = this.userModel.userVo;
         var _loc3_:String = this.userModel.stealth == false?"1":"0";
         var _loc4_:String = this.avatarModel.pathFinding == true?"btn1":"btn0";
         this.userController.setUserData(_loc2_);
         var _loc5_:String = this.makeDirString(_loc2_);
         this.userArray2 = [String(int(_loc2_.x)) + this.delimiter + String(int(_loc2_.y)),_loc5_,_loc3_,_loc4_,_loc2_.avatar,_loc2_.userName,_loc2_.gaia_id,"0",_loc2_.user_level,"0","0",_loc2_.team];
         if(this.globalModel.spaceName == SpaceConstants.TOWNS || this.globalModel.spaceName == SpaceConstants.RALLY || this.globalModel.spaceName == SpaceConstants.HOLLYWOOD)
         {
            this.selectRoomFromServer();
            return;
         }
         this.myRoomName = this.globalModel.roomName;
         if(this.globalModel.isInSittingGame == false)
         {
            _loc6_ = this.chatModel.areaPrefix + this.myRoomName + ";" + this.roomModel.roomSubName;
         }
         else
         {
            _loc6_ = this.myRoomName;
         }
         var _loc7_:Number = this.checkForRoom(_loc6_);
         if(_loc7_ == -1)
         {
            this.createRoom(_loc6_);
         }
         else
         {
            this.pendingRoom = _loc7_;
            this.roomName = _loc6_;
            this.chatController.lockUserData(true);
            this.api.clearTraffic();
            this.api.me.changeRoom(_loc7_,this.userArray2,this.onRoomChanged,this);
         }
      }
      
      public function joinPlace(param1:PalTrackVo) : void
      {
         if(param1.ip != this.ip)
         {
            if(this.connected == true)
            {
               this.api.clearTraffic();
               this.api.disconnectFromServer();
            }
            this.haveJoined = false;
            this.myRoomName = this.globalModel.roomName;
            this.roomController.setRoomSubName(param1.room_name);
            this.connect(param1.ip,param1.port);
            return;
         }
         this.transportFlag = true;
         if(param1.room_name != this._roomName)
         {
            this.changeRoom2(param1.room_name);
         }
      }
      
      public function selectRoomFromServer() : *
      {
         var _loc3_:String = null;
         var _loc4_:PalTrackVo = null;
         var _loc5_:Array = null;
         var _loc6_:Number = NaN;
         trace("SELECT ROOM FROM SERVER");
         if(this.transportFlag == true)
         {
            this.transportFlag == false;
            return;
         }
         var _loc1_:GpsModel = GpsModel.getInstance();
         var _loc2_:Number = _loc1_.getRoomNumber(this.roomModel.surfaceToLoad);
         if(_loc2_ == -1)
         {
            this.getSpecialRoom();
            return;
         }
         if(this.chatModel.lockToCustom == true)
         {
            trace("lock to custom");
            _loc3_ = this.roomModel.surfaceToLoad + "_" + this.chatModel.selectedRoomName;
            this.changeRoom2(_loc3_);
            return;
         }
         if(_loc1_.palToFollow != null)
         {
            _loc4_ = this.userModel.getTracker(_loc1_.palToFollow.id);
            if(_loc4_.ip != this.ip)
            {
               _loc5_ = _loc4_.room_name.split("_");
               _loc6_ = Number(_loc5_[0]);
               if(_loc6_ == _loc2_)
               {
                  if(this.connected == true)
                  {
                     this.api.clearTraffic();
                     this.api.disconnectFromServer();
                  }
                  this.haveJoined = false;
                  this.myRoomName = this.globalModel.roomName;
                  this.roomController.setRoomSubName(_loc4_.room_name);
                  this.connect(_loc4_.ip,_loc4_.port);
                  return;
               }
            }
         }
         if(this.roomModel.roomInstance != "")
         {
            this.serverSelectedRoom = this.roomModel.roomInstance;
            this.roomController.setRoomInstance("");
         }
         if(this.serverSelectedRoom != "")
         {
            this.changeRoom2(this.serverSelectedRoom);
            this.serverSelectedRoom = "";
         }
         else
         {
            this.gateway.addEventListener(GSICompleteEvent.COMPLETE,this.roomSelected);
            this.gateway.queue(GsiConstants.GET_ROOM_NAME_FROM_SERVER,"instance",_loc2_);
            this.gateway.send();
         }
      }
      
      private function getSpecialRoom() : void
      {
         var _loc1_:HoodModel = HoodModel.getInstance();
         switch(this.roomModel.surfaceToLoad)
         {
            case "busStop":
               this.changeRoom2("busStop" + String(this.userModel.userID));
               break;
            case "housing":
            case "housing_gambino":
            case "housing_durem":
            case "housing_akea":
            case "housing_barton":
               this.changeRoom2("houseArea_" + String(_loc1_.currentHoodId) + "_" + String(_loc1_.currentCommunity));
               break;
            case MapConstants.MED_HOUSE:
               this.changeRoom2("house_" + String(this.housingModel.house_id));
               break;
            case "rallyGame":
               this.changeRoom2("rallyGame_" + this.roomModel.specialSub);
               break;
            case MapConstants.TIC_TAC_TOE_GAME:
               this.changeRoom2("ticGame_" + this.roomModel.specialSub);
               break;
            case MapConstants.HELL:
               this.changeRoom2("hell");
               break;
            default:
               this.changeRoom2(this.roomModel.surfaceToLoad);
         }
      }
      
      private function roomSelected(param1:GSICompleteEvent) : *
      {
         this.gateway.removeEventListener(GSICompleteEvent.COMPLETE,this.roomSelected);
         DebugTool.pr(param1.methods[0].data);
         var _loc2_:Number = param1.methods[0].data.server.id;
         var _loc3_:String = param1.methods[0].data.server.ip;
         var _loc4_:Number = param1.methods[0].data.server.port;
         var _loc5_:String = param1.methods[0].data.room;
         this.chatController.setRoom(_loc5_);
         if(this.ip != _loc3_)
         {
            this.haveJoined = false;
            if(this.connected == true)
            {
               this.api.clearTraffic();
               this.api.disconnectFromServer();
               this.connected = false;
            }
            this.serverSelectedRoom = _loc5_;
            this.roomController.setRoomSubName(_loc5_);
            this.connect(_loc3_,_loc4_);
            return;
         }
         var _loc6_:Number = this.checkForRoom(_loc5_);
         if(_loc6_ == -1)
         {
            this.createRoom(_loc5_);
         }
         else
         {
            this.pendingRoom = _loc6_;
            this.chatController.lockUserData(true);
            this.api.clearTraffic();
            this.api.me.changeRoom(_loc6_,this.userArray2,this.onRoomChanged,this);
         }
      }
      
      public function initMob(param1:Array) : String
      {
         var _loc2_:String = this.api.mob.init(this.room_id,false,param1);
         return _loc2_;
      }
      
      public function initMobTemp(param1:Array) : String
      {
         var _loc2_:String = this.api.mob.init(this.room_id,true,param1);
         return _loc2_;
      }
      
      private function getMobIDs() : *
      {
         var _loc4_:RoomObjectVo = null;
         var _loc5_:String = null;
         var _loc1_:Array = this.api.room.getMobIDs();
         var _loc2_:Number = _loc1_.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = new RoomObjectVo();
            _loc5_ = this.getMobData(_loc1_[_loc3_]);
            _loc5_ = StringFunctions.findReplace(",",_loc5_,"<ro>");
            _loc4_.fromString(_loc5_);
            _loc4_.mobID = _loc1_[_loc3_];
            this.objectController.registerObject(_loc4_);
            _loc3_++;
         }
      }
      
      public function getMobData(param1:String) : String
      {
         var _loc2_:String = this.api.mob.getData(param1);
         return _loc2_;
      }
      
      public function clearMob() : void
      {
         var _loc1_:Array = this.api.room.getMobIDs();
         var _loc2_:Number = _loc1_.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.api.mob.clearAllDataIndexCallbacks(this.getMobData(_loc1_[_loc3_]));
            _loc3_++;
         }
      }
      
      public function callPlugin(param1:Array) : *
      {
         this.pluginMessage = param1;
         if(this.pluginInitFlag == false)
         {
            this.initPlugin();
            return;
         }
         if(this.globalModel.spaceName == SpaceConstants.TOWNS || this.globalModel.spaceName == SpaceConstants.RALLY || this.globalModel.spaceName == SpaceConstants.HOLLYWOOD)
         {
            this.api.callPlugin("G_TS_PLUGIN",param1,this.pluginCalled,this);
         }
      }
      
      private function pluginCalled(param1:String) : *
      {
         var _loc2_:Array = param1.split("|");
         if(isNaN(_loc2_[2]) == false)
         {
            this.objectController.setCoins(Number(_loc2_[2]));
         }
      }
      
      private function initPlugin() : *
      {
         var _loc1_:Array = new Array();
         _loc1_[0] = "0";
         this.pluginInitFlag = true;
         this.api.callPlugin("G_TS_PLUGIN",_loc1_,this.initDone,this);
      }
      
      private function initDone(param1:String) : *
      {
         this.callPlugin(this.pluginMessage);
      }
      
      private function updatePathFinding(param1:Event) : void
      {
         var _loc2_:String = "changePathFinding:";
         var _loc3_:String = this.avatarModel.pathFinding == true?"btn1":"btn0";
         _loc2_ = _loc2_ + _loc3_;
         this.api.sendUserMessage(_loc2_,1,this.room_id);
         this.api.me.indexUpdate([3,_loc3_]);
      }
      
      private function sendUserMessage(param1:ChatEvent) : *
      {
         this.api.sendUserMessage(param1.param,1,this.room_id);
      }
      
      public function get roomName() : String
      {
         return this._roomName;
      }
      
      public function set roomName(param1:String) : void
      {
         this._roomName = param1;
      }
      
      public function set connectOverrideFlag(param1:Boolean) : void
      {
         this._connectOverrideFlag = param1;
      }
   }
}
