package com.gaiaworld.global.vo
{
   import com.gaiaworld.user.vo.UserVo;
   
   public class StrikeVo
   {
       
      
      public var userVo:UserVo;
      
      public var count:Number = 0;
      
      public var timeArray:Array;
      
      public function StrikeVo(param1:UserVo, param2:Number = 0)
      {
         this.timeArray = new Array();
         super();
         this.userVo = param1;
         this.count = param2;
      }
      
      public function addTime(param1:Number) : *
      {
         this.timeArray.push(param1);
         if(this.timeArray.length > 3)
         {
            this.timeArray.shift();
         }
      }
      
      public function getElapsed() : *
      {
         var _loc6_:Number = NaN;
         var _loc1_:Number = this.timeArray.length;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         this.timeArray.sort(Array.NUMERIC);
         _loc2_ = this.timeArray[0];
         var _loc4_:int = 1;
         while(_loc4_ < _loc1_)
         {
            _loc6_ = this.timeArray[_loc4_] - _loc2_;
            _loc3_ = _loc3_ + _loc6_;
            _loc4_++;
         }
         var _loc5_:Number = _loc3_ / _loc1_;
         return _loc5_;
      }
   }
}
