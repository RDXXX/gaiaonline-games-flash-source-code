package com.gaiaworld.house.vo
{
   public class CoordVo
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public var z:Number;
      
      public var depth:Number;
      
      public function CoordVo(param1:Number = 0, param2:Number = 0, param3:Number = 0, param4:Number = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.z = param3;
         this.depth = param4;
      }
   }
}
