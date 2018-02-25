package com.gaiaworld.towns.smartphone
{
   import com.gaiaworld.room.model.GpsModel;
   import com.gaiaworld.sushi.model.ChatModel;
   import com.gaiaworld.sushi.vo.SRoomVo;
   import flash.display.SimpleButton;
   
   public class RoomList extends BasePhoneList
   {
       
      
      public var btnScrollDown:SimpleButton;
      
      public var btnScrollUp:SimpleButton;
      
      private var chatModel:ChatModel;
      
      private var gpsModel:GpsModel;
      
      public function RoomList()
      {
         this.chatModel = ChatModel.getInstance();
         this.gpsModel = GpsModel.getInstance();
         super();
         this.btnNext = this.btnScrollDown;
         this.btnPrev = this.btnScrollUp;
      }
      
      public function fillList() : void
      {
         var _loc4_:SRoomVo = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:RoomField = null;
         removeAll();
         var _loc1_:Number = this.chatModel.numberOfRooms;
         var _loc2_:Number = 0;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_)
         {
            _loc4_ = this.chatModel.getRoom(_loc3_);
            _loc5_ = _loc4_.name.split("_");
            if(_loc5_[0] == this.gpsModel.currentRoomID)
            {
               _loc2_++;
               _loc6_ = String(_loc5_[1]).substr(String(_loc5_[1]).length - 3,3);
               _loc4_.publicName = this.gpsModel.getRoomName(this.gpsModel.currentRoomID) + " " + _loc6_;
               _loc7_ = new RoomField();
               _loc7_.dataProvider = _loc4_;
               _loc7_.x = 10;
               _loc7_.y = _loc7_.height * _loc2_;
               this.scrollClip.addChild(_loc7_);
            }
            _loc3_++;
         }
      }
   }
}
