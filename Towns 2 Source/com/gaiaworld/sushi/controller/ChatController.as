package com.gaiaworld.sushi.controller
{
   import com.gaiaworld.global.vo.ColorVo;
   import com.gaiaworld.sushi.controller.events.ChatEvent;
   import com.gaiaworld.sushi.model.ChatModel;
   import com.gaiaworld.user.vo.PalVo;
   import com.gaiaworld.user.vo.UserVo;
   
   public class ChatController
   {
       
      
      private var chatModel:ChatModel;
      
      public function ChatController()
      {
         this.chatModel = ChatModel.getInstance();
         super();
      }
      
      public function setSid(param1:String) : *
      {
         this.chatModel.sid = param1;
      }
      
      public function setGaiaId(param1:Number) : *
      {
         this.chatModel.gaia_id = param1;
      }
      
      public function setServers(param1:Array) : *
      {
         this.chatModel.setServers(param1);
      }
      
      public function setRooms(param1:Array) : *
      {
         this.chatModel.setRooms(param1);
      }
      
      public function setNewEvent(param1:ChatEvent) : *
      {
         this.chatModel.newEventReceived(param1);
      }
      
      public function noteToSelf(param1:String) : *
      {
         this.chatModel.noteToSelf(param1);
      }
      
      public function sendChat(param1:String) : *
      {
         this.chatModel.chatMessage = param1;
      }
      
      public function sendEmote(param1:Array) : *
      {
         this.chatModel.emote = param1;
      }
      
      public function emoteToSelf(param1:*) : *
      {
         this.chatModel.sendEmoteToSelf(param1);
      }
      
      public function disconnect() : *
      {
         this.chatModel.disconnect();
      }
      
      public function friendRequestRec(param1:Number) : *
      {
         this.chatModel.gotFriendRequest(param1);
      }
      
      public function sendFriendReq() : *
      {
         this.chatModel.sendFriendReq();
      }
      
      public function sendPrivateMessage(param1:String) : *
      {
         this.chatModel.privateMessage = param1;
      }
      
      public function setContacted(param1:UserVo) : *
      {
         this.chatModel.otherContacted = param1;
      }
      
      public function setSelected(param1:UserVo) : *
      {
         this.chatModel.otherSelected = param1;
      }
      
      public function ignoreConfirmed() : *
      {
         this.chatModel.ignore();
      }
      
      public function unignoreConfirmed() : *
      {
         this.chatModel.unignore();
      }
      
      public function showIgnoreDialog() : *
      {
         this.chatModel.showIgnoreDialog();
      }
      
      public function showUnignoreDialog() : *
      {
         this.chatModel.showUnignoreDialog();
      }
      
      public function addColor(param1:ColorVo) : void
      {
         this.chatModel.addColor(param1);
      }
      
      public function colorsReady() : *
      {
         this.chatModel.colorsReady();
      }
      
      public function setPrefix(param1:String) : void
      {
         this.chatModel.areaPrefix = param1;
      }
      
      public function setAutoFind(param1:Boolean) : *
      {
         this.chatModel.autoFind = param1;
      }
      
      public function selectedRoom(param1:Number) : *
      {
         this.chatModel.selectedRoom(param1);
      }
      
      public function createRoom(param1:String) : void
      {
         this.chatModel.createRoom(param1);
      }
      
      public function roomIsChanged() : void
      {
         this.chatModel.roomIsChanged();
      }
      
      public function raiseError() : void
      {
         this.chatModel.raiseSushiError();
      }
      
      public function sendFollowReq(param1:PalVo) : *
      {
         this.chatModel.sendFollowReq(param1);
      }
      
      public function followReq() : void
      {
         this.chatModel.gotFollowRequest();
      }
      
      public function setIp(param1:String) : void
      {
         this.chatModel.ip = param1;
      }
      
      public function setPort(param1:Number) : void
      {
         this.chatModel.port = param1;
      }
      
      public function setRoom(param1:String) : void
      {
         this.chatModel.currentRoom = param1;
      }
      
      public function sendServerMessage(param1:String, param2:Array) : void
      {
         this.chatModel.sendServerMessage(param1,param2);
      }
      
      public function resetServerMessage() : void
      {
         this.chatModel.serverMessage = "";
         this.chatModel.dataArray = [];
      }
      
      public function lockUserData(param1:Boolean) : void
      {
         this.chatModel.messageLock = param1;
      }
      
      public function smiteUser() : void
      {
         this.chatModel.smiteUser();
      }
      
      public function hideAdmin() : void
      {
         this.chatModel.hideAdmin();
      }
      
      public function showAdmin() : void
      {
         this.chatModel.showAdmin();
      }
      
      public function changePathFinding() : *
      {
         this.chatModel.changePathFinding();
      }
      
      public function sendUserMessage(param1:String, param2:UserVo) : *
      {
         this.chatModel.sendUserMessage(param1,param2);
      }
      
      public function setUserMessageRec(param1:String, param2:UserVo) : void
      {
         this.chatModel.onUserMessageRec(param1,param2);
      }
      
      public function setSelectedRoom(param1:String) : void
      {
         this.chatModel.selectedRoomName = param1;
      }
      
      public function selectRoomByID(param1:Number) : void
      {
         this.chatModel.selectRoomByID(param1);
      }
      
      public function showPasswordBox() : void
      {
         this.chatModel.showPasswordBox();
      }
      
      public function joinPasswordHangout(param1:String) : void
      {
         this.chatModel.joinPasswordHangout(param1);
      }
      
      public function reset() : void
      {
         this.chatModel.reset();
      }
      
      public function canShowBalloons(param1:Boolean) : void
      {
         this.chatModel.canShowBalloons = param1;
      }
      
      public function connected() : void
      {
         this.chatModel.connected();
      }
      
      public function changeInstance() : void
      {
         this.chatModel.changeInstance();
      }
      
      public function toggleIpBox() : void
      {
         this.chatModel.toggleIp();
      }
      
      public function setSmiteType(param1:Number) : void
      {
         this.chatModel.smiteNumber = param1;
      }
      
      public function setUserTextColor(param1:UserVo, param2:uint) : void
      {
         this.chatModel.setUserTextColor(param1,param2);
      }
      
      public function setRoomID(param1:Number) : void
      {
         this.chatModel.roomID = param1;
      }
      
      public function getRoomList() : void
      {
         this.chatModel.getRoomList();
      }
      
      public function lockToCustom(param1:Boolean) : void
      {
         this.chatModel.lockToCustom = param1;
      }
      
      public function lockScroll(param1:Boolean) : void
      {
         this.chatModel.scrollLock = param1;
      }
   }
}
