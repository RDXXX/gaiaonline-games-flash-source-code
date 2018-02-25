package com.gaiaonline.battle.ui.events
{
   import flash.events.Event;
   
   public class ScrollBarEvent extends Event
   {
      
      public static const SCROLL:String = "scroll";
       
      
      public function ScrollBarEvent(type:String)
      {
         super(type,false,false);
      }
   }
}
