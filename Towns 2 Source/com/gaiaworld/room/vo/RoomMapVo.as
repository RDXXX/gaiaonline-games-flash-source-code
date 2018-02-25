package com.gaiaworld.room.vo
{
   public class RoomMapVo
   {
       
      
      public var mapName:String;
      
      public var adjacent:Array;
      
      public var id:Number;
      
      public function RoomMapVo(param1:Number, param2:String, param3:Array = null)
      {
         super();
         this.mapName = param2;
         this.adjacent = param3;
         this.id = param1;
      }
   }
}
