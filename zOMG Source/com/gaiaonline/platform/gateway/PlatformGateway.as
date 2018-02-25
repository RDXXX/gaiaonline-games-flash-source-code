package com.gaiaonline.platform.gateway
{
   import com.adobe.crypto.MD5;
   import com.gaiaonline.gateway.IGaiaGateway;
   import com.gaiaonline.gateway.events.GaiaFunctionResponseEvent;
   import com.gaiaonline.gateway.events.GaiaLoginEvent;
   import com.gaiaonline.gsi.GSIEvent;
   import com.gaiaonline.gsi.GSIGateway;
   import com.gaiaonline.platform.gateway.events.PlatformGatewayEvent;
   import com.gaiaonline.platform.§gateway:GatewaysOnly§.callGameServerGateway;
   import com.gaiaonline.platform.§gateway:GatewaysOnly§.createGameServerPacket;
   import com.gaiaonline.platform.§gateway:GatewaysOnly§.handleGSI;
   import com.gaiaonline.platform.login.ILoginConnector;
   import com.gaiaonline.platform.login.ILoginManager;
   import com.gaiaonline.platform.serverSelect.IServerSelectConnector;
   import com.gaiaonline.platform.serverSelect.IServerSelectConnectorHandler;
   import com.gaiaonline.serializers.JSONSerializer;
   import com.gaiaonline.utils.RegisterUtils;
   import com.gaiaonline.utils.signin.Authentication;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class PlatformGateway extends EventDispatcher implements ILoginConnector, IServerSelectConnector, ICollisionConnector, IAreaLoadingConnector, IGSTConnector, IActorRelocateConnector, IPlayerInfoConnector
   {
      
      private static const GSI_GUEST_LOGIN:uint = 154;
      
      private static const GAME_SERVER_COLLISION:String = "913";
      
      private static const DEFAULT_GSI_SUBDOMAIN:String = "derek.d21";
      
      private static const GSI_GAMESERVER_LIST:uint = 1205;
      
      private static const GSI_LOGIN:uint = 108;
      
      private static const GSI_LOGIN_TEST:uint = 109;
      
      private static const GAME_SERVER_GST:String = "gst";
      
      private static var _gsid:String;
      
      private static const GAME_SERVER_AREA_LOADING:String = "areaLoading";
      
      private static const GAME_SERVER_RELOCATE:String = "relocate";
      
      private static const GAME_SERVER_PLAYER_INFO:String = "playerInfo";
       
      
      private var _serverSelectManagers:Array;
      
      private var _subdomain:String = null;
      
      private var _gsiGateway:GSIGateway;
      
      private var _relocationHandlers:Array;
      
      private var _gsiEventHandler:IUnhandledGSIEventHandler = null;
      
      private var _spaceName:String;
      
      private var _areaLoadingHandlers:Array;
      
      private var _smartfoxGateway:IGaiaGateway;
      
      private var _waitingForResponse:Dictionary;
      
      private var _connectedToGameServer:Boolean = false;
      
      private var _loginManagers:Array;
      
      private var _gameServerEventHandler:IUnhandledGameServerEventHandler = null;
      
      public function PlatformGateway(subdomain:String = "derek.d21", unhandledGSIEventHandler:IUnhandledGSIEventHandler = null, unhandledGameServerEventHandler:IUnhandledGameServerEventHandler = null)
      {
         _loginManagers = [];
         _serverSelectManagers = [];
         _areaLoadingHandlers = [];
         _waitingForResponse = new Dictionary(true);
         _relocationHandlers = [];
         super();
         _gsiEventHandler = unhandledGSIEventHandler;
         _gameServerEventHandler = unhandledGameServerEventHandler;
         if(!subdomain)
         {
            subdomain = DEFAULT_GSI_SUBDOMAIN;
         }
         _subdomain = subdomain.replace(".gaiaonline.com","");
         initGsiGateway();
         initSmartfoxGateway();
      }
      
      function callGameServerGateway(packet:Object) : int
      {
         return this.smartfoxGateway.call("battleCommand",packet);
      }
      
      public function getServerList(nameSpace:String = null) : void
      {
         this.gsiInvoke(GSI_GAMESERVER_LIST,_gsid,nameSpace);
      }
      
      function get gsiGateway() : GSIGateway
      {
         return _gsiGateway;
      }
      
      public function setGSISubdomain(subdomain:String) : void
      {
         _subdomain = subdomain;
         _gsiGateway.subdomain = subdomain;
      }
      
      private function onSmartfoxLogin(event:GaiaLoginEvent) : void
      {
      }
      
      function get smartfoxGateway() : IGaiaGateway
      {
         return _smartfoxGateway;
      }
      
      public function get gsid() : String
      {
         return _gsid;
      }
      
      public function setSessionId(sessionId:String) : void
      {
         _gsid = sessionId;
      }
      
      private function onGsiError(event:GSIEvent) : void
      {
         switch(event.gsiMethod)
         {
            case GSI_LOGIN:
               onLoginFail(event.gsiData[1]);
               break;
            case GSI_LOGIN_TEST:
               onLoginNeeded();
               break;
            default:
               if(_gsiEventHandler)
               {
                  _gsiEventHandler.onGsiError(event);
               }
         }
      }
      
      public function gameServerLogin(ip:String, port:uint) : void
      {
         _smartfoxGateway.connect(ip,port);
      }
      
      private function onLoginFail(errorMsg:String) : void
      {
         var loginManager:ILoginManager = null;
         for each(loginManager in _loginManagers)
         {
            loginManager.onLoginFail(errorMsg);
         }
      }
      
      private function onLoginNeeded() : void
      {
         var loginManager:ILoginManager = null;
         for each(loginManager in _loginManagers)
         {
            loginManager.onLoginNeeded();
         }
      }
      
      private function onSmartfoxError(event:IOErrorEvent) : void
      {
      }
      
      private function onSmartfoxConnected(event:Event) : void
      {
         if(this._spaceName != null)
         {
            _smartfoxGateway.login(MD5.hash(_gsid + getTimer()) + "_" + this._spaceName,_gsid);
         }
         else
         {
            _smartfoxGateway.login(MD5.hash(_gsid + getTimer()),_gsid);
         }
      }
      
      public function isAuthenticated() : Boolean
      {
         if(_gsid && _gsid.length > 0)
         {
            return true;
         }
         return false;
      }
      
      public function get spaceName() : String
      {
         return this._spaceName;
      }
      
      function handleGSI(gsiNum:uint, queue:Boolean = false, ... args) : void
      {
         args.splice(0,0,gsiNum);
         gsiInvoke.apply(this,args);
      }
      
      private function initGsiGateway() : void
      {
         _gsiGateway = new GSIGateway();
         _gsiGateway.subdomain = _subdomain;
         _gsiGateway.serializerClass = JSONSerializer;
         _gsiGateway.useNonEncodedURL = true;
         _gsiGateway.addEventListener(GSIEvent.ERROR,this.onGsiError,false,0,true);
         _gsiGateway.addEventListener(GSIEvent.LOADED,this.onGsiLoaded,false,0,true);
      }
      
      private function onSmartfoxClosed(event:Event) : void
      {
      }
      
      public function unregisterForLoginEvents(loginManager:ILoginManager) : void
      {
         RegisterUtils.unregister(_loginManagers,loginManager);
      }
      
      public function getPlayerInfo(handler:IResponseHandler) : void
      {
         var csMsg:Object = createGameServerPacket(GAME_SERVER_PLAYER_INFO,null);
         var cid:int = callGameServerGateway(csMsg);
         this._waitingForResponse[cid] = handler;
      }
      
      private function onSmartfoxFunctionResponse(event:GaiaFunctionResponseEvent) : void
      {
         var responseObj:Object = null;
         var loadProgress:Number = NaN;
         var relocateHandler:IActorRelocateHandler = null;
         var handler:IAreaLoadingHandler = null;
         if(!_connectedToGameServer)
         {
            _connectedToGameServer = true;
            dispatchEvent(new PlatformGatewayEvent(PlatformGatewayEvent.GAME_GATEWAY_LOGGED_IN));
         }
         var data:Object = event.data;
         responseObj = data.result.result;
         var callId:int = data.cid;
         if(_waitingForResponse[callId])
         {
            (_waitingForResponse[callId] as IResponseHandler).onResponse(responseObj);
            delete _waitingForResponse[callId];
            return;
         }
         var cmd:String = data.result.cmd;
         switch(cmd)
         {
            case GAME_SERVER_RELOCATE:
               for each(relocateHandler in _relocationHandlers)
               {
                  relocateHandler.onActorRelocate(responseObj[0]);
               }
               break;
            case GAME_SERVER_AREA_LOADING:
               loadProgress = responseObj[0].loadProgress;
               if(!isNaN(loadProgress))
               {
                  if(loadProgress > 99)
                  {
                     for each(handler in _areaLoadingHandlers)
                     {
                        handler.onAreaLoadComplete();
                     }
                  }
                  else
                  {
                     for each(handler in _areaLoadingHandlers)
                     {
                        handler.onAreaLoadProgress(loadProgress);
                     }
                  }
               }
               break;
            default:
               if(_gameServerEventHandler)
               {
                  _gameServerEventHandler.onGameServerFunctionResponse(event);
               }
         }
      }
      
      public function onServerListReceived(data:Object) : void
      {
         var manager:IServerSelectConnectorHandler = null;
         for each(manager in _serverSelectManagers)
         {
            manager.onServerListReceived(data);
         }
      }
      
      public function testLoginExists() : void
      {
         handleGSI(GSI_LOGIN_TEST,false);
      }
      
      private function onGsiLoaded(event:GSIEvent) : void
      {
         switch(event.gsiMethod)
         {
            case GSI_LOGIN:
            case GSI_GUEST_LOGIN:
            case GSI_LOGIN_TEST:
               onLoginSuccess(event.gsiData as String);
               break;
            case GSI_GAMESERVER_LIST:
               onServerListReceived(event.gsiData);
               break;
            default:
               if(_gsiEventHandler)
               {
                  _gsiEventHandler.onGsiCallBack(event);
               }
         }
      }
      
      public function getCollisionData(roomName:String, handler:IResponseHandler) : void
      {
         var csMsg:Object = createGameServerPacket(GAME_SERVER_COLLISION,[roomName]);
         var cid:int = callGameServerGateway(csMsg);
         this._waitingForResponse[cid] = handler;
      }
      
      private function onSmartfoxLoginFail(event:GaiaLoginEvent) : void
      {
      }
      
      private function onSmartfoxSecurityError(event:SecurityErrorEvent) : void
      {
      }
      
      private function initSmartfoxGateway() : void
      {
         if(!_smartfoxGateway)
         {
            _smartfoxGateway = new SFoxHangoutGateway();
            _smartfoxGateway.addEventListener(Event.CONNECT,onSmartfoxConnected,false,0,true);
            _smartfoxGateway.addEventListener(Event.CLOSE,onSmartfoxClosed,false,0,true);
            _smartfoxGateway.addEventListener(IOErrorEvent.IO_ERROR,onSmartfoxError,false,0,true);
            _smartfoxGateway.addEventListener(GaiaLoginEvent.LOGIN_SUCCESS,onSmartfoxLogin,false,0,true);
            _smartfoxGateway.addEventListener(GaiaLoginEvent.LOGIN_FAIL,onSmartfoxLoginFail,false,0,true);
            _smartfoxGateway.addEventListener(GaiaFunctionResponseEvent.FUNCTION_RESPONSE,onSmartfoxFunctionResponse,false,0,true);
            _smartfoxGateway.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onSmartfoxSecurityError,false,0,true);
         }
      }
      
      protected function gsiInvoke(method:int, ... args) : void
      {
         if(args.length > 1 || args.length == 0)
         {
            _gsiGateway.invokeArray(method,args);
         }
         else
         {
            _gsiGateway.invoke(method,args[0]);
         }
      }
      
      public function getGSTTime(handler:IResponseHandler) : void
      {
         var csMsg:Object = createGameServerPacket(GAME_SERVER_GST,null);
         var cid:int = callGameServerGateway(csMsg);
         this._waitingForResponse[cid] = handler;
      }
      
      public function get connectedToGameServer() : Boolean
      {
         return _connectedToGameServer;
      }
      
      public function registerForServerSelectEvents(manager:IServerSelectConnectorHandler) : void
      {
         RegisterUtils.register(_serverSelectManagers,manager);
      }
      
      public function registerForAreaLoadingEvents(handler:IAreaLoadingHandler) : void
      {
         RegisterUtils.register(_areaLoadingHandlers,handler);
      }
      
      public function registerForLoginEvents(loginManager:ILoginManager) : void
      {
         RegisterUtils.register(_loginManagers,loginManager);
      }
      
      public function registerForRelocationEvents(handler:IActorRelocateHandler) : void
      {
         RegisterUtils.register(_relocationHandlers,handler);
      }
      
      private function onLoginSuccess(gsid:String) : void
      {
         var loginManager:ILoginManager = null;
         _gsid = gsid;
         var loginManangersCopy:Array = _loginManagers.concat();
         for each(loginManager in loginManangersCopy)
         {
            loginManager.onLoginSuccess();
         }
         loginManangersCopy = null;
      }
      
      public function login(userName:String, password:String, domain:String = null) : void
      {
         setGSISubdomain(domain);
         _gsiGateway.invoke(GSI_LOGIN,userName,Authentication.encrypt(password));
      }
      
      public function unregisterForServerSelectEvents(manager:IServerSelectConnectorHandler) : void
      {
         RegisterUtils.unregister(_serverSelectManagers,manager);
      }
      
      public function setSpaceName(spaceName:String) : void
      {
         this._spaceName = spaceName;
      }
      
      public function guestLogin(guestAvatarID:String, domain:String = null) : void
      {
         setGSISubdomain(domain);
         _gsiGateway.invoke(GSI_GUEST_LOGIN,guestAvatarID);
      }
      
      function createGameServerPacket(commandName:String, parameters:Object) : Object
      {
         var param:Object = null;
         var i:int = 0;
         var csMsg:Object = new Object();
         csMsg.cmd = commandName;
         if(parameters is Array)
         {
            param = new Object();
            for(i = 0; i < parameters.length; i++)
            {
               param[i] = parameters[i];
            }
            csMsg.parameters = param;
         }
         else
         {
            csMsg.parameters = parameters;
         }
         return csMsg;
      }
   }
}
