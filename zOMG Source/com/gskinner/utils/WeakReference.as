package com.gskinner.utils
{
   import flash.utils.Dictionary;
   
   public class WeakReference
   {
       
      
      private var dictionary:Dictionary;
      
      public function WeakReference(p_object:Object)
      {
         super();
         dictionary = new Dictionary(true);
         dictionary[p_object] = null;
      }
      
      public function get() : Object
      {
         var n:* = null;
         for(n in dictionary)
         {
            return n;
         }
         return null;
      }
   }
}
