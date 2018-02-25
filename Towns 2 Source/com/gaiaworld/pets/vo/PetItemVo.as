package com.gaiaworld.pets.vo
{
   public class PetItemVo
   {
       
      
      public var nonce:String;
      
      public var id:Number;
      
      public var thumb:String;
      
      public var name:String;
      
      public var cost:Number;
      
      public var currency:String;
      
      public var duration:String;
      
      public var descr:String;
      
      public var effect:String;
      
      public var type:String;
      
      public var q:Number = 1;
      
      public function PetItemVo(param1:Number, param2:String, param3:String, param4:Number, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String)
      {
         super();
         this.nonce = param10;
         this.id = param1;
         this.thumb = param2;
         this.name = param3;
         this.cost = param4;
         this.currency = param5;
         this.duration = param6;
         this.descr = param7;
         this.effect = param8;
         this.type = param9;
      }
   }
}
