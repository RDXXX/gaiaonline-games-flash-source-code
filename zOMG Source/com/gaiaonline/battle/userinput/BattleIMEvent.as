package com.gaiaonline.battle.userinput
{
   import flash.events.Event;
   
   public class BattleIMEvent extends Event
   {
      
      public static const NOT_LOGGED_IN:String = "notLoggedIn";
      
      public static const ACTION_REQUESTED_WITH_NO_SESSION:String = "actionRequestedWithNoSession";
      
      public static const LOGIN_ERROR:String = "loginError";
      
      public static const LOGIN_SUCCESS:String = "loginSuccess";
      
      public static const MESSAGE_DELIVERY_FAILURE:String = "messageDeliveryFailure";
       
      
      public var errorCode:String = "";
      
      public var errorMessage:String = "";
      
      public function BattleIMEvent(type:String, errorCode:String = "", errorMessage:String = "", bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
         this.errorCode = errorCode;
         this.errorMessage = errorMessage;
      }
   }
}
