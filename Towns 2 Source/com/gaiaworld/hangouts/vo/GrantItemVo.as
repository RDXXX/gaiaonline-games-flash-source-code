package com.gaiaworld.hangouts.vo
{
   public class GrantItemVo
   {
       
      
      public var itemName:String;
      
      public var thumb:String;
      
      public var description:String;
      
      public function GrantItemVo(param1:String, param2:String, param3:String)
      {
         super();
         this.itemName = param1;
         this.thumb = param2;
         this.description = param3;
      }
   }
}
