package org.igniterealtime.xiff.core
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.Socket;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.xml.XMLDocument;
   import flash.xml.XMLNode;
   import org.igniterealtime.xiff.auth.Anonymous;
   import org.igniterealtime.xiff.auth.DigestMD5;
   import org.igniterealtime.xiff.auth.External;
   import org.igniterealtime.xiff.auth.Plain;
   import org.igniterealtime.xiff.auth.SASLAuth;
   import org.igniterealtime.xiff.data.Extension;
   import org.igniterealtime.xiff.data.IExtension;
   import org.igniterealtime.xiff.data.IQ;
   import org.igniterealtime.xiff.data.Message;
   import org.igniterealtime.xiff.data.Presence;
   import org.igniterealtime.xiff.data.XMPPStanza;
   import org.igniterealtime.xiff.data.auth.AuthExtension;
   import org.igniterealtime.xiff.data.bind.BindExtension;
   import org.igniterealtime.xiff.data.forms.FormExtension;
   import org.igniterealtime.xiff.data.ping.PingExtension;
   import org.igniterealtime.xiff.data.register.RegisterExtension;
   import org.igniterealtime.xiff.data.session.SessionExtension;
   import org.igniterealtime.xiff.events.ChangePasswordSuccessEvent;
   import org.igniterealtime.xiff.events.ConnectionSuccessEvent;
   import org.igniterealtime.xiff.events.DisconnectionEvent;
   import org.igniterealtime.xiff.events.IQEvent;
   import org.igniterealtime.xiff.events.IncomingDataEvent;
   import org.igniterealtime.xiff.events.LoginEvent;
   import org.igniterealtime.xiff.events.MessageEvent;
   import org.igniterealtime.xiff.events.OutgoingDataEvent;
   import org.igniterealtime.xiff.events.PresenceEvent;
   import org.igniterealtime.xiff.events.RegistrationFieldsEvent;
   import org.igniterealtime.xiff.events.RegistrationSuccessEvent;
   import org.igniterealtime.xiff.events.XIFFErrorEvent;
   import org.igniterealtime.xiff.exception.SerializationException;
   
   public class XMPPConnection extends EventDispatcher
   {
      
      protected static var saslMechanisms:Object = {
         "PLAIN":Plain,
         "ANONYMOUS":Anonymous,
         "DIGEST-MD5":DigestMD5,
         "EXTERNAL":External
      };
      
      public static const STREAM_TYPE_STANDARD:uint = 0;
      
      public static const STREAM_TYPE_FLASH:uint = 2;
      
      protected static var _openConnections:Array = [];
      
      public static const STREAM_TYPE_STANDARD_TERMINATED:uint = 1;
      
      public static const STREAM_TYPE_FLASH_TERMINATED:uint = 3;
       
      
      protected var _queuePresences:Boolean = true;
      
      private var presenceQueueTimer:Timer;
      
      protected var _active:Boolean = false;
      
      protected var sessionID:String;
      
      protected var _username:String;
      
      protected var _incompleteRawXML:String = "";
      
      protected var _expireTagSearch:Boolean;
      
      protected var loggedIn:Boolean = false;
      
      private var _ignoreWhitespace:Boolean = true;
      
      protected var pendingIQs:Object;
      
      protected var _port:uint = 5222;
      
      protected var _server:String;
      
      protected var _outgoingBytes:uint = 0;
      
      protected var _resource:String = "xiff";
      
      protected var socket:Socket;
      
      protected var _streamType:uint = 0;
      
      protected var openingStreamTag:String;
      
      protected var auth:SASLAuth;
      
      protected var compressionNegotiated:Boolean = false;
      
      protected var _compress:Boolean = false;
      
      protected var closingStreamTag:String;
      
      private var presenceQueue:Array;
      
      protected var _domain:String;
      
      protected var _useAnonymousLogin:Boolean = false;
      
      protected var _incomingBytes:uint = 0;
      
      protected var _password:String;
      
      public function XMPPConnection()
      {
         pendingIQs = {};
         presenceQueue = [];
         super();
         AuthExtension.enable();
         BindExtension.enable();
         SessionExtension.enable();
         RegisterExtension.enable();
         FormExtension.enable();
         PingExtension.enable();
      }
      
      public static function get openConnections() : Array
      {
         return _openConnections;
      }
      
      public static function registerSASLMechanism(name:String, authClass:Class) : void
      {
         saslMechanisms[name] = authClass;
      }
      
      public static function disableSASLMechanism(name:String) : void
      {
         saslMechanisms[name] = null;
      }
      
      public function set port(value:uint) : void
      {
         _port = value;
      }
      
      public function get jid() : UnescapedJID
      {
         return new UnescapedJID(_username + "@" + _domain + "/" + _resource);
      }
      
      protected function get active() : Boolean
      {
         return _active;
      }
      
      protected function onSecurityError(event:SecurityErrorEvent) : void
      {
         trace("there was a security error of type: " + event.type + "\nError: " + event.text);
         dispatchError("not-authorized","Not Authorized","auth",401);
      }
      
      protected function set active(value:Boolean) : void
      {
         if(value)
         {
            _openConnections.push(this);
         }
         else
         {
            _openConnections.splice(_openConnections.indexOf(this),1);
         }
         _active = value;
      }
      
      public function get resource() : String
      {
         return _resource;
      }
      
      protected function handleStreamTLS(node:XMLNode) : void
      {
         if(node.firstChild && node.firstChild.nodeName == "required")
         {
            dispatchError("TLS required","The server requires TLS, but this feature is not implemented.","cancel",501);
            disconnect();
            return;
         }
      }
      
      protected function handleChallenge(challengeBody:XMLNode) : void
      {
         var response:XML = auth.handleChallenge(0,XML(challengeBody.toString()));
         sendXML(response);
      }
      
      public function set resource(value:String) : void
      {
         if(value.length > 0)
         {
            _resource = value;
         }
      }
      
      private function establishSession() : void
      {
         var sessionIQ:IQ = new IQ(null,IQ.TYPE_SET);
         sessionIQ.addExtension(new SessionExtension());
         sessionIQ.callback = handleSessionResponse;
         sessionIQ.errorCallback = handleSessionError;
         send(sessionIQ);
      }
      
      protected function handleStreamError(node:XMLNode) : void
      {
         dispatchError("service-unavailable","Remote Server Error","cancel",502);
         try
         {
            socket.close();
         }
         catch(error:Error)
         {
         }
         active = false;
         loggedIn = false;
         var disconnectionEvent:DisconnectionEvent = new DisconnectionEvent();
         dispatchEvent(disconnectionEvent);
      }
      
      protected function handleStreamFeatures(node:XMLNode) : void
      {
         var feature:XMLNode = null;
         if(!loggedIn)
         {
            for each(feature in node.childNodes)
            {
               if(feature.nodeName == "starttls")
               {
                  handleStreamTLS(feature);
               }
               else if(feature.nodeName == "mechanisms")
               {
                  configureAuthMechanisms(feature);
               }
               else if(feature.nodeName == "compression")
               {
                  if(_compress)
                  {
                     configureStreamCompression();
                  }
               }
            }
            if(compress && compressionNegotiated || !compress)
            {
               if(useAnonymousLogin || username != null && username.length > 0)
               {
                  beginAuthentication();
               }
               else
               {
                  getRegistrationFields();
               }
            }
         }
         else
         {
            bindConnection();
         }
      }
      
      protected function chooseStreamTags(type:uint) : void
      {
         openingStreamTag = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>";
         if(type == STREAM_TYPE_FLASH || type == STREAM_TYPE_FLASH_TERMINATED)
         {
            openingStreamTag = openingStreamTag + "<flash";
            closingStreamTag = "</flash:stream>";
         }
         else
         {
            openingStreamTag = openingStreamTag + "<stream";
            closingStreamTag = "</stream:stream>";
         }
         openingStreamTag = openingStreamTag + (":stream xmlns=\"" + XMPPStanza.CLIENT_NAMESPACE + "\" ");
         if(type == STREAM_TYPE_FLASH || type == STREAM_TYPE_FLASH_TERMINATED)
         {
            openingStreamTag = openingStreamTag + ("xmlns:flash=\"" + XMPPStanza.NAMESPACE_FLASH + "\"");
         }
         else
         {
            openingStreamTag = openingStreamTag + ("xmlns:stream=\"" + XMPPStanza.NAMESPACE_STREAM + "\"");
         }
         openingStreamTag = openingStreamTag + (" to=\"" + domain + "\"" + " xml:lang=\"" + XMPPStanza.XML_LANG + "\"" + " version=\"" + XMPPStanza.CLIENT_VERSION + "\"");
         if(type == STREAM_TYPE_FLASH_TERMINATED || type == STREAM_TYPE_STANDARD_TERMINATED)
         {
            openingStreamTag = openingStreamTag + " /";
         }
         openingStreamTag = openingStreamTag + ">";
      }
      
      protected function flushPresenceQueue(event:TimerEvent) : void
      {
         var presenceEvent:PresenceEvent = null;
         if(presenceQueue.length > 0)
         {
            presenceEvent = new PresenceEvent();
            presenceEvent.data = presenceQueue;
            dispatchEvent(presenceEvent);
            presenceQueue = [];
         }
      }
      
      public function set password(value:String) : void
      {
         _password = value;
      }
      
      protected function handlePresence(node:XMLNode) : Presence
      {
         var presenceEvent:PresenceEvent = null;
         if(!presenceQueueTimer)
         {
            presenceQueueTimer = new Timer(1,1);
            presenceQueueTimer.addEventListener(TimerEvent.TIMER_COMPLETE,flushPresenceQueue);
         }
         var presence:Presence = new Presence();
         if(!presence.deserialize(node))
         {
            throw new SerializationException();
         }
         if(queuePresences)
         {
            presenceQueue.push(presence);
            presenceQueueTimer.reset();
            presenceQueueTimer.start();
         }
         else
         {
            presenceEvent = new PresenceEvent();
            presenceEvent.data = [presence];
            dispatchEvent(presenceEvent);
         }
         return presence;
      }
      
      public function get server() : String
      {
         if(!_server)
         {
            return _domain;
         }
         return _server;
      }
      
      protected function addIQCallbackToPending(id:String, callbackFunc:Function, errorCallbackFunc:Function) : void
      {
         pendingIQs[id] = {
            "func":callbackFunc,
            "errorFunc":errorCallbackFunc
         };
      }
      
      protected function handleIQ(node:XMLNode) : IQ
      {
         var callbackInfo:* = undefined;
         var exts:Array = null;
         var ns:* = null;
         var ext:IExtension = null;
         var iqEvent:IQEvent = null;
         var iq:IQ = new IQ();
         if(!iq.deserialize(node))
         {
            throw new SerializationException();
         }
         if(iq.type == IQ.TYPE_ERROR)
         {
            dispatchError(iq.errorCondition,iq.errorMessage,iq.errorType,iq.errorCode);
            if(pendingIQs[iq.id] !== undefined)
            {
               callbackInfo = pendingIQs[iq.id];
               if(callbackInfo.errorFunc != null)
               {
                  callbackInfo.errorFunc(iq);
               }
               pendingIQs[iq.id] = null;
               delete pendingIQs[iq.id];
            }
         }
         else if(pendingIQs[iq.id] !== undefined)
         {
            callbackInfo = pendingIQs[iq.id];
            if(callbackInfo.func != null)
            {
               callbackInfo.func(iq);
            }
            pendingIQs[iq.id] = null;
            delete pendingIQs[iq.id];
         }
         else
         {
            exts = iq.getAllExtensions();
            for(ns in exts)
            {
               ext = exts[ns] as IExtension;
               if(ext != null)
               {
                  iqEvent = new IQEvent(ext.getNS());
                  iqEvent.data = ext;
                  iqEvent.iq = iq;
                  dispatchEvent(iqEvent);
               }
            }
         }
         return iq;
      }
      
      private function handleSessionError(packet:IQ) : void
      {
      }
      
      public function get useAnonymousLogin() : Boolean
      {
         return _useAnonymousLogin;
      }
      
      public function get outgoingBytes() : uint
      {
         return _outgoingBytes;
      }
      
      public function changePassword(newPassword:String) : void
      {
         var passwdIQ:IQ = new IQ(new EscapedJID(domain),IQ.TYPE_SET,XMPPStanza.generateID("pswd_change_"),changePassword_result);
         var ext:RegisterExtension = new RegisterExtension(passwdIQ.getNode());
         ext.username = jid.escaped.bareJID;
         ext.password = newPassword;
         passwdIQ.addExtension(ext);
         send(passwdIQ);
      }
      
      protected function sendXML(someData:*) : void
      {
         someData = someData is XML?XML(someData).toXMLString():someData;
         var bytedata:ByteArray = new ByteArray();
         bytedata.writeUTFBytes(someData);
         bytedata.position = 0;
         if(compressionNegotiated)
         {
            bytedata.compress();
            bytedata.position = 0;
         }
         if(socket && socket.connected)
         {
            socket.writeBytes(bytedata,0,bytedata.length);
            socket.flush();
         }
         _outgoingBytes = _outgoingBytes + bytedata.length;
         var event:OutgoingDataEvent = new OutgoingDataEvent();
         event.data = bytedata;
         dispatchEvent(event);
      }
      
      protected function changePassword_result(resultIQ:IQ) : void
      {
         var event:ChangePasswordSuccessEvent = null;
         if(resultIQ.type == IQ.TYPE_RESULT)
         {
            event = new ChangePasswordSuccessEvent();
            dispatchEvent(event);
         }
         else
         {
            dispatchError("unexpected-request","Unexpected Request","wait",400);
         }
      }
      
      protected function getRegistrationFields_result(resultIQ:IQ) : void
      {
         var ext:RegisterExtension = null;
         var fields:Array = null;
         var event:RegistrationFieldsEvent = null;
         try
         {
            ext = resultIQ.getAllExtensionsByNS(RegisterExtension.NS)[0];
            fields = ext.getRequiredFieldNames();
            event = new RegistrationFieldsEvent();
            event.fields = fields;
            event.data = ext;
            dispatchEvent(event);
         }
         catch(err:Error)
         {
            trace(err.getStackTrace());
         }
      }
      
      protected function restartStream() : void
      {
         sendXML(openingStreamTag);
      }
      
      public function sendRegistrationFields(fieldMap:Object, key:String) : void
      {
         var i:* = null;
         var regIQ:IQ = new IQ(new EscapedJID(domain),IQ.TYPE_SET,XMPPStanza.generateID("reg_attempt_"),sendRegistrationFields_result);
         var ext:RegisterExtension = new RegisterExtension(regIQ.getNode());
         for(i in fieldMap)
         {
            ext.setField(i,fieldMap[i]);
         }
         if(key != null)
         {
            ext.key = key;
         }
         regIQ.addExtension(ext);
         send(regIQ);
      }
      
      protected function configureStreamCompression() : void
      {
         var ask:XML = <compress xmlns="http://jabber.org/protocol/compress"><method>zlib</method></compress>;
         sendXML(ask);
      }
      
      protected function beginAuthentication() : void
      {
         if(auth != null)
         {
            sendXML(auth.request);
         }
      }
      
      protected function handleBindError(packet:IQ) : void
      {
      }
      
      public function get compress() : Boolean
      {
         return _compress;
      }
      
      public function set server(value:String) : void
      {
         _server = value;
      }
      
      public function set domain(value:String) : void
      {
         _domain = value;
      }
      
      public function get port() : uint
      {
         return _port;
      }
      
      public function isLoggedIn() : Boolean
      {
         return loggedIn;
      }
      
      public function set queuePresences(value:Boolean) : void
      {
         if(_queuePresences && !value)
         {
            if(presenceQueueTimer)
            {
               presenceQueueTimer.stop();
            }
            flushPresenceQueue(null);
         }
         _queuePresences = value;
      }
      
      protected function createSocket() : void
      {
         socket = new Socket();
         socket.addEventListener(Event.CLOSE,socketClosed);
         socket.addEventListener(Event.CONNECT,socketConnected);
         socket.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         socket.addEventListener(ProgressEvent.SOCKET_DATA,socketDataReceived);
         socket.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onSecurityError);
      }
      
      public function send(o:XMPPStanza) : void
      {
         var root:XMLNode = null;
         var iq:IQ = null;
         if(isActive())
         {
            if(o is IQ)
            {
               iq = o as IQ;
               if(iq.callback != null || iq.errorCallback != null)
               {
                  addIQCallbackToPending(iq.id,iq.callback,iq.errorCallback);
               }
            }
            root = o.getNode().parentNode;
            if(root == null)
            {
               root = new XMLDocument();
            }
            if(o.serialize(root))
            {
               sendXML(root.firstChild);
            }
            else
            {
               throw new SerializationException();
            }
         }
      }
      
      protected function sendRegistrationFields_result(resultIQ:IQ) : void
      {
         var event:RegistrationSuccessEvent = null;
         if(resultIQ.type == IQ.TYPE_RESULT)
         {
            event = new RegistrationSuccessEvent();
            dispatchEvent(event);
         }
         else
         {
            dispatchError("unexpected-request","Unexpected Request","wait",400);
         }
      }
      
      public function get password() : String
      {
         return _password;
      }
      
      public function set ignoreWhiteSpace(value:Boolean) : void
      {
         _ignoreWhitespace = value;
         XML.ignoreWhitespace = value;
      }
      
      public function sendKeepAlive() : void
      {
         var ping:IQ = new IQ(new EscapedJID(server),IQ.TYPE_GET);
         ping.addExtension(new PingExtension());
         send(ping);
      }
      
      public function disconnect() : void
      {
         var disconnectionEvent:DisconnectionEvent = null;
         if(isActive())
         {
            sendXML(closingStreamTag);
            if(socket && socket.connected)
            {
               socket.close();
            }
            active = false;
            loggedIn = false;
            disconnectionEvent = new DisconnectionEvent();
            dispatchEvent(disconnectionEvent);
         }
      }
      
      protected function handleNodeType(node:XMLNode) : void
      {
         var nodeName:String = node.nodeName.toLowerCase();
         switch(nodeName)
         {
            case "stream:stream":
            case "flash:stream":
               _expireTagSearch = false;
               handleStream(node);
               break;
            case "stream:error":
               handleStreamError(node);
               break;
            case "stream:features":
               handleStreamFeatures(node);
               break;
            case "iq":
               handleIQ(node);
               break;
            case "message":
               handleMessage(node);
               break;
            case "presence":
               handlePresence(node);
               break;
            case "challenge":
               handleChallenge(node);
               break;
            case "success":
               handleAuthentication(node);
               break;
            case "compressed":
               compressionNegotiated = true;
               restartStream();
               break;
            case "failure":
               handleAuthentication(node);
               break;
            default:
               dispatchError("undefined-condition","Unknown Error","modify",500);
         }
      }
      
      protected function configureAuthMechanisms(mechanisms:XMLNode) : void
      {
         var authClass:Class = null;
         var mechanism:XMLNode = null;
         for each(mechanism in mechanisms.childNodes)
         {
            authClass = saslMechanisms[mechanism.firstChild.nodeValue];
            if(useAnonymousLogin)
            {
               if(authClass == Anonymous)
               {
                  break;
               }
            }
            else if(authClass != Anonymous && authClass != null)
            {
               break;
            }
         }
         if(!authClass)
         {
            dispatchError("SASL missing","The server is not configured to support any available SASL mechanisms","SASL",-1);
         }
         else
         {
            auth = new authClass(this);
         }
      }
      
      protected function dispatchError(condition:String, message:String, type:String, code:int, extension:Extension = null) : void
      {
         var event:XIFFErrorEvent = new XIFFErrorEvent();
         event.errorCondition = condition;
         event.errorMessage = message;
         event.errorType = type;
         event.errorCode = code;
         event.errorExt = extension;
         dispatchEvent(event);
      }
      
      private function handleSessionResponse(packet:IQ) : void
      {
         dispatchEvent(new LoginEvent());
      }
      
      public function set username(value:String) : void
      {
         _username = value;
      }
      
      protected function socketDataReceived(event:ProgressEvent) : void
      {
         var bytedata:ByteArray = new ByteArray();
         socket.readBytes(bytedata);
         parseDataReceived(bytedata);
      }
      
      protected function handleMessage(node:XMLNode) : Message
      {
         var exts:Array = null;
         var messageEvent:MessageEvent = null;
         var message:Message = new Message();
         if(!message.deserialize(node))
         {
            throw new SerializationException();
         }
         if(message.type == Message.TYPE_ERROR)
         {
            exts = message.getAllExtensions();
            dispatchError(message.errorCondition,message.errorMessage,message.errorType,message.errorCode,exts.length > 0?exts[0]:null);
         }
         else
         {
            messageEvent = new MessageEvent();
            messageEvent.data = message;
            dispatchEvent(messageEvent);
         }
         return message;
      }
      
      protected function handleAuthentication(responseBody:XMLNode) : void
      {
         var status:Object = auth.handleResponse(0,XML(responseBody.toString()));
         if(status.authComplete)
         {
            if(status.authSuccess)
            {
               loggedIn = true;
               restartStream();
            }
            else
            {
               dispatchError("Authentication Error","","",401);
               disconnect();
            }
         }
      }
      
      protected function onIOError(event:IOErrorEvent) : void
      {
         dispatchError("service-unavailable","Service Unavailable","cancel",503);
      }
      
      public function getRegistrationFields() : void
      {
         var regIQ:IQ = new IQ(new EscapedJID(domain),IQ.TYPE_GET,XMPPStanza.generateID("reg_info_"),getRegistrationFields_result);
         regIQ.addExtension(new RegisterExtension(regIQ.getNode()));
         send(regIQ);
      }
      
      public function get domain() : String
      {
         if(!_domain)
         {
            return _server;
         }
         return _domain;
      }
      
      public function set useAnonymousLogin(value:Boolean) : void
      {
         if(!isActive())
         {
            _useAnonymousLogin = value;
         }
      }
      
      protected function socketClosed(event:Event) : void
      {
         active = false;
         loggedIn = false;
         var disconnectionEvent:DisconnectionEvent = new DisconnectionEvent();
         dispatchEvent(disconnectionEvent);
      }
      
      protected function handleStream(node:XMLNode) : void
      {
         var childNode:XMLNode = null;
         sessionID = node.attributes.id;
         domain = node.attributes.from;
         for each(childNode in node.childNodes)
         {
            if(childNode.nodeName == "stream:features")
            {
               handleStreamFeatures(childNode);
            }
         }
      }
      
      public function isActive() : Boolean
      {
         return active;
      }
      
      public function set compress(value:Boolean) : void
      {
         _compress = value;
      }
      
      protected function socketConnected(event:Event) : void
      {
         active = true;
         sendXML(openingStreamTag);
         var connectionEvent:ConnectionSuccessEvent = new ConnectionSuccessEvent();
         dispatchEvent(connectionEvent);
      }
      
      public function get ignoreWhiteSpace() : Boolean
      {
         return _ignoreWhitespace;
      }
      
      public function get queuePresences() : Boolean
      {
         return _queuePresences;
      }
      
      public function get username() : String
      {
         return _username;
      }
      
      protected function handleBindResponse(packet:IQ) : void
      {
         var bind:BindExtension = packet.getExtension("bind") as BindExtension;
         var jid:UnescapedJID = bind.jid.unescaped;
         _resource = jid.resource;
         _username = jid.node;
         _domain = jid.domain;
         establishSession();
      }
      
      public function connect(streamType:uint = 0) : Boolean
      {
         createSocket();
         _streamType = streamType;
         active = false;
         loggedIn = false;
         chooseStreamTags(streamType);
         socket.connect(server,port);
         return true;
      }
      
      public function get incomingBytes() : uint
      {
         return _incomingBytes;
      }
      
      protected function bindConnection() : void
      {
         var bindIQ:IQ = new IQ(null,IQ.TYPE_SET);
         var bindExt:BindExtension = new BindExtension();
         if(resource)
         {
            bindExt.resource = resource;
         }
         bindIQ.addExtension(bindExt);
         bindIQ.callback = handleBindResponse;
         bindIQ.errorCallback = handleBindError;
         send(bindIQ);
      }
      
      protected function parseDataReceived(bytedata:ByteArray) : void
      {
         var data:String = null;
         var pattern:RegExp = null;
         var resultObj:Object = null;
         var pattern2:RegExp = null;
         var resultObj2:Object = null;
         var isComplete:Boolean = false;
         var incomingEvent:IncomingDataEvent = null;
         var len:uint = 0;
         var i:int = 0;
         var currentNode:XMLNode = null;
         _incomingBytes = _incomingBytes + bytedata.length;
         if(compressionNegotiated)
         {
            bytedata.uncompress();
         }
         bytedata.position = 0;
         data = bytedata.readUTFBytes(bytedata.length);
         var rawXML:String = _incompleteRawXML + data;
         var rawData:ByteArray = new ByteArray();
         rawData.writeUTFBytes(rawXML);
         if(!_expireTagSearch)
         {
            pattern = /<flash:stream/;
            resultObj = pattern.exec(rawXML);
            if(resultObj != null)
            {
               rawXML = rawXML.concat("</flash:stream>");
               _expireTagSearch = true;
            }
         }
         if(!_expireTagSearch)
         {
            pattern2 = /<stream:stream/;
            resultObj2 = pattern2.exec(rawXML);
            if(resultObj2 != null)
            {
               rawXML = rawXML.concat("</stream:stream>");
               _expireTagSearch = true;
            }
         }
         var xmlData:XMLDocument = new XMLDocument();
         xmlData.ignoreWhite = _ignoreWhitespace;
         try
         {
            isComplete = true;
            xmlData.parseXML(rawXML);
            _incompleteRawXML = "";
         }
         catch(err:Error)
         {
            isComplete = false;
            _incompleteRawXML = _incompleteRawXML + data;
         }
         if(isComplete)
         {
            incomingEvent = new IncomingDataEvent();
            incomingEvent.data = rawData;
            dispatchEvent(incomingEvent);
            len = xmlData.childNodes.length;
            for(i = 0; i < len; i++)
            {
               currentNode = xmlData.childNodes[i];
               handleNodeType(currentNode);
            }
         }
      }
   }
}
