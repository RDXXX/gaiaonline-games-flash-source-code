package com.gaiaonline.gateway.events
{
   import flash.events.Event;
   
   public class GaiaGatewayEvent extends Event
   {
      
      public static const CHANNEL_CREATE_ERROR:String = "channelCreateError";
      
      public static const CHANNEL_JOIN:String = "channelJoin";
      
      public static const FUNCTION_RESPONSE:String = "functionResponse";
      
      public static const PRESENCE_UPDATE:String = "presenceUpdate";
      
      public static const LOGIN_FAIL:String = "loginFail";
      
      public static const CHAT:String = "chat";
      
      public static const FUNCTION_ERROR:String = "functionError";
      
      public static const CHANNEL_CREATE:String = "channelCreate";
      
      public static const FUNCTION_CALL:String = "functionCall";
      
      public static const PRESENCE_IN:String = "presenceIn";
      
      public static const PRESENCE_OUT:String = "presenceOut";
      
      public static const LOGIN_SUCCESS:String = "loginSuccess";
      
      public static const CHANNEL_JOIN_ERROR:String = "channelJoinError";
      
      public static const PRESENCE_LIST:String = "presenceList";
      
      public static const CHANNEL_LIST:String = "channelList";
      
      public static const CHANNEL_LEAVE:String = "channelLeave";
      
      public static const PRESENCE_NEW:String = "presenceNew";
      
      public static const DISPLAY_CAPTCHA:String = "displayCaptcha";
       
      
      public function GaiaGatewayEvent(type:String)
      {
         super(type);
      }
   }
}
