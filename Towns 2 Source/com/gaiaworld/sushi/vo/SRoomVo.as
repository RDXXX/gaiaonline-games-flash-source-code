package com.gaiaworld.sushi.vo
{
   public class SRoomVo
   {
       
      
      public var id:Number;
      
      public var name:String;
      
      public var players:Number;
      
      public var publicName:String;
      
      public function SRoomVo(param1:Number, param2:String, param3:Number = 0)
      {
         super();
         this.id = param1;
         this.name = param2;
         this.players = param3;
      }
   }
}
