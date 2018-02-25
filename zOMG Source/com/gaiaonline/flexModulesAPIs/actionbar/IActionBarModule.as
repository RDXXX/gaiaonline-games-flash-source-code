package com.gaiaonline.flexModulesAPIs.actionbar
{
   public interface IActionBarModule
   {
       
      
      function get poseEnabled() : Boolean;
      
      function setPose(param1:Boolean) : void;
      
      function setPoseEventHandler(param1:IActionBarEventHandler) : void;
      
      function set poseEnabled(param1:Boolean) : void;
   }
}
