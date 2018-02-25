package com.gaiaworld.sushi.model
{
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.avatar.model.OthersModel;
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.global.controller.events.ServerMessageEvent;
   import com.gaiaworld.global.util.StringFunctions;
   import com.gaiaworld.global.vo.ColorVo;
   import com.gaiaworld.hangouts.controller.events.CreateRoomEvent;
   import com.gaiaworld.hangouts.controller.events.RoomEvent;
   import com.gaiaworld.sushi.constants.ChatConstants;
   import com.gaiaworld.sushi.controller.events.ChatEvent;
   import com.gaiaworld.sushi.controller.events.UserMessageEvent;
   import com.gaiaworld.sushi.vo.ChatColorVo;
   import com.gaiaworld.sushi.vo.SRoomVo;
   import com.gaiaworld.sushi.vo.ServerVo;
   import com.gaiaworld.user.model.UserModel;
   import com.gaiaworld.user.vo.PalVo;
   import com.gaiaworld.user.vo.UserVo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class ChatModel extends EventDispatcher
   {
      
      private static var instance:ChatModel;
       
      
      public var sid:String;
      
      public var gaia_id:Number;
      
      public var areaPrefix:String = "gaiahood_";
      
      private var _userMessage:String;
      
      private var _chatMessage:String;
      
      private var _emote:Array;
      
      public var serverArray:Array;
      
      private var roomArray:Array;
      
      private var contactedID:Number;
      
      private var _privateMessage:String;
      
      public var selfMessage:String;
      
      private var _otherSelected:UserVo;
      
      private var _otherContacted:UserVo;
      
      private var colorArray:Array;
      
      private var chatArray:Array;
      
      private var hArray:Array;
      
      public var selfEmote:String;
      
      public var autoFind:Boolean = false;
      
      public var followSelected:PalVo;
      
      private var _currentRoom:String;
      
      private var _port:Number;
      
      private var _ip:String;
      
      private var _roomID:Number;
      
      private var messageArray:Array;
      
      private var messageTimer:Timer;
      
      private var startTime:Number = 0;
      
      private var messageCount:Number = 0;
      
      public var dataArray:Array;
      
      public var serverMessage:String;
      
      public var messageLock:Boolean = false;
      
      public var lockToCustom:Boolean = false;
      
      public var scrollLock:Boolean = false;
      
      private var _smiteNumber:Number = 1;
      
      private var _roomInstanceChange:String;
      
      private var _canShowBalloons:Boolean = true;
      
      private var _selectedRoomName:String;
      
      private var userModel:UserModel;
      
      private var othersModel:OthersModel;
      
      private var avatarModel:AvatarModel;
      
      private var chatColorArray:Array;
      
      public function ChatModel()
      {
         this.serverArray = new Array();
         this.roomArray = new Array();
         this.colorArray = new Array();
         this.chatArray = new Array();
         this.hArray = new Array();
         this.messageArray = new Array();
         this.messageTimer = new Timer(50);
         this.userModel = UserModel.getInstance();
         this.othersModel = OthersModel.getInstance();
         this.avatarModel = AvatarModel.getInstance();
         this.chatColorArray = new Array();
         super();
         this.messageTimer.addEventListener(TimerEvent.TIMER,this.sendChatOut);
         this.messageTimer.start();
         this.startTime = new Date().getTime();
      }
      
      public static function getInstance() : ChatModel
      {
         if(instance == null)
         {
            instance = new ChatModel();
         }
         return instance;
      }
      
      public function setServers(param1:Array) : *
      {
         this.serverArray = param1;
         param1.sortOn("occupancy",Array.DESCENDING);
      }
      
      public function getServer(param1:Number) : ServerVo
      {
         return this.serverArray[param1] as ServerVo;
      }
      
      public function getServerByIp(param1:String) : ServerVo
      {
         var _loc4_:ServerVo = null;
         var _loc2_:Number = this.serverArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.serverArray[_loc3_];
            if(_loc4_.ip == param1)
            {
               return _loc4_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function getRoom(param1:Number) : SRoomVo
      {
         return this.roomArray[param1] as SRoomVo;
      }
      
      public function getRoomByID(param1:Number) : SRoomVo
      {
         var _loc4_:SRoomVo = null;
         var _loc2_:Number = this.roomArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.roomArray[_loc3_];
            if(_loc4_.id == param1)
            {
               return _loc4_;
            }
            _loc3_++;
         }
         return _loc4_;
      }
      
      public function get userMessage() : String
      {
         return this._userMessage;
      }
      
      public function set userMessage(param1:String) : void
      {
         this._userMessage = param1;
         this.dispatchEvent(new Event(ChatConstants.SEND_USER_MESSAGE,false));
      }
      
      public function get chatMessage() : String
      {
         return this._chatMessage;
      }
      
      public function set chatMessage(param1:String) : void
      {
         this._chatMessage = param1;
         this.dispatchEvent(new Event(ChatConstants.SEND_USER_CHAT,false));
      }
      
      public function get emote() : Array
      {
         return this._emote;
      }
      
      public function set emote(param1:Array) : void
      {
         this._emote = param1;
         this.dispatchEvent(new Event(ChatConstants.SEND_EMOTE,true));
      }
      
      public function sendEmoteToSelf(param1:String) : *
      {
         this.selfEmote = param1;
         this.dispatchEvent(new Event(ChatConstants.EMOTE_TO_SELF,true));
      }
      
      public function get privateMessage() : String
      {
         return this._privateMessage;
      }
      
      public function set privateMessage(param1:String) : void
      {
         this._privateMessage = param1;
         this.dispatchEvent(new Event(ChatConstants.PRIVATE_MESSAGE,true));
      }
      
      public function newEventReceived(param1:ChatEvent) : *
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(param1.type == ChatEvent.CHAT_MESSAGE_RECEIVED)
         {
            _loc2_ = new Date().getTime();
            _loc3_ = (_loc2_ - this.startTime) / 1000;
            this.messageCount++;
            this.regChat(param1);
            this.messageArray.push(param1);
         }
         else
         {
            this.dispatchEvent(param1);
         }
      }
      
      private function sendChatOut(param1:TimerEvent) : *
      {
         if(this.messageArray.length > 0)
         {
            this.dispatchEvent(this.messageArray.shift());
         }
      }
      
      private function regChat(param1:ChatEvent) : *
      {
         var _loc11_:IAvatar = null;
         var _loc12_:String = null;
         if(this.chatArray.length > 400)
         {
            this.chatArray.shift();
         }
         if(this.hArray.length > 200)
         {
            this.hArray.shift();
         }
         var _loc2_:* = "<font color=\'textcolor\'>";
         var _loc3_:* = "<a href=\'event:select-" + String(param1.userVo.gaia_id) + "\'><b>";
         var _loc4_:* = "</b></a></font>";
         var _loc5_:* = "<font color=\'#FFFFFF\'>";
         var _loc6_:* = "</font>";
         if(this.userModel.userID == param1.userVo.gaia_id)
         {
            _loc2_ = "<font color=\'#FF0000\'><b>";
         }
         else
         {
            _loc12_ = this.getUserTextColor(param1.userVo.gaia_id);
            _loc2_ = StringFunctions.findReplace("textcolor",_loc2_,String(_loc12_));
         }
         var _loc7_:String = param1.param;
         if(_loc7_ != null)
         {
            _loc7_ = StringFunctions.convertToPlainText(_loc7_);
         }
         var _loc8_:String = new Date().toDateString() + " " + String(new Date().getHours()) + ":" + String(new Date().getMinutes()) + ":" + String(new Date().getSeconds());
         var _loc9_:String = _loc8_ + ":" + param1.userVo.userName + ": " + param1.param;
         var _loc10_:String = _loc2_ + _loc3_ + param1.userVo.userName + ": " + _loc4_ + _loc5_ + _loc7_ + _loc6_;
         if(this.userModel.userID == param1.userVo.gaia_id)
         {
            _loc11_ = this.avatarModel.avatar;
         }
         else
         {
            _loc11_ = this.othersModel.getAvatar(param1.userVo);
         }
         if(_loc11_ != null && this.userModel.userVo != null)
         {
            if(_loc11_.clip.visible == true || this.userModel.userVo.user_level > 50)
            {
               this.hArray.push(_loc10_);
               this.chatArray.push(_loc9_);
            }
         }
      }
      
      public function getHistoryText() : String
      {
         var _loc1_:String = String.fromCharCode(13);
         return this.hArray.join(_loc1_);
      }
      
      public function getReportText() : String
      {
         var _loc5_:String = null;
         var _loc1_:String = "";
         var _loc2_:String = String.fromCharCode(13);
         var _loc3_:Number = this.hArray.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.hArray[_loc4_];
            _loc5_ = StringFunctions.convertToPlainText(_loc5_);
            _loc1_ = _loc1_ + (_loc5_ + "<br>");
            _loc4_++;
         }
         return _loc1_;
      }
      
      public function getChat() : String
      {
         var _loc1_:String = String.fromCharCode(13) + String.fromCharCode(10);
         var _loc2_:String = this.chatArray.join(_loc1_);
         return _loc2_;
      }
      
      public function gotFriendRequest(param1:Number) : *
      {
         this.contactedID = param1;
         this.dispatchEvent(new Event(ChatConstants.FRIEND_REQUEST_REC,true));
      }
      
      public function sendFriendReq() : *
      {
         this.dispatchEvent(new Event(ChatConstants.FRIEND_REQUEST_SEND,true));
      }
      
      public function sendFollowReq(param1:PalVo) : *
      {
         this.followSelected = param1;
         this.dispatchEvent(new Event(ChatConstants.FOLLOW_REQUEST_SEND,true));
      }
      
      public function ignore() : *
      {
         this.dispatchEvent(new Event(ChatConstants.IGNORE,true));
      }
      
      public function unignore() : *
      {
         this.dispatchEvent(new Event(ChatConstants.UNIGNORE,true));
      }
      
      public function disconnect() : void
      {
         this.dispatchEvent(new Event(ChatConstants.DISCONNECT,true));
      }
      
      public function noteToSelf(param1:String) : void
      {
         param1 = StringFunctions.findReplace("+",param1," ");
         this.selfMessage = param1;
         this.dispatchEvent(new Event(ChatConstants.NOTE_TO_SELF,true));
      }
      
      public function showIgnoreDialog() : void
      {
         this.dispatchEvent(new Event(ChatConstants.CONFIRM_IGNORE,true));
      }
      
      public function showUnignoreDialog() : void
      {
         this.dispatchEvent(new Event(ChatConstants.CONFIRM_UNIGNORE,true));
      }
      
      public function get otherContacted() : UserVo
      {
         return this._otherContacted;
      }
      
      public function set otherContacted(param1:UserVo) : void
      {
         this._otherContacted = param1;
      }
      
      public function get otherSelected() : UserVo
      {
         return this._otherSelected;
      }
      
      public function set otherSelected(param1:UserVo) : void
      {
         if(param1 != null)
         {
            this._otherSelected = param1;
         }
      }
      
      public function get numberOfServers() : Number
      {
         return this.serverArray.length;
      }
      
      public function get numberOfRooms() : Number
      {
         return this.roomArray.length;
      }
      
      public function get ip() : String
      {
         return this._ip;
      }
      
      public function set ip(param1:String) : void
      {
         this._ip = param1;
         this.dispatchEvent(new Event(GlobalConstants.IP_CHANGED,true));
      }
      
      public function get port() : Number
      {
         return this._port;
      }
      
      public function set port(param1:Number) : void
      {
         this._port = param1;
         this.dispatchEvent(new Event(GlobalConstants.PORT_CHANGED,true));
      }
      
      public function get roomID() : Number
      {
         return this._roomID;
      }
      
      public function set roomID(param1:Number) : void
      {
         this._roomID = param1;
         this.dispatchEvent(new Event(GlobalConstants.ROOM_ID_UPDATED,true));
      }
      
      public function get currentRoom() : String
      {
         return this._currentRoom;
      }
      
      public function set currentRoom(param1:String) : void
      {
         this._currentRoom = param1;
         this.dispatchEvent(new Event(GlobalConstants.DEBUG_ROOM_INFO_UPDATED,true));
      }
      
      public function get selectedRoomName() : String
      {
         return this._selectedRoomName;
      }
      
      public function set selectedRoomName(param1:String) : void
      {
         this._selectedRoomName = param1;
         this.dispatchEvent(new Event(ChatConstants.ROOM_NAME_SET,true));
      }
      
      public function get canShowBalloons() : Boolean
      {
         return this._canShowBalloons;
      }
      
      public function set canShowBalloons(param1:Boolean) : void
      {
         this._canShowBalloons = param1;
         this.dispatchEvent(new Event(ChatConstants.SHOW_BALLOONS_CHANGED,true));
      }
      
      public function get roomInstanceChange() : String
      {
         return this._roomInstanceChange;
      }
      
      public function set roomInstanceChange(param1:String) : void
      {
         this._roomInstanceChange = param1;
         this.dispatchEvent(new Event(ChatConstants.CHANGE_TO_INSTANCE,true));
      }
      
      public function get smiteNumber() : Number
      {
         return this._smiteNumber;
      }
      
      public function set smiteNumber(param1:Number) : void
      {
         this._smiteNumber = param1;
      }
      
      public function colorsReady() : *
      {
         this.dispatchEvent(new Event(ChatConstants.COLORS_READY,true));
      }
      
      public function addColor(param1:ColorVo) : *
      {
         this.colorArray.push(param1);
      }
      
      public function getColor(param1:Number) : Number
      {
         var _loc4_:ColorVo = null;
         var _loc2_:Number = this.colorArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.colorArray[_loc3_];
            if(_loc4_.level == param1)
            {
               return _loc4_.color;
            }
            _loc3_++;
         }
         return 16777215;
      }
      
      public function setRooms(param1:Array) : void
      {
         this.roomArray = param1;
         this.dispatchEvent(new Event(ChatConstants.ROOMS_READY,true));
      }
      
      public function selectedRoom(param1:Number) : *
      {
         this.dispatchEvent(new RoomEvent(RoomEvent.CHOOSE_ROOM,param1,"",true));
      }
      
      public function selectRoomByID(param1:Number) : *
      {
         this.dispatchEvent(new RoomEvent(RoomEvent.CHOOSE_ROOM_ID,param1,"",true));
      }
      
      public function joinPasswordHangout(param1:String) : *
      {
         this.dispatchEvent(new RoomEvent(RoomEvent.JOIN_PASSWORD_ROOM,0,param1,true));
      }
      
      public function createRoom(param1:String) : void
      {
         this.dispatchEvent(new CreateRoomEvent(CreateRoomEvent.CREATE_ROOM,param1,true));
      }
      
      public function roomIsChanged() : void
      {
         this.dispatchEvent(new Event(ChatConstants.ROOM_CHANGED,true));
      }
      
      public function raiseSushiError() : void
      {
         this.dispatchEvent(new Event(ChatConstants.ERROR,true));
      }
      
      public function gotFollowRequest() : void
      {
         this.dispatchEvent(new Event(ChatConstants.FOLLOW_REQUEST_REC,true));
      }
      
      public function sendServerMessage(param1:String, param2:Array) : void
      {
         this.dataArray = param2;
         this.serverMessage = param1;
         this.dispatchEvent(new ServerMessageEvent(ServerMessageEvent.MESSAGE_FROM_SERVER,param1,param2,true));
      }
      
      public function smiteUser() : void
      {
         this.dispatchEvent(new Event(ChatConstants.SMITE,true));
      }
      
      public function hideAdmin() : void
      {
         this.dispatchEvent(new Event(ChatConstants.HIDE_ADMIN,true));
      }
      
      public function showAdmin() : void
      {
         this.dispatchEvent(new Event(ChatConstants.SHOW_ADMIN,true));
      }
      
      public function changePathFinding() : void
      {
         this.dispatchEvent(new Event(ChatConstants.CHANGE_PATH_FINDING,true));
      }
      
      public function sendUserMessage(param1:String, param2:UserVo) : *
      {
         this.dispatchEvent(new ChatEvent(ChatEvent.USER_MESSAGE,param2,param1,true));
      }
      
      public function onUserMessageRec(param1:String, param2:UserVo) : void
      {
         this.dispatchEvent(new UserMessageEvent(UserMessageEvent.USER_MESSAGE_REC,param1,param2,true));
      }
      
      public function showPasswordBox() : void
      {
         this.dispatchEvent(new Event(ChatConstants.SHOW_PASSWORD_BOX,true));
      }
      
      public function reset() : void
      {
         this.dispatchEvent(new Event(ChatConstants.RESET,true));
      }
      
      public function connected() : void
      {
         this.dispatchEvent(new Event(ChatConstants.CONNECTED,true));
      }
      
      public function changeInstance() : void
      {
         this.dispatchEvent(new Event(ChatConstants.CHANGE_INSTANCE,true));
      }
      
      public function toggleIp() : void
      {
         this.dispatchEvent(new Event(GlobalConstants.TOGGLE_IP_BOX,true));
      }
      
      public function setUserTextColor(param1:UserVo, param2:uint) : void
      {
         var _loc3_:Number = this.getChatColorIndex(param1.gaia_id);
         if(_loc3_ == -1)
         {
            this.chatColorArray.push(new ChatColorVo(param1.gaia_id,param2));
            this.replaceHistoryTextColor(param1.userName,param1.gaia_id,param2);
         }
         else
         {
            this.chatColorArray[_loc3_] = new ChatColorVo(param1.gaia_id,param2);
            this.replaceHistoryTextColor(param1.userName,param1.gaia_id,param2);
         }
      }
      
      private function getChatColorIndex(param1:Number) : *
      {
         var _loc4_:ChatColorVo = null;
         var _loc2_:Number = this.chatColorArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.chatColorArray[_loc3_];
            if(_loc4_.id == param1)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
      
      public function getUserTextColor(param1:Number) : String
      {
         var _loc4_:ChatColorVo = null;
         var _loc2_:Number = this.chatColorArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.chatColorArray[_loc3_];
            if(_loc4_.id == param1)
            {
               return "#" + _loc4_.color.toString(16);
            }
            _loc3_++;
         }
         return "#ffffff";
      }
      
      public function getUserTextColorNumber(param1:Number) : Number
      {
         var _loc4_:ChatColorVo = null;
         var _loc2_:Number = this.chatColorArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.chatColorArray[_loc3_];
            if(_loc4_.id == param1)
            {
               return _loc4_.color;
            }
            _loc3_++;
         }
         return 16777215;
      }
      
      public function replaceHistoryTextColor(param1:String, param2:Number, param3:Number) : *
      {
         var _loc7_:String = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:Number = NaN;
         var _loc11_:String = null;
         var _loc12_:String = null;
         var _loc4_:String = "#" + StringFunctions.colorToString(param3);
         var _loc5_:Number = this.hArray.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc7_ = this.hArray[_loc6_];
            _loc8_ = "<b>" + param1 + ": </b>";
            _loc9_ = "<a href=\'event:select-" + String(param2) + "\'>";
            if(StringFunctions.contains(_loc7_,_loc8_) == true)
            {
               _loc10_ = _loc7_.indexOf(_loc8_);
               _loc11_ = _loc7_.substr(_loc10_,_loc7_.length - _loc10_);
               _loc12_ = "<font color=\'" + _loc4_ + "\'>" + _loc9_ + _loc11_;
               this.hArray[_loc6_] = _loc12_;
            }
            _loc6_++;
         }
      }
      
      public function getRoomList() : void
      {
         this.dispatchEvent(new Event(ChatConstants.GET_ROOM_LIST,true));
      }
   }
}
