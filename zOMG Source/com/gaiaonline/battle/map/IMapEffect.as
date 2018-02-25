package com.gaiaonline.battle.map
{
   public interface IMapEffect
   {
       
      
      function unregisterForTransitionEvents(param1:ITransitionEventHandler) : void;
      
      function registerForTransitionEvents(param1:ITransitionEventHandler) : void;
      
      function out(param1:Number, param2:Number) : void;
      
      function int(param1:Number, param2:Number) : void;
   }
}
