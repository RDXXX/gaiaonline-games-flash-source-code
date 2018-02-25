package com.gaiaworld.room.util
{
   import flash.display.Sprite;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   
   public class ObjUtil
   {
       
      
      public function ObjUtil()
      {
         super();
      }
      
      public static function getAngle(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Number = Math.atan2(param4 - param2,param3 - param1) * (180 / Math.PI);
         return _loc5_ < 0?Number(_loc5_ + 360):Number(_loc5_);
      }
      
      public static function getDistance(param1:Sprite, param2:Sprite) : Number
      {
         var _loc3_:Number = param1.x - param2.x;
         var _loc4_:Number = param1.y - param2.y;
         var _loc5_:Number = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
         return _loc5_;
      }
      
      public static function getRandian(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return Math.atan2(param2 - param4,param1 - param3);
      }
      
      public static function getDistance2(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Number = param1 - param3;
         var _loc6_:Number = param2 - param4;
         var _loc7_:Number = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         return _loc7_;
      }
      
      public static function getDirection(param1:Sprite, param2:Sprite) : Array
      {
         var _loc3_:Number = param1.x - param2.x;
         var _loc4_:Number = param1.y - param2.y;
         var _loc5_:Number = 0;
         var _loc6_:Number = 0;
         if(_loc3_ != 0)
         {
            if(_loc3_ < 0)
            {
               _loc5_ = -1;
            }
            else
            {
               _loc5_ = 1;
            }
         }
         if(_loc4_ != 0)
         {
            if(_loc4_ < 0)
            {
               _loc6_ = -1;
            }
            else
            {
               _loc6_ = 1;
            }
         }
         return [_loc5_,_loc6_];
      }
      
      public static function getDirection2(param1:Number, param2:Number, param3:Number, param4:Number) : Array
      {
         var _loc5_:Number = param1 - param3;
         var _loc6_:Number = param2 - param4;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(_loc5_ != 0)
         {
            if(_loc5_ > 0)
            {
               _loc7_ = -1;
            }
            else
            {
               _loc7_ = 1;
            }
         }
         if(_loc6_ != 0)
         {
            if(_loc6_ > 0)
            {
               _loc8_ = -1;
            }
            else
            {
               _loc8_ = 1;
            }
         }
         return [_loc7_,_loc8_];
      }
      
      public static function getClass(param1:Object) : Class
      {
         return Class(getDefinitionByName(getQualifiedClassName(param1)));
      }
      
      public static function getPreciseDir(param1:Sprite, param2:Sprite) : Array
      {
         var _loc3_:Number = getRandian(param1.x,param1.y,param2.x,param2.y);
         var _loc4_:Number = Math.cos(_loc3_);
         var _loc5_:Number = Math.sin(_loc3_);
         return [_loc4_,_loc5_];
      }
      
      public static function getPreciseDir2(param1:Number, param2:Number, param3:Number, param4:Number) : *
      {
         var _loc5_:Number = getRandian(param1,param2,param3,param4);
         var _loc6_:Number = Math.cos(_loc5_);
         var _loc7_:Number = Math.sin(_loc5_);
         return [_loc6_,_loc7_];
      }
   }
}
