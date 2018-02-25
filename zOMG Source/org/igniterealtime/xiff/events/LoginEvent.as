package org.igniterealtime.xiff.events
{
   import flash.events.Event;
   
   public class LoginEvent extends Event
   {
      
      public static const LOGIN:String = "login";
       
      
      public function LoginEvent()
      {
         super(LoginEvent.LOGIN,false,false);
      }
      
      override public function toString() : String
      {
         return "[LoginEvent type=\"" + type + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
      
      override public function clone() : Event
      {
         return new LoginEvent();
      }
   }
}
