package org.igniterealtime.xiff.events
{
   import flash.events.Event;
   
   public class PropertyChangeEvent extends Event
   {
      
      public static const CHANGE:String = "change";
       
      
      private var _oldValue;
      
      private var _name:String;
      
      private var _newValue;
      
      public function PropertyChangeEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
      }
      
      public function set newValue(value:*) : void
      {
         _newValue = value;
      }
      
      public function get name() : *
      {
         return _name;
      }
      
      override public function toString() : String
      {
         return "[PropertyChangeEvent type=\"" + type + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
      
      public function get newValue() : *
      {
         return _newValue;
      }
      
      public function set name(value:*) : void
      {
         _name = value;
      }
      
      public function get oldValue() : *
      {
         return _oldValue;
      }
      
      public function set oldValue(value:*) : void
      {
         _oldValue = value;
      }
      
      override public function clone() : Event
      {
         var event:PropertyChangeEvent = new PropertyChangeEvent(type,bubbles,cancelable);
         event.name = _name;
         event.newValue = _newValue;
         event.oldValue = _oldValue;
         return event;
      }
   }
}
