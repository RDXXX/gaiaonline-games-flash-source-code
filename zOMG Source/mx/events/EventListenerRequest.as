package mx.events
{
   import flash.events.Event;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class EventListenerRequest extends SWFBridgeRequest
   {
      
      public static const REMOVE_EVENT_LISTENER_REQUEST:String = "removeEventListenerRequest";
      
      public static const ADD_EVENT_LISTENER_REQUEST:String = "addEventListenerRequest";
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var _priority:int;
      
      private var _useWeakReference:Boolean;
      
      private var _eventType:String;
      
      private var _useCapture:Boolean;
      
      public function EventListenerRequest(type:String, bubbles:Boolean = false, cancelable:Boolean = true, eventType:String = null, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false)
      {
         super(type,false,false);
         _eventType = eventType;
         _useCapture = useCapture;
         _priority = priority;
         _useWeakReference = useWeakReference;
      }
      
      public static function marshal(event:Event) : EventListenerRequest
      {
         var eventObj:Object = event;
         return new EventListenerRequest(eventObj.type,eventObj.bubbles,eventObj.cancelable,eventObj.eventType,eventObj.useCapture,eventObj.priority,eventObj.useWeakReference);
      }
      
      public function get priority() : int
      {
         return _priority;
      }
      
      public function get useWeakReference() : Boolean
      {
         return _useWeakReference;
      }
      
      public function get eventType() : String
      {
         return _eventType;
      }
      
      override public function clone() : Event
      {
         return new EventListenerRequest(type,bubbles,cancelable,eventType,useCapture,priority,useWeakReference);
      }
      
      public function get useCapture() : Boolean
      {
         return _useCapture;
      }
   }
}
