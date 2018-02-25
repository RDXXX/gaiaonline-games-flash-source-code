package com.gaiaonline.battle.map
{
   public class RoomInfoData
   {
       
      
      public var type:String = "roominfo";
      
      public var roomTint:Number = 0;
      
      public var roomTintAlpha:Number = 0;
      
      public var tintBackground:Boolean = true;
      
      public var south:Boolean = false;
      
      public var north:Boolean = false;
      
      public var exit_east:String = "";
      
      public var dummyRoom:Boolean = false;
      
      public var exit_north:String = "";
      
      public var room_scale:Number = 75;
      
      public var zoneId:int = -1;
      
      public var map_resolution:int = 8;
      
      public var exit_south:String = "";
      
      public var room_name:String = "";
      
      public var exit_west:String = "";
      
      public var x:Number = NaN;
      
      public var y:Number = NaN;
      
      public var east:Boolean = false;
      
      public var west:Boolean = false;
      
      public function RoomInfoData(roomInfo:Object)
      {
         super();
         this.type = roomInfo.type;
         this.x = roomInfo.x;
         this.y = roomInfo.y;
         this.room_name = roomInfo.room_name;
         this.room_scale = roomInfo.room_scale;
         this.roomTint = roomInfo.roomTint;
         this.roomTintAlpha = roomInfo.roomTintAlpha;
         this.map_resolution = roomInfo.map_resolution;
         this.north = roomInfo.north;
         this.south = roomInfo.south;
         this.west = roomInfo.west;
         this.east = roomInfo.east;
         if(roomInfo.hasOwnProperty("zoneId"))
         {
            this.zoneId = roomInfo.zoneId;
         }
         if(roomInfo.hasOwnProperty("dummyRoom"))
         {
            this.dummyRoom = roomInfo.dummyRoom;
         }
         this.exit_east = roomInfo.exit_east;
         this.exit_west = roomInfo.exit_west;
         this.exit_north = roomInfo.exit_north;
         this.exit_south = roomInfo.exit_south;
         if(roomInfo.tintBackground != null)
         {
            this.tintBackground = roomInfo.tintBackground;
         }
      }
   }
}
