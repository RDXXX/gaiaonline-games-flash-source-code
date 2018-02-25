package com.gaiaworld.towns.collectables.bugs.vo
{
   public class CollectedVo
   {
       
      
      public var type:String;
      
      public var img:String;
      
      public var serial:String;
      
      public var q:Number = 0;
      
      public function CollectedVo(param1:String, param2:String, param3:String, param4:Number = 1)
      {
         super();
         this.type = param3;
         this.img = param2;
         this.serial = param1;
         this.q = param4;
      }
   }
}
