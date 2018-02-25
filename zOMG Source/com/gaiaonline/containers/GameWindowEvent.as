package com.gaiaonline.containers
{
   import flash.events.Event;
   
   public class GameWindowEvent extends Event
   {
      
      public static const CLOSE:String = "gameWindowClose";
      
      public static const RESIZE_DONE:String = "gameWindowResizeDone";
       
      
      public function GameWindowEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
      }
   }
}
