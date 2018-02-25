package com.gaiaworld.towns.smartphone
{
   import com.gaiaworld.gobjects.model.ObjectModel;
   import com.gaiaworld.room.controller.RoomController;
   import com.gaiaworld.room.model.GpsModel;
   import com.gaiaworld.room.model.RoomModel;
   import com.gaiaworld.sushi.constants.ChatConstants;
   import com.gaiaworld.sushi.controller.ChatController;
   import com.gaiaworld.sushi.model.ChatModel;
   import com.gaiaworld.sushi.vo.SRoomVo;
   import com.gaiaworld.sushi.vo.ServerVo;
   import com.gaiaworld.towns.constants.PhoneConstants;
   import flash.display.SimpleButton;
   import flash.events.Event;
   
   public class ServerList extends BasePhoneList
   {
       
      
      public var btnScrollDown:SimpleButton;
      
      public var btnScrollUp:SimpleButton;
      
      private var chatModel:ChatModel;
      
      private var chatController:ChatController;
      
      private var objectModel:ObjectModel;
      
      private var roomController:RoomController;
      
      private var roomModel:RoomModel;
      
      private var gpsModel:GpsModel;
      
      public function ServerList()
      {
         this.chatModel = ChatModel.getInstance();
         this.chatController = new ChatController();
         this.objectModel = ObjectModel.getInstance();
         this.roomController = new RoomController();
         this.roomModel = RoomModel.getInstance();
         this.gpsModel = GpsModel.getInstance();
         super();
         this.btnNext = this.btnScrollDown;
         this.btnPrev = this.btnScrollUp;
         this.addEventListener(ServerField.SELECT_SERVER,this.changeServer);
      }
      
      public function fillList() : void
      {
         var _loc3_:ServerVo = null;
         var _loc4_:ServerField = null;
         removeAll();
         var _loc1_:Number = this.chatModel.serverArray.length;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = this.chatModel.serverArray[_loc2_];
            _loc4_ = new ServerField();
            _loc4_.index = _loc2_;
            _loc4_.y = _loc4_.height * _loc2_;
            _loc4_.x = 10;
            _loc4_.dataProvider = _loc3_;
            this.scrollClip.addChild(_loc4_);
            _loc2_++;
         }
      }
      
      private function changeServer(param1:Event) : *
      {
         var _loc2_:Number = param1.target.index;
         var _loc3_:ServerVo = this.chatModel.serverArray[_loc2_];
         this.chatModel.addEventListener(ChatConstants.CONNECTED,this.connected);
         this.objectModel.dataExchange.connectOverrideFlag = true;
         this.objectModel.dataExchange.connect(_loc3_.ip,_loc3_.port);
      }
      
      private function connected(param1:Event) : void
      {
         this.chatModel.removeEventListener(ChatConstants.CONNECTED,this.connected);
         this.chatModel.addEventListener(ChatConstants.ROOMS_READY,this.gotRooms);
         this.chatController.getRoomList();
      }
      
      private function gotRooms(param1:Event) : void
      {
         var _loc6_:SRoomVo = null;
         var _loc7_:Array = null;
         this.chatModel.removeEventListener(ChatConstants.ROOMS_READY,this.gotRooms);
         var _loc2_:Number = this.chatModel.numberOfRooms;
         var _loc3_:Number = 0;
         var _loc4_:String = "";
         var _loc5_:int = 0;
         while(_loc5_ < _loc2_)
         {
            _loc6_ = this.chatModel.getRoom(_loc5_);
            _loc7_ = _loc6_.name.split("_");
            if(_loc7_[0] == this.gpsModel.currentRoomID)
            {
               _loc4_ = _loc6_.name;
               _loc5_ = _loc2_ + 1;
            }
            _loc5_++;
         }
         if(_loc4_ != "")
         {
            this.roomController.setRoomInstance(_loc4_);
         }
         this.roomController.changeRoom(this.roomModel.surfaceToLoad);
         this.dispatchEvent(new Event(PhoneConstants.SHOW_START_SCREEN,true));
      }
   }
}
