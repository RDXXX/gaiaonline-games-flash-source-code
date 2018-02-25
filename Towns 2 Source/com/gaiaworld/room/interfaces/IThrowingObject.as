package com.gaiaworld.room.interfaces
{
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import flash.display.Sprite;
   
   public interface IThrowingObject
   {
       
      
      function stopAction() : void;
      
      function startAction() : void;
      
      function setProps(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void;
      
      function isBlocked(param1:Boolean) : void;
      
      function setAtAvatar() : void;
      
      function setDelay(param1:Number) : void;
      
      function get clip() : Sprite;
      
      function get depth2() : Number;
      
      function set depth2(param1:Number) : void;
      
      function set avatar(param1:IAvatar) : void;
   }
}
