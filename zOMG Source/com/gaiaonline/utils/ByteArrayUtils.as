package com.gaiaonline.utils
{
   import flash.utils.ByteArray;
   
   public class ByteArrayUtils
   {
       
      
      public function ByteArrayUtils()
      {
         super();
         throw "you can\'t create me";
      }
      
      public static function clear(ba:ByteArray) : ByteArray
      {
         return new ByteArray();
      }
   }
}
