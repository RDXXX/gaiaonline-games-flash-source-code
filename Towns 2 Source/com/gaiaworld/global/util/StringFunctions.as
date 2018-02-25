package com.gaiaworld.global.util
{
   import flash.text.TextField;
   
   public class StringFunctions
   {
       
      
      public function StringFunctions()
      {
         super();
      }
      
      public static function unwhitespace(param1:String) : String
      {
         param1 = findReplace("  ",param1,"");
         param1 = trim(param1);
         return param1;
      }
      
      public static function findReplace(param1:String, param2:String, param3:String) : *
      {
         var _loc4_:Array = param2.split(param1);
         return _loc4_.join(param3);
      }
      
      public static function ltrim(param1:*) : *
      {
         var _loc2_:Number = NaN;
         if(param1.length > 1 || param1.length == 1 && param1.charCodeAt(0) > 32 && param1.charCodeAt(0) < 255)
         {
            _loc2_ = 0;
            while(_loc2_ < param1.length && (param1.charCodeAt(_loc2_) <= 32 || param1.charCodeAt(_loc2_) >= 255))
            {
               _loc2_++;
            }
            param1 = param1.substring(_loc2_);
         }
         else
         {
            param1 = "";
         }
         return param1;
      }
      
      public static function rtrim(param1:*) : *
      {
         var _loc2_:Number = 0;
         if(param1.length > 1 || param1.length == 1 && param1.charCodeAt(0) > 32 && param1.charCodeAt(0) < 255)
         {
            _loc2_ = param1.length - 1;
            while(_loc2_ >= 0 && (param1.charCodeAt(_loc2_) <= 32 || param1.charCodeAt(_loc2_) >= 255))
            {
               _loc2_--;
            }
            param1 = param1.substring(0,_loc2_ + 1);
         }
         else
         {
            param1 = "";
         }
         return param1;
      }
      
      public static function trim(param1:*) : *
      {
         return ltrim(rtrim(param1));
      }
      
      public static function hasString(param1:String, param2:String) : Boolean
      {
         var _loc3_:Array = param1.split(param2);
         if(_loc3_.length > 1)
         {
            return true;
         }
         return false;
      }
      
      public static function convertToPlainText(param1:String) : *
      {
         var _loc2_:TextField = new TextField();
         _loc2_.htmlText = param1;
         return _loc2_.text;
      }
      
      public static function addCommas(param1:Number) : String
      {
         var _loc4_:String = null;
         var _loc2_:String = param1.toString();
         var _loc3_:String = "";
         while(_loc2_.length > 3)
         {
            _loc4_ = _loc2_.substr(-3);
            _loc2_ = _loc2_.substr(0,_loc2_.length - 3);
            _loc3_ = "," + _loc4_ + _loc3_;
         }
         if(_loc2_.length > 0)
         {
            _loc3_ = _loc2_ + _loc3_;
         }
         return _loc3_;
      }
      
      public static function hasPW(param1:String) : Boolean
      {
         if(param1.substr(0,3) == "PW_")
         {
            return true;
         }
         return false;
      }
      
      public static function startsWith(param1:String, param2:String) : Boolean
      {
         if(param1 == null || param2 == null)
         {
            return false;
         }
         if(param2.substr(0,param1.length) == param1)
         {
            return true;
         }
         return false;
      }
      
      public static function containsWord(param1:String, param2:String) : Boolean
      {
         param1 = " " + param1 + " ";
         var _loc3_:Number = param1.indexOf(" " + param2 + " ");
         if(_loc3_ > 0)
         {
            return true;
         }
         return false;
      }
      
      public static function contains(param1:String, param2:String) : Boolean
      {
         var _loc3_:Number = param1.indexOf(param2);
         if(_loc3_ > -1)
         {
            return true;
         }
         return false;
      }
      
      public static function colorToString(param1:Number) : String
      {
         return param1.toString(16);
      }
      
      public static function addApos(param1:String) : String
      {
         if(param1.substr(param1.length - 1,1).toLowerCase() == "s")
         {
            return param1 + "\'";
         }
         return param1 + "\'s";
      }
      
      public static function hexToColor(param1:String) : Number
      {
         param1 = findReplace("#",param1,"0x");
         return Number(param1);
      }
      
      public static function stringToBool(param1:String) : Boolean
      {
         return param1 == "true"?true:false;
      }
   }
}
