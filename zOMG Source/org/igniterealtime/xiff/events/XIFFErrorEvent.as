package org.igniterealtime.xiff.events
{
   import flash.events.Event;
   import org.igniterealtime.xiff.data.Extension;
   
   public class XIFFErrorEvent extends Event
   {
      
      public static const XIFF_ERROR:String = "error";
       
      
      private var _errorType:String;
      
      private var _errorCondition:String;
      
      private var _errorCode:int;
      
      private var _errorExt:Extension;
      
      private var _errorMessage:String;
      
      public function XIFFErrorEvent()
      {
         super(XIFFErrorEvent.XIFF_ERROR,false,false);
      }
      
      public function set errorExt(value:Extension) : void
      {
         _errorExt = value;
      }
      
      public function get errorType() : String
      {
         return _errorType;
      }
      
      public function set errorMessage(value:String) : void
      {
         _errorMessage = value;
      }
      
      public function set errorCode(value:int) : void
      {
         _errorCode = value;
      }
      
      public function set errorType(value:String) : void
      {
         _errorType = value;
      }
      
      public function set errorCondition(value:String) : void
      {
         _errorCondition = value;
      }
      
      public function get errorCode() : int
      {
         return _errorCode;
      }
      
      public function get errorExt() : Extension
      {
         return _errorExt;
      }
      
      public function get errorCondition() : String
      {
         return _errorCondition;
      }
      
      override public function toString() : String
      {
         return "[XIFFErrorEvent type=\"" + type + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
      
      override public function clone() : Event
      {
         var event:XIFFErrorEvent = new XIFFErrorEvent();
         event.errorCondition = _errorCondition;
         event.errorMessage = _errorMessage;
         event.errorType = _errorType;
         event.errorCode = _errorCode;
         event.errorExt = _errorExt;
         return event;
      }
      
      public function get errorMessage() : String
      {
         return _errorMessage;
      }
   }
}
