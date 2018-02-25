package com.hurlant.util
{
   import flash.utils.ByteArray;
   
   public class ArrayUtil
   {
       
      
      public function ArrayUtil()
      {
         super();
      }
      
      public static function equals(a1:ByteArray, a2:ByteArray) : Boolean
      {
         if(a1.length != a2.length)
         {
            return false;
         }
         var l:int = a1.length;
         for(var i:int = 0; i < l; i++)
         {
            if(a1[i] != a2[i])
            {
               return false;
            }
         }
         return true;
      }
   }
}
