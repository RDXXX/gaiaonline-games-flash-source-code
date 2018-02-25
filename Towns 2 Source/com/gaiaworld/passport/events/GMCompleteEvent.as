package com.gaiaworld.passport.events
{
   import flash.events.Event;
   
   public class GMCompleteEvent extends Event
   {
      
      public static const COMPLETED:String = "completed";
       
      
      public var obj:Object;
      
      public function GMCompleteEvent(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.obj = param2;
      }
      
      override public function clone() : Event
      {
         return new GMCompleteEvent(type,this.obj,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("GMCompleteEvent","type","obj","bubbles","cancelable","eventPhase");
      }
   }
}
