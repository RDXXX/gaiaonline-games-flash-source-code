package com.gaiaworld.pets.vo
{
   public class BuyPetVo
   {
       
      
      public var id:Number;
      
      public var name:String;
      
      public var desc:String;
      
      public var thumb:String;
      
      public var amount:Number;
      
      public var currency:String;
      
      public var species:String;
      
      public var breed:String;
      
      public function BuyPetVo(param1:Number, param2:String = "", param3:String = "", param4:String = "", param5:Number = 0, param6:String = "", param7:String = "", param8:String = "")
      {
         super();
         this.id = param1;
         this.name = param2;
         this.desc = param3;
         this.thumb = param4;
         this.amount = param5;
         this.currency = param6;
         this.species = param7;
         this.breed = param8;
      }
   }
}
