package mx.events
{
   import flash.events.Event;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class TweenEvent extends Event
   {
      
      public static const TWEEN_END:String = "tweenEnd";
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      public static const TWEEN_UPDATE:String = "tweenUpdate";
      
      public static const TWEEN_START:String = "tweenStart";
       
      
      public var value:Object;
      
      public function TweenEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, value:Object = null)
      {
         super(type,bubbles,cancelable);
         this.value = value;
      }
      
      override public function clone() : Event
      {
         return new TweenEvent(type,bubbles,cancelable,value);
      }
   }
}
