package com.hurlant.crypto.tls
{
   import com.hurlant.crypto.cert.X509Certificate;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.ObjectEncoding;
   import flash.net.Socket;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   
   public class TLSSocket extends Socket implements IDataInput, IDataOutput
   {
      
      public static const ACCEPT_PEER_CERT_PROMPT:String = "acceptPeerCertificatePrompt";
       
      
      private var _iStream:ByteArray;
      
      private var _iStream_cursor:uint;
      
      private var _config:TLSConfig;
      
      private var _engine:TLSEngine;
      
      private var _socket:Socket;
      
      private var _oStream:ByteArray;
      
      private var _ready:Boolean;
      
      private var _endian:String;
      
      private var _writeScheduler:uint;
      
      private var _objectEncoding:uint;
      
      public function TLSSocket(host:String = null, port:int = 0, config:TLSConfig = null)
      {
         super();
         _config = config;
         if(host != null && port != 0)
         {
            connect(host,port);
         }
      }
      
      public function reinitialize(host:String, config:TLSConfig) : void
      {
         var ba:ByteArray = new ByteArray();
         if(_socket.bytesAvailable > 0)
         {
            _socket.readBytes(ba,0,_socket.bytesAvailable);
         }
         _iStream = new ByteArray();
         _oStream = new ByteArray();
         _iStream_cursor = 0;
         objectEncoding = ObjectEncoding.DEFAULT;
         endian = Endian.BIG_ENDIAN;
         if(config == null)
         {
            var config:TLSConfig = new TLSConfig(TLSEngine.CLIENT);
         }
         _engine = new TLSEngine(config,_socket,_socket,host);
         _engine.addEventListener(TLSEvent.DATA,onTLSData);
         _engine.addEventListener(TLSEvent.READY,onTLSReady);
         _engine.addEventListener(Event.CLOSE,onTLSClose);
         _engine.addEventListener(ProgressEvent.SOCKET_DATA,function(e:*):void
         {
            _socket.flush();
         });
         _socket.addEventListener(ProgressEvent.SOCKET_DATA,_engine.dataAvailable);
         _engine.addEventListener(TLSEvent.PROMPT_ACCEPT_CERT,onAcceptCert);
         _ready = false;
         _engine.start();
      }
      
      override public function flush() : void
      {
         commitWrite();
         _socket.flush();
      }
      
      override public function readDouble() : Number
      {
         return _iStream.readDouble();
      }
      
      override public function get connected() : Boolean
      {
         return _socket.connected;
      }
      
      private function init(socket:Socket, config:TLSConfig, host:String) : void
      {
         _iStream = new ByteArray();
         _oStream = new ByteArray();
         _iStream_cursor = 0;
         objectEncoding = ObjectEncoding.DEFAULT;
         endian = Endian.BIG_ENDIAN;
         _socket = socket;
         _socket.addEventListener(Event.CONNECT,dispatchEvent);
         _socket.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         _socket.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         _socket.addEventListener(Event.CLOSE,dispatchEvent);
         if(config == null)
         {
            var config:TLSConfig = new TLSConfig(TLSEngine.CLIENT);
         }
         _engine = new TLSEngine(config,_socket,_socket,host);
         _engine.addEventListener(TLSEvent.DATA,onTLSData);
         _engine.addEventListener(TLSEvent.PROMPT_ACCEPT_CERT,onAcceptCert);
         _engine.addEventListener(TLSEvent.READY,onTLSReady);
         _engine.addEventListener(Event.CLOSE,onTLSClose);
         _engine.addEventListener(ProgressEvent.SOCKET_DATA,function(e:*):void
         {
            if(connected)
            {
               _socket.flush();
            }
         });
         _socket.addEventListener(ProgressEvent.SOCKET_DATA,_engine.dataAvailable);
         _ready = false;
      }
      
      override public function writeUTFBytes(value:String) : void
      {
         _oStream.writeUTFBytes(value);
         scheduleWrite();
      }
      
      override public function readUTF() : String
      {
         return _iStream.readUTF();
      }
      
      public function startTLS(socket:Socket, host:String, config:TLSConfig = null) : void
      {
         if(!socket.connected)
         {
            throw new Error("Cannot STARTTLS on a socket that isn\'t connected.");
         }
         init(socket,config,host);
         _engine.start();
      }
      
      override public function set endian(value:String) : void
      {
         _endian = value;
         _iStream.endian = value;
         _oStream.endian = value;
      }
      
      override public function readUnsignedInt() : uint
      {
         return _iStream.readUnsignedInt();
      }
      
      override public function writeBoolean(value:Boolean) : void
      {
         _oStream.writeBoolean(value);
         scheduleWrite();
      }
      
      public function rejectPeerCertificate(event:Event) : void
      {
         _engine.rejectPeerCertificate();
      }
      
      override public function writeUTF(value:String) : void
      {
         _oStream.writeUTF(value);
         scheduleWrite();
      }
      
      override public function readUnsignedByte() : uint
      {
         return _iStream.readUnsignedByte();
      }
      
      public function releaseSocket() : void
      {
         _socket.removeEventListener(Event.CONNECT,dispatchEvent);
         _socket.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         _socket.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         _socket.removeEventListener(Event.CLOSE,dispatchEvent);
         _socket.removeEventListener(ProgressEvent.SOCKET_DATA,_engine.dataAvailable);
         _socket = null;
      }
      
      private function onTLSData(event:TLSEvent) : void
      {
         if(_iStream.position == _iStream.length)
         {
            _iStream.position = 0;
            _iStream.length = 0;
            _iStream_cursor = 0;
         }
         var cursor:uint = _iStream.position;
         _iStream.position = _iStream_cursor;
         _iStream.writeBytes(event.data);
         _iStream_cursor = _iStream.position;
         _iStream.position = cursor;
         dispatchEvent(new ProgressEvent(ProgressEvent.SOCKET_DATA,false,false,event.data.length));
      }
      
      private function onTLSReady(event:TLSEvent) : void
      {
         _ready = true;
         scheduleWrite();
      }
      
      override public function writeUnsignedInt(value:uint) : void
      {
         _oStream.writeUnsignedInt(value);
         scheduleWrite();
      }
      
      override public function readFloat() : Number
      {
         return _iStream.readFloat();
      }
      
      override public function set objectEncoding(value:uint) : void
      {
         _objectEncoding = value;
         _iStream.objectEncoding = value;
         _oStream.objectEncoding = value;
      }
      
      override public function readObject() : *
      {
         return _iStream.readObject();
      }
      
      override public function readInt() : int
      {
         return _iStream.readInt();
      }
      
      override public function readBytes(bytes:ByteArray, offset:uint = 0, length:uint = 0) : void
      {
         return _iStream.readBytes(bytes,offset,length);
      }
      
      override public function readShort() : int
      {
         return _iStream.readShort();
      }
      
      override public function writeByte(value:int) : void
      {
         _oStream.writeByte(value);
         scheduleWrite();
      }
      
      private function scheduleWrite() : void
      {
         if(_writeScheduler != 0)
         {
            return;
         }
         _writeScheduler = setTimeout(commitWrite,0);
      }
      
      public function onAcceptCert(event:TLSEvent) : void
      {
         dispatchEvent(new TLSSocketEvent(_engine.peerCertificate));
      }
      
      override public function writeInt(value:int) : void
      {
         _oStream.writeInt(value);
         scheduleWrite();
      }
      
      override public function readUnsignedShort() : uint
      {
         return _iStream.readUnsignedShort();
      }
      
      override public function get bytesAvailable() : uint
      {
         return _iStream.bytesAvailable;
      }
      
      public function getPeerCertificate() : X509Certificate
      {
         return _engine.peerCertificate;
      }
      
      override public function get endian() : String
      {
         return _endian;
      }
      
      public function acceptPeerCertificate(event:Event) : void
      {
         _engine.acceptPeerCertificate();
      }
      
      override public function writeDouble(value:Number) : void
      {
         _oStream.writeDouble(value);
         scheduleWrite();
      }
      
      private function onTLSClose(event:Event) : void
      {
         dispatchEvent(event);
         close();
      }
      
      override public function readByte() : int
      {
         return _iStream.readByte();
      }
      
      override public function readBoolean() : Boolean
      {
         return _iStream.readBoolean();
      }
      
      override public function writeFloat(value:Number) : void
      {
         _oStream.writeFloat(value);
         scheduleWrite();
      }
      
      override public function writeBytes(bytes:ByteArray, offset:uint = 0, length:uint = 0) : void
      {
         _oStream.writeBytes(bytes,offset,length);
         scheduleWrite();
      }
      
      override public function readUTFBytes(length:uint) : String
      {
         return _iStream.readUTFBytes(length);
      }
      
      override public function get objectEncoding() : uint
      {
         return _objectEncoding;
      }
      
      override public function writeMultiByte(value:String, charSet:String) : void
      {
         _oStream.writeMultiByte(value,charSet);
         scheduleWrite();
      }
      
      public function setTLSConfig(config:TLSConfig) : void
      {
         _config = config;
      }
      
      override public function writeShort(value:int) : void
      {
         _oStream.writeShort(value);
         scheduleWrite();
      }
      
      private function commitWrite() : void
      {
         clearTimeout(_writeScheduler);
         _writeScheduler = 0;
         if(_ready)
         {
            _engine.sendApplicationData(_oStream);
            _oStream.length = 0;
         }
      }
      
      override public function connect(host:String, port:int) : void
      {
         init(new Socket(),_config,host);
         _socket.connect(host,port);
         _engine.start();
      }
      
      override public function readMultiByte(length:uint, charSet:String) : String
      {
         return _iStream.readMultiByte(length,charSet);
      }
      
      override public function close() : void
      {
         _ready = false;
         _engine.close();
         if(_socket.connected)
         {
            _socket.flush();
            _socket.close();
         }
      }
      
      override public function writeObject(object:*) : void
      {
         _oStream.writeObject(object);
         scheduleWrite();
      }
   }
}
