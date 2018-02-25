package com.gaiaonline.serializers
{
   public class SushiSerializer
   {
      
      public static const encodeName:String = "sushi";
      
      private static const DELIMITER:String = "\x01";
      
      private static const ARRAY_DELIMITER:String = "\x02";
      
      private static const END:String = "\x04";
      
      private static const SUSHI_TRUE:String = "\x05";
      
      private static const SUSHI_FALSE:String = "\x06";
       
      
      public function SushiSerializer()
      {
         super();
      }
      
      public static function serialize(param1:Array) : String
      {
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:uint = 0;
         var _loc8_:uint = 0;
         var _loc2_:uint = param1.length;
         var _loc3_:String = "";
         var _loc4_:uint = 0;
         while(_loc4_ < _loc2_)
         {
            _loc5_ = param1[_loc4_];
            _loc3_ = _loc3_ + _loc5_[0];
            _loc6_ = _loc5_[1];
            _loc7_ = !!_loc6_?uint(_loc6_.length):uint(0);
            _loc8_ = 0;
            while(_loc8_ < _loc7_)
            {
               if(_loc6_[_loc8_] is Array)
               {
                  _loc3_ = _loc3_ + (DELIMITER + _loc6_[_loc8_].join(ARRAY_DELIMITER));
               }
               else
               {
                  _loc3_ = _loc3_ + (DELIMITER + String(_loc6_[_loc8_]));
               }
               _loc8_++;
            }
            _loc3_ = _loc3_ + END;
            _loc4_++;
         }
         return _loc3_;
      }
      
      public static function unserialize(param1:String) : Array
      {
         var _loc6_:Array = null;
         var _loc7_:uint = 0;
         var _loc8_:uint = 0;
         param1 = unwhitespace(param1);
         var _loc2_:Array = param1.split(END);
         var _loc3_:uint = _loc2_.length;
         var _loc4_:Array = new Array();
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc2_[_loc5_].split(DELIMITER);
            _loc7_ = _loc6_.length;
            _loc4_[_loc5_] = new Array();
            _loc4_[_loc5_][0] = _loc6_[0];
            _loc4_[_loc5_][1] = _loc6_[1] == SUSHI_TRUE?true:false;
            _loc4_[_loc5_][2] = new Array();
            _loc8_ = 2;
            while(_loc8_ < _loc7_)
            {
               if(_loc6_[_loc8_].indexOf(ARRAY_DELIMITER) != -1)
               {
                  _loc4_[_loc5_][2].push(_loc6_[_loc8_].split(ARRAY_DELIMITER));
               }
               else
               {
                  _loc4_[_loc5_][2].push(_loc6_[_loc8_]);
               }
               _loc8_++;
            }
            _loc5_++;
         }
         return _loc4_;
      }
      
      public static function unwhitespace(param1:String) : String
      {
         var _loc2_:int = 0;
         while(_loc2_ < param1.length && param1.charCodeAt(_loc2_) <= 32)
         {
            _loc2_++;
         }
         var _loc3_:int = param1.length;
         while(_loc3_ > _loc2_ && param1.charCodeAt(_loc3_) <= 32)
         {
            _loc3_--;
         }
         return param1.substring(_loc2_,_loc3_);
      }
   }
}
