package com.gaiaworld.room.data
{
   import com.gaiaworld.room.constants.MapConstants;
   import com.gaiaworld.room.vo.RoomMapVo;
   
   public class RoomNumberData
   {
       
      
      public var roomArray:Array;
      
      public function RoomNumberData()
      {
         this.roomArray = new Array();
         super();
         this.roomArray.push(new RoomMapVo(15,MapConstants.GAMBINO_GARDENS));
         this.roomArray.push(new RoomMapVo(16,MapConstants.GAMBINO_PARK));
         this.roomArray.push(new RoomMapVo(17,MapConstants.GAMBINO_MARKET));
         this.roomArray.push(new RoomMapVo(18,MapConstants.WEAPON));
         this.roomArray.push(new RoomMapVo(19,MapConstants.GAMBINO_SIDE_DOOR));
         this.roomArray.push(new RoomMapVo(21,MapConstants.RALLY_ONE));
         this.roomArray.push(new RoomMapVo(22,MapConstants.HOLLYWOOD_1));
         this.roomArray.push(new RoomMapVo(23,MapConstants.HOLLYWOOD_2));
         this.roomArray.push(new RoomMapVo(24,MapConstants.HOLLYWOOD_3));
         this.roomArray.push(new RoomMapVo(25,MapConstants.HOLLYWOOD_4));
         this.roomArray.push(new RoomMapVo(26,MapConstants.HOLLYWOOD_5));
         this.roomArray.push(new RoomMapVo(27,MapConstants.HOLLYWOOD_6));
         this.roomArray.push(new RoomMapVo(28,MapConstants.HOLLYWOOD_7));
         this.roomArray.push(new RoomMapVo(29,MapConstants.RALLY_TWO));
      }
      
      public function nameToNumber(param1:String) : Number
      {
         var _loc4_:RoomMapVo = null;
         var _loc2_:Number = this.roomArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.roomArray[_loc3_];
            if(param1 == _loc4_.mapName)
            {
               return _loc4_.id;
            }
            _loc3_++;
         }
         return -1;
      }
   }
}
