package com.gaiaonline.gateway.sfox
{
   import com.gaiaonline.gateway.GaiaChatMessage;
   import com.gaiaonline.gateway.GaiaGatewayProtocol;
   import com.gaiaonline.gateway.IGaiaChannel;
   import com.gaiaonline.gateway.IGaiaGateway;
   import com.gaiaonline.gateway.events.GaiaChannelEvent;
   import com.gaiaonline.gateway.events.GaiaFunctionEvent;
   import com.gaiaonline.gateway.events.GaiaFunctionResponseEvent;
   import com.gaiaonline.gateway.events.GaiaLoginEvent;
   import com.gaiaonline.serializers.AMF3Base64Serializer;
   import com.gaiaonline.utils.Outputter;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.XMLSocket;
   import it.gotoandplay.smartfoxserver.SFSEvent;
   import it.gotoandplay.smartfoxserver.SmartFoxClient;
   import it.gotoandplay.smartfoxserver.SocketStats;
   
   public class SfoxGaiaGateway extends EventDispatcher implements IGaiaGateway
   {
      
      private static var outputter:Outputter = new Outputter("SFG",9);
       
      
      private var _host:String;
      
      private var _connected:Boolean = false;
      
      private var _zone:String;
      
      private var callSfoxGaiaFunction:SfoxGaiaFunction;
      
      private var logedIn:Boolean;
      
      private var responseSfoxGaiaFunction:SfoxGaiaFunction;
      
      private var currentSocket:XMLSocket;
      
      private var responseSfoxGaiaFunctionResponse:SfoxGaiaFunctionResponse;
      
      private var _plugin:String = "";
      
      private var _teamID:Number = 1;
      
      private var _port:uint;
      
      private var sfc:SmartFoxClient;
      
      private var _userData:Object;
      
      private var userName:String = "";
      
      public function SfoxGaiaGateway(plugin:String = "", userData:Object = null, zone:String = "battle", isDebug:Boolean = false)
      {
         callSfoxGaiaFunction = new SfoxGaiaFunction();
         responseSfoxGaiaFunction = new SfoxGaiaFunction();
         responseSfoxGaiaFunctionResponse = new SfoxGaiaFunctionResponse();
         super();
         this.sfc = new SmartFoxClient(isDebug);
         this._plugin = plugin;
         this._userData = userData;
         this._zone = zone;
         if(this._userData == null)
         {
            this._userData = new Array();
         }
      }
      
      public static function log(s:String, i:int = 0) : void
      {
         outputter.log(s,i);
      }
      
      public static function traceObject(o:Object, level:int = 0) : void
      {
         outputter.traceObject(o,level);
      }
      
      public function get port() : uint
      {
         return this._port;
      }
      
      public function reconnect() : Boolean
      {
         log("reconnect()  ... DISABLED");
         return false;
      }
      
      private function onJoinServer(error:Number) : void
      {
         log("onJoinServer(" + error + ")");
         if(error == 0)
         {
            this._connected = true;
            this.dispatchEvent(new Event(Event.CONNECT));
         }
         else
         {
            this.close();
         }
      }
      
      private function onSfLogin(evt:SFSEvent) : void
      {
         var ge:GaiaLoginEvent = null;
         log("onSfLogin()");
         if(evt.params.success || evt.params.error == "User already logged in")
         {
            log("Successfully logged in.... now wait for room list update");
         }
         else
         {
            log("Login failed. Reason: " + evt.params.error);
            ge = new GaiaLoginEvent(GaiaLoginEvent.LOGIN_FAIL);
            ge.setError(0,evt.params.error);
            this.dispatchEvent(ge);
         }
      }
      
      public function get connected() : Boolean
      {
         return this._connected;
      }
      
      public function get allChannels() : Array
      {
         log("allChannels() ... DISABLED");
         return null;
      }
      
      public function logout() : void
      {
         log("logout()  ... DISABLED");
         this.sfc.logout();
      }
      
      private function onJoinChannel(error:*) : void
      {
         log("onJoinChannel( " + error + " )");
         if(error == 0)
         {
            this.dispatchEvent(new GaiaChannelEvent(GaiaChannelEvent.CHANNEL_JOIN));
         }
         else
         {
            this.dispatchEvent(new GaiaChannelEvent(GaiaChannelEvent.CHANNEL_JOIN_ERROR));
         }
      }
      
      public function joinChannel(cid:*, password:String = "") : void
      {
         log("joinChannel() ... DISABLED");
      }
      
      protected function onFunctionError(fn:SfoxGaiaFunctionResponse) : void
      {
         log("onFunctionError(" + fn.name + ") ... fn.error = " + fn.error);
         var functionEvent:GaiaFunctionResponseEvent = new GaiaFunctionResponseEvent(GaiaFunctionResponseEvent.FUNCTION_RESPONSE,fn);
         this.dispatchEvent(functionEvent);
      }
      
      public function login(un:String, epw:String) : void
      {
         log("login( " + un + ", " + epw + " )  QA");
         this.userName = un;
         this.sfc.login(this._zone,un,epw);
      }
      
      public function getChannelByID(id:*) : IGaiaChannel
      {
         log("getChannelByID() ... DISABLED");
         return null;
      }
      
      public function get host() : String
      {
         return this._host;
      }
      
      private function onSfJoinRoomError(evt:SFSEvent) : void
      {
         log("onSfJoinRoomError()");
      }
      
      private function onSfJoinRoom(evt:SFSEvent) : void
      {
         log("onSfJoinRoom()");
         if(!this.logedIn)
         {
            this.logedIn = true;
            log("  dispatch the login_success event");
            this.dispatchEvent(new GaiaLoginEvent(GaiaLoginEvent.LOGIN_SUCCESS));
         }
      }
      
      public function callWithCallback(callback:Function, functionName:String, ... args) : uint
      {
         log("callWithCallback( ) ... BROKEN");
         return 0;
      }
      
      private function onSfConnection(evt:SFSEvent) : void
      {
         var ge:GaiaLoginEvent = null;
         log("onSfConnection()");
         if(evt.params.success)
         {
            log("  connected!");
            this._connected = true;
            this.dispatchEvent(new Event(Event.CONNECT));
         }
         else
         {
            log("  Connection failed.");
            ge = new GaiaLoginEvent(GaiaLoginEvent.LOGIN_FAIL);
            ge.setError(0,evt.params.error);
            this.dispatchEvent(ge);
         }
      }
      
      private function onSfExtensionResponse(evt:SFSEvent) : void
      {
         onServerResponse(evt);
      }
      
      public function getPresenceList(cid:*) : void
      {
         log("getPresenceList() ... DISABLED");
      }
      
      private function onSfUserLeaveRoom(evt:SFSEvent) : void
      {
         log("onSfUserLeaveRoom()");
      }
      
      public function getChannelByName(name:String) : IGaiaChannel
      {
         log("getChannelByName() ... DISABLED");
         return null;
      }
      
      private function onSfIOError(evt:IOErrorEvent) : void
      {
         log("onSfIOError()");
      }
      
      public function get stats() : SocketStats
      {
         return this.sfc.stats;
      }
      
      public function set timeout(val:uint) : void
      {
      }
      
      protected function onFunctionRespond(fn:SfoxGaiaFunctionResponse) : void
      {
         log("onFunctionRespond( " + fn.name + " )");
         var functionEvent:GaiaFunctionResponseEvent = new GaiaFunctionResponseEvent(GaiaFunctionResponseEvent.FUNCTION_RESPONSE,fn);
         this.dispatchEvent(functionEvent);
      }
      
      private function onCreateChannel(error:Number, roomID:Number) : void
      {
         log("onCreateChannel(" + error + ", " + roomID + ")");
         this.dispatchEvent(new GaiaChannelEvent(GaiaChannelEvent.CHANNEL_CREATE));
      }
      
      public function get channels() : Array
      {
         log("get channels() ... DISABLED");
         return null;
      }
      
      public function leaveChannel(cid:*) : void
      {
         log("leaveChannel() ... DISABLED");
      }
      
      private function onSfConnectionLost(evt:SFSEvent) : void
      {
         this.logedIn = false;
         this.dispatchEvent(new Event(Event.CLOSE));
      }
      
      protected function onFunctionCall(fn:SfoxGaiaFunction) : void
      {
         log("onFunctionCall(" + fn.name + ")");
         var functionEvent:GaiaFunctionEvent = new GaiaFunctionEvent(GaiaFunctionEvent.FUNCTION_CALL,fn);
         this.dispatchEvent(functionEvent);
      }
      
      public function chat(msg:GaiaChatMessage) : void
      {
         log("chat()  ... DISABLED");
      }
      
      public function leaveAllChannels() : void
      {
         log("leaveAllChannels() ... DISABLED");
      }
      
      public function getAllChannels() : void
      {
         log("getAllChannels(): void ... WTF?");
      }
      
      private function onServerResponse(evt:SFSEvent) : void
      {
         var obj:Object = null;
         var serializedString:String = evt.params.dataObj;
         try
         {
            obj = AMF3Base64Serializer.unserialize(serializedString);
         }
         catch(e:Error)
         {
            log("  Error attempting to unserialize the server response");
            return;
         }
         if(obj.type)
         {
            if(obj.type == GaiaGatewayProtocol.TYPE_FUNCTION)
            {
               log("  function!");
               this.responseSfoxGaiaFunction.setInfo(obj.name,obj.args);
               this.onFunctionCall(this.responseSfoxGaiaFunction);
            }
            else if(obj.type == GaiaGatewayProtocol.TYPE_FUNCTION_RESPONSE)
            {
               log("  function response! cid: (" + typeof obj.cid + ") " + obj.cid + " )");
               this.responseSfoxGaiaFunctionResponse.setInfo(obj.cid,obj.name,obj.result);
               this.onFunctionRespond(this.responseSfoxGaiaFunctionResponse);
            }
            else if(obj.type == GaiaGatewayProtocol.TYPE_FUNCTION_ERROR)
            {
               log("  function error!");
               this.responseSfoxGaiaFunctionResponse.setInfo(obj.cid,obj.name,null,obj.error);
            }
         }
      }
      
      public function call(functionName:String, ... arguments) : uint
      {
         var args:* = undefined;
         log("call( " + functionName + ", " + arguments + " )");
         if(arguments)
         {
            args = arguments.length > 1?arguments:arguments[0];
         }
         this.callSfoxGaiaFunction.setInfo(functionName,args);
         log("  fn.toString() = " + this.callSfoxGaiaFunction.toString());
         log("  fn.cid        = " + this.callSfoxGaiaFunction.cid);
         this.sfc.sendXtMessage(this._plugin,this.callSfoxGaiaFunction.name,[this.callSfoxGaiaFunction.toString()],"str");
         return this.callSfoxGaiaFunction.cid;
      }
      
      public function getChannelIndexByID(id:Number) : Number
      {
         log("getChannelIndexByID() ... DISABLED");
         return -1;
      }
      
      public function get timeout() : uint
      {
         return 0;
      }
      
      public function connect(host:String, port:int) : void
      {
         log("connect( " + host + ", " + port + " )");
         this._host = host;
         this._port = port;
         log("  register some events for sfs");
         this.sfc.addEventListener(SFSEvent.onConnection,onSfConnection);
         this.sfc.addEventListener(SFSEvent.onConnectionLost,onSfConnectionLost);
         this.sfc.addEventListener(SFSEvent.onLogin,onSfLogin);
         this.sfc.addEventListener(SFSEvent.onRoomListUpdate,onSfRoomListUpdate);
         this.sfc.addEventListener(SFSEvent.onJoinRoom,onSfJoinRoom);
         this.sfc.addEventListener(SFSEvent.onJoinRoomError,onSfJoinRoomError);
         this.sfc.addEventListener(SFSEvent.onExtensionResponse,onSfExtensionResponse);
         this.sfc.addEventListener(SFSEvent.onUserLeaveRoom,onSfUserLeaveRoom);
         this.sfc.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onSfSecurityError);
         this.sfc.addEventListener(IOErrorEvent.IO_ERROR,onSfIOError);
         this.sfc.connect(this._host,this._port);
      }
      
      public function createChannel(name:String, data:Object = null, password:String = "") : void
      {
         log("createChannel() ... DISABLED");
      }
      
      private function onSocketClose(event:Event) : void
      {
         log("onSocketClose()");
         this._connected = false;
         this.dispatchEvent(new Event(Event.CLOSE));
      }
      
      public function setUserName(s:String) : void
      {
         this.userName = s;
      }
      
      private function onSfRoomListUpdate(evt:SFSEvent) : void
      {
         log("onSfRoomListUpdate()");
         if(!this.logedIn)
         {
            log("  do the autoJoin()");
            this.sfc.autoJoin();
         }
      }
      
      private function onSfSecurityError(evt:SecurityErrorEvent) : void
      {
         log("onSfSecurityError()");
      }
      
      private function onSocketError(event:Event) : void
      {
         log("onSocketError()");
         this.dispatchEvent(event);
      }
      
      public function registerIdentityClass(theClass:Class) : Boolean
      {
         log("registerIdentityClass() ... DISABLED");
         return false;
      }
      
      public function close() : void
      {
         log("close()  ... DISABLED");
         this.sfc.disconnect();
      }
   }
}
