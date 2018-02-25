package fl.video
{
   import flash.events.NetStatusEvent;
   import flash.net.NetConnection;
   
   use namespace flvplayback_internal;
   
   public class NCManagerDynamicStream extends NCManager implements INCManager
   {
      
      public static const VERSION:String = "2.5.0.26";
      
      public static const SHORT_VERSION:String = "2.5";
       
      
      public function NCManagerDynamicStream()
      {
         super();
      }
      
      override public function get streamLength() : Number
      {
         return NaN;
      }
      
      override flvplayback_internal function connectRTMP() : Boolean
      {
         _timeoutTimer.reset();
         _timeoutTimer.start();
         _tryNC = new Array();
         var _loc1_:int = _protocol == "rtmp:/" || _protocol == "rtmpe:/"?2:1;
         var _loc2_:uint = 0;
         while(_loc2_ < _loc1_)
         {
            _tryNC[_loc2_] = new NetConnection();
            _tryNC[_loc2_].objectEncoding = _objectEncoding;
            _tryNC[_loc2_].proxyType = _proxyType;
            if(!isNaN(_fpadZone))
            {
               _tryNC[_loc2_].fpadZone = _fpadZone;
            }
            _tryNC[_loc2_].client = new ConnectClientDynamicStream(this,_tryNC[_loc2_],_loc2_);
            _tryNC[_loc2_].addEventListener(NetStatusEvent.NET_STATUS,this.connectOnStatus);
            _loc2_++;
         }
         nextConnect();
         return false;
      }
      
      override flvplayback_internal function onConnected(param1:NetConnection, param2:Number) : void
      {
         _timeoutTimer.stop();
         param1.removeEventListener(NetStatusEvent.NET_STATUS,this.connectOnStatus);
         _nc = param1;
         _ncUri = _nc.uri;
         _ncConnected = true;
         if(_fpcaps.dynamicStreaming && _fmscaps.dynamicStreaming && _streams != null)
         {
            _isDynamicStream = true;
         }
         _owner.ncConnected();
      }
      
      override flvplayback_internal function connectOnStatus(param1:NetStatusEvent) : void
      {
         var fmsvers:String = null;
         var parseResults:ParseResults = null;
         var e:NetStatusEvent = param1;
         e.target.client.pending = false;
         if(e.info.code == "NetConnection.Connect.Success")
         {
            _nc = _tryNC[e.target.client.connIndex];
            try
            {
               fmsvers = e.info.data.version;
            }
            catch(e:Error)
            {
               fmsvers = "2,0,0,0";
            }
            _fmscaps = new FMSCapabilities(fmsvers);
            cleanConns();
            this.onConnected(_nc,0);
         }
         else if(e.info.code == "NetConnection.Connect.Rejected" && e.info.ex != null && e.info.ex.code == 302)
         {
            _connTypeCounter = 0;
            cleanConns();
            parseResults = parseURL(e.info.ex.redirect);
            if(parseResults.isRTMP)
            {
               _protocol = parseResults.protocol;
               _serverName = parseResults.serverName;
               _wrappedURL = parseResults.wrappedURL;
               _portNumber = parseResults.portNumber;
               _appName = parseResults.appName;
               if(parseResults.streamName != null)
               {
                  _appName = _appName + ("/" + parseResults.streamName);
               }
               this.connectRTMP();
            }
            else
            {
               tryFallBack();
            }
         }
         else if((e.info.code == "NetConnection.Connect.Failed" || e.info.code == "NetConnection.Connect.Rejected") && e.target.client.connIndex == _tryNC.length - 1)
         {
            if(!connectAgain())
            {
               tryFallBack();
            }
         }
      }
      
      override flvplayback_internal function reconnectOnStatus(param1:NetStatusEvent) : void
      {
         if(param1.info.code == "NetConnection.Connect.Success")
         {
            onReconnected();
         }
         else if(param1.info.code == "NetConnection.Connect.Failed" || param1.info.code == "NetConnection.Connect.Rejected")
         {
            _nc = null;
            _ncConnected = false;
            _owner.ncReconnected();
         }
      }
      
      override public function connectDynamicStream(param1:*) : void
      {
         var _loc2_:ParseResults = null;
         var _loc3_:* = null;
         var _loc4_:Boolean = false;
         _loc3_ = param1.uri;
         if(_loc3_ != null && _loc3_ != "")
         {
            if(_loc3_.charAt(_loc3_.length - 1) != "/")
            {
               _loc3_ = _loc3_ + "/";
            }
            _loc2_ = parseURL(_loc3_);
            _isRTMP = _loc2_.isRTMP;
            _loc4_ = true;
            _streamName = param1.streams[0].name;
            if(_isRTMP)
            {
               _protocol = _loc2_.protocol;
               _serverName = _loc2_.serverName;
               _portNumber = _loc2_.portNumber;
               _wrappedURL = _loc2_.wrappedURL;
               _appName = _loc2_.appName;
               if(_appName == null || _appName == "")
               {
                  throw new VideoError(VideoError.INVALID_SOURCE,"Base RTMP URL must include application name: " + _loc3_);
               }
            }
         }
         _streams = new Array();
         var _loc5_:int = 0;
         while(_loc5_ < param1.streams.length)
         {
            _streams[_loc5_] = {
               "src":param1.streams[_loc5_].name,
               "bitrate":param1.streams[_loc5_].rate * 1000
            };
            _loc5_++;
         }
         this.connectRTMP();
      }
   }
}
