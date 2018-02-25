package mx.events
{
   import flash.events.Event;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class CloseEvent extends Event
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      public static const CLOSE:String = "close";
       
      
      public var detail:int;
      
      public function CloseEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, detail:int = -1)
      {
         super(type,bubbles,cancelable);
         this.detail = detail;
      }
      
      override public function clone() : Event
      {
         return new CloseEvent(type,bubbles,cancelable,detail);
      }
   }
}
