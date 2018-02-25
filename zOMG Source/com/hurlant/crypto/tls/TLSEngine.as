package com.hurlant.crypto.tls
{
   import com.hurlant.crypto.cert.X509Certificate;
   import com.hurlant.crypto.cert.X509CertificateCollection;
   import com.hurlant.crypto.prng.Random;
   import com.hurlant.util.ArrayUtil;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.ProgressEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   
   public class TLSEngine extends EventDispatcher
   {
      
      private static const HANDSHAKE_HELLO_REQUEST:uint = 0;
      
      public static const SERVER:uint = 0;
      
      public static const CLIENT:uint = 1;
      
      private static const STATE_NEGOTIATING:uint = 1;
      
      private static const HANDSHAKE_CERTIFICATE:uint = 11;
      
      private static const PROTOCOL_ALERT:uint = 21;
      
      private static const HANDSHAKE_HELLO_DONE:uint = 14;
      
      private static const HANDSHAKE_SERVER_HELLO:uint = 2;
      
      private static const HANDSHAKE_FINISHED:uint = 20;
      
      private static const HANDSHAKE_CLIENT_HELLO:uint = 1;
      
      private static const PROTOCOL_CHANGE_CIPHER_SPEC:uint = 20;
      
      private static const HANDSHAKE_CERTIFICATE_VERIFY:uint = 15;
      
      private static const PROTOCOL_APPLICATION_DATA:uint = 23;
      
      private static const PROTOCOL_HANDSHAKE:uint = 22;
      
      private static const STATE_NEW:uint = 0;
      
      private static const STATE_READY:uint = 2;
      
      private static const HANDSHAKE_CLIENT_KEY_EXCHANGE:uint = 16;
      
      private static const HANDSHAKE_SERVER_KEY_EXCHANGE:uint = 12;
      
      private static const STATE_CLOSED:uint = 3;
      
      private static const HANDSHAKE_CERTIFICATE_REQUEST:uint = 13;
       
      
      private var _currentReadState:IConnectionState;
      
      private var _entity:uint;
      
      private var _iStream:IDataInput;
      
      private var _oStream:IDataOutput;
      
      private var _state:uint;
      
      private var _entityHandshakeHandlers:Object;
      
      private var protocolHandlers:Object;
      
      private var _pendingReadState:IConnectionState;
      
      private var _myIdentity:String;
      
      private var _packetQueue:Array;
      
      private var _handshakeRecords:ByteArray;
      
      private var sendClientCert:Boolean = false;
      
      public var protocol_version:uint;
      
      private var _writeScheduler:uint;
      
      private var _handshakePayloads:ByteArray;
      
      private var _currentWriteState:IConnectionState;
      
      private var _otherCertificate:X509Certificate;
      
      private var _config:TLSConfig;
      
      private var _store:X509CertificateCollection;
      
      private var handshakeHandlersServer:Object;
      
      private var _myCertficate:X509Certificate;
      
      private var _pendingWriteState:IConnectionState;
      
      private var handshakeHandlersClient:Object;
      
      private var _otherIdentity:String;
      
      private var _securityParameters:ISecurityParameters;
      
      private var _handshakeQueue:Array;
      
      private var _handshakeCanContinue:Boolean = true;
      
      public function TLSEngine(config:TLSConfig, iStream:IDataInput, oStream:IDataOutput, otherIdentity:String = null)
      {
         _packetQueue = [];
         protocolHandlers = {
            23:parseApplicationData,
            22:parseHandshake,
            21:parseAlert,
            20:parseChangeCipherSpec
         };
         handshakeHandlersServer = {
            0:notifyStateError,
            1:parseHandshakeClientHello,
            2:notifyStateError,
            11:loadCertificates,
            12:notifyStateError,
            13:notifyStateError,
            14:notifyStateError,
            15:notifyStateError,
            16:parseHandshakeClientKeyExchange,
            20:verifyHandshake
         };
         handshakeHandlersClient = {
            0:parseHandshakeHello,
            1:notifyStateError,
            2:parseHandshakeServerHello,
            11:loadCertificates,
            12:parseServerKeyExchange,
            13:setStateRespondWithCertificate,
            14:sendClientAck,
            15:notifyStateError,
            16:notifyStateError,
            20:verifyHandshake
         };
         _handshakeQueue = [];
         super();
         _entity = config.entity;
         _config = config;
         _iStream = iStream;
         _oStream = oStream;
         _otherIdentity = otherIdentity;
         _state = STATE_NEW;
         _entityHandshakeHandlers = _entity == CLIENT?handshakeHandlersClient:handshakeHandlersServer;
         if(_config.version == SSLSecurityParameters.PROTOCOL_VERSION)
         {
            _securityParameters = new SSLSecurityParameters(_entity);
         }
         else
         {
            _securityParameters = new TLSSecurityParameters(_entity,_config.certificate,_config.privateKey);
         }
         protocol_version = _config.version;
         var states:Object = _securityParameters.getConnectionStates();
         _currentReadState = states.read;
         _currentWriteState = states.write;
         _handshakePayloads = new ByteArray();
         _store = new X509CertificateCollection();
      }
      
      private function sendRecord(type:uint, payload:ByteArray) : void
      {
         payload = _currentWriteState.encrypt(type,payload);
         _oStream.writeByte(type);
         _oStream.writeShort(_securityParameters.version);
         _oStream.writeShort(payload.length);
         _oStream.writeBytes(payload,0,payload.length);
         scheduleWrite();
      }
      
      private function verifyHandshake(rec:ByteArray) : void
      {
         var verifyData:ByteArray = new ByteArray();
         if(_securityParameters.version == SSLSecurityParameters.PROTOCOL_VERSION)
         {
            rec.readBytes(verifyData,0,36);
         }
         else
         {
            rec.readBytes(verifyData,0,12);
         }
         var data:ByteArray = _securityParameters.computeVerifyData(1 - _entity,_handshakePayloads);
         if(ArrayUtil.equals(verifyData,data))
         {
            _state = STATE_READY;
            dispatchEvent(new TLSEvent(TLSEvent.READY));
            return;
         }
         throw new TLSError("Invalid Finished mac.",TLSError.bad_record_mac);
      }
      
      public function sendApplicationData(data:ByteArray, offset:uint = 0, length:uint = 0) : void
      {
         var rec:ByteArray = new ByteArray();
         var len:uint = length;
         if(len == 0)
         {
            len = data.length;
         }
         while(len > 16384)
         {
            rec.position = 0;
            rec.writeBytes(data,offset,16384);
            rec.position = 0;
            sendRecord(PROTOCOL_APPLICATION_DATA,rec);
            offset = offset + 16384;
            len = len - 16384;
         }
         rec.position = 0;
         rec.writeBytes(data,offset,len);
         rec.position = 0;
         sendRecord(PROTOCOL_APPLICATION_DATA,rec);
      }
      
      private function parseHandshake(p:ByteArray) : ByteArray
      {
         var n:ByteArray = null;
         if(p.length < 4)
         {
            trace("Handshake packet is way too short. bailing.");
            return null;
         }
         p.position = 0;
         var rec:ByteArray = p;
         var type:uint = rec.readUnsignedByte();
         var tmp:uint = rec.readUnsignedByte();
         var length:uint = tmp << 16 | rec.readUnsignedShort();
         if(length + 4 > p.length)
         {
            trace("Handshake packet is incomplete. bailing.");
            return null;
         }
         if(type != HANDSHAKE_FINISHED)
         {
            _handshakePayloads.writeBytes(p,0,length + 4);
         }
         if(_entityHandshakeHandlers.hasOwnProperty(type))
         {
            if(_entityHandshakeHandlers[type] is Function)
            {
               _entityHandshakeHandlers[type](rec);
            }
            if(length + 4 < p.length)
            {
               n = new ByteArray();
               n.writeBytes(p,length + 4,p.length - (length + 4));
               return n;
            }
            return null;
         }
         throw new TLSError("Unimplemented or unknown handshake type!",TLSError.internal_error);
      }
      
      private function scheduleWrite() : void
      {
         if(_writeScheduler != 0)
         {
            return;
         }
         _writeScheduler = setTimeout(commitWrite,0);
      }
      
      private function findMatch(a1:Array, a2:Array) : int
      {
         var e:uint = 0;
         for(var i:int = 0; i < a1.length; i++)
         {
            e = a1[i];
            if(a2.indexOf(e) > -1)
            {
               return e;
            }
         }
         return -1;
      }
      
      private function handleTLSError(e:TLSError) : void
      {
         close(e);
      }
      
      private function sendClientAck(rec:ByteArray) : void
      {
         if(_handshakeCanContinue)
         {
            if(sendClientCert)
            {
               sendCertificate();
            }
            sendClientKeyExchange();
            if(_config.certificate != null)
            {
               sendCertificateVerify();
            }
            sendChangeCipherSpec();
            sendFinished();
         }
      }
      
      private function sendFinished() : void
      {
         var data:ByteArray = _securityParameters.computeVerifyData(_entity,_handshakePayloads);
         data.position = 0;
         sendHandshake(HANDSHAKE_FINISHED,data.length,data);
      }
      
      private function sendClientHello() : void
      {
         var rec:ByteArray = new ByteArray();
         rec.writeShort(_securityParameters.version);
         var prng:Random = new Random();
         var clientRandom:ByteArray = new ByteArray();
         prng.nextBytes(clientRandom,32);
         _securityParameters.setClientRandom(clientRandom);
         rec.writeBytes(clientRandom,0,32);
         rec.writeByte(32);
         prng.nextBytes(rec,32);
         var cs:Array = _config.cipherSuites;
         rec.writeShort(2 * cs.length);
         for(var i:int = 0; i < cs.length; i++)
         {
            rec.writeShort(cs[i]);
         }
         cs = _config.compressions;
         rec.writeByte(cs.length);
         for(i = 0; i < cs.length; i++)
         {
            rec.writeByte(cs[i]);
         }
         rec.position = 0;
         sendHandshake(HANDSHAKE_CLIENT_HELLO,rec.length,rec);
      }
      
      private function parseAlert(p:ByteArray) : void
      {
         trace("GOT ALERT! type=" + p[1]);
         close();
      }
      
      private function loadCertificates(rec:ByteArray) : void
      {
         var certTrusted:Boolean = false;
         var cert_len:uint = 0;
         var cert:ByteArray = null;
         var x509:X509Certificate = null;
         var commonName:String = null;
         var commonNameRegex:RegExp = null;
         var tmp:uint = rec.readByte();
         var certs_len:uint = tmp << 16 | rec.readShort();
         var certs:Array = [];
         while(certs_len > 0)
         {
            tmp = rec.readByte();
            cert_len = tmp << 16 | rec.readShort();
            cert = new ByteArray();
            rec.readBytes(cert,0,cert_len);
            certs.push(cert);
            certs_len = certs_len - (3 + cert_len);
         }
         var firstCert:X509Certificate = null;
         for(var i:int = 0; i < certs.length; i++)
         {
            x509 = new X509Certificate(certs[i]);
            _store.addCertificate(x509);
            if(firstCert == null)
            {
               firstCert = x509;
            }
         }
         if(_config.trustAllCertificates)
         {
            certTrusted = true;
         }
         else if(_config.trustSelfSignedCertificates)
         {
            certTrusted = firstCert.isSelfSigned(new Date());
         }
         else
         {
            certTrusted = firstCert.isSigned(_store,_config.CAStore);
         }
         if(certTrusted)
         {
            if(_otherIdentity == null || _config.ignoreCommonNameMismatch)
            {
               _otherCertificate = firstCert;
            }
            else
            {
               commonName = _otherIdentity;
               commonNameRegex = new RegExp(commonName.replace(/[\^\\\-$.[\]|()?+{}]/g,"\\$&").replace(/\*/g,"[^.]+"),"gi");
               if(commonNameRegex.exec(_otherIdentity))
               {
                  _otherCertificate = firstCert;
               }
               else if(_config.promptUserForAcceptCert)
               {
                  _handshakeCanContinue = false;
                  dispatchEvent(new TLSEvent(TLSEvent.PROMPT_ACCEPT_CERT));
               }
               else
               {
                  throw new TLSError("Invalid common name: " + firstCert.getCommonName() + ", expected " + _otherIdentity,TLSError.bad_certificate);
               }
            }
         }
         else if(_config.promptUserForAcceptCert)
         {
            _handshakeCanContinue = false;
            dispatchEvent(new TLSEvent(TLSEvent.PROMPT_ACCEPT_CERT));
         }
         else
         {
            throw new TLSError("Cannot verify certificate",TLSError.bad_certificate);
         }
      }
      
      private function notifyStateError(rec:ByteArray) : void
      {
         throw new TLSError("Invalid handshake state for a TLS Entity type of " + _entity,TLSError.internal_error);
      }
      
      private function parseHandshakeServerHello(rec:IDataInput) : void
      {
         var ver:uint = rec.readShort();
         if(ver != _securityParameters.version)
         {
            throw new TLSError("Unsupported TLS version: " + ver.toString(16),TLSError.protocol_version);
         }
         var random:ByteArray = new ByteArray();
         rec.readBytes(random,0,32);
         var session_length:uint = rec.readByte();
         var session:ByteArray = new ByteArray();
         if(session_length > 0)
         {
            rec.readBytes(session,0,session_length);
         }
         _securityParameters.setCipher(rec.readShort());
         _securityParameters.setCompression(rec.readByte());
         _securityParameters.setServerRandom(random);
      }
      
      public function acceptPeerCertificate() : void
      {
         _handshakeCanContinue = true;
         sendClientAck(null);
      }
      
      private function parseHandshakeHello(rec:ByteArray) : void
      {
         if(_state != STATE_READY)
         {
            trace("Received an HELLO_REQUEST before being in state READY. ignoring.");
            return;
         }
         _handshakePayloads = new ByteArray();
         startHandshake();
      }
      
      private function sendClientKeyExchange() : void
      {
         var p:ByteArray = null;
         var prng:Random = null;
         var preMasterSecret:ByteArray = null;
         var enc_key:ByteArray = null;
         var rec:ByteArray = null;
         var o:Object = null;
         if(_securityParameters.useRSA)
         {
            p = new ByteArray();
            p.writeShort(_securityParameters.version);
            prng = new Random();
            prng.nextBytes(p,46);
            p.position = 0;
            preMasterSecret = new ByteArray();
            preMasterSecret.writeBytes(p,0,p.length);
            preMasterSecret.position = 0;
            _securityParameters.setPreMasterSecret(preMasterSecret);
            enc_key = new ByteArray();
            _otherCertificate.getPublicKey().encrypt(preMasterSecret,enc_key,preMasterSecret.length);
            enc_key.position = 0;
            rec = new ByteArray();
            if(_securityParameters.version > 768)
            {
               rec.writeShort(enc_key.length);
            }
            rec.writeBytes(enc_key,0,enc_key.length);
            rec.position = 0;
            sendHandshake(HANDSHAKE_CLIENT_KEY_EXCHANGE,rec.length,rec);
            o = _securityParameters.getConnectionStates();
            _pendingReadState = o.read;
            _pendingWriteState = o.write;
            return;
         }
         throw new TLSError("Non-RSA Client Key Exchange not implemented.",TLSError.internal_error);
      }
      
      private function parseHandshakeClientHello(rec:IDataInput) : void
      {
         var ret:Object = null;
         var ext_total_length:uint = 0;
         var ext_type:uint = 0;
         var ext_length:uint = 0;
         var ext_data:ByteArray = null;
         var ver:uint = rec.readShort();
         if(ver != _securityParameters.version)
         {
            throw new TLSError("Unsupported TLS version: " + ver.toString(16),TLSError.protocol_version);
         }
         var random:ByteArray = new ByteArray();
         rec.readBytes(random,0,32);
         var session_length:uint = rec.readByte();
         var session:ByteArray = new ByteArray();
         if(session_length > 0)
         {
            rec.readBytes(session,0,session_length);
         }
         var suites:Array = [];
         var suites_length:uint = rec.readShort();
         for(var i:uint = 0; i < suites_length / 2; i++)
         {
            suites.push(rec.readShort());
         }
         var compressions:Array = [];
         var comp_length:uint = rec.readByte();
         for(i = 0; i < comp_length; i++)
         {
            compressions.push(rec.readByte());
         }
         ret = {
            "random":random,
            "session":session,
            "suites":suites,
            "compressions":compressions
         };
         var sofar:uint = 2 + 32 + 1 + session_length + 2 + suites_length + 1 + comp_length;
         var extensions:Array = [];
         if(sofar < length)
         {
            ext_total_length = rec.readShort();
            while(ext_total_length > 0)
            {
               ext_type = rec.readShort();
               ext_length = rec.readShort();
               ext_data = new ByteArray();
               rec.readBytes(ext_data,0,ext_length);
               ext_total_length = ext_total_length - (4 + ext_length);
               extensions.push({
                  "type":ext_type,
                  "length":ext_length,
                  "data":ext_data
               });
            }
         }
         ret.ext = extensions;
         sendServerHello(ret);
         sendCertificate();
         sendServerHelloDone();
      }
      
      private function startHandshake() : void
      {
         _state = STATE_NEGOTIATING;
         sendClientHello();
      }
      
      private function sendServerHello(v:Object) : void
      {
         var cipher:int = findMatch(_config.cipherSuites,v.suites);
         if(cipher == -1)
         {
            throw new TLSError("No compatible cipher found.",TLSError.handshake_failure);
         }
         _securityParameters.setCipher(cipher);
         var comp:int = findMatch(_config.compressions,v.compressions);
         if(comp == 1)
         {
            throw new TLSError("No compatible compression method found.",TLSError.handshake_failure);
         }
         _securityParameters.setCompression(comp);
         _securityParameters.setClientRandom(v.random);
         var rec:ByteArray = new ByteArray();
         rec.writeShort(_securityParameters.version);
         var prng:Random = new Random();
         var serverRandom:ByteArray = new ByteArray();
         prng.nextBytes(serverRandom,32);
         _securityParameters.setServerRandom(serverRandom);
         rec.writeBytes(serverRandom,0,32);
         rec.writeByte(32);
         prng.nextBytes(rec,32);
         rec.writeShort(v.suites[0]);
         rec.writeByte(v.compressions[0]);
         rec.position = 0;
         sendHandshake(HANDSHAKE_SERVER_HELLO,rec.length,rec);
      }
      
      public function dataAvailable(e:* = null) : void
      {
         if(_state == STATE_CLOSED)
         {
            return;
         }
         try
         {
            parseRecord(_iStream);
         }
         catch(e:TLSError)
         {
            handleTLSError(e);
         }
      }
      
      public function rejectPeerCertificate() : void
      {
         throw new TLSError("Peer certificate not accepted!",TLSError.bad_certificate);
      }
      
      private function sendCertificateVerify() : void
      {
         var rec:ByteArray = new ByteArray();
         var data:ByteArray = _securityParameters.computeCertificateVerify(_entity,_handshakePayloads);
         data.position = 0;
         sendHandshake(HANDSHAKE_CERTIFICATE_VERIFY,data.length,data);
      }
      
      private function parseHandshakeClientKeyExchange(rec:ByteArray) : void
      {
         var len:uint = 0;
         var cipher:ByteArray = null;
         var preMasterSecret:ByteArray = null;
         var o:Object = null;
         if(_securityParameters.useRSA)
         {
            len = rec.readShort();
            cipher = new ByteArray();
            rec.readBytes(cipher,0,len);
            preMasterSecret = new ByteArray();
            _config.privateKey.decrypt(cipher,preMasterSecret,len);
            _securityParameters.setPreMasterSecret(preMasterSecret);
            o = _securityParameters.getConnectionStates();
            _pendingReadState = o.read;
            _pendingWriteState = o.write;
            return;
         }
         throw new TLSError("parseHandshakeClientKeyExchange not implemented for DH modes.",TLSError.internal_error);
      }
      
      private function sendHandshake(type:uint, len:uint, payload:IDataInput) : void
      {
         var rec:ByteArray = new ByteArray();
         rec.writeByte(type);
         rec.writeByte(0);
         rec.writeShort(len);
         payload.readBytes(rec,rec.position,len);
         _handshakePayloads.writeBytes(rec,0,rec.length);
         sendRecord(PROTOCOL_HANDSHAKE,rec);
      }
      
      private function sendServerHelloDone() : void
      {
         var rec:ByteArray = new ByteArray();
         sendHandshake(HANDSHAKE_HELLO_DONE,rec.length,rec);
      }
      
      public function get peerCertificate() : X509Certificate
      {
         return _otherCertificate;
      }
      
      private function setStateRespondWithCertificate(r:ByteArray = null) : void
      {
         sendClientCert = true;
      }
      
      private function parseChangeCipherSpec(p:ByteArray) : void
      {
         p.readUnsignedByte();
         if(_pendingReadState == null)
         {
            throw new TLSError("Not ready to Change Cipher Spec, damnit.",TLSError.unexpected_message);
         }
         _currentReadState = _pendingReadState;
         _pendingReadState = null;
      }
      
      private function parseRecord(stream:IDataInput) : void
      {
         var p:ByteArray = null;
         var type:uint = 0;
         var ver:uint = 0;
         var length:uint = 0;
         var actualLength:uint = 0;
         var packet:Object = null;
         while(_state != STATE_CLOSED && stream.bytesAvailable > 4)
         {
            if(_packetQueue.length > 0)
            {
               packet = _packetQueue.shift();
               p = packet.data;
               if(stream.bytesAvailable + p.length >= packet.length)
               {
                  stream.readBytes(p,p.length,packet.length - p.length);
                  parseOneRecord(packet.type,packet.length,p);
               }
               else
               {
                  stream.readBytes(p,p.length,stream.bytesAvailable);
                  _packetQueue.push(packet);
               }
            }
            else
            {
               type = stream.readByte();
               ver = stream.readShort();
               length = stream.readShort();
               if(length > 16384 + 2048)
               {
                  throw new TLSError("Excessive TLS Record length: " + length,TLSError.record_overflow);
               }
               if(ver != _securityParameters.version)
               {
                  throw new TLSError("Unsupported TLS version: " + ver.toString(16),TLSError.protocol_version);
               }
               p = new ByteArray();
               actualLength = Math.min(stream.bytesAvailable,length);
               stream.readBytes(p,0,actualLength);
               if(actualLength == length)
               {
                  parseOneRecord(type,length,p);
               }
               else
               {
                  _packetQueue.push({
                     "type":type,
                     "length":length,
                     "data":p
                  });
               }
            }
         }
      }
      
      private function parseApplicationData(p:ByteArray) : void
      {
         if(_state != STATE_READY)
         {
            throw new TLSError("Too soon for data!",TLSError.unexpected_message);
         }
         dispatchEvent(new TLSEvent(TLSEvent.DATA,p));
      }
      
      private function sendChangeCipherSpec() : void
      {
         var rec:ByteArray = new ByteArray();
         rec[0] = 1;
         sendRecord(PROTOCOL_CHANGE_CIPHER_SPEC,rec);
         _currentWriteState = _pendingWriteState;
         _pendingWriteState = null;
      }
      
      public function start() : void
      {
         if(_entity == CLIENT)
         {
            try
            {
               startHandshake();
            }
            catch(e:TLSError)
            {
               handleTLSError(e);
            }
         }
      }
      
      private function parseOneRecord(type:uint, length:uint, p:ByteArray) : void
      {
         p = _currentReadState.decrypt(type,length,p);
         if(p.length > 16384)
         {
            throw new TLSError("Excessive Decrypted TLS Record length: " + p.length,TLSError.record_overflow);
         }
         if(protocolHandlers.hasOwnProperty(type))
         {
            while(p != null)
            {
               p = protocolHandlers[type](p);
            }
            return;
         }
         throw new TLSError("Unsupported TLS Record Content Type: " + type.toString(16),TLSError.unexpected_message);
      }
      
      private function sendCertificate(r:ByteArray = null) : void
      {
         var len:uint = 0;
         var len2:uint = 0;
         var cert:ByteArray = _config.certificate;
         var rec:ByteArray = new ByteArray();
         if(cert != null)
         {
            len = cert.length;
            len2 = cert.length + 3;
            rec.writeByte(len2 >> 16);
            rec.writeShort(len2 & 65535);
            rec.writeByte(len >> 16);
            rec.writeShort(len & 65535);
            rec.writeBytes(cert);
         }
         else
         {
            rec.writeShort(0);
            rec.writeByte(0);
         }
         rec.position = 0;
         sendHandshake(HANDSHAKE_CERTIFICATE,rec.length,rec);
      }
      
      private function commitWrite() : void
      {
         clearTimeout(_writeScheduler);
         _writeScheduler = 0;
         if(_state != STATE_CLOSED)
         {
            dispatchEvent(new ProgressEvent(ProgressEvent.SOCKET_DATA));
         }
      }
      
      public function close(e:TLSError = null) : void
      {
         if(_state == STATE_CLOSED)
         {
            return;
         }
         var rec:ByteArray = new ByteArray();
         if(e == null && _state != STATE_READY)
         {
            rec[0] = 1;
            rec[1] = TLSError.user_canceled;
            sendRecord(PROTOCOL_ALERT,rec);
         }
         rec[0] = 2;
         if(e == null)
         {
            rec[1] = TLSError.close_notify;
         }
         else
         {
            rec[1] = e.errorID;
            trace("TLSEngine shutdown triggered by " + e);
         }
         sendRecord(PROTOCOL_ALERT,rec);
         _state = STATE_CLOSED;
         dispatchEvent(new Event(Event.CLOSE));
      }
      
      private function parseServerKeyExchange(rec:ByteArray) : void
      {
         throw new TLSError("ServerKeyExchange is currently unimplemented!",TLSError.internal_error);
      }
      
      private function parseClientKeyExchange(rec:ByteArray) : void
      {
         throw new TLSError("ClientKeyExchange is currently unimplemented!",TLSError.internal_error);
      }
   }
}
