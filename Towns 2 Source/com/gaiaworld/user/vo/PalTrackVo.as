package com.gaiaworld.user.vo
{
   public class PalTrackVo
   {
       
      
      public var id:Number;
      
      public var ip:String;
      
      public var room_id:Number;
      
      public var room_name:String;
      
      public var port:Number;
      
      public function PalTrackVo(param1:Number = 0, param2:String = "", param3:Number = 440, param4:Number = 0, param5:String = "")
      {
         super();
         this.id = param1;
         this.ip = param2;
         this.port = param3;
         this.room_id = param4;
         this.room_name = param5;
      }
      
      public function toString() : String
      {
         var _loc1_:String = String(this.id) + "|" + this.ip + "|" + String(this.port) + "|" + String(this.room_id) + "|" + this.room_name;
         return _loc1_;
      }
   }
}
