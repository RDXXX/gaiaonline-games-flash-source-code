package com.gaiaworld.towns.hood.vo
{
   public class InviteVo
   {
       
      
      public var hood:Number;
      
      public var community:Number;
      
      public function InviteVo(param1:Number, param2:Number)
      {
         super();
         this.hood = param2;
         this.community = param1;
      }
   }
}
