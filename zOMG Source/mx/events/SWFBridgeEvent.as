package mx.events
{
   import flash.events.Event;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class SWFBridgeEvent extends Event
   {
      
      public static const BRIDGE_FOCUS_MANAGER_ACTIVATE:String = "bridgeFocusManagerActivate";
      
      public static const BRIDGE_WINDOW_ACTIVATE:String = "bridgeWindowActivate";
      
      public static const BRIDGE_WINDOW_DEACTIVATE:String = "brdigeWindowDeactivate";
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      public static const BRIDGE_NEW_APPLICATION:String = "bridgeNewApplication";
      
      public static const BRIDGE_APPLICATION_UNLOADING:String = "bridgeApplicationUnloading";
      
      public static const BRIDGE_APPLICATION_ACTIVATE:String = "bridgeApplicationActivate";
       
      
      public var data:Object;
      
      public function SWFBridgeEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, data:Object = null)
      {
         super(type,bubbles,cancelable);
         this.data = data;
      }
      
      public static function marshal(event:Event) : SWFBridgeEvent
      {
         var eventObj:Object = event;
         return new SWFBridgeEvent(eventObj.type,eventObj.bubbles,eventObj.cancelable,eventObj.data);
      }
      
      override public function clone() : Event
      {
         return new SWFBridgeEvent(type,bubbles,cancelable,data);
      }
   }
}
