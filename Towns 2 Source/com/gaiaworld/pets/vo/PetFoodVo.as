package com.gaiaworld.pets.vo
{
   public class PetFoodVo
   {
       
      
      public var itemID:Number;
      
      public var desc:String;
      
      public var name:String;
      
      public var thumb:String;
      
      public var quanity:Number;
      
      public function PetFoodVo(param1:String, param2:String, param3:String, param4:Number = 1, param5:Number = 0)
      {
         super();
         this.itemID = param5;
         this.desc = param3;
         this.name = param1;
         this.thumb = param2;
         this.quanity = param4;
      }
   }
}
