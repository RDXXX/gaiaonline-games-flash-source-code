package com.gaiaonline.flexModulesAPIs.shopWidget
{
   public interface IShopInfoConnector
   {
       
      
      function getShopInfo(param1:String) : void;
      
      function unregisterForShopEvents(param1:IShopInfoEventHandler) : void;
      
      function registerForShopEvents(param1:IShopInfoEventHandler) : void;
   }
}
