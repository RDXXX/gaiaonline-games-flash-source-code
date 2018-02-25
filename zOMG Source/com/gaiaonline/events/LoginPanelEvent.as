package com.gaiaonline.events
{
   import flash.events.Event;
   
   public class LoginPanelEvent extends Event
   {
      
      public static const REGISTER:String = "register";
      
      public static const LOGIN:String = "login";
      
      public static const GUEST_LOGIN:String = "guestLogin";
       
      
      public function LoginPanelEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
      }
   }
}
