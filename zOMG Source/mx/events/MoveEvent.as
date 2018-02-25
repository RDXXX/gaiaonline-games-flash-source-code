package mx.events
{
   import flash.events.Event;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class MoveEvent extends Event
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      public static const MOVE:String = "move";
       
      
      public var oldX:Number;
      
      public var oldY:Number;
      
      public function MoveEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, oldX:Number = NaN, oldY:Number = NaN)
      {
         super(type,bubbles,cancelable);
         this.oldX = oldX;
         this.oldY = oldY;
      }
      
      override public function clone() : Event
      {
         return new MoveEvent(type,bubbles,cancelable,oldX,oldY);
      }
   }
}
