package com.gaiaonline.containers
{
   import flash.events.Event;
   
   public class GameWindowTabDropEvent extends Event
   {
      
      public static const TAB_DROP:String = "tabDrop";
       
      
      public function GameWindowTabDropEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
      }
   }
}
