package com.gaiaworld.room.events
{
   import flash.events.Event;
   
   public class PingEvent extends Event
   {
      
      public static const PING_SPOT:String = "pingSpot";
       
      
      public var size:Number;
      
      public var color:Number;
      
      public var y:Number;
      
      public var x:Number;
      
      public function PingEvent(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Number = 20, param6:Boolean = true, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.size = param5;
         this.color = param4;
         this.y = param3;
         this.x = param2;
      }
      
      override public function clone() : Event
      {
         return new PingEvent(type,this.x,this.y,this.color,this.size,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PingEvent","type","x","y","color","size","bubbles","cancelable","eventPhase");
      }
   }
}
