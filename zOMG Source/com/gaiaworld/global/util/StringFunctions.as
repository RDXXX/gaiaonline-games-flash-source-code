package com.gaiaworld.global.util
{
   import flash.text.TextField;
   
   public class StringFunctions
   {
       
      
      public function StringFunctions()
      {
         super();
      }
      
      public static function convertToPlainText(text:String) : *
      {
         var tf:TextField = new TextField();
         tf.htmlText = text;
         return tf.text;
      }
      
      public static function trim(matter:*) : *
      {
         return ltrim(rtrim(matter));
      }
      
      public static function rtrim(matter:*) : *
      {
         var i:Number = 0;
         if(matter.length > 1 || matter.length == 1 && matter.charCodeAt(0) > 32 && matter.charCodeAt(0) < 255)
         {
            i = matter.length - 1;
            while(i >= 0 && (matter.charCodeAt(i) <= 32 || matter.charCodeAt(i) >= 255))
            {
               i--;
            }
            matter = matter.substring(0,i + 1);
         }
         else
         {
            matter = "";
         }
         return matter;
      }
      
      public static function unwhitespace(myString:String) : String
      {
         myString = findReplace("  ",myString,"");
         myString = trim(myString);
         return myString;
      }
      
      public static function hasString(haystack:String, needle:String) : Boolean
      {
         var tArray:Array = haystack.split(needle);
         if(tArray.length > 1)
         {
            return true;
         }
         return false;
      }
      
      public static function findReplace(needle:String, haystack:String, replace:String) : *
      {
         var tArray:Array = haystack.split(needle);
         return tArray.join(replace);
      }
      
      public static function ltrim(matter:*) : *
      {
         var i:Number = NaN;
         if(matter.length > 1 || matter.length == 1 && matter.charCodeAt(0) > 32 && matter.charCodeAt(0) < 255)
         {
            i = 0;
            while(i < matter.length && (matter.charCodeAt(i) <= 32 || matter.charCodeAt(i) >= 255))
            {
               i++;
            }
            matter = matter.substring(i);
         }
         else
         {
            matter = "";
         }
         return matter;
      }
   }
}
