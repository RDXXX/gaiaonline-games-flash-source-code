package com.gaiaworld.global.vo
{
   public class EventVo
   {
       
      
      public var msg:String;
      
      public var dispatch;
      
      public var type:String;
      
      public var func:Function;
      
      public function EventVo(param1:*, param2:String, param3:Function, param4:String = "")
      {
         super();
         this.msg = param4;
         this.dispatch = param1;
         this.type = param2;
         this.func = param3;
      }
      
      public function toString() : String
      {
         return "dispatch=" + this.dispatch + " type=" + this.type;
      }
   }
}
