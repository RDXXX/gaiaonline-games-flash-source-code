package com.gaiaonline.battle.newactors
{
   import com.gaiaonline.battle.map.IMapRoomManager;
   import com.gaiaonline.battle.map.MapRoom;
   import flash.geom.Point;
   
   public final class MapActorPositionAdjuster
   {
      
      private static const DEFAULT_SCALE:Number = 0.75;
       
      
      private var _mapRoomManager:IMapRoomManager = null;
      
      public function MapActorPositionAdjuster(mapRoomManager:IMapRoomManager)
      {
         super();
         _mapRoomManager = mapRoomManager;
      }
      
      public function adjustY(y:Number) : Number
      {
         return adjustValue(y,false);
      }
      
      private function adjustValue(value:Number, thisIsX:Boolean) : Number
      {
         var scale:Number = NaN;
         var offset:Point = null;
         var room:MapRoom = _mapRoomManager.getCurrentMapRoom();
         if(room)
         {
            scale = getScale();
            offset = room.getRoomOffset();
            if(thisIsX)
            {
               return Math.round(value * scale) + offset.x;
            }
            return Math.round(value * scale) + offset.y;
         }
         return value;
      }
      
      public function getScale() : Number
      {
         var room:MapRoom = _mapRoomManager.getCurrentMapRoom();
         if(room)
         {
            return _mapRoomManager.getCurrentMapRoom().scale / 100;
         }
         return DEFAULT_SCALE;
      }
      
      public function adjustX(x:Number) : Number
      {
         return adjustValue(x,true);
      }
   }
}
