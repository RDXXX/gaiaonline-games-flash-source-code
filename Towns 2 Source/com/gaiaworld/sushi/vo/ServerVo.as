package com.gaiaworld.sushi.vo
{
   public class ServerVo
   {
       
      
      public var id:Number;
      
      public var ip:String;
      
      public var name:String;
      
      public var port:Number;
      
      public var occupancy:Number;
      
      public var max_occupancy:Number;
      
      public var portArray:Array;
      
      public function ServerVo(param1:Number = 0, param2:String = "", param3:String = "", param4:Number = 443, param5:Number = 0, param6:Number = 1200)
      {
         super();
         this.id = param1;
         this.ip = param2;
         this.name = param3;
         this.port = param4;
         this.occupancy = param5;
         this.max_occupancy = param6;
      }
      
      public function fromObj(param1:Object) : *
      {
         var _loc2_:String = param1.port as String;
         var _loc3_:Number = _loc2_.indexOf(",");
         if(_loc3_ != -1)
         {
            this.portArray = _loc2_.split(",");
            this.port = this.portArray[0];
         }
         else
         {
            this.port = param1.port;
         }
         this.id = param1.id;
         this.ip = param1.ip;
         this.name = param1.name;
         this.occupancy = param1.occupancy;
         this.max_occupancy = param1.max_occupancy;
      }
   }
}
