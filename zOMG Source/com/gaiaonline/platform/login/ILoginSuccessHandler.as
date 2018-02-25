package com.gaiaonline.platform.login
{
   public interface ILoginSuccessHandler
   {
       
      
      function onLoginSuccess() : void;
      
      function onLoginUILoadError(param1:String) : void;
      
      function onLoginLoaded() : void;
   }
}
