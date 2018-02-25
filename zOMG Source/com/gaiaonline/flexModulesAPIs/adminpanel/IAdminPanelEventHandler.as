package com.gaiaonline.flexModulesAPIs.adminpanel
{
   public interface IAdminPanelEventHandler
   {
       
      
      function onShowCollisionClick(param1:Boolean) : void;
      
      function onSendCommandClick(param1:String, param2:String) : void;
      
      function onGstChange(param1:Date) : void;
      
      function onCommandFilter(param1:String) : void;
      
      function onLightsClick() : void;
   }
}
