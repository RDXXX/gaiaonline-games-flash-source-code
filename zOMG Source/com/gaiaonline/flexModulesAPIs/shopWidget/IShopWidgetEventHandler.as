package com.gaiaonline.flexModulesAPIs.shopWidget
{
   public interface IShopWidgetEventHandler
   {
       
      
      function onShopWidgetNPCDialogue(param1:String, param2:String) : void;
      
      function onShopWidgetLinkClicked(param1:String) : void;
      
      function onShopWidgetClose() : void;
   }
}
