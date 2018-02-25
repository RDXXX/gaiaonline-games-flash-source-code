package com.gaiaworld.towns.collectables.flowers.interfaces
{
   import flash.display.Sprite;
   
   public interface IFlower
   {
       
      
      function placeFlower() : *;
      
      function loadFlower(param1:String) : void;
      
      function get clip() : Sprite;
      
      function get depth2() : Number;
   }
}
