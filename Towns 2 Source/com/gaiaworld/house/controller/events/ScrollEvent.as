package com.gaiaworld.house.controller.events
{
   import flash.events.Event;
   
   public class ScrollEvent extends Event
   {
      
      public static const SCROLL_UP:String = "scrollUP";
      
      public static const SCROLL_DOWN:String = "scrollDown";
      
      public static const SCROLL_RIGHT:String = "scrollRight";
      
      public static const SCROLL_LEFT:String = "scrollLeft";
      
      public static const SCROLL:String = "scroll";
       
      
      public var dir:String;
      
      public function ScrollEvent(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.dir = param2;
      }
      
      override public function clone() : Event
      {
         return new ScrollEvent(type,this.dir,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("ScrollEvent","type","dir","bubbles","cancelable","eventPhase");
      }
   }
}
