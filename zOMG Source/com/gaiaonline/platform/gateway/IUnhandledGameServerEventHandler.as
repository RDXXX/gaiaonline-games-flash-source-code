package com.gaiaonline.platform.gateway
{
   import com.gaiaonline.gateway.events.GaiaFunctionResponseEvent;
   
   public interface IUnhandledGameServerEventHandler
   {
       
      
      function onGameServerFunctionResponse(param1:GaiaFunctionResponseEvent) : void;
   }
}
