package com.gaiaonline.platform.login
{
   public interface ILoginManagerController
   {
       
      
      function start() : void;
      
      function getUserName() : String;
      
      function getAutoConnectIP() : String;
      
      function showLogin() : void;
   }
}
