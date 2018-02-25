package com.gaiaworld.room.interfaces
{
   import flash.display.Sprite;
   
   public interface IWorldObject
   {
       
      
      function get clip() : Sprite;
      
      function get depth2() : Number;
      
      function getMyName() : String;
   }
}
