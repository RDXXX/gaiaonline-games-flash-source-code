package org.igniterealtime.xiff.events
{
   import flash.events.Event;
   
   public class PresenceEvent extends Event
   {
      
      public static const PRESENCE:String = "presence";
       
      
      private var _data:Array;
      
      public function PresenceEvent()
      {
         super(PresenceEvent.PRESENCE,bubbles,cancelable);
      }
      
      public function set data(value:Array) : void
      {
         _data = value;
      }
      
      public function get data() : Array
      {
         return _data;
      }
      
      override public function toString() : String
      {
         return "[PresenceEvent type=\"" + type + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
      
      override public function clone() : Event
      {
         var event:PresenceEvent = new PresenceEvent();
         event.data = _data;
         return event;
      }
   }
}
