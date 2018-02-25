package com.gaiaonline.platform.gateway.events
{
   import com.gaiaonline.events.SimpleDataEvent;
   
   public class PlatformGatewayEvent extends SimpleDataEvent
   {
      
      public static const DATA_GATEWAY_LOGGED_OUT:String = "dataGatewayLoggedIn";
      
      public static const DATA_GATEWAY_USER_INFO:String = "dataGatewayUserInfo";
      
      public static const DATA_GATEWAY_LOGGED_IN:String = "dataGatewayLoggedIn";
      
      public static const DATA_GATEWAY_GAMESERVER_LIST:String = "dataGatewayGameserverList";
      
      public static const GAME_GATEWAY_LOGGED_OUT:String = "gameGatewayLoggedOut";
      
      public static const GAME_GATEWAY_LOGGED_IN:String = "gameGatewayLoggedIn";
       
      
      public function PlatformGatewayEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
      }
   }
}
