package com.gaiaworld.monsters.events
{
   import flash.events.Event;
   import flash.geom.Point;
   
   public class MonsterEvent extends Event
   {
      
      public static const ADD_MONSTER:String = "addMonster";
       
      
      public var points:Vector.<Point>;
      
      public var monstType:String;
      
      public function MonsterEvent(param1:String, param2:String, param3:Vector.<Point>, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.points = param3;
         this.monstType = param2;
      }
      
      override public function clone() : Event
      {
         return new MonsterEvent(type,this.monstType,this.points,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("MonsterEvent","type","monstType","points","bubbles","cancelable","eventPhase");
      }
   }
}
