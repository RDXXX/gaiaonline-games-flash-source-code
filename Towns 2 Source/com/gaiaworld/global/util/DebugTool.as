package com.gaiaworld.global.util
{
   public class DebugTool
   {
       
      
      public function DebugTool()
      {
         super();
      }
      
      public static function pr(param1:*, param2:int = 0, param3:String = "") : *
      {
         var _loc6_:* = undefined;
         var _loc7_:String = null;
         if(param2 == 0)
         {
            param3 = "(" + DebugTool.typeOf(param1) + ") {\n";
         }
         else if(param2 == 10)
         {
            return param3;
         }
         var _loc4_:* = "\t";
         var _loc5_:int = 0;
         while(_loc5_ < param2)
         {
            _loc5_++;
            _loc4_ = _loc4_ + "\t";
         }
         for(_loc6_ in param1)
         {
            param3 = param3 + (_loc4_ + "[" + _loc6_ + "] => (" + DebugTool.typeOf(param1[_loc6_]) + ") ");
            if(DebugTool.count(param1[_loc6_]) == 0)
            {
               param3 = param3 + param1[_loc6_];
            }
            _loc7_ = "";
            if(typeof param1[_loc6_] != "xml")
            {
               _loc7_ = DebugTool.pr(param1[_loc6_],param2 + 1);
            }
            if(_loc7_ != "")
            {
               param3 = param3 + ("{\n" + _loc7_ + _loc4_ + "}");
            }
            param3 = param3 + "\n";
         }
         if(param2 == 0)
         {
            trace(param3 + "}\n");
            return param3;
         }
         return param3;
      }
      
      public static function typeOf(param1:*) : String
      {
         if(param1 is Array)
         {
            return "array";
         }
         if(param1 is Date)
         {
            return "date";
         }
         return typeof param1;
      }
      
      public static function count(param1:Object) : uint
      {
         var _loc2_:uint = 0;
         var _loc3_:* = undefined;
         if(DebugTool.typeOf(param1) == "array")
         {
            return param1.length;
         }
         _loc2_ = 0;
         for(_loc3_ in param1)
         {
            if(_loc3_ != "mx_internal_uid")
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
   }
}
