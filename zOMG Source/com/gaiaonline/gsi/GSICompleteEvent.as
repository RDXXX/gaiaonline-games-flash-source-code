package com.gaiaonline.gsi
{
   import flash.events.Event;
   
   public class GSICompleteEvent extends Event
   {
      
      public static const COMPLETE:String = "complete";
       
      
      private var _methods:Array;
      
      public function GSICompleteEvent(type:String = "complete", methods:Array = null)
      {
         super(type);
         this._methods = methods;
      }
      
      public function get methods() : Array
      {
         return _methods;
      }
   }
}
