package com.gaiaworld.npc.controller.events
{
   import com.gaiaworld.npc.interfaces.Inpc;
   import flash.events.Event;
   
   public class NpcMoveEvent extends Event
   {
      
      public static var DIRECTION_CHANGED:String = "directionChanged";
      
      public static var MOVE:String = "moved";
      
      public static var STOP:String = "stop";
       
      
      public var npc:Inpc;
      
      public var dirY:Number;
      
      public var dirX:Number;
      
      public function NpcMoveEvent(param1:String, param2:Inpc, param3:Number, param4:Number, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.npc = param2;
         this.dirY = param4;
         this.dirX = param3;
      }
      
      override public function clone() : Event
      {
         return new NpcMoveEvent(type,this.npc,this.dirX,this.dirY,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("NpcMoveEvent","type","npc","dirX","dirY","bubbles","cancelable","eventPhase");
      }
   }
}
