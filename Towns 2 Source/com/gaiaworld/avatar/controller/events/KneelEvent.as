package com.gaiaworld.avatar.controller.events
{
   import flash.events.Event;
   
   public class KneelEvent extends Event
   {
      
      public static var KNEEL:String = "kneel";
       
      
      public var dir:Number;
      
      public function KneelEvent(param1:String, param2:Number, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.dir = param2;
      }
      
      override public function clone() : Event
      {
         return new KneelEvent(type,this.dir,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("KneelEvent","type","dir","bubbles","cancelable","eventPhase");
      }
   }
}
