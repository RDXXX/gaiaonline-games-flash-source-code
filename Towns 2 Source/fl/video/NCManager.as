package fl.video
{
   import flash.events.NetStatusEvent;
   import flash.events.TimerEvent;
   import flash.net.NetConnection;
   import flash.net.ObjectEncoding;
   import flash.net.Responder;
   import flash.utils.Timer;
   
   use namespace flvplayback_internal;
   
   public class NCManager implements INCManager
   {
      
      public static const VERSION:String = "2.5.0.26";
      
      public static const SHORT_VERSION:String = "2.5";
       
      
      flvplayback_internal var _owner:VideoPlayer;
      
      flvplayback_internal var _contentPath:String;
      
      flvplayback_internal var _protocol:String;
      
      flvplayback_internal var _serverName:String;
      
      flvplayback_internal var _portNumber:String;
      
      flvplayback_internal var _wrappedURL:String;
      
      flvplayback_internal var _appName:String;
      
      flvplayback_internal var _streamName:String;
      
      flvplayback_internal var _streamLength:Number;
      
      flvplayback_internal var _streamWidth:int;
      
      flvplayback_internal var _streamHeight:int;
      
      flvplayback_internal var _streams:Array;
      
      flvplayback_internal var _isRTMP:Boolean;
      
      flvplayback_internal var _smilMgr:SMILManager;
      
      flvplayback_internal var _fpadMgr:FPADManager;
      
      flvplayback_internal var _fpadZone:Number;
      
      flvplayback_internal var _objectEncoding:uint;
      
      flvplayback_internal var _proxyType:String;
      
      flvplayback_internal var _bitrate:Number;
      
      public var fallbackServerName:String;
      
      flvplayback_internal var _timeoutTimer:Timer;
      
      public const DEFAULT_TIMEOUT:uint = 60000;
      
      flvplayback_internal var _payload:Number;
      
      flvplayback_internal var _autoSenseBW:Boolean;
      
      flvplayback_internal var _nc:NetConnection;
      
      flvplayback_internal var _ncUri:String;
      
      flvplayback_internal var _ncConnected:Boolean;
      
      flvplayback_internal var _tryNC:Array;
      
      flvplayback_internal var _tryNCTimer:Timer;
      
      flvplayback_internal var _connTypeCounter:uint;
      
      flvplayback_internal var _isDynamicStream:Boolean = false;
      
      flvplayback_internal var _fpcaps:FPMediaCapabilities;
      
      flvplayback_internal var _fmscaps:FMSCapabilities;
      
      flvplayback_internal var _queryString:String;
      
      public function NCManager()
      {
         super();
         this._fpadZone = NaN;
         this._objectEncoding = ObjectEncoding.AMF0;
         this._proxyType = "best";
         this._timeoutTimer = new Timer(this.DEFAULT_TIMEOUT);
         this._timeoutTimer.addEventListener(TimerEvent.TIMER,this._onFMSConnectTimeOut);
         this._tryNCTimer = new Timer(1500,1);
         this._tryNCTimer.addEventListener(TimerEvent.TIMER,this.nextConnect);
         this.initNCInfo();
         this.initOtherInfo();
         this._nc = null;
         this._ncConnected = false;
         this._fpcaps = new FPMediaCapabilities();
      }
      
      flvplayback_internal static function stripFrontAndBackWhiteSpace(param1:String) : String
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = param1.length;
         var _loc4_:int = 0;
         var _loc5_:int = _loc3_;
         _loc2_ = 0;
         loop0:
         while(_loc2_ < _loc3_)
         {
            switch(param1.charCodeAt(_loc2_))
            {
               case 9:
               case 10:
               case 13:
               case 32:
                  _loc2_++;
                  continue;
               default:
                  _loc4_ = _loc2_;
                  break loop0;
            }
         }
         _loc2_ = _loc3_;
         loop1:
         while(_loc2_ >= 0)
         {
            switch(param1.charCodeAt(_loc2_))
            {
               case 9:
               case 10:
               case 13:
               case 32:
                  _loc2_--;
                  continue;
               default:
                  _loc5_ = _loc2_ + 1;
                  break loop1;
            }
         }
         if(_loc5_ <= _loc4_)
         {
            return "";
         }
         return param1.slice(_loc4_,_loc5_);
      }
      
      flvplayback_internal function initNCInfo() : void
      {
         this._isRTMP = false;
         this._serverName = null;
         this._wrappedURL = null;
         this._portNumber = null;
         this._appName = null;
      }
      
      flvplayback_internal function initOtherInfo() : void
      {
         this._contentPath = null;
         this._streamName = null;
         this._streamWidth = -1;
         this._streamHeight = -1;
         this._streamLength = NaN;
         this._streams = null;
         this._autoSenseBW = false;
         this._payload = 0;
         this._connTypeCounter = 0;
         this.cleanConns();
      }
      
      public function get timeout() : uint
      {
         return this._timeoutTimer.delay;
      }
      
      public function set timeout(param1:uint) : void
      {
         this._timeoutTimer.delay = param1;
      }
      
      public function get bitrate() : Number
      {
         return this._bitrate;
      }
      
      public function set bitrate(param1:Number) : void
      {
         if(!this._isRTMP)
         {
            this._bitrate = param1;
         }
      }
      
      public function get videoPlayer() : VideoPlayer
      {
         return this._owner;
      }
      
      public function set videoPlayer(param1:VideoPlayer) : void
      {
         this._owner = param1;
      }
      
      public function get netConnection() : NetConnection
      {
         return this._nc;
      }
      
      public function get streamName() : String
      {
         return this._streamName;
      }
      
      public function get streams() : Array
      {
         return this._streams;
      }
      
      public function get isRTMP() : Boolean
      {
         return this._isRTMP;
      }
      
      public function get streamLength() : Number
      {
         return this._streamLength;
      }
      
      public function get streamWidth() : int
      {
         return this._streamWidth;
      }
      
      public function get streamHeight() : int
      {
         return this._streamHeight;
      }
      
      public function getProperty(param1:String) : *
      {
         switch(param1)
         {
            case "fallbackServerName":
               return this.fallbackServerName;
            case "fpadZone":
               return this._fpadZone;
            case "objectEncoding":
               return this._objectEncoding;
            case "proxyType":
               return this._proxyType;
            default:
               throw new VideoError(VideoError.UNSUPPORTED_PROPERTY,param1);
         }
      }
      
      public function get isDynamicStream() : Boolean
      {
         return this._isDynamicStream;
      }
      
      public function setProperty(param1:String, param2:*) : void
      {
         switch(param1)
         {
            case "fallbackServerName":
               this.fallbackServerName = String(param2);
               break;
            case "fpadZone":
               this._fpadZone = Number(param2);
               break;
            case "objectEncoding":
               this._objectEncoding = uint(param2);
               break;
            case "proxyType":
               this._proxyType = String(param2);
               break;
            default:
               throw new VideoError(VideoError.UNSUPPORTED_PROPERTY,param1);
         }
      }
      
      public function connectToURL(param1:String) : Boolean
      {
         var canReuse:Boolean = false;
         var name:String = null;
         var url:String = param1;
         this.initOtherInfo();
         this._contentPath = url;
         if(this._contentPath == null || this._contentPath == "")
         {
            throw new VideoError(VideoError.INVALID_SOURCE);
         }
         var parseResults:ParseResults = this.parseURL(this._contentPath);
         if(parseResults.streamName == null || parseResults.streamName == "")
         {
            throw new VideoError(VideoError.INVALID_SOURCE,url);
         }
         if(parseResults.isRTMP)
         {
            canReuse = this.canReuseOldConnection(parseResults);
            this._isRTMP = true;
            this._protocol = parseResults.protocol;
            this._streamName = parseResults.streamName;
            this._serverName = parseResults.serverName;
            this._wrappedURL = parseResults.wrappedURL;
            this._portNumber = parseResults.portNumber;
            this._appName = parseResults.appName;
            if(this._appName == null || this._appName == "" || this._streamName == null || this._streamName == "")
            {
               throw new VideoError(VideoError.INVALID_SOURCE,url);
            }
            this._autoSenseBW = this._streamName.indexOf(",") >= 0;
            return canReuse || this.connectRTMP();
         }
         name = parseResults.streamName;
         if(name.indexOf("?") < 0 && (name.length < 4 || name.slice(-4).toLowerCase() != ".txt") && (name.length < 4 || name.slice(-4).toLowerCase() != ".xml") && (name.length < 5 || name.slice(-5).toLowerCase() != ".smil"))
         {
            canReuse = this.canReuseOldConnection(parseResults);
            this._isRTMP = false;
            this._streamName = name;
            return canReuse || this.connectHTTP();
         }
         if(name.indexOf("/fms/fpad") >= 0)
         {
            try
            {
               return this.connectFPAD(name);
            }
            catch(err:Error)
            {
            }
         }
         this._smilMgr = new SMILManager(this);
         return this._smilMgr.connectXML(name);
      }
      
      public function connectDynamicStream(param1:*) : void
      {
      }
      
      public function connectAgain() : Boolean
      {
         var _loc1_:int = this._appName.indexOf("/");
         if(_loc1_ < 0)
         {
            _loc1_ = this._streamName.indexOf("/");
            if(_loc1_ >= 0)
            {
               this._appName = this._appName + "/";
               this._appName = this._appName + this._streamName.slice(0,_loc1_);
               this._streamName = this._streamName.slice(_loc1_ + 1);
            }
            return false;
         }
         var _loc2_:* = this._appName.slice(_loc1_ + 1);
         _loc2_ = _loc2_ + "/";
         _loc2_ = _loc2_ + this._streamName;
         this._streamName = _loc2_;
         this._appName = this._appName.slice(0,_loc1_);
         this.close();
         this._payload = 0;
         this._connTypeCounter = 0;
         this.cleanConns();
         this.connectRTMP();
         return true;
      }
      
      public function reconnect() : void
      {
         if(!this._isRTMP)
         {
            throw new Error("Cannot call reconnect on an http connection");
         }
         this._nc.client = new ReconnectClient(this);
         this._nc.addEventListener(NetStatusEvent.NET_STATUS,this.reconnectOnStatus);
         this._nc.connect(this._ncUri,false);
      }
      
      flvplayback_internal function onReconnected() : void
      {
         this._ncConnected = true;
         this._owner.ncReconnected();
      }
      
      public function close() : void
      {
         if(this._nc)
         {
            this._nc.close();
            this._ncConnected = false;
         }
      }
      
      public function helperDone(param1:Object, param2:Boolean) : void
      {
         var _loc3_:ParseResults = null;
         var _loc4_:* = null;
         var _loc7_:Number = NaN;
         if(!param2)
         {
            this._nc = null;
            this._ncConnected = false;
            this._owner.ncConnected();
            this._smilMgr = null;
            this._fpadMgr = null;
            return;
         }
         var _loc5_:Boolean = false;
         if(param1 == this._fpadMgr)
         {
            _loc4_ = this._fpadMgr.rtmpURL;
            this._fpadMgr = null;
            _loc3_ = this.parseURL(_loc4_);
            this._isRTMP = _loc3_.isRTMP;
            this._protocol = _loc3_.protocol;
            this._serverName = _loc3_.serverName;
            this._portNumber = _loc3_.portNumber;
            this._wrappedURL = _loc3_.wrappedURL;
            this._appName = _loc3_.appName;
            this._streamName = _loc3_.streamName;
            _loc7_ = this._fpadZone;
            this._fpadZone = NaN;
            this.connectRTMP();
            this._fpadZone = _loc7_;
            return;
         }
         if(param1 != this._smilMgr)
         {
            return;
         }
         this._streamWidth = this._smilMgr.width;
         this._streamHeight = this._smilMgr.height;
         _loc4_ = this._smilMgr.baseURLAttr[0];
         if(_loc4_ != null && _loc4_ != "")
         {
            if(_loc4_.charAt(_loc4_.length - 1) != "/")
            {
               _loc4_ = _loc4_ + "/";
            }
            _loc3_ = this.parseURL(_loc4_);
            this._isRTMP = _loc3_.isRTMP;
            _loc5_ = true;
            this._streamName = _loc3_.streamName;
            if(this._isRTMP)
            {
               this._protocol = _loc3_.protocol;
               this._serverName = _loc3_.serverName;
               this._portNumber = _loc3_.portNumber;
               this._wrappedURL = _loc3_.wrappedURL;
               this._appName = _loc3_.appName;
               if(this._appName == null || this._appName == "")
               {
                  this._smilMgr = null;
                  throw new VideoError(VideoError.INVALID_XML,"Base RTMP URL must include application name: " + _loc4_);
               }
               if(this._smilMgr.baseURLAttr.length > 1)
               {
                  _loc3_ = this.parseURL(this._smilMgr.baseURLAttr[1]);
                  if(_loc3_.serverName != null)
                  {
                     this.fallbackServerName = _loc3_.serverName;
                  }
               }
            }
         }
         this._streams = this._smilMgr.videoTags;
         this._smilMgr = null;
         var _loc6_:uint = 0;
         while(_loc6_ < this._streams.length)
         {
            _loc4_ = this._streams[_loc6_].src;
            _loc3_ = this.parseURL(_loc4_);
            if(!_loc5_)
            {
               this._isRTMP = _loc3_.isRTMP;
               _loc5_ = true;
               if(this._isRTMP)
               {
                  this._protocol = _loc3_.protocol;
                  if(this._streams.length > 1)
                  {
                     throw new VideoError(VideoError.INVALID_XML,"Cannot switch between multiple absolute RTMP URLs, must use meta tag base attribute.");
                  }
                  this._serverName = _loc3_.serverName;
                  this._portNumber = _loc3_.portNumber;
                  this._wrappedURL = _loc3_.wrappedURL;
                  this._appName = _loc3_.appName;
                  if(this._appName == null || this._appName == "")
                  {
                     throw new VideoError(VideoError.INVALID_XML,"Base RTMP URL must include application name: " + _loc4_);
                  }
               }
               else if(_loc3_.streamName.indexOf("/fms/fpad") >= 0 && this._streams.length > 1)
               {
                  throw new VideoError(VideoError.INVALID_XML,"Cannot switch between multiple absolute fpad URLs, must use meta tag base attribute.");
               }
            }
            else if(this._streamName != null && this._streamName != "" && !_loc3_.isRelative && this._streams.length > 1)
            {
               throw new VideoError(VideoError.INVALID_XML,"When using meta tag base attribute, cannot use absolute URLs for video or ref tag src attributes.");
            }
            this._streams[_loc6_].parseResults = _loc3_;
            _loc6_++;
         }
         this._autoSenseBW = this._streams.length > 1;
         if(!this._autoSenseBW)
         {
            if(this._streamName != null)
            {
               this._streamName = this._streamName + this._streams[0].parseResults.streamName;
            }
            else
            {
               this._streamName = this._streams[0].parseResults.streamName;
            }
            if(this._isRTMP && this._streamName.substr(-4).toLowerCase() == ".flv")
            {
               this._streamName = this._streamName.substr(0,this._streamName.length - 4);
            }
            this._streamLength = this._streams[0].dur;
         }
         if(this._isRTMP)
         {
            this.connectRTMP();
         }
         else if(this._streamName != null && this._streamName.indexOf("/fms/fpad") >= 0)
         {
            this.connectFPAD(this._streamName);
         }
         else
         {
            if(this._autoSenseBW)
            {
               this.bitrateMatch();
            }
            this.connectHTTP();
            this._owner.ncConnected();
         }
      }
      
      flvplayback_internal function bitrateMatch() : void
      {
         var _loc1_:Number = this._bitrate;
         if(isNaN(_loc1_))
         {
            _loc1_ = 0;
         }
         var _loc2_:uint = this._streams.length;
         var _loc3_:uint = 0;
         while(_loc3_ < this._streams.length)
         {
            if(isNaN(this._streams[_loc3_].bitrate) || _loc1_ >= this._streams[_loc3_].bitrate)
            {
               _loc2_ = _loc3_;
               break;
            }
            _loc3_++;
         }
         if(_loc2_ == this._streams.length)
         {
            throw new VideoError(VideoError.NO_BITRATE_MATCH);
         }
         if(this._streamName != null)
         {
            this._streamName = this._streamName + this._streams[_loc2_].src;
         }
         else
         {
            this._streamName = this._streams[_loc2_].src;
         }
         if(this._isRTMP && this._streamName.substr(-4).toLowerCase() == ".flv")
         {
            this._streamName = this._streamName.substr(0,this._streamName.length - 4);
         }
         this._streamLength = this._streams[_loc2_].dur;
      }
      
      flvplayback_internal function parseURL(param1:String) : ParseResults
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:String = null;
         var _loc10_:ParseResults = null;
         var _loc2_:ParseResults = new ParseResults();
         var _loc3_:Array = param1.split("?");
         this._queryString = null;
         var _loc4_:Array = new Array("rtmp","rtmpt","rtmpe","rtmpte","rtmps","rtmfp");
         if(_loc4_.indexOf(_loc3_[_loc3_.length - 1].split(":/")[0]) == -1)
         {
            if(_loc3_[_loc3_.length - 1].indexOf("as=adobe") != -1 && _loc3_[_loc3_.length - 1].indexOf("te=connect") != -1)
            {
               this._queryString = _loc3_[_loc3_.length - 1];
               param1 = param1.slice(0,param1.indexOf("?" + this._queryString));
            }
         }
         var _loc5_:int = 0;
         var _loc6_:int = param1.indexOf(":/",_loc5_);
         if(_loc6_ >= 0)
         {
            _loc6_ = _loc6_ + 2;
            _loc2_.protocol = param1.slice(_loc5_,_loc6_).toLowerCase();
            _loc2_.isRelative = false;
         }
         else
         {
            _loc2_.isRelative = true;
         }
         if(_loc2_.protocol != null && (_loc2_.protocol == "rtmp:/" || _loc2_.protocol == "rtmpt:/" || _loc2_.protocol == "rtmps:/" || _loc2_.protocol == "rtmpe:/" || _loc2_.protocol == "rtmpte:/" || _loc2_.protocol == "rtmfp:/"))
         {
            _loc2_.isRTMP = true;
            _loc5_ = _loc6_;
            if(param1.charAt(_loc5_) == "/")
            {
               _loc5_++;
               _loc7_ = param1.indexOf(":",_loc5_);
               _loc8_ = param1.indexOf("/",_loc5_);
               if(_loc8_ < 0)
               {
                  if(_loc7_ < 0)
                  {
                     _loc2_.serverName = param1.slice(_loc5_);
                  }
                  else
                  {
                     _loc6_ = _loc7_;
                     _loc2_.portNumber = param1.slice(_loc5_,_loc6_);
                     _loc5_ = _loc6_ + 1;
                     _loc2_.serverName = param1.slice(_loc5_);
                  }
                  return _loc2_;
               }
               if(_loc7_ >= 0 && _loc7_ < _loc8_)
               {
                  _loc6_ = _loc7_;
                  _loc2_.serverName = param1.slice(_loc5_,_loc6_);
                  _loc5_ = _loc6_ + 1;
                  _loc6_ = _loc8_;
                  _loc2_.portNumber = param1.slice(_loc5_,_loc6_);
               }
               else
               {
                  _loc6_ = _loc8_;
                  _loc2_.serverName = param1.slice(_loc5_,_loc6_);
               }
               _loc5_ = _loc6_ + 1;
            }
            if(param1.charAt(_loc5_) == "?")
            {
               _loc9_ = param1.slice(_loc5_ + 1);
               _loc10_ = this.parseURL(_loc9_);
               if(_loc10_.protocol == null || !_loc10_.isRTMP)
               {
                  throw new VideoError(VideoError.INVALID_SOURCE,param1);
               }
               _loc2_.wrappedURL = "?";
               _loc2_.wrappedURL = _loc2_.wrappedURL + _loc10_.protocol;
               if(_loc10_.serverName != null)
               {
                  _loc2_.wrappedURL = _loc2_.wrappedURL + "/";
                  _loc2_.wrappedURL = _loc2_.wrappedURL + _loc10_.serverName;
               }
               if(_loc10_.portNumber != null)
               {
                  _loc2_.wrappedURL = _loc2_.wrappedURL + (":" + _loc10_.portNumber);
               }
               if(_loc10_.wrappedURL != null)
               {
                  _loc2_.wrappedURL = _loc2_.wrappedURL + "/";
                  _loc2_.wrappedURL = _loc2_.wrappedURL + _loc10_.wrappedURL;
               }
               _loc2_.appName = _loc10_.appName;
               _loc2_.streamName = _loc10_.streamName;
               return _loc2_;
            }
            _loc6_ = param1.indexOf("/",_loc5_);
            if(_loc6_ < 0)
            {
               _loc2_.appName = param1.slice(_loc5_);
               return _loc2_;
            }
            _loc2_.appName = param1.slice(_loc5_,_loc6_);
            _loc5_ = _loc6_ + 1;
            _loc6_ = param1.indexOf("/",_loc5_);
            if(_loc6_ < 0)
            {
               _loc2_.streamName = param1.slice(_loc5_);
               if(_loc2_.streamName.slice(-4).toLowerCase() == ".flv")
               {
                  _loc2_.streamName = _loc2_.streamName.slice(0,-4);
               }
               return _loc2_;
            }
            _loc2_.appName = _loc2_.appName + "/";
            _loc2_.appName = _loc2_.appName + param1.slice(_loc5_,_loc6_);
            _loc5_ = _loc6_ + 1;
            _loc2_.streamName = param1.slice(_loc5_);
            if(_loc2_.streamName.slice(-4).toLowerCase() == ".flv")
            {
               _loc2_.streamName = _loc2_.streamName.slice(0,-4);
            }
         }
         else
         {
            _loc2_.isRTMP = false;
            _loc2_.streamName = param1;
         }
         return _loc2_;
      }
      
      flvplayback_internal function canReuseOldConnection(param1:ParseResults) : Boolean
      {
         if(this._nc == null || !this._ncConnected)
         {
            return false;
         }
         if(!param1.isRTMP)
         {
            if(!this._isRTMP)
            {
               return true;
            }
            this._owner.close();
            this._nc = null;
            this._ncConnected = false;
            this.initNCInfo();
            return false;
         }
         if(this._isRTMP)
         {
            if(param1.serverName == this._serverName && param1.appName == this._appName && param1.protocol == this._protocol && param1.portNumber == this._portNumber && param1.wrappedURL == this._wrappedURL)
            {
               return true;
            }
            this._owner.close();
            this._nc = null;
            this._ncConnected = false;
         }
         this.initNCInfo();
         return false;
      }
      
      flvplayback_internal function connectHTTP() : Boolean
      {
         this._nc = new NetConnection();
         this._nc.connect(null);
         this._ncConnected = true;
         return true;
      }
      
      flvplayback_internal function connectRTMP() : Boolean
      {
         this._timeoutTimer.stop();
         this._timeoutTimer.start();
         this._tryNC = new Array();
         var _loc1_:int = this._protocol == "rtmp:/" || this._protocol == "rtmpe:/"?2:1;
         var _loc2_:uint = 0;
         while(_loc2_ < _loc1_)
         {
            this._tryNC[_loc2_] = new NetConnection();
            this._tryNC[_loc2_].objectEncoding = this._objectEncoding;
            this._tryNC[_loc2_].proxyType = this._proxyType;
            if(!isNaN(this._fpadZone))
            {
               this._tryNC[_loc2_].fpadZone = this._fpadZone;
            }
            this._tryNC[_loc2_].client = new ConnectClient(this,this._tryNC[_loc2_],_loc2_);
            this._tryNC[_loc2_].addEventListener(NetStatusEvent.NET_STATUS,this.connectOnStatus);
            _loc2_++;
         }
         this.nextConnect();
         return false;
      }
      
      flvplayback_internal function connectFPAD(param1:String) : Boolean
      {
         var _loc2_:Object = /^(.+)(\?|\&)(uri=)([^&]+)(\&.*)?$/.exec(param1);
         if(_loc2_ == null)
         {
            throw new VideoError(VideoError.INVALID_SOURCE,"fpad url must include uri parameter: " + param1);
         }
         var _loc3_:String = _loc2_[1] + _loc2_[2];
         var _loc4_:String = _loc2_[4];
         var _loc5_:String = _loc2_[5] == undefined?"":_loc2_[5];
         var _loc6_:ParseResults = this.parseURL(_loc4_);
         if(!_loc6_.isRTMP)
         {
            throw new VideoError(VideoError.INVALID_SOURCE,"fpad url uri parameter must be rtmp url: " + param1);
         }
         this._fpadMgr = new FPADManager(this);
         return this._fpadMgr.connectXML(_loc3_,_loc4_,_loc5_,_loc6_);
      }
      
      flvplayback_internal function nextConnect(param1:TimerEvent = null) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(this._connTypeCounter == 0)
         {
            _loc2_ = this._protocol;
            _loc3_ = this._portNumber;
         }
         else
         {
            _loc3_ = null;
            if(this._protocol == "rtmp:/")
            {
               _loc2_ = "rtmpt:/";
            }
            else if(this._protocol == "rtmpe:/")
            {
               _loc2_ = "rtmpte:/";
            }
            else
            {
               this._tryNC.pop();
               return;
            }
         }
         var _loc4_:String = _loc2_ + (this._serverName == null?"":"/" + this._serverName + (_loc3_ == null?"":":" + _loc3_) + "/") + (this._wrappedURL == null?"":this._wrappedURL + "/") + this._appName + (this._queryString == null?"":"?" + this._queryString);
         this._tryNC[this._connTypeCounter].client.pending = true;
         this._tryNC[this._connTypeCounter].connect(_loc4_,this._autoSenseBW);
         if(this._connTypeCounter < this._tryNC.length - 1)
         {
            this._connTypeCounter++;
            this._tryNCTimer.reset();
            this._tryNCTimer.start();
         }
      }
      
      flvplayback_internal function cleanConns() : void
      {
         var _loc1_:uint = 0;
         this._tryNCTimer.reset();
         if(this._tryNC != null)
         {
            _loc1_ = 0;
            while(_loc1_ < this._tryNC.length)
            {
               if(this._tryNC[_loc1_] != null)
               {
                  this._tryNC[_loc1_].removeEventListener(NetStatusEvent.NET_STATUS,this.connectOnStatus);
                  if(this._tryNC[_loc1_].client.pending)
                  {
                     this._tryNC[_loc1_].addEventListener(NetStatusEvent.NET_STATUS,this.disconnectOnStatus);
                  }
                  else
                  {
                     this._tryNC[_loc1_].close();
                  }
               }
               this._tryNC[_loc1_] = null;
               _loc1_++;
            }
            this._tryNC = null;
         }
      }
      
      flvplayback_internal function tryFallBack() : void
      {
         if(this._serverName == this.fallbackServerName || this.fallbackServerName == null)
         {
            this._nc = null;
            this._ncConnected = false;
            this._owner.ncConnected();
         }
         else
         {
            this._connTypeCounter = 0;
            this.cleanConns();
            this._serverName = this.fallbackServerName;
            this.connectRTMP();
         }
      }
      
      flvplayback_internal function onConnected(param1:NetConnection, param2:Number) : void
      {
         var _loc3_:Array = null;
         var _loc4_:uint = 0;
         var _loc5_:String = null;
         this._timeoutTimer.stop();
         param1.removeEventListener(NetStatusEvent.NET_STATUS,this.connectOnStatus);
         this._nc = param1;
         this._ncUri = this._nc.uri;
         this._ncConnected = true;
         if(this._autoSenseBW)
         {
            this._bitrate = param2 * 1024;
            if(this._streams != null)
            {
               this.bitrateMatch();
            }
            else
            {
               _loc3_ = this._streamName.split(",");
               _loc4_ = 0;
               while(_loc4_ < _loc3_.length)
               {
                  _loc5_ = stripFrontAndBackWhiteSpace(_loc3_[_loc4_]);
                  if(_loc4_ + 1 < _loc3_.length)
                  {
                     if(param2 <= Number(_loc3_[_loc4_ + 1]))
                     {
                        this._streamName = _loc5_;
                        break;
                     }
                     _loc4_ = _loc4_ + 2;
                     continue;
                  }
                  this._streamName = _loc5_;
                  break;
               }
               if(this._streamName.slice(-4).toLowerCase() == ".flv")
               {
                  this._streamName = this._streamName.slice(0,-4);
               }
            }
         }
         if(!this._owner.isLive && isNaN(this._streamLength))
         {
            this._nc.call("getStreamLength",new Responder(this.getStreamLengthResult),this._streamName);
         }
         else
         {
            this._owner.ncConnected();
         }
      }
      
      flvplayback_internal function connectOnStatus(param1:NetStatusEvent) : void
      {
         var _loc2_:ParseResults = null;
         param1.target.client.pending = false;
         if(param1.info.code == "NetConnection.Connect.Success")
         {
            this._nc = this._tryNC[param1.target.client.connIndex];
            this.cleanConns();
         }
         else if(param1.info.code == "NetConnection.Connect.Rejected" && param1.info.ex != null && param1.info.ex.code == 302)
         {
            this._connTypeCounter = 0;
            this.cleanConns();
            _loc2_ = this.parseURL(param1.info.ex.redirect);
            if(_loc2_.isRTMP)
            {
               this._protocol = _loc2_.protocol;
               this._serverName = _loc2_.serverName;
               this._wrappedURL = _loc2_.wrappedURL;
               this._portNumber = _loc2_.portNumber;
               this._appName = _loc2_.appName;
               if(_loc2_.streamName != null)
               {
                  this._appName = this._appName + ("/" + _loc2_.streamName);
               }
               this.connectRTMP();
            }
            else
            {
               this.tryFallBack();
            }
         }
         else if((param1.info.code == "NetConnection.Connect.Failed" || param1.info.code == "NetConnection.Connect.Rejected") && param1.target.client.connIndex == this._tryNC.length - 1)
         {
            if(!this.connectAgain())
            {
               this.tryFallBack();
            }
         }
      }
      
      flvplayback_internal function reconnectOnStatus(param1:NetStatusEvent) : void
      {
         if(param1.info.code == "NetConnection.Connect.Failed" || param1.info.code == "NetConnection.Connect.Rejected")
         {
            this._nc = null;
            this._ncConnected = false;
            this._owner.ncReconnected();
         }
      }
      
      flvplayback_internal function disconnectOnStatus(param1:NetStatusEvent) : void
      {
         if(param1.info.code == "NetConnection.Connect.Success")
         {
            param1.target.removeEventListener(NetStatusEvent.NET_STATUS,this.disconnectOnStatus);
            param1.target.close();
         }
      }
      
      flvplayback_internal function getStreamLengthResult(param1:Number) : void
      {
         if(param1 > 0)
         {
            this._streamLength = param1;
         }
         this._owner.ncConnected();
      }
      
      flvplayback_internal function _onFMSConnectTimeOut(param1:TimerEvent = null) : void
      {
         this.cleanConns();
         this._nc = null;
         this._ncConnected = false;
         if(!this.connectAgain())
         {
            this._owner.ncConnected();
         }
      }
   }
}
