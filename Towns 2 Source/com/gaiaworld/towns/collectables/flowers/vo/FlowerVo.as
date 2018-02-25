package com.gaiaworld.towns.collectables.flowers.vo
{
   public class FlowerVo
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public var serial:String;
      
      public var img:String;
      
      public function FlowerVo(param1:String, param2:String, param3:Number, param4:Number)
      {
         super();
         this.serial = param1;
         this.img = param2;
         this.x = param3;
         this.y = param4;
      }
   }
}
