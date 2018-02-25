package fl.video
{
   import flash.events.NetStatusEvent;
   import flash.events.TimerEvent;
   import flash.net.NetConnection;
   import flash.net.NetStream;
   import flash.net.NetStreamPlayOptions;
   import flash.net.NetStreamPlayTransitions;
   import flash.net.SharedObject;
   import flash.utils.Timer;
   import flash.utils.describeType;
   import flash.utils.getTimer;
   
   public class DynamicStream extends NetStream
   {
      
      public static const VERSION:String = "1.1.0.10";
       
      
      private var dsPlayList:Array;
      
      private var dsPlayListLen:int;
      
      private var dsPlayIndex:int = 0;
      
      private var dsPlayState:String;
      
      private var _nc:NetConnection;
      
      private var _maxRate:Number = 0;
      
      private var _maxBandwidth:Number = 0;
      
      private var _curStreamID:int = 0;
      
      private var _prevStreamID:int = 0;
      
      private var _curBufferTime:uint = 0;
      
      private var _previousDroppedFrames:uint = 0;
      
      private var _previousDroppedFramesTime:uint = 0;
      
      private var _bufferMode:int = 0;
      
      private var _reachedBufferTime:Boolean = false;
      
      private var _switchMode:Boolean = false;
      
      private var _preferredBufferLength:Number;
      
      private var _startBufferLength:Number;
      
      private var _aggressiveModeBufferLength:Number;
      
      private var _switchQOSTimerDelay:Number;
      
      private var _manualSwitchMode:Boolean;
      
      private var _droppedFramesLockRate:int;
      
      private var _droppedFramesLockDelay:int;
      
      private var _liveStream:Boolean;
      
      private var _liveBWErrorCount:int = 0;
      
      private var _previousMaxBandwidth:Number = 0;
      
      private var _ownerClientObject:Object;
      
      private var _trampolineObject:Object;
      
      private var qosTimer:Timer;
      
      private var mainTimer:Timer;
      
      private var droppedFramesTimer:Timer;
      
      private const MAIN_TIMER_INTERVAL:Number = 0.15;
      
      private const DROPPED_FRAMES_TIMER_INTERVAL:uint = 300;
      
      private const DROPPED_FRAMES_LOCK_LIMIT:uint = 3;
      
      private const LIVE_ERROR_CORRECTION_LIMIT:int = 2;
      
      private const PREFERRED_BUFFERLENGTH:Number = 8;
      
      private const STARTUP_BUFFERLENGTH:Number = 2;
      
      private const EMPTY_BUFFERLENGTH:Number = 1;
      
      private const PREFERRED_BUFFERLENGTH_LIVE:Number = 10;
      
      private const BUFFER_FILLED:Number = 1;
      
      private const BUFFER_BUFFERING:Number = 2;
      
      private const DEBUG:Boolean = false;
      
      private var _lastMaxBandwidthSO:SharedObject;
      
      private var _dropFrameCheckEnabled:Boolean;
      
      public const STATE_PLAYING:String = "playing";
      
      public const STATE_PAUSED:String = "paused";
      
      public const STATE_BUFFERING:String = "buffering";
      
      public const STATE_STOPPED:String = "stopped";
      
      private var bandwidthlimit:int = -1;
      
      public function DynamicStream(param1:NetConnection)
      {
         var nc:NetConnection = param1;
         super(nc);
         this._nc = nc;
         this.dsPlayList = new Array();
         this._preferredBufferLength = this.PREFERRED_BUFFERLENGTH;
         this._switchQOSTimerDelay = this.PREFERRED_BUFFERLENGTH / 2.5;
         this._startBufferLength = this.STARTUP_BUFFERLENGTH;
         this._aggressiveModeBufferLength = this.PREFERRED_BUFFERLENGTH / 2;
         this._maxRate = 0;
         this._manualSwitchMode = false;
         this._droppedFramesLockRate = int.MAX_VALUE;
         this._liveStream = false;
         this._maxBandwidth = 0;
         this._lastMaxBandwidthSO = SharedObject.getLocal("AdobeDynamicStream","/",false);
         this._maxBandwidth = this._lastMaxBandwidthSO.data.maxBandwidth;
         this._curBufferTime = this._startBufferLength;
         this.mainTimer = new Timer(this.MAIN_TIMER_INTERVAL * 1000,0);
         this.mainTimer.addEventListener(TimerEvent.TIMER,this.monitorQOS);
         this.qosTimer = new Timer(this._switchQOSTimerDelay * 1000,0);
         this.qosTimer.addEventListener(TimerEvent.TIMER,this.getQOSAndSwitch);
         this.droppedFramesTimer = new Timer(this.DROPPED_FRAMES_TIMER_INTERVAL * 1000,0);
         this.droppedFramesTimer.addEventListener(TimerEvent.TIMER,this.releaseDFLock);
         this._dropFrameCheckEnabled = true;
         this.addEventListener(NetStatusEvent.NET_STATUS,this.onNSStatus);
         this._nc.addEventListener(NetStatusEvent.NET_STATUS,this.onNSStatus);
         this._switchMode = false;
         this._ownerClientObject = new Object();
         this._ownerClientObject.onPlayStatus = function(... rest):void
         {
         };
         this._trampolineObject = new Object();
         this._trampolineObject.onPlayStatus = this.onPlayStatusDS;
         super.client = this._trampolineObject;
         this.dsPlayState = this.STATE_STOPPED;
      }
      
      protected function onMetaDataDS(param1:Object) : void
      {
         this.debug("internal onMetaData called");
      }
      
      protected function onPlayStatusDS(param1:Object) : void
      {
         this._ownerClientObject.onPlayStatus(param1);
         this.debug("internal onPlayStatus called with " + param1.code);
         switch(param1.code)
         {
            case "NetStream.Play.TransitionComplete":
               this.debug("transitioned to " + param1.details);
               this._dropFrameCheckEnabled = true;
               break;
            case "NetStream.Play.Complete":
               break;
            case "NetStream.Play.Failed":
               this._curStreamID = this._prevStreamID;
               this._switchMode = false;
         }
      }
      
      override public function set client(param1:Object) : void
      {
         var methodList:XMLList = null;
         var i:int = 0;
         var object:Object = param1;
         var description:XML = describeType(object);
         if(description.@name != "Object")
         {
            methodList = description..method;
            while(i < methodList.length())
            {
               if(!this.hasOwnProperty(methodList[i].@name))
               {
                  if(methodList[i].@name == "onPlayStatus")
                  {
                     this._ownerClientObject.onPlayStatus = object.onPlayStatus;
                  }
                  else
                  {
                     try
                     {
                        this._trampolineObject[methodList[i].@name] = object[methodList[i].@name];
                     }
                     catch(e:Error)
                     {
                     }
                  }
               }
               i++;
            }
            this._trampolineObject["onPlayStatus"] = this.onPlayStatusDS;
            super.client = this._trampolineObject;
         }
         else
         {
            if(object.hasOwnProperty("onPlayStatus"))
            {
               this._ownerClientObject.onPlayStatus = object.onPlayStatus;
            }
            this._trampolineObject = object;
            try
            {
               this._trampolineObject.onPlayStatus = this.onPlayStatusDS;
            }
            catch(e:Error)
            {
            }
            super.client = this._trampolineObject;
         }
      }
      
      override public function close() : void
      {
         super.close();
         this.dsPlayList = new Array();
         this._preferredBufferLength = this.PREFERRED_BUFFERLENGTH;
         this._switchQOSTimerDelay = this.PREFERRED_BUFFERLENGTH / 2.5;
         this._startBufferLength = this.STARTUP_BUFFERLENGTH;
         this._aggressiveModeBufferLength = this.PREFERRED_BUFFERLENGTH / 2;
         this._maxRate = 0;
         this._manualSwitchMode = false;
         this._droppedFramesLockRate = int.MAX_VALUE;
         this._liveStream = false;
         this._maxBandwidth = 0;
         this._maxBandwidth = this._lastMaxBandwidthSO.data.maxBandwidth;
         this._curBufferTime = this._startBufferLength;
         this.mainTimer.reset();
         this.qosTimer.reset();
         this.droppedFramesTimer.reset();
         this._switchMode = false;
      }
      
      override public function play(... rest) : void
      {
         var _loc2_:DynamicStreamItem = null;
         if(rest[0] is DynamicStreamItem)
         {
            this.startPlay(rest[0]);
         }
         else if(rest[0] == false)
         {
            super.play(false);
         }
         else
         {
            _loc2_ = new DynamicStreamItem();
            _loc2_.addStream(String(rest[0]),0);
            if(!isNaN(rest[1]))
            {
               _loc2_.start = rest[1];
            }
            if(!isNaN(rest[2]))
            {
               _loc2_.len = rest[2];
            }
            if(rest[3] == false)
            {
               _loc2_.reset = rest[3];
            }
            this.startPlay(_loc2_);
         }
      }
      
      override public function play2(param1:NetStreamPlayOptions) : void
      {
         throw new Error("The play2() method has been disabled for this class.  Please create a separate NetStream object to use play2().");
      }
      
      public function startPlay(param1:DynamicStreamItem) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         param1.streamCount = param1.streamCount > 0 && param1.streamCount <= param1.streams.length?int(param1.streamCount):int(param1.streams.length);
         this.dsPlayList.push(param1);
         this.dsPlayListLen = this.dsPlayList.length;
         this._curStreamID = 0;
         this._prevStreamID = 0;
         if(param1.startRate > 0)
         {
            _loc2_ = this.dsPlayList[this.dsPlayIndex].streams.length - 1;
            while(_loc2_ >= 0)
            {
               if(param1.startRate >= this.dsPlayList[this.dsPlayIndex].streams[_loc2_].rate)
               {
                  this._curStreamID = _loc2_;
                  break;
               }
               _loc2_--;
            }
         }
         else
         {
            _loc3_ = this.dsPlayList[this.dsPlayIndex].streams.length - 1;
            while(_loc3_ >= 0 && this._maxBandwidth > 0)
            {
               if(this._maxBandwidth > this.dsPlayList[this.dsPlayIndex].streams[_loc3_].rate)
               {
                  this._curStreamID = _loc3_;
                  break;
               }
               _loc3_--;
            }
         }
         if(param1.start == -1)
         {
            this._liveStream = true;
            this._liveBWErrorCount = 0;
            this._previousMaxBandwidth = this._maxBandwidth;
            this._preferredBufferLength = this.PREFERRED_BUFFERLENGTH_LIVE;
            this.debug("preferred buffer length " + this._preferredBufferLength);
            if(this._switchQOSTimerDelay == this.PREFERRED_BUFFERLENGTH / 2.5)
            {
               this.switchQOSTimerDelay = Math.max(this._preferredBufferLength / 5,2);
            }
            this._curBufferTime = this._preferredBufferLength;
         }
         else
         {
            this._curBufferTime = this._startBufferLength;
            this._liveStream = false;
         }
         if(param1.reset == false)
         {
            this.playAppend(param1.start,param1.len,false);
         }
         else
         {
            this.bufferTime = this._curBufferTime;
            this.playAppend(param1.start,param1.len,true);
         }
         if(!this._liveStream)
         {
            this._maxRate = Math.max(this._maxRate,param1.streams[param1.streamCount - 1].rate * 1024 / 8);
            this._nc.call("setBandwidthLimit",null,this._maxRate * 1.2,this._maxRate * 1.2);
         }
      }
      
      public function switchToStreamName(param1:String) : void
      {
         if(param1.indexOf(":") != -1)
         {
            param1 = param1.split(":")[1];
         }
         var _loc2_:int = -1;
         var _loc3_:int = 0;
         while(_loc3_ < this.dsPlayList[this.dsPlayIndex].streams.length)
         {
            if(this.dsPlayList[this.dsPlayIndex].streams[_loc3_]["name"].indexOf(param1) > 0)
            {
               _loc2_ = _loc3_;
               break;
            }
            _loc3_++;
         }
         if(this._manualSwitchMode && _loc2_ >= 0)
         {
            this.switchStream(_loc2_);
         }
      }
      
      public function switchToStreamRate(param1:int) : void
      {
         var _loc4_:int = 0;
         var _loc2_:int = -1;
         var _loc3_:int = 0;
         while(_loc3_ < this.dsPlayList[this.dsPlayIndex].streams.length)
         {
            if(this.dsPlayList[this.dsPlayIndex].streams[_loc3_].rate == param1)
            {
               _loc2_ = _loc3_;
               break;
            }
            _loc3_++;
         }
         if(_loc2_ < 0)
         {
            _loc4_ = this.dsPlayList[this.dsPlayIndex].streams.length - 1;
            while(_loc4_ >= 0)
            {
               if(param1 > this.dsPlayList[this.dsPlayIndex].streams[_loc4_].rate)
               {
                  _loc2_ = _loc4_;
                  break;
               }
               _loc4_--;
            }
         }
         if(this._manualSwitchMode && _loc2_ >= 0)
         {
            this.switchStream(_loc2_);
         }
      }
      
      public function switchUp() : void
      {
         if(this._manualSwitchMode)
         {
            this.switchStream(this._curStreamID + 1);
         }
      }
      
      public function switchDown() : void
      {
         if(this._manualSwitchMode)
         {
            this.switchStream(this._curStreamID - 1);
         }
      }
      
      public function manualSwitchMode(param1:Boolean) : void
      {
         this._manualSwitchMode = param1;
      }
      
      public function get maxBandwidth() : Number
      {
         return this._maxBandwidth;
      }
      
      public function setBandwidthLimit(param1:Number) : void
      {
         this.bandwidthlimit = param1;
      }
      
      public function get currentStreamBitRate() : Number
      {
         return this.dsPlayList[this.dsPlayIndex].streams[this._curStreamID].rate;
      }
      
      public function get currentStreamName() : String
      {
         return this.dsPlayList[this.dsPlayIndex].streams[this._curStreamID].name;
      }
      
      public function getStreamItemAt(param1:int = -1) : DynamicStreamItem
      {
         if(param1 > -1 && param1 < this.dsPlayList.length)
         {
            return this.dsPlayList[param1];
         }
         return this.dsPlayList[this.dsPlayIndex];
      }
      
      public function set preferredBufferLength(param1:Number) : void
      {
         this._preferredBufferLength = param1;
         if(this._liveStream)
         {
            this.switchQOSTimerDelay = Math.max(this._preferredBufferLength / 5,1);
            this._curBufferTime = this._preferredBufferLength;
            this.bufferTime = this._curBufferTime;
            this._aggressiveModeBufferLength = this._preferredBufferLength / 2;
         }
         else
         {
            this.switchQOSTimerDelay = Math.max(this._preferredBufferLength / 2.5,1);
         }
      }
      
      public function get preferredBufferLength() : Number
      {
         return this._preferredBufferLength;
      }
      
      public function set startBufferLength(param1:Number) : void
      {
         this._startBufferLength = param1;
      }
      
      public function get startBufferLength() : Number
      {
         return this._startBufferLength;
      }
      
      public function set aggressiveModeBufferLength(param1:Number) : void
      {
         this._aggressiveModeBufferLength = param1;
      }
      
      public function get aggressiveModeBufferLength() : Number
      {
         return this._aggressiveModeBufferLength;
      }
      
      public function set switchQOSTimerDelay(param1:Number) : void
      {
         this.qosTimer.delay = param1 * 1000;
         this._switchQOSTimerDelay = param1;
      }
      
      public function get switchQOSTimerDelay() : Number
      {
         return this._switchQOSTimerDelay;
      }
      
      public function set droppedFramesLockDelay(param1:Number) : void
      {
         this.droppedFramesTimer.delay = param1 * 1000;
         this._droppedFramesLockDelay = param1;
      }
      
      public function get droppedFramesLockDelay() : Number
      {
         return this._droppedFramesLockDelay;
      }
      
      private function playAppend(param1:Number, param2:Number, param3:Boolean) : void
      {
         var _loc4_:NetStreamPlayOptions = new NetStreamPlayOptions();
         _loc4_.streamName = this.dsPlayList[this.dsPlayIndex].streams[this._curStreamID].name;
         _loc4_.start = param1;
         _loc4_.len = param2;
         _loc4_.transition = !!param3?NetStreamPlayTransitions.RESET:NetStreamPlayTransitions.APPEND;
         super.play2(_loc4_);
      }
      
      private function onNSStatus(param1:NetStatusEvent) : void
      {
         var dsi:DynamicStreamItem = null;
         var event:NetStatusEvent = param1;
         this.debug("ns status: " + event.info.code);
         switch(event.info.code)
         {
            case "NetStream.Play.Stop":
               this.debug("no more QOS check");
               this.dsPlayState = this.STATE_STOPPED;
               this.mainTimer.stop();
               this.qosTimer.stop();
               break;
            case "NetStream.Play.Start":
               this.init();
               this.mainTimer.start();
               this.dsPlayState = this.STATE_PLAYING;
               break;
            case "NetStream.Buffer.Full":
               this.getMaxBandwidth();
               this.SwitchUpOnMaxBandwidth();
               this._bufferMode = this.BUFFER_FILLED;
               this.qosTimer.start();
               break;
            case "NetStream.Buffer.Empty":
               if(!this._manualSwitchMode)
               {
                  this._curStreamID = 0;
               }
               if(!this._liveStream)
               {
                  this._curBufferTime = this.EMPTY_BUFFERLENGTH;
                  this.bufferTime = this._curBufferTime;
               }
               if(!this._manualSwitchMode)
               {
                  this.switchStream();
               }
               this.qosTimer.stop();
               this.init();
               break;
            case "NetStream.Seek.Notify":
               if(!this._liveStream)
               {
                  this._curBufferTime = this._startBufferLength;
                  this.bufferTime = this._curBufferTime;
               }
               this._bufferMode = this.BUFFER_BUFFERING;
               this._reachedBufferTime = false;
               this._switchMode = false;
               break;
            case "NetStream.Pause.Notify":
               if(this.qosTimer.running)
               {
                  this.qosTimer.stop();
               }
               if(this.mainTimer.running)
               {
                  this.mainTimer.stop();
               }
               this.dsPlayState = this.STATE_PAUSED;
               break;
            case "NetStream.Unpause.Notify":
               if(!this.qosTimer.running)
               {
                  this.qosTimer.start();
               }
               if(!this.mainTimer.running)
               {
                  this.mainTimer.start();
               }
               this.dsPlayState = this.STATE_PLAYING;
               break;
            case "NetStream.Play.Transition":
               this.debug("transition successful for " + event.info.details);
               this._switchMode = false;
               break;
            case "NetStream.Play.StreamNotFound":
               dsi = this.dsPlayList[this.dsPlayIndex];
               if(dsi.streams.length == 1)
               {
                  break;
               }
               try
               {
                  dsi.streams.splice(this._curStreamID,1);
                  dsi.streams.sort("rate",Array.NUMERIC);
               }
               catch(e:Error)
               {
               }
               if(dsi.streamCount > 1)
               {
                  dsi.streamCount--;
               }
               if(this._curStreamID > 0)
               {
                  this._curStreamID--;
               }
               else
               {
                  this._curStreamID = 0;
               }
               if(this.dsPlayState == this.STATE_STOPPED && dsi.streams.length > 0)
               {
                  this.playAppend(dsi.start,dsi.len,dsi.reset);
               }
               this._switchMode = false;
               break;
            case "NetConnection.Connect.Closed":
               this._switchMode = false;
               this.mainTimer.stop();
               this.qosTimer.stop();
         }
      }
      
      private function getMaxBandwidth() : void
      {
         var _loc1_:Number = NaN;
         if(this.info == null)
         {
            this.mainTimer.stop();
            return;
         }
         if(this.bandwidthlimit > -1)
         {
            _loc1_ = this.info.maxBytesPerSecond * 8 / 1024;
            if(this.bandwidthlimit > _loc1_)
            {
               this._maxBandwidth = _loc1_;
            }
            else
            {
               this._maxBandwidth = this.bandwidthlimit;
            }
         }
         else
         {
            this._maxBandwidth = this.info.maxBytesPerSecond * 8 / 1024;
         }
      }
      
      private function init() : void
      {
         if(this.info == null)
         {
            return;
         }
         this.debug("initializing ...");
         this._previousDroppedFrames = this.info.droppedFrames;
         this._previousDroppedFramesTime = getTimer();
         this._bufferMode = this.BUFFER_BUFFERING;
         this._reachedBufferTime = false;
         this._dropFrameCheckEnabled = true;
      }
      
      private function monitorQOS(param1:TimerEvent) : void
      {
         var _loc2_:Number = this.time;
         if(this.time == 0)
         {
            return;
         }
         if(this._bufferMode == this.BUFFER_BUFFERING)
         {
            return;
         }
         if(this.bufferLength >= this._preferredBufferLength)
         {
            this._reachedBufferTime = true;
         }
         this.getMaxBandwidth();
      }
      
      private function switchStream(param1:Number = 0) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.dsPlayList[this.dsPlayIndex].streams.length - 1)
         {
            param1 = this.dsPlayList[this.dsPlayIndex].streams.length - 1;
         }
         if(param1 == this._curStreamID)
         {
            return;
         }
         if(this._switchMode == true)
         {
            return;
         }
         this._prevStreamID = this._curStreamID;
         this._curStreamID = param1;
         this.debug("Switch Mode: " + this._switchMode + " - sending switch to server to bit rate: " + this.dsPlayList[this.dsPlayIndex].streams[this._curStreamID].rate);
         var _loc2_:NetStreamPlayOptions = new NetStreamPlayOptions();
         _loc2_.streamName = this.dsPlayList[this.dsPlayIndex].streams[this._curStreamID].name;
         _loc2_.transition = NetStreamPlayTransitions.SWITCH;
         _loc2_.start = this.dsPlayList[this.dsPlayIndex].start;
         _loc2_.len = this.dsPlayList[this.dsPlayIndex].len;
         super.play2(_loc2_);
         this._switchMode = true;
      }
      
      private function getQOSAndSwitch(param1:TimerEvent) : void
      {
         if(this.info == null)
         {
            this.qosTimer.stop();
            return;
         }
         if(this._manualSwitchMode)
         {
            return;
         }
         if(this._liveStream)
         {
            this.checkLiveQOSAndSwitch();
         }
         else
         {
            this.checkVodQOSAndSwitch();
         }
         this._lastMaxBandwidthSO.data.maxBandwidth = this._maxBandwidth;
      }
      
      private function checkLiveQOSAndSwitch() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.debug("max bw: " + this._maxBandwidth + " cur bitrate: " + this.currentStreamBitRate + " buffer: " + this.bufferLength + "\tfps: " + this.currentFPS);
         if(this.qosTimer.currentCount <= 2)
         {
            return;
         }
         if(this._maxBandwidth < this.dsPlayList[this.dsPlayIndex].streams[this._curStreamID].rate && this._liveBWErrorCount < this.LIVE_ERROR_CORRECTION_LIMIT)
         {
            this._maxBandwidth = this._previousMaxBandwidth;
            this._liveBWErrorCount++;
         }
         else
         {
            this._liveBWErrorCount = 0;
            this._previousMaxBandwidth = this._maxBandwidth;
         }
         var _loc1_:int = getTimer();
         if(this.bufferLength < this._preferredBufferLength / 2 || this._maxBandwidth < this.dsPlayList[this.dsPlayIndex].streams[this._curStreamID].rate && this._maxBandwidth != 0 || this.currentFPS > 0 && (this.info.droppedFrames - this._previousDroppedFrames) * 1000 / (_loc1_ - this._previousDroppedFramesTime) > this.currentFPS * 0.25)
         {
            _loc2_ = 0;
            if(this.bufferLength < this._preferredBufferLength / 2)
            {
               if(this.bufferLength < this.preferredBufferLength / 2)
               {
                  _loc2_ = this._curStreamID - 1;
               }
               else if(this.bufferLength <= this.preferredBufferLength / 3)
               {
                  _loc2_ = 0;
               }
               if(_loc2_ < 0)
               {
                  _loc2_ = 0;
               }
               this.debug("Switching down because of buffer");
            }
            else if(this._maxBandwidth < this.dsPlayList[this.dsPlayIndex].streams[this._curStreamID].rate)
            {
               _loc3_ = this.dsPlayList[this.dsPlayIndex].streamCount - 1;
               while(_loc3_ >= 0)
               {
                  if(this._maxBandwidth > this.dsPlayList[this.dsPlayIndex].streams[_loc3_].rate)
                  {
                     _loc2_ = _loc3_;
                     break;
                  }
                  _loc3_--;
               }
               if(_loc2_ < this._curStreamID)
               {
                  if(this._maxBandwidth < this.dsPlayList[this.dsPlayIndex].streams[this._curStreamID].rate)
                  {
                     this.debug(int(this._maxBandwidth) + " - Switching down because of maxBitrate lower than current stream bitrate");
                  }
                  else if(this.bufferLength < this._preferredBufferLength / 2)
                  {
                     this.debug("Switching down because of buffer");
                  }
               }
            }
            else
            {
               this.debug("Switching down because of dropped fps " + (this.info.droppedFrames - this._previousDroppedFrames) * 1000 / (_loc1_ - this._previousDroppedFramesTime) + " is greather than 0.25 of fps: " + this.currentFPS * 0.25);
               this._droppedFramesLockRate = this.dsPlayList[this.dsPlayIndex].streams[this._curStreamID].rate;
               if(this.droppedFramesTimer.currentCount < this.DROPPED_FRAMES_LOCK_LIMIT && !this.droppedFramesTimer.running)
               {
                  this.droppedFramesTimer.start();
                  this.debug("Activating lock to prevent switching to " + this._droppedFramesLockRate + " | Offense Number " + this.droppedFramesTimer.currentCount);
               }
               _loc2_ = this._curStreamID - 1;
            }
            if(_loc2_ > 0)
            {
               if(this.dsPlayList[this.dsPlayIndex].streams[_loc2_].rate >= this._droppedFramesLockRate)
               {
                  this.debug("next rate: " + this.dsPlayList[this.dsPlayIndex].streams[_loc2_].rate + " lock rate: " + this._droppedFramesLockRate);
                  return;
               }
            }
            if(this._curStreamID != _loc2_)
            {
               this.switchStream(_loc2_);
            }
            this._previousDroppedFrames = this.info.droppedFrames;
            this._previousDroppedFramesTime = getTimer();
         }
         else
         {
            this.SwitchUpOnMaxBandwidth();
         }
      }
      
      private function checkVodQOSAndSwitch() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         this.debug("max bw: " + this._maxBandwidth + " cur bitrate: " + this.currentStreamBitRate + " buffer: " + this.bufferLength + "fps: " + this.currentFPS);
         this._lastMaxBandwidthSO.data.maxBandwidth = this._maxBandwidth;
         var _loc1_:Number = (this.info.droppedFrames - this._previousDroppedFrames) * 1000 / (_loc2_ - this._previousDroppedFramesTime);
         _loc2_ = getTimer();
         if(this.bufferLength < this._preferredBufferLength || this._maxBandwidth < this.dsPlayList[this.dsPlayIndex].streams[this._curStreamID].rate && this._maxBandwidth != 0 || this._dropFrameCheckEnabled && this.currentFPS > 0 && _loc1_ / (_loc1_ + this.currentFPS) > 0.25)
         {
            _loc3_ = 0;
            if(this.bufferLength < this._preferredBufferLength || this._maxBandwidth < this.dsPlayList[this.dsPlayIndex].streams[this._curStreamID].rate)
            {
               _loc4_ = this.dsPlayList[this.dsPlayIndex].streamCount - 1;
               while(_loc4_ >= 0)
               {
                  if(this._maxBandwidth > this.dsPlayList[this.dsPlayIndex].streams[_loc4_].rate)
                  {
                     _loc3_ = _loc4_;
                     break;
                  }
                  _loc4_--;
               }
               if(_loc3_ < this._curStreamID)
               {
                  if(this._maxBandwidth < this.dsPlayList[this.dsPlayIndex].streams[this._curStreamID].rate)
                  {
                     this.debug("Switching down because of maxBitrate lower than current stream bitrate");
                  }
                  else if(this.bufferLength < this._curBufferTime)
                  {
                     this.debug("Switching down because of buffer");
                  }
               }
               if(this.bufferLength > this._curBufferTime && this._curBufferTime != this._preferredBufferLength)
               {
                  this._curBufferTime = this._preferredBufferLength;
                  this.debug("setting buffer time to " + this._curBufferTime);
                  this.bufferTime = this._curBufferTime;
               }
            }
            else
            {
               this.debug("Switching down because of dropped fps " + (this.info.droppedFrames - this._previousDroppedFrames) * 1000 / (_loc2_ - this._previousDroppedFramesTime) + " is greather than 0.25 of fps: " + this.currentFPS * 0.25);
               this._droppedFramesLockRate = this.dsPlayList[this.dsPlayIndex].streams[this._curStreamID].rate;
               if(this.droppedFramesTimer.currentCount < this.DROPPED_FRAMES_LOCK_LIMIT && !this.droppedFramesTimer.running)
               {
                  this.droppedFramesTimer.start();
                  this.debug("Activating lock to prevent switching to " + this._droppedFramesLockRate + " | Offense Number " + this.droppedFramesTimer.currentCount);
               }
               _loc3_ = this._curStreamID - 1;
               this._dropFrameCheckEnabled = false;
            }
            if(this.bufferLength < this._aggressiveModeBufferLength && this._reachedBufferTime)
            {
               this.debug("switching to the aggressive mode");
               _loc3_ = 0;
               this.qosTimer.delay = this._switchQOSTimerDelay * 1000 / 2;
            }
            if(_loc3_ > 0)
            {
               if(this.dsPlayList[this.dsPlayIndex].streams[_loc3_].rate >= this._droppedFramesLockRate)
               {
                  return;
               }
            }
            if(this._curStreamID != _loc3_)
            {
               this.switchStream(_loc3_);
            }
            this._previousDroppedFrames = this.info.droppedFrames;
            this._previousDroppedFramesTime = getTimer();
         }
         else
         {
            this.SwitchUpOnMaxBandwidth();
            if(this.qosTimer.delay != this._switchQOSTimerDelay * 1000)
            {
               this.qosTimer.delay = this._switchQOSTimerDelay * 1000;
            }
         }
      }
      
      private function releaseDFLock(param1:TimerEvent) : void
      {
         this.debug("Releasing dropped frames lock and setting the rate back to MAX_VALUE");
         this._droppedFramesLockRate = int.MAX_VALUE;
         this.droppedFramesTimer.stop();
      }
      
      private function SwitchUpOnMaxBandwidth() : void
      {
         if(this.info == null)
         {
            return;
         }
         if(this._manualSwitchMode)
         {
            if(this._curBufferTime != this._preferredBufferLength)
            {
               this._curBufferTime = this._preferredBufferLength;
               this.debug("setting buffer time to " + this._curBufferTime);
               this.bufferTime = this._curBufferTime;
            }
            return;
         }
         var _loc1_:int = getTimer();
         var _loc2_:int = this.info.droppedFrames;
         var _loc3_:int = 0;
         var _loc4_:int = this.dsPlayList[this.dsPlayIndex].streamCount - 1;
         while(_loc4_ >= 0)
         {
            if(this._maxBandwidth > this.dsPlayList[this.dsPlayIndex].streams[_loc4_].rate)
            {
               _loc3_ = _loc4_;
               break;
            }
            _loc4_--;
         }
         if(_loc3_ < this._curStreamID)
         {
            _loc3_ = this._curStreamID;
         }
         else if(_loc3_ > this._curStreamID)
         {
            if(this.bufferLength < this._curBufferTime)
            {
               _loc3_ = this._curStreamID;
            }
         }
         if(_loc3_ > this.dsPlayList[this.dsPlayIndex].streamCount - 1)
         {
            _loc3_ = this.dsPlayList[this.dsPlayIndex].streamCount - 1;
         }
         if(_loc3_ > 0)
         {
            if(this.dsPlayList[this.dsPlayIndex].streams[_loc3_].rate >= this._droppedFramesLockRate)
            {
               return;
            }
         }
         if(this._curStreamID != _loc3_)
         {
            this.switchStream(_loc3_);
         }
         if(this._curBufferTime != this._preferredBufferLength)
         {
            this._curBufferTime = this._preferredBufferLength;
            this.debug("setting buffer time to " + this._curBufferTime);
            this.bufferTime = this._curBufferTime;
         }
      }
      
      private function debug(param1:String) : void
      {
         if(this.DEBUG)
         {
            trace(param1);
         }
      }
   }
}
