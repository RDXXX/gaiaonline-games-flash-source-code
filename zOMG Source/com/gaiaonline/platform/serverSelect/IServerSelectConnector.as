package com.gaiaonline.platform.serverSelect
{
   public interface IServerSelectConnector
   {
       
      
      function unregisterForServerSelectEvents(param1:IServerSelectConnectorHandler) : void;
      
      function registerForServerSelectEvents(param1:IServerSelectConnectorHandler) : void;
      
      function getServerList(param1:String = null) : void;
   }
}
