package com.gaiaonline.platform.login
{
   import flash.display.DisplayObjectContainer;
   
   public class LoginManagerControllerFactory
   {
       
      
      public function LoginManagerControllerFactory()
      {
         super();
      }
      
      public static function getLoginManagerController(loginSuccessHandler:ILoginSuccessHandler, baseURL:String, gsiURL:String, loginPanelHolder:DisplayObjectContainer, loginConnector:ILoginConnector, loginSwfPath:String, loadedExternally:Boolean = false, partnerId:String = "0", useCaptcha:Boolean = false, loaderParameters:Object = null) : ILoginManagerController
      {
         var foobar:String = null;
         var gsid:String = null;
         var manager:ILoginManagerController = null;
         if(loaderParameters["guest_avatar"])
         {
            manager = new GuestLoginManagerController(loaderParameters,loginSuccessHandler,loginConnector);
         }
         else
         {
            foobar = loaderParameters["foobar"] as String;
            gsid = !!loaderParameters?loaderParameters["gsid"] as String:null;
            manager = new LoginManagerController(loginSuccessHandler,baseURL,gsiURL,loginPanelHolder,loginConnector,loginSwfPath,loadedExternally,partnerId,useCaptcha,gsid);
         }
         return manager;
      }
   }
}
