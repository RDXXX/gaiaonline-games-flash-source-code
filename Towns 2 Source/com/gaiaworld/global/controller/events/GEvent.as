package com.gaiaworld.global.controller.events
{
   import flash.events.Event;
   
   public class GEvent extends Event
   {
      
      public static var GENERIC_ACTION:String = "genAction";
       
      
      public var action:String;
      
      public var text:String;
      
      public function GEvent(param1:String, param2:String, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.action = param2;
         this.text = param3;
      }
      
      override public function clone() : Event
      {
         return new GEvent(type,this.action,this.text,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("GEvent","type","action","text","bubbles","cancelable","eventPhase");
      }
   }
}
