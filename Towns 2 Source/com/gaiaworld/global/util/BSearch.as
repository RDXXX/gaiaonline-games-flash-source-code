package com.gaiaworld.global.util
{
   public class BSearch
   {
       
      
      public function BSearch()
      {
         super();
      }
      
      public static function search(param1:Array, param2:*, param3:uint = 16) : *
      {
         var _loc7_:uint = 0;
         var _loc4_:Array = param1;
         if(param3 != 0)
         {
            _loc4_ = _loc4_.sort(param3);
         }
         var _loc5_:int = 0;
         var _loc6_:int = _loc4_.length - 1;
         while(_loc5_ <= _loc6_)
         {
            _loc7_ = (_loc5_ + _loc6_) / 2;
            if(_loc4_[_loc7_] == param2)
            {
               if(param3 != 0)
               {
                  return true;
               }
               return _loc7_;
            }
            if(_loc4_[_loc7_] < param2)
            {
               _loc5_ = _loc7_ + 1;
            }
            else
            {
               _loc6_ = _loc7_ - 1;
            }
         }
         if(param3 != 0)
         {
            return false;
         }
         return -1;
      }
      
      public static function vectToArray(param1:*) : *
      {
         var _loc3_:* = undefined;
         var _loc2_:Array = new Array();
         for each(_loc3_ in param1)
         {
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      public static function compNum(param1:Number, param2:Number) : *
      {
         var _loc3_:int = 0;
         if(param1 == param2)
         {
            return 0;
         }
         if(param1 < param2)
         {
            return -1;
         }
         return 1;
      }
   }
}
