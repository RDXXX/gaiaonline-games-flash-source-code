package com.gaiamobile.room.interfaces
{
   import flash.display.Sprite;
   
   public interface ISurfaceObject
   {
       
      
      function get clip() : Sprite;
      
      function get depth2() : Number;
      
      function set depth2(param1:Number) : void;
      
      function get myName() : String;
      
      function get canCollide() : Boolean;
      
      function get collideType() : String;
   }
}
