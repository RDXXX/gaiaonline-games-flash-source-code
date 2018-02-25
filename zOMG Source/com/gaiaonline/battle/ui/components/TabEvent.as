package com.gaiaonline.battle.ui.components
{
   import flash.events.Event;
   
   public class TabEvent extends Event
   {
       
      
      public var newIndex:int = 0;
      
      public var lastIndex:int = 0;
      
      public function TabEvent(type:String, lastIndex:int = 0, newIndex:int = 0, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
         this.lastIndex = lastIndex;
         this.newIndex = newIndex;
      }
   }
}
