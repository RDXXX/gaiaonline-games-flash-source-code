package com.gaiaonline.platform.login
{
   public interface ILoginConnector
   {
       
      
      function setGSISubdomain(param1:String) : void;
      
      function guestLogin(param1:String, param2:String = null) : void;
      
      function testLoginExists() : void;
      
      function isAuthenticated() : Boolean;
      
      function unregisterForLoginEvents(param1:ILoginManager) : void;
      
      function login(param1:String, param2:String, param3:String = null) : void;
      
      function registerForLoginEvents(param1:ILoginManager) : void;
      
      function setSessionId(param1:String) : void;
   }
}
