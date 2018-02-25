package com.gaiaworld.hangouts.controller.events
{
   import flash.events.Event;
   
   public class CreateRoomEvent extends Event
   {
      
      public static const CREATE_ROOM:String = "createRoom";
       
      
      public var roomName:String;
      
      public function CreateRoomEvent(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         this.roomName = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new CreateRoomEvent(type,this.roomName,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("CreateRoomEvent","type","roomName","bubbles","cancelable","eventPhase");
      }
   }
}
