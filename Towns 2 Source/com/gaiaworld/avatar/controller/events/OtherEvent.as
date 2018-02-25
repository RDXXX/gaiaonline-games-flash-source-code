package com.gaiaworld.avatar.controller.events
{
   import flash.events.Event;
   
   public class OtherEvent extends Event
   {
      
      public static const OTHER_ACTION:String = "otherAction";
      
      public static const INIT:String = "init";
       
      
      public var id:Number;
      
      public var action:String;
      
      public var param:String;
      
      public function OtherEvent(param1:String, param2:Number, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.id = param2;
         this.action = param3;
         this.param = param4;
      }
      
      override public function clone() : Event
      {
         return new OtherEvent(type,this.id,this.action,this.param,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("OtherEvent","type","id","action","param","bubbles","cancelable","eventPhase");
      }
   }
}
