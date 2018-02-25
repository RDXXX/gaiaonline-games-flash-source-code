package com.gaiaworld.towns.collectables.trash.interfaces
{
   import flash.display.Sprite;
   
   public interface ITrash
   {
       
      
      function placeTrash() : *;
      
      function loadTrash(param1:String) : void;
      
      function get clip() : Sprite;
      
      function get depth2() : Number;
   }
}
