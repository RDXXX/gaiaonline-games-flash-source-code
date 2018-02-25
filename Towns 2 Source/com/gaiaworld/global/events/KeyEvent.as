package com.gaiaworld.global.events
{
   import flash.events.Event;
   
   public class KeyEvent extends Event
   {
      
      public static const KEY_PRESSED:String = "keyPressed";
       
      
      public var key:String;
      
      public function KeyEvent(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.key = param2;
      }
      
      override public function clone() : Event
      {
         return new KeyEvent(type,this.key,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("KeyEvent","type","key","bubbles","cancelable","eventPhase");
      }
   }
}
