package mx.events
{
   import flash.events.Event;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class StateChangeEvent extends Event
   {
      
      public static const CURRENT_STATE_CHANGING:String = "currentStateChanging";
      
      public static const CURRENT_STATE_CHANGE:String = "currentStateChange";
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public var newState:String;
      
      public var oldState:String;
      
      public function StateChangeEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, oldState:String = null, newState:String = null)
      {
         super(type,bubbles,cancelable);
         this.oldState = oldState;
         this.newState = newState;
      }
      
      override public function clone() : Event
      {
         return new StateChangeEvent(type,bubbles,cancelable,oldState,newState);
      }
   }
}
