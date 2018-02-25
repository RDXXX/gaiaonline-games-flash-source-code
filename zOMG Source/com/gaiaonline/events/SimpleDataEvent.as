package com.gaiaonline.events
{
   import flash.events.Event;
   
   public class SimpleDataEvent extends Event
   {
       
      
      public var data:Object;
      
      public function SimpleDataEvent(type:String = "simpleData", bubbles:Boolean = false, cancelable:Boolean = false, data:Object = null)
      {
         super(type,bubbles,cancelable);
         this.data = data;
      }
   }
}
