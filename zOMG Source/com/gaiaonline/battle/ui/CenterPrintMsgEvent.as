package com.gaiaonline.battle.ui
{
   import flash.events.Event;
   
   public class CenterPrintMsgEvent extends Event
   {
      
      public static const DONE:String = "DONE";
       
      
      public var color:Number = NaN;
      
      public function CenterPrintMsgEvent(type:String, color:Number, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
         this.color = color;
      }
   }
}
