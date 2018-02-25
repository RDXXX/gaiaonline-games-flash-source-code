package com.gaiaworld.room.interfaces
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public interface IWorldItem2
   {
       
      
      function get clip() : Sprite;
      
      function get depth2() : Number;
      
      function set depth2(param1:Number) : void;
      
      function get myName() : String;
      
      function get canCollide() : Boolean;
      
      function get collideType() : String;
      
      function get specialAction() : String;
      
      function get type() : String;
      
      function get hitBox() : MovieClip;
   }
}
