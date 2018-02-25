package com.gaiaworld.hangouts.controller.events
{
   import flash.events.Event;
   
   public class RoomEvent extends Event
   {
      
      public static const CHOOSE_ROOM:String = "chooseRoom";
      
      public static const CHOOSE_ROOM_ID:String = "chooseRoomId";
      
      public static const JOIN_PASSWORD_ROOM:String = "joinPasswordRoom";
       
      
      public var pass:String;
      
      public var roomIndex:Number;
      
      public function RoomEvent(param1:String, param2:Number, param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.pass = param3;
         this.roomIndex = param2;
      }
      
      override public function clone() : Event
      {
         return new RoomEvent(type,this.roomIndex,this.pass,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("RoomEvent","type","roomIndex","pass","bubbles","cancelable","eventPhase");
      }
   }
}
