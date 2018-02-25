package com.gaiaworld.avatar.controller.events
{
   import flash.events.Event;
   
   public class MoveEvent extends Event
   {
      
      public static const MOVE:String = "move";
       
      
      public var y:Number;
      
      public var x:Number;
      
      public function MoveEvent(param1:String, param2:Number, param3:Number, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.y = param3;
         this.x = param2;
      }
      
      override public function clone() : Event
      {
         return new MoveEvent(type,this.x,this.y,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("MoveEvent","type","x","y","bubbles","cancelable","eventPhase");
      }
   }
}
