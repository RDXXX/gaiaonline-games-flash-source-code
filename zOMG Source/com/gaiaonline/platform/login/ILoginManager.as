package com.gaiaonline.platform.login
{
   public interface ILoginManager
   {
       
      
      function onLoginFail(param1:String) : void;
      
      function onLoginSuccess() : void;
      
      function onLoginNeeded() : void;
   }
}
