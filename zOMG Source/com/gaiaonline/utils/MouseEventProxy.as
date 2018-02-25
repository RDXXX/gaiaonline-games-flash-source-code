package com.gaiaonline.utils
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class MouseEventProxy extends Event
   {
       
      
      public var original:MouseEvent;
      
      public function MouseEventProxy(original:MouseEvent)
      {
         super(original.type,false,false);
         this.original = original;
      }
   }
}
