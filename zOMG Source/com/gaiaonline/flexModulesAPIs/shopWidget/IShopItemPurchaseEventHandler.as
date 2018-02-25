package com.gaiaonline.flexModulesAPIs.shopWidget
{
   public interface IShopItemPurchaseEventHandler
   {
       
      
      function onNonce(param1:String, param2:uint) : void;
      
      function onStorePurchaseSuccess(param1:String) : void;
      
      function onStorePurchaseError(param1:Number, param2:String) : void;
      
      function onNonceError() : void;
   }
}
