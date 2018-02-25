package com.gaiaworld.global.controller.events
{
   import flash.events.Event;
   
   public class ServerMessageEvent extends Event
   {
      
      public static const MESSAGE_FROM_SERVER:String = "messageFromServer";
       
      
      public var message:String;
      
      public var dataArray:Array;
      
      public function ServerMessageEvent(param1:String, param2:String, param3:Array, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.message = param2;
         this.dataArray = param3;
      }
      
      override public function clone() : Event
      {
         return new ServerMessageEvent(type,this.message,this.dataArray,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("ServerMessageEvent","type","message","dataArray","bubbles","cancelable","eventPhase");
      }
   }
}
