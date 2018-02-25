package com.gaiaworld.room.vo
{
   public class PosVo
   {
       
      
      public var scrollX:Number;
      
      public var scrollY:Number;
      
      public var avX:Number;
      
      public var avY:Number;
      
      public function PosVo(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.scrollX = param1;
         this.scrollY = param2;
         this.avX = param3;
         this.avY = param4;
      }
      
      public function toString() : String
      {
         var _loc1_:String = String(this.scrollX) + "|" + String(this.scrollY) + "|" + String(this.avX) + "|" + String(this.avY);
         return _loc1_;
      }
   }
}
