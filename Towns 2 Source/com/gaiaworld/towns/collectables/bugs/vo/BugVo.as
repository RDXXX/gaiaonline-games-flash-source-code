package com.gaiaworld.towns.collectables.bugs.vo
{
   public class BugVo
   {
       
      
      public var serial:String;
      
      public var img:String;
      
      public var x:Number;
      
      public var y:Number;
      
      public var move:Number;
      
      public var speed:Number;
      
      public var type:String;
      
      public function BugVo(param1:String = "-1", param2:String = "", param3:String = "", param4:Number = 0, param5:Number = 0, param6:Number = 0, param7:Number = 4)
      {
         super();
         this.serial = param1;
         this.img = param2;
         this.type = param3;
         this.x = param4;
         this.y = param5;
         this.move = param6;
         this.speed = param7;
      }
   }
}
