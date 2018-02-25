package com.gaiaworld.room.controller.events
{
   import flash.events.Event;
   
   public class JumpRoomEvent extends Event
   {
      
      public static var CHANGE_ROOM:String = "changeRoom";
       
      
      public var room:String;
      
      public var startY:Number;
      
      public var startX:Number;
      
      public function JumpRoomEvent(param1:String, param2:Number, param3:Number, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.room = param4;
         this.startY = param3;
         this.startX = param2;
      }
      
      override public function clone() : Event
      {
         return new JumpRoomEvent(type,this.startX,this.startY,this.room,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("JumpRoomEvent","type","startX","startY","room","bubbles","cancelable","eventPhase");
      }
   }
}
