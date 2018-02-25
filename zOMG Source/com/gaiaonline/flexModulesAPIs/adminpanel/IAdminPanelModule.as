package com.gaiaonline.flexModulesAPIs.adminpanel
{
   public interface IAdminPanelModule
   {
       
      
      function setConsoleText(param1:String) : void;
      
      function setEventHandler(param1:IAdminPanelEventHandler) : void;
      
      function setFilterOptions(param1:Array) : void;
   }
}
