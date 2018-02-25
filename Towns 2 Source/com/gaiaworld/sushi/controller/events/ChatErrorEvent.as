package com.gaiaworld.sushi.controller.events
{
   import flash.events.Event;
   
   public class ChatErrorEvent extends Event
   {
      
      public static const CHAT_ERROR:String = "chatError";
       
      
      public var message:String;
      
      public function ChatErrorEvent(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.message = param2;
      }
      
      override public function clone() : Event
      {
         return new ChatErrorEvent(type,this.message,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("ChatErrorEvent","type","message","bubbles","cancelable","eventPhase");
      }
   }
}
