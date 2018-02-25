package com.gaiaworld.ads.vo
{
   public class MsVo
   {
       
      
      public var offsetDepth:Number;
      
      public var key:String;
      
      public var itemName:String;
      
      public var x:Number;
      
      public var y:Number;
      
      public var locationIndex:Number = 0;
      
      public var hasBeenPlace:Boolean = false;
      
      public function MsVo(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Number = 0)
      {
         super();
         this.offsetDepth = param5;
         this.key = param2;
         this.itemName = param1;
         this.x = param3;
         this.y = param4;
         this.locationIndex = param6;
      }
   }
}
