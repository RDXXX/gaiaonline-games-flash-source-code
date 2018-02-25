package mx.events
{
   import flash.events.Event;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ResizeEvent extends Event
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      public static const RESIZE:String = "resize";
       
      
      public var oldHeight:Number;
      
      public var oldWidth:Number;
      
      public function ResizeEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, oldWidth:Number = NaN, oldHeight:Number = NaN)
      {
         super(type,bubbles,cancelable);
         this.oldWidth = oldWidth;
         this.oldHeight = oldHeight;
      }
      
      override public function clone() : Event
      {
         return new ResizeEvent(type,bubbles,cancelable,oldWidth,oldHeight);
      }
   }
}
