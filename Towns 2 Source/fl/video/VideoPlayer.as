package fl.video
{
   import flash.events.Event;
   import flash.events.NetStatusEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.media.SoundTransform;
   import flash.media.Video;
   import flash.net.NetConnection;
   import flash.net.NetStream;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   
   use namespace flvplayback_internal;
   
   public class VideoPlayer extends Video
   {
      
      public static const VERSION:String = "2.5.0.26";
      
      public static const SHORT_VERSION:String = "2.5";
      
      flvplayback_internal static var BUFFER_EMPTY:String = "bufferEmpty";
      
      flvplayback_internal static var BUFFER_FULL:String = "bufferFull";
      
      flvplayback_internal static var BUFFER_FLUSH:String = "bufferFlush";
      
      public static var iNCManagerClass:Object = "fl.video.NCManagerDynamicStream";
      
      public static var netStreamClientClass:Object = VideoPlayerClient;
      
      public static const DEFAULT_UPDATE_TIME_INTERVAL:Number = 250;
      
      public static const DEFAULT_UPDATE_PROGRESS_INTERVAL:Number = 250;
      
      public static const DEFAULT_IDLE_TIMEOUT_INTERVAL:Number = 300000;
      
      flvplayback_internal static const AUTO_RESIZE_INTERVAL:Number = 100;
      
      flvplayback_internal static const DEFAULT_AUTO_RESIZE_PLAYHEAD_TIMEOUT:Number = 0.5;
      
      flvplayback_internal static const DEFAULT_AUTO_RESIZE_METADATA_DELAY_MAX:Number = 5;
      
      flvplayback_internal static const FINISH_AUTO_RESIZE_INTERVAL:Number = 250;
      
      flvplayback_internal static const RTMP_DO_STOP_AT_END_INTERVAL:Number = 500;
      
      flvplayback_internal static const RTMP_DO_SEEK_INTERVAL:Number = 100;
      
      flvplayback_internal static const HTTP_DO_SEEK_INTERVAL:Number = 250;
      
      flvplayback_internal static const DEFAULT_HTTP_DO_SEEK_MAX_COUNT:Number = 4;
      
      flvplayback_internal static const HTTP_DELAYED_BUFFERING_INTERVAL:Number = 100;
      
      flvplayback_internal static const DEFAULT_LAST_UPDATE_TIME_STUCK_COUNT_MAX:int = 10;
       
      
      protected var _state:String;
      
      flvplayback_internal var _cachedState:String;
      
      flvplayback_internal var _bufferState:String;
      
      flvplayback_internal var _sawPlayStop:Boolean;
      
      flvplayback_internal var _cachedPlayheadTime:Number;
      
      protected var _metadata:Object;
      
      protected var _registrationX:Number;
      
      protected var _registrationY:Number;
      
      protected var _registrationWidth:Number;
      
      protected var _registrationHeight:Number;
      
      flvplayback_internal var _startingPlay:Boolean;
      
      flvplayback_internal var _lastSeekTime:Number;
      
      flvplayback_internal var _invalidSeekTime:Boolean;
      
      flvplayback_internal var _invalidSeekRecovery:Boolean;
      
      flvplayback_internal var _readyDispatched:Boolean;
      
      flvplayback_internal var _autoResizeDone:Boolean;
      
      flvplayback_internal var _lastUpdateTime:Number;
      
      flvplayback_internal var lastUpdateTimeStuckCount:Number;
      
      flvplayback_internal var _sawSeekNotify:Boolean;
      
      protected var _ncMgr:INCManager;
      
      protected var _ns:NetStream;
      
      flvplayback_internal var _currentPos:Number;
      
      flvplayback_internal var _atEnd:Boolean;
      
      flvplayback_internal var _atEndCheckPlayhead:Number;
      
      protected var _streamLength:Number;
      
      protected var _align:String;
      
      protected var _scaleMode:String;
      
      protected var _autoPlay:Boolean;
      
      protected var _autoRewind:Boolean;
      
      protected var _contentPath:String;
      
      protected var _bufferTime:Number;
      
      protected var _enableLiveCast:Boolean;
      
      protected var _isLive:Boolean;
      
      flvplayback_internal var _dvrMgr:DVRManager;
      
      protected var _isDVR:Boolean;
      
      protected var _dvrPlaying:Boolean;
      
      protected var _dvrSnapToLive:Boolean;
      
      protected var _dvrStart:Boolean;
      
      protected var _dvrIncrement:Number;
      
      protected var _dvrIncrementVariance:Number;
      
      protected var _dvrFixedDuration:Boolean;
      
      protected var _volume:Number;
      
      protected var _soundTransform:SoundTransform;
      
      protected var __visible:Boolean;
      
      flvplayback_internal var _hiddenForResize:Boolean;
      
      flvplayback_internal var _hiddenForResizeMetadataDelay:Number;
      
      flvplayback_internal var _resizeImmediatelyOnMetadata:Boolean;
      
      flvplayback_internal var _hiddenRewindPlayheadTime:Number;
      
      protected var _videoWidth:int;
      
      protected var _videoHeight:int;
      
      flvplayback_internal var _prevVideoWidth:int;
      
      flvplayback_internal var _prevVideoHeight:int;
      
      flvplayback_internal var oldBounds:Rectangle;
      
      flvplayback_internal var oldRegistrationBounds:Rectangle;
      
      flvplayback_internal var _updateTimeTimer:Timer;
      
      flvplayback_internal var _updateProgressTimer:Timer;
      
      flvplayback_internal var _idleTimeoutTimer:Timer;
      
      flvplayback_internal var _autoResizeTimer:Timer;
      
      flvplayback_internal var _rtmpDoStopAtEndTimer:Timer;
      
      flvplayback_internal var _rtmpDoSeekTimer:Timer;
      
      flvplayback_internal var _httpDoSeekTimer:Timer;
      
      flvplayback_internal var _httpDoSeekCount:Number;
      
      flvplayback_internal var _finishAutoResizeTimer:Timer;
      
      flvplayback_internal var _delayedBufferingTimer:Timer;
      
      flvplayback_internal var waitingForEnough:Boolean;
      
      flvplayback_internal var baselineProgressTime:Number;
      
      flvplayback_internal var startProgressTime:Number;
      
      flvplayback_internal var totalDownloadTime:Number;
      
      flvplayback_internal var totalProgressTime:Number;
      
      flvplayback_internal var autoResizePlayheadTimeout:Number = 0.5;
      
      flvplayback_internal var autoResizeMetadataDelayMax:Number = 5;
      
      flvplayback_internal var httpDoSeekMaxCount:Number = 4;
      
      flvplayback_internal var lastUpdateTimeStuckCountMax:int = 10;
      
      flvplayback_internal var _cmdQueue:Array;
      
      public function VideoPlayer(param1:int = 320, param2:int = 240)
      {
         super(param1,param2);
         this._registrationX = x;
         this._registrationY = y;
         this._registrationWidth = param1;
         this._registrationHeight = param2;
         this._state = VideoState.DISCONNECTED;
         this._cachedState = this._state;
         this._bufferState = BUFFER_EMPTY;
         this._sawPlayStop = false;
         this._cachedPlayheadTime = 0;
         this._metadata = null;
         this._startingPlay = false;
         this._invalidSeekTime = false;
         this._invalidSeekRecovery = false;
         this._currentPos = 0;
         this._atEnd = false;
         this._streamLength = 0;
         this._cmdQueue = new Array();
         this._readyDispatched = false;
         this._autoResizeDone = false;
         this._lastUpdateTime = NaN;
         this.lastUpdateTimeStuckCount = 0;
         this._sawSeekNotify = false;
         this._hiddenForResize = false;
         this._hiddenForResizeMetadataDelay = 0;
         this._resizeImmediatelyOnMetadata = false;
         this._videoWidth = -1;
         this._videoHeight = -1;
         this._prevVideoWidth = 0;
         this._prevVideoHeight = 0;
         this._updateTimeTimer = new Timer(DEFAULT_UPDATE_TIME_INTERVAL);
         this._updateTimeTimer.addEventListener(TimerEvent.TIMER,this.doUpdateTime);
         this._updateProgressTimer = new Timer(DEFAULT_UPDATE_PROGRESS_INTERVAL);
         this._updateProgressTimer.addEventListener(TimerEvent.TIMER,this.doUpdateProgress);
         this._idleTimeoutTimer = new Timer(DEFAULT_IDLE_TIMEOUT_INTERVAL,1);
         this._idleTimeoutTimer.addEventListener(TimerEvent.TIMER,this.doIdleTimeout);
         this._autoResizeTimer = new Timer(AUTO_RESIZE_INTERVAL);
         this._autoResizeTimer.addEventListener(TimerEvent.TIMER,this.doAutoResize);
         this._rtmpDoStopAtEndTimer = new Timer(RTMP_DO_STOP_AT_END_INTERVAL);
         this._rtmpDoStopAtEndTimer.addEventListener(TimerEvent.TIMER,this.rtmpDoStopAtEnd);
         this._rtmpDoSeekTimer = new Timer(RTMP_DO_SEEK_INTERVAL);
         this._rtmpDoSeekTimer.addEventListener(TimerEvent.TIMER,this.rtmpDoSeek);
         this._httpDoSeekTimer = new Timer(HTTP_DO_SEEK_INTERVAL);
         this._httpDoSeekTimer.addEventListener(TimerEvent.TIMER,this.httpDoSeek);
         this._httpDoSeekCount = 0;
         this._finishAutoResizeTimer = new Timer(FINISH_AUTO_RESIZE_INTERVAL,1);
         this._finishAutoResizeTimer.addEventListener(TimerEvent.TIMER,this.finishAutoResize);
         this._delayedBufferingTimer = new Timer(HTTP_DELAYED_BUFFERING_INTERVAL);
         this._delayedBufferingTimer.addEventListener(TimerEvent.TIMER,this.doDelayedBuffering);
         this._isLive = false;
         this._align = VideoAlign.CENTER;
         this._scaleMode = VideoScaleMode.MAINTAIN_ASPECT_RATIO;
         this._autoPlay = true;
         this._autoRewind = false;
         this._bufferTime = 0.1;
         this._soundTransform = new SoundTransform();
         this._volume = this._soundTransform.volume;
         this.__visible = true;
         this._contentPath = "";
         this._enableLiveCast = false;
         this._isDVR = false;
         this._dvrPlaying = false;
         this._dvrSnapToLive = true;
         this._dvrStart = false;
         this._dvrIncrement = 1800;
         this._dvrIncrementVariance = 300;
         this._dvrFixedDuration = false;
         this.waitingForEnough = false;
         this.baselineProgressTime = NaN;
         this.startProgressTime = NaN;
         this.totalDownloadTime = NaN;
         this.totalProgressTime = NaN;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         super.width = this._registrationWidth = param1;
         super.height = this._registrationHeight = param2;
         switch(this._scaleMode)
         {
            case VideoScaleMode.MAINTAIN_ASPECT_RATIO:
            case VideoScaleMode.NO_SCALE:
               this.startAutoResize();
               break;
            default:
               super.x = this._registrationX;
               super.y = this._registrationY;
         }
      }
      
      public function setScale(param1:Number, param2:Number) : void
      {
         super.scaleX = param1;
         super.scaleY = param2;
         this._registrationWidth = width;
         this._registrationHeight = height;
         switch(this._scaleMode)
         {
            case VideoScaleMode.MAINTAIN_ASPECT_RATIO:
            case VideoScaleMode.NO_SCALE:
               this.startAutoResize();
               break;
            default:
               super.x = this._registrationX;
               super.y = this._registrationY;
         }
      }
      
      public function play(param1:String = null, param2:Number = NaN, param3:Boolean = false) : void
      {
         if(param1 != null)
         {
            if(this._state == VideoState.EXEC_QUEUED_CMD)
            {
               this._state = this._cachedState;
            }
            else
            {
               if(!this.stateResponsive && this._state != VideoState.DISCONNECTED && this._state != VideoState.CONNECTION_ERROR)
               {
                  this.queueCmd(QueuedCommand.PLAY,param1,param3,param2);
                  return;
               }
               this.execQueuedCmds();
            }
            this._autoPlay = true;
            this._load(param1,param2,param3);
            return;
         }
         if(!this.isXnOK())
         {
            if(this._state == VideoState.CONNECTION_ERROR || this._ncMgr == null || this._ncMgr.netConnection == null)
            {
               throw new VideoError(VideoError.NO_CONNECTION);
            }
            this.flushQueuedCmds();
            this.queueCmd(QueuedCommand.PLAY);
            this.setState(VideoState.LOADING);
            this._cachedState = VideoState.LOADING;
            this._ncMgr.reconnect();
            return;
         }
         if(this._state == VideoState.EXEC_QUEUED_CMD)
         {
            this._state = this._cachedState;
         }
         else
         {
            if(!this.stateResponsive)
            {
               this.queueCmd(QueuedCommand.PLAY);
               return;
            }
            this.execQueuedCmds();
         }
         if(this._ns == null)
         {
            this._createStream();
         }
         switch(this._state)
         {
            case VideoState.BUFFERING:
               if(this._ncMgr.isRTMP)
               {
                  this._play(0);
                  if(this._atEnd)
                  {
                     this._atEnd = false;
                     this._currentPos = 0;
                     this.setState(VideoState.REWINDING);
                  }
                  else if(this._currentPos > 0)
                  {
                     this._seek(this._currentPos);
                     this._currentPos = 0;
                  }
               }
            case VideoState.PLAYING:
               return;
            case VideoState.STOPPED:
               if(this._ncMgr.isRTMP)
               {
                  if(this._isLive)
                  {
                     this._play(-1);
                     this.setState(VideoState.BUFFERING);
                  }
                  else
                  {
                     this._play(0);
                     if(this._atEnd)
                     {
                        this._atEnd = false;
                        this._currentPos = 0;
                        this._state = VideoState.BUFFERING;
                        this.setState(VideoState.REWINDING);
                     }
                     else if(this._currentPos > 0)
                     {
                        this._seek(this._currentPos);
                        this._currentPos = 0;
                        this.setState(VideoState.BUFFERING);
                     }
                     else
                     {
                        this.setState(VideoState.BUFFERING);
                     }
                  }
               }
               else
               {
                  this._pause(false);
                  if(this._atEnd)
                  {
                     this._atEnd = false;
                     this._seek(0);
                     this._state = VideoState.BUFFERING;
                     this.setState(VideoState.REWINDING);
                  }
                  else if(this._bufferState == BUFFER_EMPTY)
                  {
                     this.setState(VideoState.BUFFERING);
                  }
                  else
                  {
                     this.setState(VideoState.PLAYING);
                  }
               }
               break;
            case VideoState.PAUSED:
               this._pause(false);
               if(!this._ncMgr.isRTMP)
               {
                  if(this._bufferState == BUFFER_EMPTY)
                  {
                     this.setState(VideoState.BUFFERING);
                  }
                  else
                  {
                     this.setState(VideoState.PLAYING);
                  }
               }
               else
               {
                  this.setState(VideoState.BUFFERING);
               }
         }
      }
      
      public function play2(param1:DynamicStreamItem) : void
      {
         var _loc2_:INCManager = this.ncMgr;
         this._prevVideoWidth = super.videoWidth;
         this._prevVideoHeight = super.videoHeight;
         this._autoResizeDone = false;
         this._cachedPlayheadTime = 0;
         this._bufferState = BUFFER_EMPTY;
         this._sawPlayStop = false;
         this._metadata = null;
         this._startingPlay = false;
         this._invalidSeekTime = false;
         this._invalidSeekRecovery = false;
         this._contentPath = "";
         this._currentPos = 0;
         this._streamLength = NaN;
         this._atEnd = false;
         this._readyDispatched = false;
         this._lastUpdateTime = NaN;
         this.lastUpdateTimeStuckCount = 0;
         this._sawSeekNotify = false;
         this.waitingForEnough = false;
         this.baselineProgressTime = NaN;
         this.startProgressTime = NaN;
         this.totalDownloadTime = NaN;
         this.totalProgressTime = NaN;
         this._httpDoSeekCount = 0;
         this._updateTimeTimer.reset();
         this._updateProgressTimer.reset();
         this._idleTimeoutTimer.reset();
         this._autoResizeTimer.reset();
         this._rtmpDoStopAtEndTimer.reset();
         this._rtmpDoSeekTimer.reset();
         this._httpDoSeekTimer.reset();
         this._finishAutoResizeTimer.reset();
         this._delayedBufferingTimer.reset();
         this.closeNS(false);
         if(param1.start == -1)
         {
            this._autoPlay = false;
            this._isLive = true;
            this._updateProgressTimer.start();
         }
         _loc2_.connectDynamicStream(param1);
         this._streamLength = NaN;
         this.setState(VideoState.LOADING);
         this._cachedState = VideoState.LOADING;
      }
      
      public function playWhenEnoughDownloaded() : void
      {
         if(this._ncMgr != null && this._ncMgr.isRTMP)
         {
            this.play();
            return;
         }
         if(!this.isXnOK())
         {
            throw new VideoError(VideoError.NO_CONNECTION);
         }
         if(this._state == VideoState.EXEC_QUEUED_CMD)
         {
            this._state = this._cachedState;
         }
         else
         {
            if(!this.stateResponsive)
            {
               this.queueCmd(QueuedCommand.PLAY_WHEN_ENOUGH);
               return;
            }
            this.execQueuedCmds();
         }
         this.waitingForEnough = true;
         this.checkReadyForPlay(this.bytesLoaded,this.bytesTotal);
      }
      
      public function load(param1:String, param2:Number = NaN, param3:Boolean = false) : void
      {
         if(param1 == null)
         {
            throw new VideoError(VideoError.NULL_URL_LOAD);
         }
         if(this._state == VideoState.EXEC_QUEUED_CMD)
         {
            this._state = this._cachedState;
         }
         else
         {
            if(!this.stateResponsive && this._state != VideoState.DISCONNECTED && this._state != VideoState.CONNECTION_ERROR)
            {
               this.queueCmd(QueuedCommand.LOAD,param1,param3,param2);
               return;
            }
            this.execQueuedCmds();
         }
         this._autoPlay = false;
         this._load(param1,param2,param3);
      }
      
      flvplayback_internal function _load(param1:String, param2:Number, param3:Boolean) : void
      {
         this._prevVideoWidth = super.videoWidth;
         this._prevVideoHeight = super.videoHeight;
         this._autoResizeDone = false;
         this._cachedPlayheadTime = 0;
         this._bufferState = BUFFER_EMPTY;
         this._sawPlayStop = false;
         this._metadata = null;
         this._startingPlay = false;
         this._invalidSeekTime = false;
         this._invalidSeekRecovery = false;
         this._isLive = param3;
         this._contentPath = param1;
         this._currentPos = 0;
         this._streamLength = isNaN(param2) || param2 <= 0?Number(NaN):Number(param2);
         this._atEnd = false;
         this._readyDispatched = false;
         this._lastUpdateTime = NaN;
         this.lastUpdateTimeStuckCount = 0;
         this._sawSeekNotify = false;
         this.waitingForEnough = false;
         this.baselineProgressTime = NaN;
         this.startProgressTime = NaN;
         this.totalDownloadTime = NaN;
         this.totalProgressTime = NaN;
         this._httpDoSeekCount = 0;
         this._updateTimeTimer.reset();
         this._updateProgressTimer.reset();
         this._idleTimeoutTimer.reset();
         this._autoResizeTimer.reset();
         this._rtmpDoStopAtEndTimer.reset();
         this._rtmpDoSeekTimer.reset();
         this._httpDoSeekTimer.reset();
         this._finishAutoResizeTimer.reset();
         this._delayedBufferingTimer.reset();
         this.closeNS(false);
         if(this._ncMgr == null)
         {
            this.createINCManager();
         }
         var _loc4_:Boolean = this._ncMgr.connectToURL(this._contentPath);
         this.setState(VideoState.LOADING);
         this._cachedState = VideoState.LOADING;
         if(_loc4_)
         {
            this._createStream();
            this._setUpStream();
         }
         if(!this._ncMgr.isRTMP)
         {
            this._updateProgressTimer.start();
         }
      }
      
      public function pause() : void
      {
         if(!this.isXnOK())
         {
            if(this._state == VideoState.CONNECTION_ERROR || this._ncMgr == null || this._ncMgr.netConnection == null)
            {
               throw new VideoError(VideoError.NO_CONNECTION);
            }
            return;
         }
         if(this._state == VideoState.EXEC_QUEUED_CMD)
         {
            this._state = this._cachedState;
         }
         else
         {
            if(!this.stateResponsive)
            {
               this.queueCmd(QueuedCommand.PAUSE);
               return;
            }
            this.execQueuedCmds();
         }
         if(this._state == VideoState.PAUSED || this._state == VideoState.STOPPED || this._ns == null)
         {
            return;
         }
         this._pause(true);
         this.setState(VideoState.PAUSED);
      }
      
      public function stop() : void
      {
         if(!this.isXnOK())
         {
            if(this._state == VideoState.CONNECTION_ERROR || this._ncMgr == null || this._ncMgr.netConnection == null)
            {
               throw new VideoError(VideoError.NO_CONNECTION);
            }
            return;
         }
         if(this._state == VideoState.EXEC_QUEUED_CMD)
         {
            this._state = this._cachedState;
         }
         else
         {
            if(!this.stateResponsive)
            {
               this.queueCmd(QueuedCommand.STOP);
               return;
            }
            this.execQueuedCmds();
         }
         if(this._state == VideoState.STOPPED || this._ns == null)
         {
            return;
         }
         if(this._ncMgr.isRTMP)
         {
            if(this._autoRewind && !this._isLive)
            {
               this._currentPos = 0;
               this._play(0,0);
               this._state = VideoState.STOPPED;
               this.setState(VideoState.REWINDING);
            }
            else
            {
               this.closeNS(true);
               this.setState(VideoState.STOPPED);
            }
         }
         else
         {
            this._pause(true);
            if(this._autoRewind)
            {
               this._seek(0);
               this._state = VideoState.STOPPED;
               this.setState(VideoState.REWINDING);
            }
            else
            {
               this.setState(VideoState.STOPPED);
            }
         }
      }
      
      public function seek(param1:Number) : void
      {
         if(this._invalidSeekTime)
         {
            return;
         }
         if(isNaN(param1) || param1 < 0)
         {
            throw new VideoError(VideoError.INVALID_SEEK);
         }
         if(!this.isXnOK())
         {
            if(this._state == VideoState.CONNECTION_ERROR || this._ncMgr == null || this._ncMgr.netConnection == null)
            {
               throw new VideoError(VideoError.NO_CONNECTION);
            }
            this.flushQueuedCmds();
            this.queueCmd(QueuedCommand.SEEK,null,false,param1);
            this.setState(VideoState.LOADING);
            this._cachedState = VideoState.LOADING;
            this._ncMgr.reconnect();
            return;
         }
         if(this._state == VideoState.EXEC_QUEUED_CMD)
         {
            this._state = this._cachedState;
         }
         else
         {
            if(!this.stateResponsive)
            {
               this.queueCmd(QueuedCommand.SEEK,null,false,param1);
               return;
            }
            this.execQueuedCmds();
         }
         if(this._ns == null)
         {
            this._createStream();
         }
         if(this._atEnd && param1 < this.playheadTime)
         {
            this._atEnd = false;
         }
         switch(this._state)
         {
            case VideoState.PLAYING:
               this._state = VideoState.BUFFERING;
            case VideoState.BUFFERING:
            case VideoState.PAUSED:
               this._seek(param1);
               this.setState(VideoState.SEEKING);
               break;
            case VideoState.STOPPED:
               if(this._ncMgr.isRTMP)
               {
                  this._play(0);
                  this._pause(true);
               }
               this._seek(param1);
               this._state = VideoState.PAUSED;
               this.setState(VideoState.SEEKING);
         }
      }
      
      public function close() : void
      {
         this.closeNS(true);
         if(this._ncMgr != null && this._ncMgr.isRTMP)
         {
            this._ncMgr.close();
         }
         this.setState(VideoState.DISCONNECTED);
         dispatchEvent(new VideoEvent(VideoEvent.CLOSE,false,false,this._state,this.playheadTime));
      }
      
      override public function set scaleX(param1:Number) : void
      {
         super.scaleX = param1;
         this._registrationWidth = width;
         switch(this._scaleMode)
         {
            case VideoScaleMode.MAINTAIN_ASPECT_RATIO:
            case VideoScaleMode.NO_SCALE:
               this.startAutoResize();
         }
      }
      
      override public function set scaleY(param1:Number) : void
      {
         super.scaleY = param1;
         this._registrationHeight = height;
         switch(this._scaleMode)
         {
            case VideoScaleMode.MAINTAIN_ASPECT_RATIO:
            case VideoScaleMode.NO_SCALE:
               this.startAutoResize();
         }
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(this.x != param1)
         {
            _loc2_ = param1 - this.x;
            super.x = param1;
            this._registrationX = this._registrationX + _loc2_;
         }
      }
      
      override public function set y(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(this.y != param1)
         {
            _loc2_ = param1 - this.y;
            super.y = param1;
            this._registrationY = this._registrationY + _loc2_;
         }
      }
      
      override public function set width(param1:Number) : void
      {
         super.width = this._registrationWidth = param1;
         switch(this._scaleMode)
         {
            case VideoScaleMode.MAINTAIN_ASPECT_RATIO:
            case VideoScaleMode.NO_SCALE:
               this.startAutoResize();
               break;
            default:
               super.width = param1;
         }
      }
      
      override public function set height(param1:Number) : void
      {
         super.height = this._registrationHeight = param1;
         switch(this._scaleMode)
         {
            case VideoScaleMode.MAINTAIN_ASPECT_RATIO:
            case VideoScaleMode.NO_SCALE:
               this.startAutoResize();
               break;
            default:
               super.height = param1;
         }
      }
      
      public function get registrationX() : Number
      {
         return this._registrationX;
      }
      
      public function set registrationX(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(this._registrationX != param1)
         {
            _loc2_ = param1 - this._registrationX;
            this._registrationX = param1;
            this.x = this.x + _loc2_;
         }
      }
      
      public function get registrationY() : Number
      {
         return this._registrationY;
      }
      
      public function set registrationY(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(this._registrationY != param1)
         {
            _loc2_ = param1 - this._registrationY;
            this._registrationY = param1;
            this.y = this.y + _loc2_;
         }
      }
      
      public function get registrationWidth() : Number
      {
         return this._registrationWidth;
      }
      
      public function set registrationWidth(param1:Number) : void
      {
         this.width = param1;
      }
      
      public function get registrationHeight() : Number
      {
         return this._registrationHeight;
      }
      
      public function set registrationHeight(param1:Number) : void
      {
         this.height = param1;
      }
      
      override public function get videoWidth() : int
      {
         if(this._videoWidth > 0)
         {
            return this._videoWidth;
         }
         if(this._metadata != null && !isNaN(this._metadata.width) && !isNaN(this._metadata.height))
         {
            if(this._metadata.width == this._metadata.height && this._readyDispatched)
            {
               return super.videoWidth;
            }
            return int(this._metadata.width);
         }
         if(this._readyDispatched)
         {
            return super.videoWidth;
         }
         return -1;
      }
      
      override public function get videoHeight() : int
      {
         if(this._videoHeight > 0)
         {
            return this._videoHeight;
         }
         if(this._metadata != null && !isNaN(this._metadata.width) && !isNaN(this._metadata.height))
         {
            if(this._metadata.width == this._metadata.height && this._readyDispatched)
            {
               return super.videoHeight;
            }
            return int(this._metadata.height);
         }
         if(this._readyDispatched)
         {
            return super.videoHeight;
         }
         return -1;
      }
      
      override public function get visible() : Boolean
      {
         if(!this._hiddenForResize)
         {
            this.__visible = super.visible;
         }
         return this.__visible;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         this.__visible = param1;
         if(!this._hiddenForResize)
         {
            super.visible = this.__visible;
         }
      }
      
      public function get align() : String
      {
         return this._align;
      }
      
      public function set align(param1:String) : void
      {
         if(this._align != param1)
         {
            switch(param1)
            {
               case VideoAlign.CENTER:
               case VideoAlign.TOP:
               case VideoAlign.LEFT:
               case VideoAlign.BOTTOM:
               case VideoAlign.RIGHT:
               case VideoAlign.TOP_LEFT:
               case VideoAlign.TOP_RIGHT:
               case VideoAlign.BOTTOM_LEFT:
               case VideoAlign.BOTTOM_RIGHT:
                  this._align = param1;
                  switch(this._scaleMode)
                  {
                     case VideoScaleMode.MAINTAIN_ASPECT_RATIO:
                     case VideoScaleMode.NO_SCALE:
                        this.startAutoResize();
                  }
               default:
                  return;
            }
         }
      }
      
      public function get scaleMode() : String
      {
         return this._scaleMode;
      }
      
      public function set scaleMode(param1:String) : void
      {
         if(this._scaleMode != param1)
         {
            switch(param1)
            {
               case VideoScaleMode.MAINTAIN_ASPECT_RATIO:
               case VideoScaleMode.NO_SCALE:
               case VideoScaleMode.EXACT_FIT:
                  if(this._scaleMode == VideoScaleMode.EXACT_FIT && this._resizeImmediatelyOnMetadata && (this._videoWidth < 0 || this._videoHeight < 0))
                  {
                     this._resizeImmediatelyOnMetadata = false;
                  }
                  this._scaleMode = param1;
                  this.startAutoResize();
               default:
                  return;
            }
         }
      }
      
      public function get autoRewind() : Boolean
      {
         return this._autoRewind;
      }
      
      public function set autoRewind(param1:Boolean) : void
      {
         this._autoRewind = param1;
      }
      
      public function get playheadTime() : Number
      {
         var _loc1_:Number = this._ns == null?Number(this._currentPos):Number(this._ns.time);
         if(this._metadata != null && this._metadata.audiodelay != undefined)
         {
            _loc1_ = _loc1_ - this._metadata.audiodelay;
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
         }
         return _loc1_;
      }
      
      public function set playheadTime(param1:Number) : void
      {
         this.seek(param1);
      }
      
      public function get source() : String
      {
         return this._contentPath;
      }
      
      public function get volume() : Number
      {
         return this.soundTransform.volume;
      }
      
      public function set volume(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.soundTransform;
         _loc2_.volume = param1;
         this.soundTransform = _loc2_;
      }
      
      public function get soundTransform() : SoundTransform
      {
         if(this._ns != null)
         {
            this._soundTransform = this._ns.soundTransform;
         }
         var _loc1_:SoundTransform = new SoundTransform();
         _loc1_.volume = !!this._hiddenForResize?Number(this._volume):Number(this._soundTransform.volume);
         _loc1_.leftToLeft = this._soundTransform.leftToLeft;
         _loc1_.leftToRight = this._soundTransform.leftToRight;
         _loc1_.rightToLeft = this._soundTransform.rightToLeft;
         _loc1_.rightToRight = this._soundTransform.rightToRight;
         return _loc1_;
      }
      
      public function set soundTransform(param1:SoundTransform) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(this._hiddenForResize)
         {
            this._volume = param1.volume;
         }
         this._soundTransform = new SoundTransform();
         this._soundTransform.volume = !!this._hiddenForResize?Number(0):Number(param1.volume);
         this._soundTransform.leftToLeft = param1.leftToLeft;
         this._soundTransform.leftToRight = param1.leftToRight;
         this._soundTransform.rightToLeft = param1.rightToLeft;
         this._soundTransform.rightToRight = param1.rightToRight;
         if(this._ns != null)
         {
            this._ns.soundTransform = this._soundTransform;
         }
      }
      
      public function get isRTMP() : Boolean
      {
         if(this._ncMgr == null)
         {
            return false;
         }
         return this._ncMgr.isRTMP;
      }
      
      public function get isLive() : Boolean
      {
         return this._isLive;
      }
      
      public function get state() : String
      {
         return this._state;
      }
      
      public function get stateResponsive() : Boolean
      {
         switch(this._state)
         {
            case VideoState.STOPPED:
            case VideoState.PLAYING:
            case VideoState.PAUSED:
            case VideoState.BUFFERING:
               return true;
            default:
               return false;
         }
      }
      
      public function get bytesLoaded() : uint
      {
         if(this._ns == null || this._ncMgr.isRTMP)
         {
            return uint.MIN_VALUE;
         }
         return this._ns.bytesLoaded;
      }
      
      public function get bytesTotal() : uint
      {
         if(this._ns == null || this._ncMgr.isRTMP)
         {
            return uint.MAX_VALUE;
         }
         return this._ns.bytesTotal;
      }
      
      public function get totalTime() : Number
      {
         return this._streamLength;
      }
      
      public function get bufferTime() : Number
      {
         if(this._ns != null)
         {
            this._bufferTime = this._ns.bufferTime;
         }
         return this._bufferTime;
      }
      
      public function set bufferTime(param1:Number) : void
      {
         this._bufferTime = param1;
         if(this._ns != null)
         {
            this._ns.bufferTime = this._bufferTime;
         }
      }
      
      public function get dvrIncrement() : Number
      {
         return this._dvrIncrement;
      }
      
      public function set dvrIncrement(param1:Number) : void
      {
         if(param1 > 60)
         {
            this._dvrIncrement = param1;
            if(this._dvrIncrementVariance > this._dvrIncrement)
            {
               this._dvrIncrementVariance = param1 / 2;
            }
         }
      }
      
      public function get dvrIncrementVariance() : Number
      {
         return this._dvrIncrementVariance;
      }
      
      public function set dvrIncrementVariance(param1:Number) : void
      {
         if(param1 > 0 && param1 < this._dvrIncrement - 60)
         {
            this._dvrIncrementVariance = param1;
         }
      }
      
      public function get dvrFixedDuration() : Boolean
      {
         return this._dvrFixedDuration;
      }
      
      public function set dvrFixedDuration(param1:Boolean) : void
      {
         this._dvrFixedDuration = param1;
      }
      
      public function get dvrSnapToLive() : Boolean
      {
         return this._dvrSnapToLive;
      }
      
      public function set dvrSnapToLive(param1:Boolean) : void
      {
         this._dvrSnapToLive = param1;
      }
      
      public function get enableLiveCast() : Boolean
      {
         return this._enableLiveCast;
      }
      
      public function set enableLiveCast(param1:Boolean) : void
      {
         this._enableLiveCast = param1;
      }
      
      public function get idleTimeout() : Number
      {
         return this._idleTimeoutTimer.delay;
      }
      
      public function set idleTimeout(param1:Number) : void
      {
         this._idleTimeoutTimer.delay = param1;
      }
      
      public function get isDVR() : Boolean
      {
         return this._isDVR;
      }
      
      public function set isDVR(param1:Boolean) : void
      {
         if(param1 && this._isLive)
         {
            this._isLive = false;
         }
         this._isDVR = param1;
      }
      
      public function get playheadUpdateInterval() : Number
      {
         return this._updateTimeTimer.delay;
      }
      
      public function set playheadUpdateInterval(param1:Number) : void
      {
         this._updateTimeTimer.delay = param1;
      }
      
      public function get progressInterval() : Number
      {
         return this._updateProgressTimer.delay;
      }
      
      public function set progressInterval(param1:Number) : void
      {
         this._updateProgressTimer.delay = param1;
      }
      
      public function get ncMgr() : INCManager
      {
         if(this._ncMgr == null)
         {
            this.createINCManager();
         }
         return this._ncMgr;
      }
      
      public function get netConnection() : NetConnection
      {
         if(this._ncMgr != null)
         {
            return this._ncMgr.netConnection;
         }
         return null;
      }
      
      public function get netStream() : NetStream
      {
         return this._ns;
      }
      
      public function get metadata() : Object
      {
         return this._metadata;
      }
      
      flvplayback_internal function doUpdateTime(param1:TimerEvent = null) : void
      {
         var _currDuration:Number = NaN;
         var e:TimerEvent = param1;
         var theTime:Number = this.playheadTime;
         if(theTime != this._atEndCheckPlayhead)
         {
            this._atEndCheckPlayhead = NaN;
         }
         switch(this._state)
         {
            case VideoState.STOPPED:
            case VideoState.DISCONNECTED:
            case VideoState.CONNECTION_ERROR:
               this._updateTimeTimer.stop();
               break;
            case VideoState.PAUSED:
               if(!this._isDVR)
               {
                  this._updateTimeTimer.stop();
               }
               break;
            case VideoState.PLAYING:
            case VideoState.BUFFERING:
               if(this._ncMgr != null && !this._ncMgr.isRTMP && this._lastUpdateTime == theTime && this._ns != null && this._ns.bytesLoaded == this._ns.bytesTotal)
               {
                  if(this.lastUpdateTimeStuckCount > this.lastUpdateTimeStuckCountMax)
                  {
                     this.lastUpdateTimeStuckCount = 0;
                     this.httpDoStopAtEnd();
                  }
                  else
                  {
                     this.lastUpdateTimeStuckCount++;
                  }
               }
         }
         if(this._isDVR && this._dvrMgr != null && this._dvrPlaying)
         {
            if(this._streamLength - this._dvrMgr.currentDuration < this._dvrIncrementVariance && this._dvrMgr.isRec && !this._dvrMgr.offline && this._dvrMgr.checkInterval(this._dvrIncrementVariance))
            {
               if(this._ncMgr.isDynamicStream)
               {
                  try
                  {
                     this._dvrMgr.getStreamDuration((this._ns as DynamicStream).currentStreamName);
                  }
                  catch(e:Error)
                  {
                     _dvrMgr.getStreamDuration(_ncMgr.streamName);
                  }
               }
               else
               {
                  this._dvrMgr.getStreamDuration(this._ncMgr.streamName);
               }
            }
            if(this._ns.time > this._dvrMgr.totalDuration && this._dvrMgr.totalDuration != 0)
            {
               if(this._dvrFixedDuration == true)
               {
                  this._ns.play(false);
               }
            }
            if(this._dvrMgr.currentDuration >= 0)
            {
               _currDuration = this._dvrMgr.currentDuration <= this._streamLength?Number(this._dvrMgr.currentDuration):Number(this._streamLength);
               if(_currDuration >= this._streamLength)
               {
                  this._streamLength = _currDuration;
               }
               dispatchEvent(new VideoProgressEvent(VideoProgressEvent.PROGRESS,false,false,_currDuration,this._streamLength));
            }
         }
         if(this._lastUpdateTime != theTime)
         {
            dispatchEvent(new VideoEvent(VideoEvent.PLAYHEAD_UPDATE,false,false,this._state,theTime));
            this._lastUpdateTime = theTime;
            this.lastUpdateTimeStuckCount = 0;
         }
      }
      
      flvplayback_internal function doUpdateProgress(param1:TimerEvent) : void
      {
         if(this._ns == null)
         {
            return;
         }
         var _loc2_:uint = this._ns.bytesLoaded;
         var _loc3_:uint = this._ns.bytesTotal;
         if(_loc3_ < uint.MAX_VALUE)
         {
            dispatchEvent(new VideoProgressEvent(VideoProgressEvent.PROGRESS,false,false,_loc2_,_loc3_));
         }
         if(this._state == VideoState.DISCONNECTED || this._state == VideoState.CONNECTION_ERROR || _loc2_ >= _loc3_)
         {
            this._updateProgressTimer.stop();
         }
         this.checkEnoughDownloaded(_loc2_,_loc3_);
      }
      
      flvplayback_internal function updateDVRDuration(param1:Event) : void
      {
         var _loc2_:int = param1.target.currentDuration;
         if(this._dvrMgr.totalDuration > 0)
         {
            if(!this._dvrFixedDuration && this._dvrMgr.isRec && this._dvrMgr.totalDuration - this._dvrMgr.currentDuration < this._dvrIncrementVariance)
            {
               this._streamLength = this._dvrMgr.currentDuration + this._dvrIncrement;
            }
            else if(!this._dvrFixedDuration && !this._dvrMgr.isRec)
            {
               this._streamLength = this._dvrMgr.currentDuration;
            }
            else
            {
               this._streamLength = this._dvrMgr.totalDuration;
            }
         }
         else
         {
            this._streamLength = this._dvrMgr.currentDuration + this._dvrIncrement;
         }
         if(this._dvrStart && this._dvrMgr.offline != true)
         {
            this._dvrStart = false;
            this._createStream();
            this._setUpStream();
         }
         else if(this._dvrStart && this._dvrMgr.offline == true)
         {
            return;
         }
         if(_loc2_ > this._streamLength && this._dvrFixedDuration && this._dvrMgr.totalDuration > 0)
         {
            _loc2_ = this._streamLength;
         }
         if(_loc2_ >= this._streamLength)
         {
            this._streamLength = _loc2_;
         }
         dispatchEvent(new VideoProgressEvent(VideoProgressEvent.PROGRESS,false,false,_loc2_,this._streamLength));
      }
      
      flvplayback_internal function handleDVRError(param1:Event) : void
      {
      }
      
      flvplayback_internal function checkEnoughDownloaded(param1:uint, param2:uint) : void
      {
         if(param1 == 0 || param2 == uint.MAX_VALUE)
         {
            return;
         }
         if(isNaN(this.totalTime) || this.totalTime <= 0)
         {
            if(this.waitingForEnough && this.stateResponsive)
            {
               this.waitingForEnough = false;
               this._cachedState = this._state;
               this._state = VideoState.EXEC_QUEUED_CMD;
               this.play();
               this.execQueuedCmds();
            }
            return;
         }
         if(param1 >= param2)
         {
            if(this.waitingForEnough)
            {
               this.waitingForEnough = false;
               this._cachedState = this._state;
               this._state = VideoState.EXEC_QUEUED_CMD;
               this.play();
               this.execQueuedCmds();
            }
            return;
         }
         if(isNaN(this.baselineProgressTime))
         {
            this.baselineProgressTime = param1 / param2 * this.totalTime;
         }
         if(isNaN(this.startProgressTime))
         {
            this.startProgressTime = getTimer();
         }
         else
         {
            this.totalDownloadTime = (getTimer() - this.startProgressTime) / 1000;
            this.totalProgressTime = param1 / param2 * this.totalTime;
            if(this.waitingForEnough)
            {
               this.checkReadyForPlay(param1,param2);
            }
         }
      }
      
      flvplayback_internal function checkReadyForPlay(param1:uint, param2:uint) : void
      {
         var _loc3_:Number = NaN;
         if(param1 >= param2)
         {
            this.waitingForEnough = false;
            this._cachedState = this._state;
            this._state = VideoState.EXEC_QUEUED_CMD;
            this.play();
            this.execQueuedCmds();
            return;
         }
         if(isNaN(this.baselineProgressTime))
         {
            return;
         }
         if(isNaN(this.totalTime) || this.totalTime < 0)
         {
            this.waitingForEnough = false;
            this._cachedState = this._state;
            this._state = VideoState.EXEC_QUEUED_CMD;
            this.play();
            this.execQueuedCmds();
         }
         else if(this.totalDownloadTime > 1.5)
         {
            _loc3_ = (this.totalProgressTime - this.baselineProgressTime) / this.totalDownloadTime;
            if(this.totalTime - this.playheadTime > (this.totalTime - this.totalProgressTime) / _loc3_)
            {
               this.waitingForEnough = false;
               this._cachedState = this._state;
               this._state = VideoState.EXEC_QUEUED_CMD;
               this.play();
               this.execQueuedCmds();
            }
         }
      }
      
      flvplayback_internal function rtmpNetStatus(param1:NetStatusEvent) : void
      {
         var dsi:DynamicStreamItem = null;
         var e:NetStatusEvent = param1;
         if(this._state == VideoState.CONNECTION_ERROR)
         {
            return;
         }
         switch(e.info.code)
         {
            case "NetStream.Play.Stop":
               if(this._startingPlay)
               {
                  return;
               }
               if(this._isDVR && this._dvrMgr != null && this._dvrMgr.checkInterval(1))
               {
                  this._dvrPlaying = false;
                  if(this._ncMgr.isDynamicStream)
                  {
                     try
                     {
                        this._dvrMgr.getStreamDuration((this._ns as DynamicStream).currentStreamName);
                     }
                     catch(e:Error)
                     {
                        _dvrMgr.getStreamDuration(_ncMgr.streamName);
                     }
                  }
                  else
                  {
                     this._dvrMgr.getStreamDuration(this._ncMgr.streamName);
                  }
               }
               switch(this._state)
               {
                  case VideoState.RESIZING:
                     if(this._hiddenForResize)
                     {
                        this.finishAutoResize();
                     }
                     break;
                  case VideoState.LOADING:
                  case VideoState.STOPPED:
                  case VideoState.PAUSED:
                     break;
                  default:
                     this._sawPlayStop = true;
                     if(!this._rtmpDoStopAtEndTimer.running && (this._bufferState == BUFFER_FLUSH || this._ns.bufferTime <= 0.1 && this._ns.bufferLength <= 0.1))
                     {
                        this._cachedPlayheadTime = this.playheadTime;
                        this._rtmpDoStopAtEndTimer.reset();
                        this._rtmpDoStopAtEndTimer.start();
                     }
               }
               break;
            case "NetStream.Buffer.Empty":
               switch(this._bufferState)
               {
                  case BUFFER_FULL:
                     if(this._sawPlayStop)
                     {
                        this.rtmpDoStopAtEnd();
                     }
                     else if(this._state == VideoState.PLAYING)
                     {
                        this.setState(VideoState.BUFFERING);
                     }
               }
               this._bufferState = BUFFER_EMPTY;
               this._sawPlayStop = false;
               break;
            case "NetStream.Buffer.Flush":
               if(this._sawSeekNotify && this._state == VideoState.SEEKING)
               {
                  this._bufferState = BUFFER_EMPTY;
                  this._sawPlayStop = false;
                  this.setStateFromCachedState(false);
                  this.doUpdateTime();
                  this.execQueuedCmds();
               }
               if(!this._rtmpDoStopAtEndTimer.running && this._sawPlayStop && (this._bufferState == BUFFER_EMPTY || this._ns.bufferTime <= 0.1 && this._ns.bufferLength <= 0.1))
               {
                  this._cachedPlayheadTime = this.playheadTime;
                  this._rtmpDoStopAtEndTimer.reset();
                  this._rtmpDoStopAtEndTimer.start();
               }
               switch(this._bufferState)
               {
                  case BUFFER_EMPTY:
                     if(!this._hiddenForResize)
                     {
                        if(this._state == VideoState.LOADING && this._cachedState == VideoState.PLAYING || this._state == VideoState.BUFFERING)
                        {
                           this.setState(VideoState.PLAYING);
                        }
                        else if(this._cachedState == VideoState.BUFFERING)
                        {
                           this._cachedState = VideoState.PLAYING;
                        }
                     }
                     this._bufferState = BUFFER_FLUSH;
                     break;
                  default:
                     if(this._state == VideoState.BUFFERING)
                     {
                        this.setStateFromCachedState();
                     }
               }
               break;
            case "NetStream.Buffer.Full":
               if(this._sawSeekNotify && this._state == VideoState.SEEKING)
               {
                  this._bufferState = BUFFER_EMPTY;
                  this._sawPlayStop = false;
                  this.setStateFromCachedState(false);
                  this.doUpdateTime();
                  this.execQueuedCmds();
               }
               switch(this._bufferState)
               {
                  case BUFFER_EMPTY:
                     this._bufferState = BUFFER_FULL;
                     if(!this._hiddenForResize)
                     {
                        if(this._state == VideoState.LOADING && this._cachedState == VideoState.PLAYING || this._state == VideoState.BUFFERING)
                        {
                           this.setState(VideoState.PLAYING);
                        }
                        else if(this._cachedState == VideoState.BUFFERING)
                        {
                           this._cachedState = VideoState.PLAYING;
                        }
                        if(this._rtmpDoStopAtEndTimer.running)
                        {
                           this._sawPlayStop = true;
                           this._rtmpDoStopAtEndTimer.reset();
                        }
                     }
                     break;
                  case BUFFER_FLUSH:
                     this._bufferState = BUFFER_FULL;
                     if(this._rtmpDoStopAtEndTimer.running)
                     {
                        this._sawPlayStop = true;
                        this._rtmpDoStopAtEndTimer.reset();
                     }
               }
               if(this._state == VideoState.BUFFERING)
               {
                  this.setStateFromCachedState();
               }
               break;
            case "NetStream.Pause.Notify":
               if(this._state == VideoState.RESIZING && this._hiddenForResize)
               {
                  this.finishAutoResize();
               }
               break;
            case "NetStream.Unpause.Notify":
               if(this._state == VideoState.PAUSED)
               {
                  this._state = VideoState.PLAYING;
                  this.setState(VideoState.BUFFERING);
               }
               else
               {
                  this._cachedState = VideoState.PLAYING;
               }
               break;
            case "NetStream.Play.Start":
               this._rtmpDoStopAtEndTimer.reset();
               this._bufferState = BUFFER_EMPTY;
               this._sawPlayStop = false;
               if(this._isDVR && this._dvrMgr != null)
               {
                  this._dvrPlaying = true;
               }
               if(this._startingPlay && this._dvrMgr != null)
               {
                  if(this._dvrFixedDuration && this._dvrMgr.totalDuration > 0 && this._dvrMgr.currentDuration >= this._dvrMgr.totalDuration)
                  {
                     this._dvrSnapToLive = false;
                  }
                  if(this._dvrSnapToLive && this._isDVR && this._dvrMgr.isRec)
                  {
                     this._seek(this._dvrMgr.currentDuration);
                  }
                  this._startingPlay = false;
                  this._cachedPlayheadTime = this.playheadTime;
               }
               else if(this._startingPlay)
               {
                  this._startingPlay = false;
                  this._cachedPlayheadTime = this.playheadTime;
               }
               else if(this._state == VideoState.PLAYING)
               {
                  this.setState(VideoState.BUFFERING);
               }
               break;
            case "NetStream.Play.Reset":
               this._rtmpDoStopAtEndTimer.reset();
               if(this._state == VideoState.REWINDING)
               {
                  this._rtmpDoSeekTimer.reset();
                  if(this.playheadTime == 0 || this.playheadTime < this._cachedPlayheadTime)
                  {
                     this.setStateFromCachedState();
                  }
                  else
                  {
                     this._cachedPlayheadTime = this.playheadTime;
                     this._rtmpDoSeekTimer.start();
                  }
               }
               break;
            case "NetStream.Seek.Notify":
               if(this.playheadTime != this._cachedPlayheadTime)
               {
                  this.setStateFromCachedState(false);
                  this.doUpdateTime();
                  this.execQueuedCmds();
               }
               else
               {
                  this._sawSeekNotify = true;
                  this._rtmpDoSeekTimer.start();
               }
               break;
            case "Netstream.Play.UnpublishNotify":
               break;
            case "Netstream.Play.PublishNotify":
               break;
            case "NetStream.Play.StreamNotFound":
               if(this._ncMgr.isDynamicStream == true)
               {
                  dsi = (this._ns as DynamicStream).getStreamItemAt();
                  try
                  {
                     if(dsi.streams.length > 0)
                     {
                        break;
                     }
                  }
                  catch(e:Error)
                  {
                  }
               }
               this.closeNS(false);
               if(!this._ncMgr.connectAgain())
               {
                  this.setState(VideoState.CONNECTION_ERROR);
               }
               break;
            case "NetStream.Play.Failed":
            case "NetStream.Failed":
            case "NetStream.Play.FileStructureInvalid":
            case "NetStream.Play.NoSupportedTrackFound":
               this.setState(VideoState.CONNECTION_ERROR);
         }
      }
      
      flvplayback_internal function httpNetStatus(param1:NetStatusEvent) : void
      {
         switch(param1.info.code)
         {
            case "NetStream.Play.Stop":
               this._delayedBufferingTimer.reset();
               if(this._invalidSeekTime)
               {
                  this._invalidSeekTime = false;
                  this._invalidSeekRecovery = true;
                  this.setState(this._cachedState);
                  this.seek(this.playheadTime);
               }
               else
               {
                  switch(this._state)
                  {
                     case VideoState.SEEKING:
                        this.httpDoSeek(null);
                     case VideoState.PLAYING:
                     case VideoState.BUFFERING:
                        this.httpDoStopAtEnd();
                  }
               }
               break;
            case "NetStream.Seek.InvalidTime":
               if(this._invalidSeekRecovery)
               {
                  this._invalidSeekTime = false;
                  this._invalidSeekRecovery = false;
                  this.setState(this._cachedState);
                  this.seek(0);
               }
               else
               {
                  this._invalidSeekTime = true;
                  this._httpDoSeekCount = 0;
                  this._httpDoSeekTimer.start();
               }
               break;
            case "NetStream.Buffer.Empty":
               this._bufferState = BUFFER_EMPTY;
               if(this._state == VideoState.PLAYING)
               {
                  this._delayedBufferingTimer.reset();
                  this._delayedBufferingTimer.start();
               }
               break;
            case "NetStream.Buffer.Full":
            case "NetStream.Buffer.Flush":
               this._delayedBufferingTimer.reset();
               this._bufferState = BUFFER_FULL;
               if(!this._hiddenForResize)
               {
                  if(this._state == VideoState.LOADING && this._cachedState == VideoState.PLAYING || this._state == VideoState.BUFFERING)
                  {
                     this.setState(VideoState.PLAYING);
                  }
                  else if(this._cachedState == VideoState.BUFFERING)
                  {
                     this._cachedState = VideoState.PLAYING;
                  }
               }
               break;
            case "NetStream.Seek.Notify":
               this._invalidSeekRecovery = false;
               switch(this._state)
               {
                  case VideoState.SEEKING:
                  case VideoState.REWINDING:
                     this._httpDoSeekCount = 0;
                     this._httpDoSeekTimer.start();
               }
               break;
            case "NetStream.Play.StreamNotFound":
            case "NetStream.Play.FileStructureInvalid":
            case "NetStream.Play.NoSupportedTrackFound":
               this.setState(VideoState.CONNECTION_ERROR);
         }
      }
      
      public function ncConnected() : void
      {
         var fpcaps:FPMediaCapabilities = null;
         var j:int = 0;
         var i:int = 0;
         if(this._ncMgr == null || this._ncMgr.netConnection == null)
         {
            this.setState(VideoState.CONNECTION_ERROR);
            fpcaps = new FPMediaCapabilities();
            if(fpcaps.rtmpe == false)
            {
               dispatchEvent(new VideoEvent(VideoEvent.UNSUPPORTED_PLAYER_VERSION,false,false,VideoState.CONNECTION_ERROR,this.playheadTime));
            }
         }
         else if(this._ns == null)
         {
            if(this._enableLiveCast)
            {
               if(this._ncMgr.streams != null)
               {
                  if(this._ncMgr.streams.length > 0)
                  {
                     j = 0;
                     while(j < this._ncMgr.streams.length)
                     {
                        try
                        {
                           this._ncMgr.netConnection.call("FCSubscribe",null,this._ncMgr.streams[j].src);
                        }
                        catch(e:Error)
                        {
                        }
                        j++;
                     }
                  }
               }
               else
               {
                  try
                  {
                     this._ncMgr.netConnection.call("FCSubscribe",null,this._ncMgr.streamName);
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
            if(this._isDVR && this._dvrMgr == null)
            {
               this._dvrStart = true;
               this._dvrMgr = new DVRManager(this._ncMgr.netConnection);
               this._dvrMgr.addEventListener(DVRManager.DVR_EVENT,this.updateDVRDuration);
               this._dvrMgr.addEventListener(DVRManager.DVR_ERROR,this.handleDVRError);
               if(this._ncMgr.streams != null)
               {
                  if(this._ncMgr.streams.length > 0)
                  {
                     if(this._ncMgr.streams.length > 1)
                     {
                        i = 1;
                        while(i < this._ncMgr.streams.length)
                        {
                           try
                           {
                              this._ncMgr.netConnection.call("DVRSubscribe",null,this._ncMgr.streams[i].src);
                           }
                           catch(e:Error)
                           {
                           }
                           i++;
                        }
                     }
                     this._dvrMgr.getStreamDuration(this._ncMgr.streams[0].src);
                  }
               }
               else
               {
                  this._dvrMgr.getStreamDuration(this._ncMgr.streamName);
               }
               return;
            }
            this._createStream();
            this._setUpStream();
         }
      }
      
      public function ncReconnected() : void
      {
         if(this._ncMgr == null || this._ncMgr.netConnection == null)
         {
            this.setState(VideoState.CONNECTION_ERROR);
         }
         else
         {
            this._ns = null;
            this._state = VideoState.STOPPED;
            this.execQueuedCmds();
         }
      }
      
      flvplayback_internal function onMetaData(param1:Object) : void
      {
         if(this._metadata != null)
         {
            return;
         }
         this._metadata = param1;
         if(isNaN(this._streamLength))
         {
            this._streamLength = param1["duration"];
         }
         if(this._resizeImmediatelyOnMetadata && this._ns.client.ready)
         {
            this._resizeImmediatelyOnMetadata = false;
            this._autoResizeTimer.reset();
            this._autoResizeDone = false;
            this.doAutoResize();
         }
         dispatchEvent(new MetadataEvent(MetadataEvent.METADATA_RECEIVED,false,false,param1));
      }
      
      flvplayback_internal function onCuePoint(param1:Object) : void
      {
         if(!this._hiddenForResize || !isNaN(this._hiddenRewindPlayheadTime) && this.playheadTime < this._hiddenRewindPlayheadTime)
         {
            dispatchEvent(new MetadataEvent(MetadataEvent.CUE_POINT,false,false,param1));
         }
      }
      
      flvplayback_internal function setState(param1:String, param2:Boolean = true) : void
      {
         if(param1 == this._state)
         {
            return;
         }
         this._hiddenRewindPlayheadTime = NaN;
         this._cachedState = this._state;
         this._cachedPlayheadTime = this.playheadTime;
         this._state = param1;
         var _loc3_:String = this._state;
         dispatchEvent(new VideoEvent(VideoEvent.STATE_CHANGE,false,false,_loc3_,this.playheadTime));
         if(!this._readyDispatched)
         {
            switch(_loc3_)
            {
               case VideoState.STOPPED:
               case VideoState.PLAYING:
               case VideoState.PAUSED:
               case VideoState.BUFFERING:
                  this._readyDispatched = true;
                  dispatchEvent(new VideoEvent(VideoEvent.READY,false,false,_loc3_,this.playheadTime));
            }
         }
         switch(this._cachedState)
         {
            case VideoState.REWINDING:
               dispatchEvent(new VideoEvent(VideoEvent.AUTO_REWOUND,false,false,_loc3_,this.playheadTime));
               if(this._ncMgr.isRTMP && _loc3_ == VideoState.STOPPED)
               {
                  this.closeNS();
               }
         }
         switch(_loc3_)
         {
            case VideoState.STOPPED:
            case VideoState.PAUSED:
               if(this._ncMgr.isRTMP)
               {
                  this._idleTimeoutTimer.reset();
                  this._idleTimeoutTimer.start();
               }
               break;
            case VideoState.SEEKING:
            case VideoState.REWINDING:
               this._bufferState = BUFFER_EMPTY;
               this._sawPlayStop = false;
               this._idleTimeoutTimer.reset();
               break;
            case VideoState.PLAYING:
            case VideoState.BUFFERING:
               this._updateTimeTimer.start();
               this._idleTimeoutTimer.reset();
               break;
            case VideoState.LOADING:
            case VideoState.RESIZING:
               this._idleTimeoutTimer.reset();
         }
         if(param2)
         {
            this.execQueuedCmds();
         }
      }
      
      flvplayback_internal function setStateFromCachedState(param1:Boolean = true) : void
      {
         switch(this._cachedState)
         {
            case VideoState.PLAYING:
            case VideoState.PAUSED:
            case VideoState.BUFFERING:
               this.setState(this._cachedState,param1);
               break;
            default:
               this.setState(VideoState.STOPPED,param1);
         }
      }
      
      flvplayback_internal function createINCManager() : void
      {
         var theClass:Class = null;
         try
         {
            if(iNCManagerClass is String)
            {
               theClass = Class(getDefinitionByName(String(iNCManagerClass)));
            }
            else if(iNCManagerClass is Class)
            {
               theClass = Class(iNCManagerClass);
            }
         }
         catch(e:Error)
         {
            theClass = null;
         }
         if(theClass == null)
         {
            throw new VideoError(VideoError.INCMANAGER_CLASS_UNSET,iNCManagerClass == null?"null":iNCManagerClass.toString());
         }
         this._ncMgr = new theClass();
         this._ncMgr.videoPlayer = this;
      }
      
      flvplayback_internal function createNetStreamClient() : Object
      {
         var theClass:Class = null;
         var theInst:Object = null;
         try
         {
            if(netStreamClientClass is String)
            {
               theClass = Class(getDefinitionByName(String(netStreamClientClass)));
            }
            else if(netStreamClientClass is Class)
            {
               theClass = Class(netStreamClientClass);
            }
            if(theClass != null)
            {
               theInst = new theClass(this);
            }
         }
         catch(e:Error)
         {
            theClass = null;
            theInst = null;
         }
         if(theInst == null)
         {
            throw new VideoError(VideoError.NETSTREAM_CLIENT_CLASS_UNSET,netStreamClientClass == null?"null":netStreamClientClass.toString());
         }
         return theInst;
      }
      
      flvplayback_internal function rtmpDoStopAtEnd(param1:TimerEvent = null) : void
      {
         if(this._rtmpDoStopAtEndTimer.running)
         {
            switch(this._state)
            {
               case VideoState.DISCONNECTED:
               case VideoState.CONNECTION_ERROR:
                  this._rtmpDoStopAtEndTimer.reset();
                  return;
               default:
                  if(param1 == null || this._cachedPlayheadTime == this.playheadTime)
                  {
                     this._rtmpDoStopAtEndTimer.reset();
                  }
                  else
                  {
                     this._cachedPlayheadTime = this.playheadTime;
                     return;
                  }
            }
         }
         if(this._atEndCheckPlayhead == this.playheadTime && this._atEndCheckPlayhead != this._lastSeekTime && !this._isLive && this.playheadTime != 0)
         {
            this._atEnd = false;
            this._currentPos = 0;
            this._play(0);
            return;
         }
         this._atEndCheckPlayhead = NaN;
         this._bufferState = BUFFER_EMPTY;
         this._sawPlayStop = false;
         this._atEnd = true;
         this.setState(VideoState.STOPPED);
         if(this._state != VideoState.STOPPED)
         {
            return;
         }
         this.doUpdateTime();
         if(this._state != VideoState.STOPPED)
         {
            return;
         }
         dispatchEvent(new VideoEvent(VideoEvent.COMPLETE,false,false,this._state,this.playheadTime));
         if(this._state != VideoState.STOPPED)
         {
            return;
         }
         if(this._autoRewind && !this._isLive && this.playheadTime != 0)
         {
            this._atEnd = false;
            this._currentPos = 0;
            this._play(0,0);
            this.setState(VideoState.REWINDING);
         }
         else
         {
            this.closeNS();
         }
      }
      
      flvplayback_internal function rtmpDoSeek(param1:TimerEvent) : void
      {
         if(this._state != VideoState.REWINDING && this._state != VideoState.SEEKING)
         {
            this._rtmpDoSeekTimer.reset();
            this._sawSeekNotify = false;
         }
         else if(this.playheadTime != this._cachedPlayheadTime)
         {
            this._rtmpDoSeekTimer.reset();
            this._sawSeekNotify = false;
            this.setStateFromCachedState(false);
            this.doUpdateTime();
            this._lastSeekTime = this.playheadTime;
            this.execQueuedCmds();
         }
      }
      
      flvplayback_internal function httpDoStopAtEnd() : void
      {
         if(this._atEndCheckPlayhead == this.playheadTime && this._atEndCheckPlayhead != this._lastUpdateTime && this.playheadTime != 0)
         {
            this._atEnd = false;
            this._seek(0);
            return;
         }
         this._atEndCheckPlayhead = NaN;
         this._atEnd = true;
         if(isNaN(this._streamLength))
         {
            this._streamLength = this._ns.time;
         }
         this._pause(true);
         this.setState(VideoState.STOPPED);
         if(this._state != VideoState.STOPPED)
         {
            return;
         }
         this.doUpdateTime();
         if(this._state != VideoState.STOPPED)
         {
            return;
         }
         dispatchEvent(new VideoEvent(VideoEvent.COMPLETE,false,false,this._state,this.playheadTime));
         if(this._state != VideoState.STOPPED)
         {
            return;
         }
         if(this._autoRewind)
         {
            this._atEnd = false;
            this._pause(true);
            this._seek(0);
            this.setState(VideoState.REWINDING);
         }
      }
      
      flvplayback_internal function httpDoSeek(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = this._state == VideoState.REWINDING || this._state == VideoState.SEEKING;
         if(_loc2_ && this._httpDoSeekCount < this.httpDoSeekMaxCount && (this._cachedPlayheadTime == this.playheadTime || this._invalidSeekTime))
         {
            this._httpDoSeekCount++;
            return;
         }
         this._httpDoSeekCount = 0;
         this._httpDoSeekTimer.reset();
         if(!_loc2_)
         {
            return;
         }
         this.setStateFromCachedState(false);
         if(this._invalidSeekTime)
         {
            this._invalidSeekTime = false;
            this._invalidSeekRecovery = true;
            this.seek(this.playheadTime);
         }
         else
         {
            this.doUpdateTime();
            this._lastSeekTime = this.playheadTime;
            this.execQueuedCmds();
         }
      }
      
      flvplayback_internal function closeNS(param1:Boolean = false) : void
      {
         if(this._ns != null)
         {
            if(param1)
            {
               this.doUpdateTime();
               this._currentPos = this._ns.time;
            }
            this._updateTimeTimer.reset();
            this._updateProgressTimer.reset();
            this._idleTimeoutTimer.reset();
            this._autoResizeTimer.reset();
            this._rtmpDoStopAtEndTimer.reset();
            this._rtmpDoSeekTimer.reset();
            this._httpDoSeekTimer.reset();
            this._finishAutoResizeTimer.reset();
            this._delayedBufferingTimer.reset();
            this._ns.removeEventListener(NetStatusEvent.NET_STATUS,this.rtmpNetStatus);
            this._ns.removeEventListener(NetStatusEvent.NET_STATUS,this.httpNetStatus);
            this._ns.close();
            this._ns = null;
         }
      }
      
      flvplayback_internal function doDelayedBuffering(param1:TimerEvent) : void
      {
         switch(this._state)
         {
            case VideoState.LOADING:
            case VideoState.RESIZING:
               break;
            case VideoState.PLAYING:
               this._delayedBufferingTimer.reset();
               if(!isNaN(this.totalTime) && this.totalTime > 0 && this.bytesLoaded > 0 && this.bytesLoaded < uint.MAX_VALUE && this.bytesLoaded < this.bytesTotal)
               {
                  this.pause();
                  if(this._state == VideoState.PAUSED)
                  {
                     this.waitingForEnough = true;
                     this.playWhenEnoughDownloaded();
                  }
               }
               else
               {
                  this.setState(VideoState.BUFFERING);
               }
               break;
            default:
               this._delayedBufferingTimer.reset();
         }
      }
      
      flvplayback_internal function _pause(param1:Boolean) : void
      {
         this._atEndCheckPlayhead = this.playheadTime;
         this._rtmpDoStopAtEndTimer.reset();
         if(param1)
         {
            this._ns.pause();
         }
         else
         {
            this._ns.resume();
         }
      }
      
      flvplayback_internal function _play(param1:int = 0, param2:int = -1) : void
      {
         this.waitingForEnough = false;
         this._rtmpDoStopAtEndTimer.reset();
         this._startingPlay = true;
         if(this._isDVR && this._dvrMgr != null)
         {
            if(this._dvrMgr.offset > 0)
            {
               param1 = this._dvrMgr.offset;
            }
         }
         if(this._ncMgr.isDynamicStream == true)
         {
            this._playDynamicStream(param1,param2);
         }
         else
         {
            this._ns.play(this._ncMgr.streamName,!!this._isLive?-1:param1,param2);
         }
      }
      
      flvplayback_internal function _playDynamicStream(param1:int = 0, param2:int = -1) : void
      {
         var _loc3_:Array = this._ncMgr.streams;
         var _loc4_:DynamicStreamItem = new DynamicStreamItem();
         _loc4_.start = !!this._isLive?Number(-1):Number(param1);
         _loc4_.len = param2;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_.length)
         {
            _loc4_.addStream(_loc3_[_loc5_].src,_loc3_[_loc5_].bitrate / 1000);
            _loc5_++;
         }
         this._ns.play(_loc4_);
      }
      
      flvplayback_internal function _seek(param1:Number) : void
      {
         this._rtmpDoStopAtEndTimer.reset();
         if(this._metadata != null && this._metadata.audiodelay != undefined && (isNaN(this._streamLength) || param1 + this._metadata.audiodelay < this._streamLength))
         {
            param1 = param1 + this._metadata.audiodelay;
         }
         if(this._isDVR && this._dvrMgr != null)
         {
            if(param1 > this._dvrMgr.currentDuration - this._ns.bufferTime)
            {
               param1 = this._dvrMgr.currentDuration - this._ns.bufferTime >= 0?Number(this._dvrMgr.currentDuration - this._ns.bufferTime):Number(0);
            }
         }
         this._ns.seek(param1);
         this._lastSeekTime = param1;
         this._invalidSeekTime = false;
         this._bufferState = BUFFER_EMPTY;
         this._sawPlayStop = false;
         this._sawSeekNotify = false;
      }
      
      flvplayback_internal function isXnOK() : Boolean
      {
         if(this._state == VideoState.LOADING)
         {
            return true;
         }
         if(this._state == VideoState.CONNECTION_ERROR)
         {
            return false;
         }
         if(this._state != VideoState.DISCONNECTED)
         {
            if(this._ncMgr == null || this._ncMgr.netConnection == null || this._ncMgr.isRTMP && !this._ncMgr.netConnection.connected)
            {
               this.setState(VideoState.DISCONNECTED);
               return false;
            }
            return true;
         }
         return false;
      }
      
      flvplayback_internal function startAutoResize() : void
      {
         switch(this._state)
         {
            case VideoState.DISCONNECTED:
            case VideoState.CONNECTION_ERROR:
               return;
            default:
               if(this._ns == null)
               {
                  return;
               }
               this._autoResizeDone = false;
               if(this.stateResponsive && (super.videoWidth != 0 || super.videoHeight != 0 || this._bufferState == BUFFER_FULL || this._bufferState == BUFFER_FLUSH || this._ns.time > this.autoResizePlayheadTimeout))
               {
                  this.doAutoResize();
               }
               else
               {
                  this._autoResizeTimer.reset();
                  this._autoResizeTimer.start();
               }
               return;
         }
      }
      
      flvplayback_internal function doAutoResize(param1:TimerEvent = null) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(this._autoResizeTimer.running)
         {
            switch(this._state)
            {
               case VideoState.RESIZING:
               case VideoState.LOADING:
                  break;
               case VideoState.DISCONNECTED:
               case VideoState.CONNECTION_ERROR:
                  this._autoResizeTimer.reset();
                  return;
               default:
                  if(!this.stateResponsive)
                  {
                     return;
                  }
                  break;
            }
            if(super.videoWidth != this._prevVideoWidth || super.videoHeight != this._prevVideoHeight || this._bufferState == BUFFER_FULL || this._bufferState == BUFFER_FLUSH || this._ns.time > this.autoResizePlayheadTimeout)
            {
               if(this._hiddenForResize && !this._ns.client.ready && this._hiddenForResizeMetadataDelay < this.autoResizeMetadataDelayMax)
               {
                  this._hiddenForResizeMetadataDelay++;
                  return;
               }
               this._autoResizeTimer.reset();
            }
            else
            {
               return;
            }
         }
         if(this._autoResizeDone)
         {
            this.setState(this._cachedState);
            return;
         }
         this.oldBounds = new Rectangle(x,y,width,height);
         this.oldRegistrationBounds = new Rectangle(this.registrationX,this.registrationY,this.registrationWidth,this.registrationHeight);
         this._autoResizeDone = true;
         var _loc2_:Boolean = this._readyDispatched;
         this._readyDispatched = true;
         _loc3_ = this.videoWidth;
         _loc4_ = this.videoHeight;
         this._readyDispatched = _loc2_;
         switch(this._scaleMode)
         {
            case VideoScaleMode.NO_SCALE:
               super.width = Math.round(_loc3_);
               super.height = Math.round(_loc4_);
               break;
            case VideoScaleMode.EXACT_FIT:
               super.width = this.registrationWidth;
               super.height = this.registrationHeight;
               break;
            case VideoScaleMode.MAINTAIN_ASPECT_RATIO:
            default:
               _loc5_ = _loc3_ * this._registrationHeight / _loc4_;
               _loc6_ = _loc4_ * this._registrationWidth / _loc3_;
               if(_loc6_ < this._registrationHeight)
               {
                  super.width = this._registrationWidth;
                  super.height = _loc6_;
               }
               else if(_loc5_ < this._registrationWidth)
               {
                  super.width = _loc5_;
                  super.height = this._registrationHeight;
               }
               else
               {
                  super.width = this._registrationWidth;
                  super.height = this._registrationHeight;
               }
         }
         switch(this._align)
         {
            case VideoAlign.CENTER:
            case VideoAlign.TOP:
            case VideoAlign.BOTTOM:
            default:
               super.x = Math.round(this._registrationX + (this._registrationWidth - width) / 2);
               break;
            case VideoAlign.LEFT:
            case VideoAlign.TOP_LEFT:
            case VideoAlign.BOTTOM_LEFT:
               super.x = Math.round(this._registrationX);
               break;
            case VideoAlign.RIGHT:
            case VideoAlign.TOP_RIGHT:
            case VideoAlign.BOTTOM_RIGHT:
               super.x = Math.round(this._registrationX + (this._registrationWidth - width));
         }
         switch(this._align)
         {
            case VideoAlign.CENTER:
            case VideoAlign.LEFT:
            case VideoAlign.RIGHT:
            default:
               super.y = Math.round(this._registrationY + (this._registrationHeight - height) / 2);
               break;
            case VideoAlign.TOP:
            case VideoAlign.TOP_LEFT:
            case VideoAlign.TOP_RIGHT:
               super.y = Math.round(this._registrationY);
               break;
            case VideoAlign.BOTTOM:
            case VideoAlign.BOTTOM_LEFT:
            case VideoAlign.BOTTOM_RIGHT:
               super.y = Math.round(this._registrationY + (this._registrationHeight - height));
         }
         if(this._hiddenForResize)
         {
            this._hiddenRewindPlayheadTime = this.playheadTime;
            if(this._state == VideoState.LOADING)
            {
               this._cachedState = VideoState.PLAYING;
            }
            if(!this._ncMgr.isRTMP)
            {
               this._pause(true);
               this._seek(0);
               this._finishAutoResizeTimer.reset();
               this._finishAutoResizeTimer.start();
            }
            else if(!this._isLive)
            {
               this._currentPos = 0;
               this._play(0,0);
               this.setState(VideoState.RESIZING);
            }
            else if(this._autoPlay)
            {
               this._finishAutoResizeTimer.reset();
               this._finishAutoResizeTimer.start();
            }
            else
            {
               this.finishAutoResize();
            }
         }
         else
         {
            dispatchEvent(new AutoLayoutEvent(AutoLayoutEvent.AUTO_LAYOUT,false,false,this.oldBounds,this.oldRegistrationBounds));
         }
      }
      
      flvplayback_internal function finishAutoResize(param1:TimerEvent = null) : void
      {
         if(this.stateResponsive)
         {
            return;
         }
         this._hiddenForResize = false;
         super.visible = this.__visible;
         this.volume = this._volume;
         dispatchEvent(new AutoLayoutEvent(AutoLayoutEvent.AUTO_LAYOUT,false,false,this.oldBounds,this.oldRegistrationBounds));
         if(this._autoPlay)
         {
            if(this._ncMgr.isRTMP)
            {
               if(!this._isLive)
               {
                  this._currentPos = 0;
                  this._play(0);
               }
               if(this._state == VideoState.RESIZING)
               {
                  this.setState(VideoState.LOADING);
                  this._cachedState = VideoState.PLAYING;
               }
            }
            else
            {
               this.waitingForEnough = true;
               this._cachedState = this._state;
               this._state = VideoState.PAUSED;
               this.checkReadyForPlay(this.bytesLoaded,this.bytesTotal);
               if(this.waitingForEnough)
               {
                  this._state = this._cachedState;
                  this.setState(VideoState.PAUSED);
               }
               else
               {
                  this._cachedState = VideoState.PLAYING;
               }
            }
         }
         else
         {
            this.setState(VideoState.STOPPED);
         }
      }
      
      flvplayback_internal function _createStream() : void
      {
         var _loc1_:NetStream = null;
         this._ns = null;
         if(this._ncMgr.isDynamicStream == true)
         {
            _loc1_ = new DynamicStream(this._ncMgr.netConnection);
         }
         else
         {
            _loc1_ = new NetStream(this._ncMgr.netConnection);
         }
         if(this._ncMgr.isRTMP)
         {
            _loc1_.addEventListener(NetStatusEvent.NET_STATUS,this.rtmpNetStatus);
         }
         else
         {
            _loc1_.addEventListener(NetStatusEvent.NET_STATUS,this.httpNetStatus);
         }
         _loc1_.client = this.createNetStreamClient();
         _loc1_.bufferTime = this._bufferTime;
         _loc1_.soundTransform = this.soundTransform;
         this._ns = _loc1_;
         attachNetStream(this._ns);
      }
      
      flvplayback_internal function _setUpStream() : void
      {
         if(!isNaN(this._ncMgr.streamLength) && this._ncMgr.streamLength >= 0)
         {
            this._streamLength = this._ncMgr.streamLength;
         }
         this._videoWidth = this._ncMgr.streamWidth >= 0?int(this._ncMgr.streamWidth):-1;
         this._videoHeight = this._ncMgr.streamHeight >= 0?int(this._ncMgr.streamHeight):-1;
         this._resizeImmediatelyOnMetadata = this._videoWidth >= 0 && this._videoHeight >= 0 || this._scaleMode == VideoScaleMode.EXACT_FIT;
         if(!this._hiddenForResize)
         {
            this.__visible = super.visible;
            super.visible = false;
            this._volume = this.volume;
            this.volume = 0;
            this._hiddenForResize = true;
         }
         this._hiddenForResizeMetadataDelay = 0;
         this._play(0);
         if(this._currentPos > 0)
         {
            this._seek(this._currentPos);
            this._currentPos = 0;
         }
         this._autoResizeTimer.reset();
         this._autoResizeTimer.start();
      }
      
      flvplayback_internal function doIdleTimeout(param1:TimerEvent) : void
      {
         this.close();
      }
      
      flvplayback_internal function flushQueuedCmds() : void
      {
         while(this._cmdQueue.length > 0)
         {
            this._cmdQueue.pop();
         }
      }
      
      flvplayback_internal function execQueuedCmds() : void
      {
         var nextCmd:Object = null;
         while(this._cmdQueue.length > 0 && (this.stateResponsive || this._state == VideoState.DISCONNECTED || this._state == VideoState.CONNECTION_ERROR) && (this._cmdQueue[0].url != null || this._state != VideoState.DISCONNECTED && this._state != VideoState.CONNECTION_ERROR))
         {
            try
            {
               nextCmd = this._cmdQueue.shift();
               this._cachedState = this._state;
               this._state = VideoState.EXEC_QUEUED_CMD;
               switch(nextCmd.type)
               {
                  case QueuedCommand.PLAY:
                     this.play(nextCmd.url,nextCmd.time,nextCmd.isLive);
                     break;
                  case QueuedCommand.LOAD:
                     this.load(nextCmd.url,nextCmd.time,nextCmd.isLive);
                     break;
                  case QueuedCommand.PAUSE:
                     this.pause();
                     break;
                  case QueuedCommand.STOP:
                     this.stop();
                     break;
                  case QueuedCommand.SEEK:
                     this.seek(nextCmd.time);
                     break;
                  case QueuedCommand.PLAY_WHEN_ENOUGH:
                     this.playWhenEnoughDownloaded();
               }
            }
            finally
            {
               if(this._state == VideoState.EXEC_QUEUED_CMD)
               {
                  this._state = this._cachedState;
               }
            }
         }
      }
      
      flvplayback_internal function queueCmd(param1:Number, param2:String = null, param3:Boolean = false, param4:Number = NaN) : void
      {
         this._cmdQueue.push(new QueuedCommand(param1,param2,param3,param4));
      }
   }
}
