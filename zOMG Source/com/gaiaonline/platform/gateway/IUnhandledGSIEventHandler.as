package com.gaiaonline.platform.gateway
{
   import com.gaiaonline.gsi.GSIEvent;
   
   public interface IUnhandledGSIEventHandler
   {
       
      
      function onGsiError(param1:GSIEvent) : void;
      
      function onGsiCallBack(param1:GSIEvent) : void;
   }
}
