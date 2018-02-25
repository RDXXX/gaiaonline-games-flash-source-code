package com.gaiaonline.utils
{
   public class RegisterUtils
   {
       
      
      public function RegisterUtils()
      {
         super();
      }
      
      public static function register(array:Array, manager:Object) : void
      {
         if(array && array.indexOf(manager) == -1)
         {
            array.push(manager);
         }
      }
      
      public static function unregister(array:Array, manager:Object) : void
      {
         var arrayLength:uint = array.length;
         if(arrayLength == 1)
         {
            array.pop();
            return;
         }
         for(var i:uint = 0; i < arrayLength; i++)
         {
            if(array[i] == manager)
            {
               array.splice(i,1);
               return;
            }
         }
      }
   }
}
