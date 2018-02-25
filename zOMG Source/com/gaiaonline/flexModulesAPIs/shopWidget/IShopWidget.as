package com.gaiaonline.flexModulesAPIs.shopWidget
{
   public interface IShopWidget
   {
       
      
      function init(param1:String, param2:String, param3:IShopInfoConnector, param4:IShopItemPurchaseConnector, param5:IShopRefresher, param6:Number) : void;
      
      function setTabGap(param1:Number, param2:Number) : void;
      
      function set gCash(param1:Number) : void;
      
      function registerForEvents(param1:IShopWidgetEventHandler) : void;
   }
}
