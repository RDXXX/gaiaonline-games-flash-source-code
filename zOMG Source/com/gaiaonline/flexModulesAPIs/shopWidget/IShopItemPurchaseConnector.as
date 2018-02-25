package com.gaiaonline.flexModulesAPIs.shopWidget
{
   public interface IShopItemPurchaseConnector
   {
       
      
      function unregisterForShopItemPurchaseEvents(param1:IShopItemPurchaseEventHandler) : void;
      
      function registerForShopItemPurchaseEvents(param1:IShopItemPurchaseEventHandler) : void;
      
      function getNonce(param1:String, param2:uint) : void;
      
      function buyItem(param1:String, param2:String, param3:Number) : void;
   }
}
