package com.gaiaworld.monsters.interfaces
{
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public interface IMonster
   {
       
      
      function loadMonster(param1:String) : void;
      
      function set points(param1:Vector.<Point>) : void;
      
      function get clip() : Sprite;
      
      function get depth2() : Number;
      
      function set depth2(param1:Number) : void;
      
      function get myName() : String;
      
      function get canCollide() : Boolean;
      
      function get collideType() : String;
   }
}
