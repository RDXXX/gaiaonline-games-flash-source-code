package com.gaiaworld.hangouts.controller.events
{
   import flash.events.Event;
   
   public class ServerEvent extends Event
   {
      
      public static const CHOOSE_SEVER:String = "chooseServer";
      
      public static const CHOOSE_AUTO:String = "chooseAuto";
       
      
      public var serverIndex:Number;
      
      public function ServerEvent(param1:String, param2:Number, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.serverIndex = param2;
      }
      
      override public function clone() : Event
      {
         return new ServerEvent(type,this.serverIndex,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("ServerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
