package com.gaiaonline.gsi
{
   import flash.events.Event;
   
   public class GSICompleteEvent extends Event
   {
      
      public static const COMPLETE:String = "complete";
       
      
      private var _methods:Array;
      
      public function GSICompleteEvent(param1:String = "complete", param2:Array = null)
      {
         super(param1);
         this._methods = param2;
      }
      
      public function get methods() : Array
      {
         return this._methods;
      }
   }
}
