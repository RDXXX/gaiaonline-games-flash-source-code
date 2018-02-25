package com.gaiaworld.monsters.vo
{
   import flash.geom.Point;
   
   public class WalkVo
   {
       
      
      public var point:Point;
      
      public var dist:Number;
      
      public var totalDist:Number = 0;
      
      public function WalkVo(param1:Point, param2:Number)
      {
         super();
         this.dist = param2;
         this.point = param1;
      }
   }
}
