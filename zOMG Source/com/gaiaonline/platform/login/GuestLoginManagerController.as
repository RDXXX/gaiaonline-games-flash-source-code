package com.gaiaonline.platform.login
{
   import flash.system.Security;
   
   public class GuestLoginManagerController implements ILoginManagerController, ILoginManager
   {
       
      
      private var _loginConnector:ILoginConnector = null;
      
      private var _autoconnectIP:String = null;
      
      private var _loginSuccessHandler:ILoginSuccessHandler = null;
      
      private var _guestAvatar:String = null;
      
      private var _gsidFlashVar:String = null;
      
      private var _domain:String = null;
      
      public function GuestLoginManagerController(loaderParameters:Object, loginSuccessHandler:ILoginSuccessHandler, loginConnector:ILoginConnector)
      {
         super();
         this._guestAvatar = loaderParameters["guest_avatar"];
         this._gsidFlashVar = loaderParameters["gsid"] as String;
         this._domain = loaderParameters["gsiUrl"] as String;
         this._autoconnectIP = loaderParameters["serverip"] as String;
         this._loginSuccessHandler = loginSuccessHandler;
         this._loginConnector = loginConnector;
         _loginConnector.registerForLoginEvents(this);
      }
      
      public function onLoginFail(errorMessage:String) : void
      {
      }
      
      public function showLogin() : void
      {
      }
      
      public function onLoginSuccess() : void
      {
         _loginConnector.unregisterForLoginEvents(this);
         _loginSuccessHandler.onLoginSuccess();
      }
      
      public function onLoginNeeded() : void
      {
         _loginConnector.guestLogin(this._guestAvatar,this._domain);
      }
      
      public function start() : void
      {
         if(Security.sandboxType != Security.REMOTE || _gsidFlashVar == null)
         {
            _loginConnector.testLoginExists();
         }
         else if(_gsidFlashVar == "")
         {
            onLoginNeeded();
         }
         else
         {
            _loginConnector.setSessionId(_gsidFlashVar);
            _loginSuccessHandler.onLoginSuccess();
         }
      }
      
      public function getAutoConnectIP() : String
      {
         return _autoconnectIP;
      }
      
      public function getUserName() : String
      {
         return "guest";
      }
   }
}
