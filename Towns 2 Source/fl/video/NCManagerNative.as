package fl.video
{
   import flash.events.NetStatusEvent;
   import flash.net.NetConnection;
   
   public class NCManagerNative extends NCManager implements INCManager
   {
      
      public static const VERSION:String = "2.5.0.26";
      
      public static const SHORT_VERSION:String = "2.5";
       
      
      public function NCManagerNative()
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
            _tryNC[_loc2_].client = new ConnectClientNative(this,_tryNC[_loc2_],_loc2_);
            _tryNC[_loc2_].addEventListener(NetStatusEvent.NET_STATUS,this.connectOnStatus);
            _loc2_++;
         }
         nextConnect();
         return false;
      }
      
      override flvplayback_internal function onConnected(param1:NetConnection, param2:Number) : void
      {
         var _loc3_:Array = null;
         var _loc4_:uint = 0;
         var _loc5_:String = null;
         _timeoutTimer.stop();
         param1.removeEventListener(NetStatusEvent.NET_STATUS,this.connectOnStatus);
         _nc = param1;
         _ncUri = _nc.uri;
         _ncConnected = true;
         if(_autoSenseBW)
         {
            _bitrate = param2 * 1024;
            if(_streams != null)
            {
               bitrateMatch();
            }
            else
            {
               _loc3_ = _streamName.split(",");
               _loc4_ = 0;
               while(_loc4_ < _loc3_.length)
               {
                  _loc5_ = stripFrontAndBackWhiteSpace(_loc3_[_loc4_]);
                  if(_loc4_ + 1 < _loc3_.length)
                  {
                     if(param2 <= Number(_loc3_[_loc4_ + 1]))
                     {
                        _streamName = _loc5_;
                        break;
                     }
                     _loc4_ = _loc4_ + 2;
                     continue;
                  }
                  _streamName = _loc5_;
                  break;
               }
               if(_streamName.slice(-4).toLowerCase() == ".flv")
               {
                  _streamName = _streamName.slice(0,-4);
               }
            }
         }
         _owner.ncConnected();
      }
      
      override flvplayback_internal function connectOnStatus(param1:NetStatusEvent) : void
      {
         var _loc2_:ParseResults = null;
         param1.target.client.pending = false;
         if(param1.info.code == "NetConnection.Connect.Success")
         {
            _nc = _tryNC[param1.target.client.connIndex];
            cleanConns();
            if(_autoSenseBW)
            {
               _nc.call("_checkbw",null);
            }
            else
            {
               this.onConnected(_nc,0);
            }
         }
         else if(param1.info.code == "NetConnection.Connect.Rejected" && param1.info.ex != null && param1.info.ex.code == 302)
         {
            _connTypeCounter = 0;
            cleanConns();
            _loc2_ = parseURL(param1.info.ex.redirect);
            if(_loc2_.isRTMP)
            {
               _protocol = _loc2_.protocol;
               _serverName = _loc2_.serverName;
               _wrappedURL = _loc2_.wrappedURL;
               _portNumber = _loc2_.portNumber;
               _appName = _loc2_.appName;
               if(_loc2_.streamName != null)
               {
                  _appName = _appName + ("/" + _loc2_.streamName);
               }
               this.connectRTMP();
            }
            else
            {
               tryFallBack();
            }
         }
         else if((param1.info.code == "NetConnection.Connect.Failed" || param1.info.code == "NetConnection.Connect.Rejected") && param1.target.client.connIndex == _tryNC.length - 1)
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
   }
}
