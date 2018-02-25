package com.gaiaonline.utils
{
   import flash.display.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   
   public class KeyDownLimiter extends EventDispatcher
   {
      
      private static var _benefit:int = 0;
       
      
      private var _keys:Array;
      
      public function KeyDownLimiter(target:DisplayObject, priority:int = 0)
      {
         _keys = [];
         super();
         target.addEventListener(KeyboardEvent.KEY_DOWN,onKeyDown,false,priority,true);
         target.addEventListener(KeyboardEvent.KEY_UP,onKeyUp,false,priority,true);
      }
      
      private function onKeyDown(e:KeyboardEvent) : void
      {
         if(!_keys[e.keyCode])
         {
            _keys[e.keyCode] = true;
            dispatchEvent(e.clone());
         }
         else
         {
            _benefit++;
         }
      }
      
      private function onKeyUp(e:KeyboardEvent) : void
      {
         _keys[e.keyCode] = false;
         dispatchEvent(e.clone());
      }
   }
}
