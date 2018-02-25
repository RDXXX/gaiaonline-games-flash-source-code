package mx.events
{
   import flash.events.Event;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ScrollEvent extends Event
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      public static const SCROLL:String = "scroll";
       
      
      public var detail:String;
      
      public var delta:Number;
      
      public var position:Number;
      
      public var direction:String;
      
      public function ScrollEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, detail:String = null, position:Number = NaN, direction:String = null, delta:Number = NaN)
      {
         super(type,bubbles,cancelable);
         this.detail = detail;
         this.position = position;
         this.direction = direction;
         this.delta = delta;
      }
      
      override public function clone() : Event
      {
         return new ScrollEvent(type,bubbles,cancelable,detail,position,direction,delta);
      }
   }
}
