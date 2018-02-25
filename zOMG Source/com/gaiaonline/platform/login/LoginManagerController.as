package com.gaiaonline.platform.login
{
   import com.gaiaonline.events.LoginPanelEvent;
   import com.gaiaonline.objectPool.LoaderFactory;
   import com.gaiaonline.platform.ui.ILoginPanel;
   import com.gaiaonline.platform.ui.IUiLoginPanelHolder;
   import com.gaiaonline.platform.ui.IUiPartnerLoginPanelHolder;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import com.gaiaonline.utils.factories.LoaderContextFactory;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.SharedObject;
   import flash.net.URLRequest;
   import flash.system.Security;
   import mx.utils.StringUtil;
   
   public class LoginManagerController implements ILoginManager, ILoginManagerController
   {
      
      private static const GUEST_NAME:String = "guest";
       
      
      private var _loginConnector:ILoginConnector = null;
      
      private var _partnerId:String = null;
      
      private var _holder:DisplayObjectContainer = null;
      
      private var loginSWFLoader:Loader = null;
      
      private var _gsiURL:String = null;
      
      private var _useCaptcha:Boolean = false;
      
      private var _userName:String = null;
      
      private var _loginSuccessHandler:ILoginSuccessHandler = null;
      
      private var _loadedExternally:Boolean = false;
      
      private var _gsidFlashVar:String = null;
      
      private var _baseURL:String = null;
      
      private var _sharedObject:Object = null;
      
      private var _autoConnectIP:String = null;
      
      private var _loginPanel:ILoginPanel = null;
      
      private var _loginSwfPath:String = null;
      
      public function LoginManagerController(loginSuccessHandler:ILoginSuccessHandler, baseURL:String, gsiURL:String, loginPanelHolder:DisplayObjectContainer, loginConnector:ILoginConnector, loginSwfPath:String, loadedExternally:Boolean = false, partnerId:String = "0", useCaptcha:Boolean = false, gsidFlashVar:String = null)
      {
         super();
         _loginSuccessHandler = loginSuccessHandler;
         _loginConnector = loginConnector;
         _baseURL = baseURL;
         _gsiURL = gsiURL;
         _holder = loginPanelHolder;
         _loadedExternally = loadedExternally;
         _partnerId = partnerId;
         _useCaptcha = useCaptcha;
         _loginSwfPath = loginSwfPath;
         _gsidFlashVar = gsidFlashVar;
         _loginConnector.registerForLoginEvents(this);
      }
      
      public static function isValidSid(sid:String) : Boolean
      {
         if(!sid || StringUtil.trim(sid).length == 0)
         {
            return false;
         }
         return true;
      }
      
      private function onClickLogin(event:LoginPanelEvent) : void
      {
         var userName:String = _loginPanel.username;
         var pass:String = _loginPanel.password;
         _userName = userName;
         if(_sharedObject != null)
         {
            _sharedObject.data.userName = userName;
            _sharedObject.data.gsiSubdomain = _loginPanel.gsiSubdomain;
            _sharedObject.flush();
         }
         _loginConnector.login(userName,pass,_loginPanel.gsiSubdomain);
      }
      
      public function getAutoConnectIP() : String
      {
         return _autoConnectIP;
      }
      
      private function toggleLoaderListeners(add:Boolean = true) : void
      {
         var listenerFxn:Function = null;
         var loadInfo:LoaderInfo = loginSWFLoader.contentLoaderInfo;
         if(add)
         {
            listenerFxn = loadInfo.addEventListener;
         }
         else
         {
            listenerFxn = loadInfo.removeEventListener;
         }
         listenerFxn(Event.COMPLETE,onLoginPanelLoaded);
         listenerFxn(IOErrorEvent.IO_ERROR,onLoginPanelLoadError);
         listenerFxn(SecurityErrorEvent.SECURITY_ERROR,onLoginPanelLoadError);
      }
      
      public function getUserName() : String
      {
         return _userName;
      }
      
      private function onLoginPanelLoadError(event:Event) : void
      {
         _loginSuccessHandler.onLoginUILoadError(event.type + " when loading " + _baseURL + _loginSwfPath);
      }
      
      public function onLoginSuccess() : void
      {
         var loginDisplayObject:DisplayObjectContainer = _loginPanel as DisplayObjectContainer;
         if(_loginPanel && _holder.contains(loginDisplayObject))
         {
            DisplayObjectUtils.ClearAllChildrens(loginDisplayObject);
            _holder.removeChild(loginDisplayObject);
            _loginPanel = null;
         }
         _loginConnector.unregisterForLoginEvents(this);
         _loginSuccessHandler.onLoginSuccess();
      }
      
      private function determineLoginState(gsidFlashVar:String) : void
      {
         if(Security.sandboxType != Security.REMOTE || gsidFlashVar == null)
         {
            _loginConnector.testLoginExists();
         }
         else if(gsidFlashVar == "")
         {
            onLoginNeeded();
         }
         else
         {
            _loginConnector.setSessionId(gsidFlashVar);
            _loginSuccessHandler.onLoginSuccess();
         }
      }
      
      public function onLoginFail(errorMessage:String) : void
      {
         _loginPanel.setErrorText(errorMessage);
      }
      
      public function onLoginNeeded() : void
      {
         loginSWFLoader = LoaderFactory.getInstance().checkOut();
         toggleLoaderListeners(true);
         loginSWFLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,onLoginPanelLoaded);
         loginSWFLoader.load(new URLRequest(_baseURL + _loginSwfPath),LoaderContextFactory.getInstance().getLoaderContext());
      }
      
      private function onClickGuestLogin(event:LoginPanelEvent) : void
      {
         _loginConnector.setGSISubdomain(_loginPanel.gsiSubdomain);
         _userName = GUEST_NAME;
         _autoConnectIP = _loginPanel.autoconnectIP;
         _loginConnector.testLoginExists();
      }
      
      public function showLogin() : void
      {
         _holder.addChild(_loginPanel as DisplayObject);
      }
      
      public function start() : void
      {
         determineLoginState(_gsidFlashVar);
      }
      
      private function onLoginPanelLoaded(event:Event) : void
      {
         var partnerPanelHolder:IUiPartnerLoginPanelHolder = null;
         var panelHolder:IUiLoginPanelHolder = null;
         var url:String = null;
         toggleLoaderListeners(false);
         var loaderInfoContent:DisplayObject = (event.target as LoaderInfo).content;
         if(_loadedExternally)
         {
            partnerPanelHolder = loaderInfoContent as IUiPartnerLoginPanelHolder;
            _loginPanel = partnerPanelHolder.getPartnerLoginPanel();
         }
         else
         {
            panelHolder = loaderInfoContent as IUiLoginPanelHolder;
            _loginPanel = panelHolder.getLoginPanel();
         }
         _loginPanel.baseURL = _baseURL;
         _loginPanel.partnerID = _partnerId;
         _loginPanel.useCaptcha = _useCaptcha;
         _sharedObject = SharedObject.getLocal("loginSetting");
         if(_sharedObject.data.userName != null)
         {
            _loginPanel.username = _sharedObject.data.userName;
         }
         if(this._gsiURL != null)
         {
            url = this._gsiURL;
            if(url)
            {
               url = url.replace(".gaiaonline.com","");
               _loginPanel.gsiSubdomain = url;
            }
         }
         else if(_sharedObject.data.gsiSubdomain != null)
         {
            _loginPanel.gsiSubdomain = _sharedObject.data.gsiSubdomain;
         }
         if(_loadedExternally)
         {
            _loginPanel.showGuestPicker();
         }
         LoaderFactory.getInstance().checkIn((event.target as LoaderInfo).loader);
         _loginPanel.addEventListener(LoginPanelEvent.LOGIN,onClickLogin,false,0,true);
         _loginPanel.addEventListener(LoginPanelEvent.GUEST_LOGIN,onClickGuestLogin,false,0,true);
         _loginSuccessHandler.onLoginLoaded();
      }
   }
}
