package com.gaiaonline.battle.userinput
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class IMProxyEvent extends Event
   {
      
      public static const SEND_IM_WITH_GAIA_NAME:String = "sendWithGaiaName";
      
      public static const SIGN_OFF:String = "signOff";
      
      public static const INIT:String = "init";
      
      public static const SEND_IM_TO_GUILD:String = "sendIMToGuild";
      
      public static const ACTION_REQUESTED_WITH_NO_SESSION:String = "actionRequestedWithNoSession";
      
      public static const IM_RECEIVED:String = "imReceeived";
      
      public static const SEND_IM_WITH_GAIA_ID:String = "sendWithGaiaID";
      
      public static const MESSAGE_DELIVERY_SUCCESS:String = "messageDeliverySuccess";
      
      public static const LOGIN_ERROR:String = "loginError";
      
      public static const LOGIN_SUCCESS:String = "loginSuccess";
      
      public static const NOT_LOGGED_IN:String = "notLoggedIn";
      
      public static const MESSAGE_DELIVERY_FAILURE:String = "messageDeliveryFailure";
      
      public static var proxy:EventDispatcher = new EventDispatcher();
       
      
      private var _gaiaName:String = null;
      
      private var _message:String = null;
      
      private var _gaiaId:String = null;
      
      private var _errorCode:String = null;
      
      private var _battleIMEvent:BattleIMEvent = null;
      
      private var _guildId:String = null;
      
      private var _imReceivedEvent:IMReceivedEvent = null;
      
      public function IMProxyEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set message(message:String) : void
      {
         _message = message;
      }
      
      public function get errorCode() : String
      {
         return _errorCode;
      }
      
      public function set gaiaId(gaiaId:String) : void
      {
         _gaiaId = gaiaId;
      }
      
      public function set guildId(guildId:String) : void
      {
         _guildId = guildId;
      }
      
      public function get gaiaName() : String
      {
         return _gaiaName;
      }
      
      public function get battleIMEvent() : BattleIMEvent
      {
         return _battleIMEvent;
      }
      
      public function set imReceivedEvent(e:IMReceivedEvent) : void
      {
         _imReceivedEvent = e;
      }
      
      public function get gaiaId() : String
      {
         return _gaiaId;
      }
      
      public function get guildId() : String
      {
         return _guildId;
      }
      
      public function set errorCode(code:String) : void
      {
         _errorCode = code;
      }
      
      public function get imReceivedEvent() : IMReceivedEvent
      {
         return _imReceivedEvent;
      }
      
      public function set gaiaName(gaiaName:String) : void
      {
         _gaiaName = gaiaName;
      }
      
      public function set battleIMEvent(e:BattleIMEvent) : void
      {
         _battleIMEvent = e;
      }
   }
}
