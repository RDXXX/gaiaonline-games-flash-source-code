package org.igniterealtime.xiff.core
{
   import com.hurlant.crypto.tls.TLSConfig;
   import com.hurlant.crypto.tls.TLSSocket;
   import flash.errors.IOError;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.xml.XMLNode;
   import org.igniterealtime.xiff.events.DisconnectionEvent;
   
   public class XMPPTLSConnection extends XMPPConnection
   {
       
      
      private var _config:TLSConfig;
      
      private var _tlsEnabled:Boolean = false;
      
      private var _tlsSocket:TLSSocket;
      
      private var _tlsRequired:Boolean = false;
      
      public function XMPPTLSConnection()
      {
         super();
      }
      
      protected function removeSocketEventListeners() : void
      {
         socket.removeEventListener(Event.CONNECT,socketConnected);
         socket.removeEventListener(Event.CLOSE,socketClosed);
         socket.removeEventListener(ProgressEvent.SOCKET_DATA,socketDataReceived);
         socket.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
         socket.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,onSecurityError);
      }
      
      override protected function handleNodeType(node:XMLNode) : void
      {
         var nodeName:String = node.nodeName.toLowerCase();
         switch(nodeName)
         {
            case "proceed":
               startTLS();
               break;
            default:
               super.handleNodeType(node);
         }
      }
      
      protected function removeTLSSocketEventListeners() : void
      {
         _tlsSocket.removeEventListener(Event.CONNECT,socketConnected);
         _tlsSocket.removeEventListener(Event.CLOSE,socketClosed);
         _tlsSocket.removeEventListener(ProgressEvent.SOCKET_DATA,socketDataReceived);
         _tlsSocket.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
         _tlsSocket.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,onSecurityError);
         _tlsSocket.removeEventListener(TLSSocket.ACCEPT_PEER_CERT_PROMPT,onAcceptPeerCertPrompt);
      }
      
      private function configureTLSSocket() : void
      {
         _tlsSocket = new TLSSocket();
         _tlsSocket.addEventListener(Event.CLOSE,socketClosed);
         _tlsSocket.addEventListener(Event.CONNECT,socketConnected);
         _tlsSocket.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         _tlsSocket.addEventListener(ProgressEvent.SOCKET_DATA,socketDataReceived);
         _tlsSocket.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onSecurityError);
         _tlsSocket.addEventListener(TLSSocket.ACCEPT_PEER_CERT_PROMPT,onAcceptPeerCertPrompt);
         if(_config != null)
         {
            _tlsSocket.setTLSConfig(_config);
         }
      }
      
      public function get config() : TLSConfig
      {
         return _config;
      }
      
      override public function connect(streamType:uint = 0) : Boolean
      {
         if(_tlsEnabled)
         {
            removeTLSSocketEventListeners();
            _tlsEnabled = false;
         }
         if(active)
         {
            removeSocketEventListeners();
            active = false;
         }
         loggedIn = false;
         createSocket();
         _streamType = streamType;
         chooseStreamTags(streamType);
         socket.connect(server,port);
         return true;
      }
      
      public function set config(value:TLSConfig) : void
      {
         _config = value;
         if(_tlsSocket != null && _config != null)
         {
            _tlsSocket.setTLSConfig(_config);
         }
      }
      
      override protected function handleStreamFeatures(node:XMLNode) : void
      {
         var feature:XMLNode = null;
         if(loggedIn)
         {
            bindConnection();
         }
         else
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
            if((_tlsEnabled && _tlsRequired || !_tlsRequired) && (compress && compressionNegotiated || !compress))
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
      }
      
      public function get tls() : Boolean
      {
         return _tlsRequired;
      }
      
      private function onAcceptPeerCertPrompt(event:Event) : void
      {
         trace("onAcceptPeerCertPrompt",event.toString());
      }
      
      protected function startTLS() : void
      {
         removeSocketEventListeners();
         configureTLSSocket();
         _tlsSocket.startTLS(socket,this.server,this._config);
         socket = _tlsSocket;
         _tlsEnabled = true;
         sendXML(openingStreamTag);
      }
      
      override protected function handleStreamTLS(node:XMLNode) : void
      {
         if(node.firstChild && node.firstChild.nodeName == "required")
         {
            _tlsRequired = true;
         }
         if(_tlsRequired)
         {
            this.sendXML("<starttls xmlns=\'urn:ietf:params:xml:ns:xmpp-tls\' />");
         }
      }
      
      override public function disconnect() : void
      {
         var disconnectionEvent:DisconnectionEvent = null;
         if(isActive())
         {
            sendXML(closingStreamTag);
            active = false;
            loggedIn = false;
            try
            {
               if(_tlsEnabled)
               {
                  this.removeTLSSocketEventListeners();
                  _tlsSocket.close();
               }
               else
               {
                  this.removeSocketEventListeners();
                  socket.close();
               }
            }
            catch(e:IOError)
            {
               dispatchError("service-unavailable","Service Unavailable","cancel",503);
            }
            disconnectionEvent = new DisconnectionEvent();
            dispatchEvent(disconnectionEvent);
         }
      }
      
      public function set tls(tlsBool:Boolean) : void
      {
         _tlsRequired = tlsBool;
      }
   }
}
