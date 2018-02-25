package com.gaiaonline.battle.map
{
   public interface IMapRoomManager
   {
       
      
      function getCurrentRoomId() : String;
      
      function getRoomById(param1:String) : MapRoom;
      
      function getCurrentMapRoom() : MapRoom;
   }
}
