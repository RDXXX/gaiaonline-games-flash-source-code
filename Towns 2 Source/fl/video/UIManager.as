package fl.video
{
   import flash.accessibility.Accessibility;
   import flash.accessibility.AccessibilityProperties;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageDisplayState;
   import flash.display.StageScaleMode;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.FullScreenEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.system.Capabilities;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   import flash.utils.getTimer;
   
   use namespace flvplayback_internal;
   
   public class UIManager
   {
      
      public static const VERSION:String = "2.5.0.26";
      
      public static const SHORT_VERSION:String = "2.5";
      
      public static const PAUSE_BUTTON:int = 0;
      
      public static const PLAY_BUTTON:int = 1;
      
      public static const STOP_BUTTON:int = 2;
      
      public static const SEEK_BAR_HANDLE:int = 3;
      
      public static const SEEK_BAR_HIT:int = 4;
      
      public static const BACK_BUTTON:int = 5;
      
      public static const FORWARD_BUTTON:int = 6;
      
      public static const FULL_SCREEN_ON_BUTTON:int = 7;
      
      public static const FULL_SCREEN_OFF_BUTTON:int = 8;
      
      public static const MUTE_ON_BUTTON:int = 9;
      
      public static const MUTE_OFF_BUTTON:int = 10;
      
      public static const VOLUME_BAR_HANDLE:int = 11;
      
      public static const VOLUME_BAR_HIT:int = 12;
      
      public static const NUM_BUTTONS:int = 13;
      
      public static const PLAY_PAUSE_BUTTON:int = 13;
      
      public static const FULL_SCREEN_BUTTON:int = 14;
      
      public static const MUTE_BUTTON:int = 15;
      
      public static const BUFFERING_BAR:int = 16;
      
      public static const SEEK_BAR:int = 17;
      
      public static const VOLUME_BAR:int = 18;
      
      public static const NUM_CONTROLS:int = 19;
      
      public static const NORMAL_STATE:uint = 0;
      
      public static const OVER_STATE:uint = 1;
      
      public static const DOWN_STATE:uint = 2;
      
      public static const FULL_SCREEN_SOURCE_RECT_MIN_WIDTH:uint = 320;
      
      public static const FULL_SCREEN_SOURCE_RECT_MIN_HEIGHT:uint = 240;
      
      flvplayback_internal static const SKIN_AUTO_HIDE_INTERVAL:Number = 200;
      
      flvplayback_internal static const SKIN_FADING_INTERVAL:Number = 100;
      
      flvplayback_internal static const SKIN_FADING_MAX_TIME_DEFAULT:Number = 500;
      
      flvplayback_internal static const SKIN_AUTO_HIDE_MOTION_TIMEOUT_DEFAULT:Number = 3000;
      
      public static const VOLUME_BAR_INTERVAL_DEFAULT:Number = 250;
      
      public static const VOLUME_BAR_SCRUB_TOLERANCE_DEFAULT:Number = 0;
      
      public static const SEEK_BAR_INTERVAL_DEFAULT:Number = 250;
      
      public static const SEEK_BAR_SCRUB_TOLERANCE_DEFAULT:Number = 5;
      
      public static const BUFFERING_DELAY_INTERVAL_DEFAULT:Number = 1000;
      
      flvplayback_internal static var layoutNameToIndexMappings:Object = null;
      
      flvplayback_internal static var layoutNameArray:Array = ["pause_mc","play_mc","stop_mc",null,null,"back_mc","forward_mc",null,null,null,null,null,null,"playpause_mc","fullScreenToggle_mc","volumeMute_mc","bufferingBar_mc","seekBar_mc","volumeBar_mc","seekBarHandle_mc","seekBarHit_mc","seekBarProgress_mc","seekBarFullness_mc","volumeBarHandle_mc","volumeBarHit_mc","volumeBarProgress_mc","volumeBarFullness_mc","progressFill_mc"];
      
      flvplayback_internal static var skinClassPrefixes:Array = ["pauseButton","playButton","stopButton",null,null,"backButton","forwardButton","fullScreenButtonOn","fullScreenButtonOff","muteButtonOn","muteButtonOff",null,null,null,null,null,"bufferingBar","seekBar","volumeBar"];
      
      flvplayback_internal static var customComponentClassNames:Array = ["PauseButton","PlayButton","StopButton",null,null,"BackButton","ForwardButton",null,null,null,null,null,null,"PlayPauseButton","FullScreenButton","MuteButton","BufferingBar","SeekBar","VolumeBar"];
      
      public static const CAPTIONS_ON_BUTTON:Number = 28;
      
      public static const CAPTIONS_OFF_BUTTON:Number = 29;
      
      public static const SHOW_CONTROLS_BUTTON:Number = 30;
      
      public static const HIDE_CONTROLS_BUTTON:Number = 31;
      
      flvplayback_internal static var buttonSkinLinkageIDs:Array = ["upLinkageID","overLinkageID","downLinkageID"];
       
      
      flvplayback_internal var controls:Array;
      
      flvplayback_internal var delayedControls:Array;
      
      public var customClips:Array;
      
      public var ctrlDataDict:Dictionary;
      
      flvplayback_internal var skin_mc:Sprite;
      
      flvplayback_internal var skinLoader:Loader;
      
      flvplayback_internal var skinTemplate:Sprite;
      
      flvplayback_internal var layout_mc:Sprite;
      
      flvplayback_internal var border_mc:DisplayObject;
      
      flvplayback_internal var borderCopy:Sprite;
      
      flvplayback_internal var borderPrevRect:Rectangle;
      
      flvplayback_internal var borderScale9Rects:Array;
      
      flvplayback_internal var borderAlpha:Number;
      
      flvplayback_internal var borderColor:uint;
      
      flvplayback_internal var borderColorTransform:ColorTransform;
      
      flvplayback_internal var skinLoadDelayCount:uint;
      
      flvplayback_internal var placeholderLeft:Number;
      
      flvplayback_internal var placeholderRight:Number;
      
      flvplayback_internal var placeholderTop:Number;
      
      flvplayback_internal var placeholderBottom:Number;
      
      flvplayback_internal var videoLeft:Number;
      
      flvplayback_internal var videoRight:Number;
      
      flvplayback_internal var videoTop:Number;
      
      flvplayback_internal var videoBottom:Number;
      
      flvplayback_internal var _bufferingBarHides:Boolean;
      
      flvplayback_internal var _controlsEnabled:Boolean;
      
      flvplayback_internal var _skin:String;
      
      flvplayback_internal var _skinAutoHide:Boolean;
      
      flvplayback_internal var _skinFadingMaxTime:int;
      
      flvplayback_internal var _skinReady:Boolean;
      
      flvplayback_internal var __visible:Boolean;
      
      flvplayback_internal var _seekBarScrubTolerance:Number;
      
      flvplayback_internal var _skinScaleMaximum:Number;
      
      flvplayback_internal var _progressPercent:Number;
      
      flvplayback_internal var cachedSoundLevel:Number;
      
      flvplayback_internal var _lastVolumePos:Number;
      
      flvplayback_internal var _isMuted:Boolean;
      
      flvplayback_internal var _volumeBarTimer:Timer;
      
      flvplayback_internal var _volumeBarScrubTolerance:Number;
      
      flvplayback_internal var _vc:FLVPlayback;
      
      flvplayback_internal var _bufferingDelayTimer:Timer;
      
      flvplayback_internal var _bufferingOn:Boolean;
      
      flvplayback_internal var _seekBarTimer:Timer;
      
      flvplayback_internal var _lastScrubPos:Number;
      
      flvplayback_internal var _playAfterScrub:Boolean;
      
      flvplayback_internal var _skinAutoHideTimer:Timer;
      
      flvplayback_internal var _skinFadingTimer:Timer;
      
      flvplayback_internal var _skinFadingIn:Boolean;
      
      flvplayback_internal var _skinFadeStartTime:int;
      
      flvplayback_internal var _skinAutoHideMotionTimeout:int;
      
      flvplayback_internal var _skinAutoHideMouseX:Number;
      
      flvplayback_internal var _skinAutoHideMouseY:Number;
      
      flvplayback_internal var _skinAutoHideLastMotionTime:int;
      
      flvplayback_internal var mouseCaptureCtrl:int;
      
      flvplayback_internal var fullScreenSourceRectMinWidth:uint;
      
      flvplayback_internal var fullScreenSourceRectMinHeight:uint;
      
      flvplayback_internal var fullScreenSourceRectMinAspectRatio:Number;
      
      flvplayback_internal var _fullScreen:Boolean;
      
      flvplayback_internal var _fullScreenTakeOver:Boolean;
      
      flvplayback_internal var _fullScreenBgColor:uint;
      
      flvplayback_internal var _fullScreenAccel:Boolean;
      
      flvplayback_internal var _fullScreenVideoWidth:Number;
      
      flvplayback_internal var _fullScreenVideoHeight:Number;
      
      flvplayback_internal var cacheStageAlign:String;
      
      flvplayback_internal var cacheStageScaleMode:String;
      
      flvplayback_internal var cacheStageBGColor:uint;
      
      flvplayback_internal var cacheFLVPlaybackParent:DisplayObjectContainer;
      
      flvplayback_internal var cacheFLVPlaybackIndex:int;
      
      flvplayback_internal var cacheFLVPlaybackLocation:Rectangle;
      
      flvplayback_internal var cacheFLVPlaybackScaleMode:Array;
      
      flvplayback_internal var cacheFLVPlaybackAlign:Array;
      
      flvplayback_internal var cacheSkinAutoHide:Boolean;
      
      flvplayback_internal var hitTarget_mc:Sprite;
      
      flvplayback_internal var accessibilityPropertyNames:Array;
      
      flvplayback_internal var startTabIndex:int;
      
      flvplayback_internal var endTabIndex:int;
      
      flvplayback_internal var focusRect:Boolean = true;
      
      public function UIManager(param1:FLVPlayback)
      {
         var vc:FLVPlayback = param1;
         this.accessibilityPropertyNames = ["Pause","Play","Stop","Seek Bar",null,"Back","Forward","Go Full Screen","Exit Full Screen","Volume Mute On","Volume Mute Off","Volume",null,null,null,null,"Buffering",null,null,null,null,null,null,null,null,null,null,null,"Captions Off","Captions On","Show Video Player Controls","Hide Video Player Controls"];
         super();
         this._vc = vc;
         this._skin = null;
         this._skinAutoHide = false;
         this.cacheSkinAutoHide = this._skinAutoHide;
         this._skinFadingMaxTime = SKIN_FADING_MAX_TIME_DEFAULT;
         this._skinAutoHideMotionTimeout = SKIN_AUTO_HIDE_MOTION_TIMEOUT_DEFAULT;
         this._skinReady = true;
         this.__visible = false;
         this._bufferingBarHides = false;
         this._controlsEnabled = true;
         this._lastScrubPos = 0;
         this._lastVolumePos = 0;
         this.cachedSoundLevel = this._vc.volume;
         this._isMuted = false;
         this.controls = new Array();
         this.customClips = null;
         this.ctrlDataDict = new Dictionary(true);
         this.skin_mc = null;
         this.skinLoader = null;
         this.skinTemplate = null;
         this.layout_mc = null;
         this.border_mc = null;
         this.borderCopy = null;
         this.borderPrevRect = null;
         this.borderScale9Rects = null;
         this.borderAlpha = 0.85;
         this.borderColor = 4697035;
         this.borderColorTransform = new ColorTransform(0,0,0,0,71,171,203,255 * this.borderAlpha);
         this._seekBarScrubTolerance = SEEK_BAR_SCRUB_TOLERANCE_DEFAULT;
         this._volumeBarScrubTolerance = VOLUME_BAR_SCRUB_TOLERANCE_DEFAULT;
         this._bufferingOn = false;
         this.mouseCaptureCtrl = -1;
         this._seekBarTimer = new Timer(SEEK_BAR_INTERVAL_DEFAULT);
         this._seekBarTimer.addEventListener(TimerEvent.TIMER,this.seekBarListener);
         this._volumeBarTimer = new Timer(VOLUME_BAR_INTERVAL_DEFAULT);
         this._volumeBarTimer.addEventListener(TimerEvent.TIMER,this.volumeBarListener);
         this._bufferingDelayTimer = new Timer(BUFFERING_DELAY_INTERVAL_DEFAULT,1);
         this._bufferingDelayTimer.addEventListener(TimerEvent.TIMER,this.doBufferingDelay);
         this._skinAutoHideTimer = new Timer(SKIN_AUTO_HIDE_INTERVAL);
         this._skinAutoHideTimer.addEventListener(TimerEvent.TIMER,this.skinAutoHideHitTest);
         this._skinFadingTimer = new Timer(SKIN_FADING_INTERVAL);
         this._skinFadingTimer.addEventListener(TimerEvent.TIMER,this.skinFadeMore);
         this._vc.addEventListener(MetadataEvent.METADATA_RECEIVED,this.handleIVPEvent);
         this._vc.addEventListener(VideoEvent.PLAYHEAD_UPDATE,this.handleIVPEvent);
         this._vc.addEventListener(VideoProgressEvent.PROGRESS,this.handleIVPEvent);
         this._vc.addEventListener(VideoEvent.STATE_CHANGE,this.handleIVPEvent);
         this._vc.addEventListener(VideoEvent.READY,this.handleIVPEvent);
         this._vc.addEventListener(LayoutEvent.LAYOUT,this.handleLayoutEvent);
         this._vc.addEventListener(AutoLayoutEvent.AUTO_LAYOUT,this.handleLayoutEvent);
         this._vc.addEventListener(SoundEvent.SOUND_UPDATE,this.handleSoundEvent);
         this._vc.addEventListener(Event.ADDED_TO_STAGE,this.handleEvent);
         this._vc.addEventListener(Event.REMOVED_FROM_STAGE,this.handleEvent);
         this.fullScreenSourceRectMinWidth = FULL_SCREEN_SOURCE_RECT_MIN_WIDTH;
         this.fullScreenSourceRectMinHeight = FULL_SCREEN_SOURCE_RECT_MIN_HEIGHT;
         this.fullScreenSourceRectMinAspectRatio = FULL_SCREEN_SOURCE_RECT_MIN_WIDTH / FULL_SCREEN_SOURCE_RECT_MIN_HEIGHT;
         this._fullScreen = false;
         this._fullScreenTakeOver = Capabilities.os.indexOf("iPhone") < 0;
         this._fullScreenBgColor = 0;
         this._fullScreenAccel = false;
         if(this._vc.stage != null)
         {
            this._vc.stage.addEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.handleMouseFocusChangeEvent,false,0,true);
            try
            {
               this._fullScreen = this._vc.stage.displayState == StageDisplayState.FULL_SCREEN;
               this._vc.stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.handleFullScreenEvent,false,0,true);
            }
            catch(se:SecurityError)
            {
            }
         }
         if(layoutNameToIndexMappings == null)
         {
            initLayoutNameToIndexMappings();
         }
      }
      
      flvplayback_internal static function initLayoutNameToIndexMappings() : void
      {
         layoutNameToIndexMappings = new Object();
         var _loc1_:int = 0;
         while(_loc1_ < layoutNameArray.length)
         {
            if(layoutNameArray[_loc1_] != null)
            {
               layoutNameToIndexMappings[layoutNameArray[_loc1_]] = _loc1_;
            }
            _loc1_++;
         }
      }
      
      flvplayback_internal static function getNumberPropSafe(param1:Object, param2:String) : Number
      {
         var numProp:* = undefined;
         var obj:Object = param1;
         var propName:String = param2;
         try
         {
            numProp = obj[propName];
            return Number(numProp);
         }
         catch(re:ReferenceError)
         {
         }
         return NaN;
      }
      
      flvplayback_internal static function getBooleanPropSafe(param1:Object, param2:String) : Boolean
      {
         var boolProp:* = undefined;
         var obj:Object = param1;
         var propName:String = param2;
         try
         {
            boolProp = obj[propName];
            return Boolean(boolProp);
         }
         catch(re:ReferenceError)
         {
         }
         return false;
      }
      
      flvplayback_internal function handleFullScreenEvent(param1:FullScreenEvent) : void
      {
         this._fullScreen = param1.fullScreen;
         this.setEnabledAndVisibleForState(FULL_SCREEN_OFF_BUTTON,VideoState.PLAYING);
         this.skinButtonControl(this.controls[FULL_SCREEN_OFF_BUTTON]);
         this.setEnabledAndVisibleForState(FULL_SCREEN_ON_BUTTON,VideoState.PLAYING);
         this.skinButtonControl(this.controls[FULL_SCREEN_ON_BUTTON]);
         if(this._fullScreen && this._fullScreenTakeOver)
         {
            this.enterFullScreenTakeOver();
         }
         else if(!this._fullScreen)
         {
            this.exitFullScreenTakeOver();
         }
      }
      
      flvplayback_internal function handleEvent(param1:Event) : void
      {
         var e:Event = param1;
         switch(e.type)
         {
            case Event.ADDED_TO_STAGE:
               this._fullScreen = false;
               if(this._vc.stage != null)
               {
                  try
                  {
                     this._fullScreen = this._vc.stage.displayState == StageDisplayState.FULL_SCREEN;
                     this._vc.stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.handleFullScreenEvent,false,0,true);
                  }
                  catch(se:SecurityError)
                  {
                  }
               }
               if(!this._fullScreen)
               {
                  this._fullScreenAccel = false;
               }
               this.setEnabledAndVisibleForState(FULL_SCREEN_OFF_BUTTON,VideoState.PLAYING);
               this.skinButtonControl(this.controls[FULL_SCREEN_OFF_BUTTON]);
               this.setEnabledAndVisibleForState(FULL_SCREEN_ON_BUTTON,VideoState.PLAYING);
               this.skinButtonControl(this.controls[FULL_SCREEN_ON_BUTTON]);
               if(this._fullScreen && this._fullScreenTakeOver)
               {
                  this.enterFullScreenTakeOver();
               }
               else if(!this._fullScreen)
               {
                  this.exitFullScreenTakeOver();
               }
               this.layoutSkin();
               this.setupSkinAutoHide(false);
               break;
            case Event.REMOVED_FROM_STAGE:
               this._vc.stage.removeEventListener(FullScreenEvent.FULL_SCREEN,this.handleFullScreenEvent);
         }
      }
      
      flvplayback_internal function handleSoundEvent(param1:SoundEvent) : void
      {
         var _loc3_:ControlData = null;
         if(this._isMuted && param1.soundTransform.volume > 0)
         {
            this._isMuted = false;
            this.setEnabledAndVisibleForState(MUTE_OFF_BUTTON,VideoState.PLAYING);
            this.skinButtonControl(this.controls[MUTE_OFF_BUTTON]);
            this.setEnabledAndVisibleForState(MUTE_ON_BUTTON,VideoState.PLAYING);
            this.skinButtonControl(this.controls[MUTE_ON_BUTTON]);
         }
         var _loc2_:Sprite = this.controls[VOLUME_BAR];
         if(_loc2_ != null)
         {
            _loc3_ = this.ctrlDataDict[_loc2_];
            _loc3_.percentage = (!!this._isMuted?this.cachedSoundLevel:param1.soundTransform.volume) * 100;
            if(_loc3_.percentage < 0)
            {
               _loc3_.percentage = 0;
            }
            else if(_loc3_.percentage > 100)
            {
               _loc3_.percentage = 100;
            }
            this.positionHandle(_loc2_);
         }
      }
      
      flvplayback_internal function handleLayoutEvent(param1:LayoutEvent) : void
      {
         var _loc2_:int = 0;
         if(this._fullScreen && this._fullScreenTakeOver && this._fullScreenAccel && this._vc.stage != null)
         {
            if(this._vc.registrationX != 0 || this._vc.registrationY != 0 || this._vc.parent != this._vc.stage || this._fullScreenAccel && (this._vc.registrationWidth != this._vc.stage.fullScreenSourceRect.width || this._vc.registrationHeight != this._vc.stage.fullScreenSourceRect.height) || !this._fullScreenAccel && (this._vc.registrationWidth != this._vc.stage.stageWidth || this._vc.registrationHeight != this._vc.stage.stageHeight))
            {
               this._vc.stage.displayState = StageDisplayState.NORMAL;
               return;
            }
            _loc2_ = this._vc.activeVideoPlayerIndex;
            this._vc.activeVideoPlayerIndex = this._vc.visibleVideoPlayerIndex;
            if(this._vc.align != VideoAlign.CENTER)
            {
               this.cacheFLVPlaybackAlign[this._vc.visibleVideoPlayerIndex] = this._vc.align;
               this._vc.align = VideoAlign.CENTER;
            }
            if(this._vc.scaleMode != VideoScaleMode.MAINTAIN_ASPECT_RATIO)
            {
               this.cacheFLVPlaybackScaleMode[this._vc.visibleVideoPlayerIndex] = this._vc.scaleMode;
               this._vc.scaleMode = VideoScaleMode.MAINTAIN_ASPECT_RATIO;
               this._vc.activeVideoPlayerIndex = _loc2_;
               return;
            }
            this._vc.activeVideoPlayerIndex = _loc2_;
         }
         this.layoutSkin();
         this.setupSkinAutoHide(false);
      }
      
      flvplayback_internal function handleIVPEvent(param1:IVPEvent) : void
      {
         var _loc3_:int = 0;
         var _loc4_:VideoEvent = null;
         var _loc5_:Sprite = null;
         var _loc6_:ControlData = null;
         var _loc7_:VideoProgressEvent = null;
         var _loc8_:VideoPlayerState = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         if(param1.vp != this._vc.visibleVideoPlayerIndex)
         {
            return;
         }
         var _loc2_:uint = this._vc.activeVideoPlayerIndex;
         this._vc.activeVideoPlayerIndex = this._vc.visibleVideoPlayerIndex;
         switch(param1.type)
         {
            case VideoEvent.STATE_CHANGE:
               _loc4_ = VideoEvent(param1);
               if(_loc4_.state == VideoState.BUFFERING)
               {
                  if(!this._bufferingOn)
                  {
                     this._bufferingDelayTimer.reset();
                     this._bufferingDelayTimer.start();
                  }
               }
               else
               {
                  this._bufferingDelayTimer.reset();
                  this._bufferingOn = false;
               }
               if(_loc4_.state == VideoState.LOADING)
               {
                  this._progressPercent = !!this._vc.getVideoPlayer(param1.vp).isRTMP?Number(100):Number(0);
                  _loc3_ = SEEK_BAR;
                  while(_loc3_ <= VOLUME_BAR)
                  {
                     _loc5_ = this.controls[_loc3_];
                     if(this.controls[_loc3_] != null)
                     {
                        _loc6_ = this.ctrlDataDict[_loc5_];
                        if(_loc6_.progress_mc != null)
                        {
                           this.positionBar(_loc5_,"progress",this._progressPercent);
                        }
                     }
                     _loc3_++;
                  }
               }
               _loc3_ = 0;
               while(_loc3_ < NUM_CONTROLS)
               {
                  if(this.controls[_loc3_] != undefined)
                  {
                     this.setEnabledAndVisibleForState(_loc3_,_loc4_.state);
                     if(_loc3_ < NUM_BUTTONS)
                     {
                        this.skinButtonControl(this.controls[_loc3_]);
                     }
                  }
                  _loc3_++;
               }
               break;
            case VideoEvent.READY:
            case MetadataEvent.METADATA_RECEIVED:
               _loc3_ = 0;
               while(_loc3_ < NUM_CONTROLS)
               {
                  if(this.controls[_loc3_] != undefined)
                  {
                     this.setEnabledAndVisibleForState(_loc3_,this._vc.state);
                     if(_loc3_ < NUM_BUTTONS)
                     {
                        this.skinButtonControl(this.controls[_loc3_]);
                     }
                  }
                  _loc3_++;
               }
               if(this._vc.getVideoPlayer(param1.vp).isRTMP)
               {
                  this._progressPercent = 100;
                  _loc3_ = SEEK_BAR;
                  while(_loc3_ <= VOLUME_BAR)
                  {
                     _loc5_ = this.controls[_loc3_];
                     if(_loc5_ != null)
                     {
                        _loc6_ = this.ctrlDataDict[_loc5_];
                        if(_loc6_.progress_mc != null)
                        {
                           this.positionBar(_loc5_,"progress",this._progressPercent);
                        }
                     }
                     _loc3_++;
                  }
               }
               break;
            case VideoEvent.PLAYHEAD_UPDATE:
               if(this.controls[SEEK_BAR] != undefined && !this._vc.isLive && !isNaN(this._vc.totalTime) && this._vc.getVideoPlayer(this._vc.visibleVideoPlayerIndex).state != VideoState.SEEKING)
               {
                  _loc4_ = VideoEvent(param1);
                  _loc10_ = _loc4_.playheadTime / this._vc.totalTime * 100;
                  if(_loc10_ < 0)
                  {
                     _loc10_ = 0;
                  }
                  else if(_loc10_ > 100)
                  {
                     _loc10_ = 100;
                  }
                  _loc5_ = this.controls[SEEK_BAR];
                  _loc6_ = this.ctrlDataDict[_loc5_];
                  _loc6_.percentage = _loc10_;
                  this.positionHandle(_loc5_);
               }
               break;
            case VideoProgressEvent.PROGRESS:
               _loc7_ = VideoProgressEvent(param1);
               this._progressPercent = _loc7_.bytesTotal <= 0?Number(100):Number(_loc7_.bytesLoaded / _loc7_.bytesTotal * 100);
               _loc8_ = this._vc.videoPlayerStates[param1.vp];
               _loc9_ = _loc8_.minProgressPercent;
               if(!isNaN(_loc9_) && _loc9_ > this._progressPercent)
               {
                  this._progressPercent = _loc9_;
               }
               if(!isNaN(this._vc.totalTime))
               {
                  _loc11_ = this._vc.playheadTime / this._vc.totalTime * 100;
                  if(_loc11_ > this._progressPercent)
                  {
                     this._progressPercent = _loc11_;
                     _loc8_.minProgressPercent = this._progressPercent;
                  }
               }
               _loc3_ = SEEK_BAR;
               while(_loc3_ <= VOLUME_BAR)
               {
                  _loc5_ = this.controls[_loc3_];
                  if(_loc5_ != null)
                  {
                     _loc6_ = this.ctrlDataDict[_loc5_];
                     if(_loc6_.progress_mc != null)
                     {
                        this.positionBar(_loc5_,"progress",this._progressPercent);
                     }
                  }
                  _loc3_++;
               }
         }
         this._vc.activeVideoPlayerIndex = _loc2_;
      }
      
      public function get bufferingBarHidesAndDisablesOthers() : Boolean
      {
         return this._bufferingBarHides;
      }
      
      public function set bufferingBarHidesAndDisablesOthers(param1:Boolean) : void
      {
         this._bufferingBarHides = param1;
      }
      
      public function get controlsEnabled() : Boolean
      {
         return this._controlsEnabled;
      }
      
      public function set controlsEnabled(param1:Boolean) : void
      {
         if(this._controlsEnabled == param1)
         {
            return;
         }
         this._controlsEnabled = param1;
         var _loc2_:int = 0;
         while(_loc2_ < NUM_BUTTONS)
         {
            this.skinButtonControl(this.controls[_loc2_]);
            _loc2_++;
         }
      }
      
      public function get fullScreenBackgroundColor() : uint
      {
         return this._fullScreenBgColor;
      }
      
      public function set fullScreenBackgroundColor(param1:uint) : void
      {
         if(this._fullScreenBgColor != param1)
         {
            this._fullScreenBgColor = param1;
            if(!this._vc)
            {
            }
         }
      }
      
      public function get fullScreenSkinDelay() : int
      {
         return this._skinAutoHideMotionTimeout;
      }
      
      public function set fullScreenSkinDelay(param1:int) : void
      {
         this._skinAutoHideMotionTimeout = param1;
      }
      
      public function get fullScreenTakeOver() : Boolean
      {
         return this._fullScreenTakeOver;
      }
      
      public function set fullScreenTakeOver(param1:Boolean) : void
      {
         var v:Boolean = param1;
         if(this._fullScreenTakeOver != v)
         {
            this._fullScreenTakeOver = v;
            if(this._fullScreenTakeOver)
            {
               this.enterFullScreenTakeOver();
            }
            else
            {
               if(this._vc.stage != null && this._fullScreen && this._fullScreenAccel)
               {
                  try
                  {
                     this._vc.stage.displayState = StageDisplayState.NORMAL;
                  }
                  catch(se:SecurityError)
                  {
                  }
               }
               this.exitFullScreenTakeOver();
            }
         }
      }
      
      public function get skin() : String
      {
         return this._skin;
      }
      
      public function set skin(param1:String) : void
      {
         var _loc2_:String = null;
         if(param1 == null)
         {
            this.removeSkin();
            this._skin = null;
            this._skinReady = true;
         }
         else
         {
            _loc2_ = String(param1);
            if(param1 == this._skin)
            {
               return;
            }
            this.removeSkin();
            this._skin = String(param1);
            this._skinReady = this._skin == "";
            if(!this._skinReady)
            {
               this.downloadSkin();
            }
         }
      }
      
      public function get skinAutoHide() : Boolean
      {
         return this._skinAutoHide;
      }
      
      public function set skinAutoHide(param1:Boolean) : void
      {
         if(param1 == this._skinAutoHide)
         {
            return;
         }
         this._skinAutoHide = param1;
         this.cacheSkinAutoHide = param1;
         this.setupSkinAutoHide(true);
      }
      
      public function get skinBackgroundAlpha() : Number
      {
         return this.borderAlpha;
      }
      
      public function set skinBackgroundAlpha(param1:Number) : void
      {
         if(this.borderAlpha != param1)
         {
            this.borderAlpha = param1;
            this.borderColorTransform.alphaOffset = 255 * param1;
            this.borderPrevRect = null;
            this.layoutSkin();
         }
      }
      
      public function get skinBackgroundColor() : uint
      {
         return this.borderColor;
      }
      
      public function set skinBackgroundColor(param1:uint) : void
      {
         if(this.borderColor != param1)
         {
            this.borderColor = param1;
            this.borderColorTransform.redOffset = this.borderColor >> 16 & 255;
            this.borderColorTransform.greenOffset = this.borderColor >> 8 & 255;
            this.borderColorTransform.blueOffset = this.borderColor & 255;
            this.borderPrevRect = null;
            this.layoutSkin();
         }
      }
      
      public function get skinFadeTime() : int
      {
         return this._skinFadingMaxTime;
      }
      
      public function set skinFadeTime(param1:int) : void
      {
         this._skinFadingMaxTime = param1;
      }
      
      public function get skinReady() : Boolean
      {
         return this._skinReady;
      }
      
      public function get seekBarInterval() : Number
      {
         return this._seekBarTimer.delay;
      }
      
      public function set seekBarInterval(param1:Number) : void
      {
         if(this._seekBarTimer.delay == param1)
         {
            return;
         }
         this._seekBarTimer.delay = param1;
      }
      
      public function get volumeBarInterval() : Number
      {
         return this._volumeBarTimer.delay;
      }
      
      public function set volumeBarInterval(param1:Number) : void
      {
         if(this._volumeBarTimer.delay == param1)
         {
            return;
         }
         this._volumeBarTimer.delay = param1;
      }
      
      public function get bufferingDelayInterval() : Number
      {
         return this._bufferingDelayTimer.delay;
      }
      
      public function set bufferingDelayInterval(param1:Number) : void
      {
         if(this._bufferingDelayTimer.delay == param1)
         {
            return;
         }
         this._bufferingDelayTimer.delay = param1;
      }
      
      public function get volumeBarScrubTolerance() : Number
      {
         return this._volumeBarScrubTolerance;
      }
      
      public function set volumeBarScrubTolerance(param1:Number) : void
      {
         this._volumeBarScrubTolerance = param1;
      }
      
      public function get seekBarScrubTolerance() : Number
      {
         return this._seekBarScrubTolerance;
      }
      
      public function set seekBarScrubTolerance(param1:Number) : void
      {
         this._seekBarScrubTolerance = param1;
      }
      
      public function get skinScaleMaximum() : Number
      {
         return this._skinScaleMaximum;
      }
      
      public function set skinScaleMaximum(param1:Number) : void
      {
         this._skinScaleMaximum = param1;
      }
      
      public function get visible() : Boolean
      {
         return this.__visible;
      }
      
      public function set visible(param1:Boolean) : void
      {
         if(this.__visible == param1)
         {
            return;
         }
         this.__visible = param1;
         if(!this.__visible)
         {
            this.skin_mc.visible = false;
         }
         else
         {
            this.setupSkinAutoHide(false);
         }
      }
      
      public function getControl(param1:int) : Sprite
      {
         return this.controls[param1];
      }
      
      public function setControl(param1:int, param2:Sprite) : void
      {
         var index:int = param1;
         var ctrl:Sprite = param2;
         if(ctrl == this.controls[index])
         {
            return;
         }
         if(ctrl)
         {
            ctrl.tabEnabled = false;
         }
         switch(index)
         {
            case PAUSE_BUTTON:
            case PLAY_BUTTON:
               this.resetPlayPause();
               break;
            case PLAY_PAUSE_BUTTON:
               if(ctrl == null || ctrl.parent != this.skin_mc)
               {
                  this.resetPlayPause();
               }
               if(ctrl != null)
               {
                  this.setControl(PAUSE_BUTTON,Sprite(ctrl.getChildByName("pause_mc")));
                  this.setControl(PLAY_BUTTON,Sprite(ctrl.getChildByName("play_mc")));
               }
               break;
            case FULL_SCREEN_BUTTON:
               if(ctrl != null)
               {
                  this.setControl(FULL_SCREEN_ON_BUTTON,Sprite(ctrl.getChildByName("on_mc")));
                  this.setControl(FULL_SCREEN_OFF_BUTTON,Sprite(ctrl.getChildByName("off_mc")));
               }
               break;
            case MUTE_BUTTON:
               if(ctrl != null)
               {
                  this.setControl(MUTE_ON_BUTTON,Sprite(ctrl.getChildByName("on_mc")));
                  this.setControl(MUTE_OFF_BUTTON,Sprite(ctrl.getChildByName("off_mc")));
               }
         }
         if(this.controls[index] != null)
         {
            try
            {
               delete this.controls[index]["uiMgr"];
            }
            catch(re:ReferenceError)
            {
            }
            if(index < NUM_BUTTONS)
            {
               this.removeButtonListeners(this.controls[index]);
            }
            delete this.ctrlDataDict[this.controls[index]];
            delete this.controls[index];
         }
         if(ctrl == null)
         {
            return;
         }
         var ctrlData:ControlData = this.ctrlDataDict[ctrl];
         if(ctrlData == null)
         {
            ctrlData = new ControlData(this,ctrl,null,index);
            this.ctrlDataDict[ctrl] = ctrlData;
         }
         else
         {
            ctrlData.index = index;
         }
         if(index >= NUM_BUTTONS)
         {
            this.controls[index] = ctrl;
            switch(index)
            {
               case SEEK_BAR:
                  this.addBarControl(ctrl);
                  break;
               case VOLUME_BAR:
                  this.addBarControl(ctrl);
                  ctrlData.percentage = this._vc.volume * 100;
                  break;
               case BUFFERING_BAR:
                  if(ctrl.parent == this.skin_mc)
                  {
                     this.finishAddBufferingBar();
                  }
                  else
                  {
                     ctrl.addEventListener(Event.ENTER_FRAME,this.finishAddBufferingBar);
                  }
            }
            this.setEnabledAndVisibleForState(index,this._vc.state);
         }
         else
         {
            this.controls[index] = ctrl;
            this.addButtonControl(ctrl);
         }
      }
      
      flvplayback_internal function resetPlayPause() : void
      {
         if(this.controls[PLAY_PAUSE_BUTTON] == undefined)
         {
            return;
         }
         var _loc1_:int = PAUSE_BUTTON;
         while(_loc1_ <= PLAY_BUTTON)
         {
            this.removeButtonListeners(this.controls[_loc1_]);
            delete this.ctrlDataDict[this.controls[_loc1_]];
            delete this.controls[_loc1_];
            _loc1_++;
         }
         delete this.ctrlDataDict[this.controls[PLAY_PAUSE_BUTTON]];
         delete this.controls[PLAY_PAUSE_BUTTON];
      }
      
      flvplayback_internal function addButtonControl(param1:Sprite) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:ControlData = this.ctrlDataDict[param1];
         param1.buttonMode = true;
         param1.tabEnabled = true;
         param1.tabChildren = true;
         param1.focusRect = this.focusRect;
         param1.accessibilityProperties = new AccessibilityProperties();
         param1.accessibilityProperties.forceSimple = true;
         param1.accessibilityProperties.silent = true;
         if(this.accessibilityPropertyNames[_loc2_.index] != null)
         {
            param1.accessibilityProperties.name = this.accessibilityPropertyNames[_loc2_.index];
            param1.accessibilityProperties.silent = false;
         }
         if(_loc2_.index == VOLUME_BAR_HIT || _loc2_.index == SEEK_BAR_HIT)
         {
            param1.buttonMode = false;
            param1.tabEnabled = false;
            param1.tabChildren = false;
            param1.focusRect = false;
            param1.accessibilityProperties.silent = true;
         }
         if(_loc2_.index == VOLUME_BAR_HANDLE || _loc2_.index == SEEK_BAR_HANDLE)
         {
            param1.graphics.moveTo(0,-18);
            param1.graphics.lineStyle(0,0,0);
            param1.graphics.lineTo(0,-18);
            param1.buttonMode = false;
            param1.focusRect = true;
            param1.accessibilityProperties.silent = false;
            this.configureBarAccessibility(_loc2_.index);
         }
         param1.mouseChildren = false;
         var _loc3_:int = this._vc.activeVideoPlayerIndex;
         this._vc.activeVideoPlayerIndex = this._vc.visibleVideoPlayerIndex;
         _loc2_.state = NORMAL_STATE;
         this.setEnabledAndVisibleForState(_loc2_.index,this._vc.state);
         param1.addEventListener(MouseEvent.ROLL_OVER,this.handleButtonEvent);
         param1.addEventListener(MouseEvent.ROLL_OUT,this.handleButtonEvent);
         param1.addEventListener(MouseEvent.MOUSE_DOWN,this.handleButtonEvent);
         param1.addEventListener(MouseEvent.CLICK,this.handleButtonEvent);
         param1.addEventListener(KeyboardEvent.KEY_DOWN,this.handleKeyEvent);
         param1.addEventListener(KeyboardEvent.KEY_UP,this.handleKeyEvent);
         param1.addEventListener(FocusEvent.FOCUS_IN,this.handleFocusEvent);
         param1.addEventListener(FocusEvent.FOCUS_OUT,this.handleFocusEvent);
         if(param1.parent == this.skin_mc)
         {
            this.skinButtonControl(param1);
         }
         else
         {
            param1.addEventListener(Event.ENTER_FRAME,this.skinButtonControl);
         }
         this._vc.activeVideoPlayerIndex = _loc3_;
      }
      
      flvplayback_internal function handleButtonEvent(param1:MouseEvent) : void
      {
         var topLevel:DisplayObject = null;
         var e:MouseEvent = param1;
         var ctrlData:ControlData = this.ctrlDataDict[e.currentTarget];
         switch(e.type)
         {
            case MouseEvent.ROLL_OVER:
               ctrlData.state = OVER_STATE;
               break;
            case MouseEvent.ROLL_OUT:
               ctrlData.state = NORMAL_STATE;
               break;
            case MouseEvent.MOUSE_DOWN:
               ctrlData.state = DOWN_STATE;
               this.mouseCaptureCtrl = ctrlData.index;
               switch(this.mouseCaptureCtrl)
               {
                  case SEEK_BAR_HANDLE:
                  case SEEK_BAR_HIT:
                  case VOLUME_BAR_HANDLE:
                  case VOLUME_BAR_HIT:
                     this.dispatchMessage(ctrlData.index);
               }
               topLevel = this._vc.stage;
               try
               {
                  topLevel.addEventListener(MouseEvent.MOUSE_DOWN,this.captureMouseEvent,true,0,true);
               }
               catch(se:SecurityError)
               {
                  topLevel = _vc.root;
                  topLevel.addEventListener(MouseEvent.MOUSE_DOWN,captureMouseEvent,true,0,true);
               }
               topLevel.addEventListener(MouseEvent.MOUSE_OUT,this.captureMouseEvent,true,0,true);
               topLevel.addEventListener(MouseEvent.MOUSE_OVER,this.captureMouseEvent,true,0,true);
               topLevel.addEventListener(MouseEvent.MOUSE_UP,this.handleMouseUp,false,0,true);
               topLevel.addEventListener(MouseEvent.ROLL_OUT,this.captureMouseEvent,true,0,true);
               topLevel.addEventListener(MouseEvent.ROLL_OVER,this.captureMouseEvent,true,0,true);
               break;
            case MouseEvent.CLICK:
               switch(this.mouseCaptureCtrl)
               {
                  case SEEK_BAR_HANDLE:
                  case SEEK_BAR_HIT:
                  case VOLUME_BAR_HANDLE:
                  case VOLUME_BAR_HIT:
                  case FULL_SCREEN_OFF_BUTTON:
                  case FULL_SCREEN_ON_BUTTON:
                     break;
                  default:
                     this.dispatchMessage(ctrlData.index);
               }
               return;
         }
         this.skinButtonControl(e.currentTarget);
      }
      
      flvplayback_internal function captureMouseEvent(param1:MouseEvent) : void
      {
         param1.stopPropagation();
      }
      
      flvplayback_internal function handleMouseUp(param1:MouseEvent) : void
      {
         var _loc3_:ControlData = null;
         var _loc2_:Sprite = this.controls[this.mouseCaptureCtrl];
         if(_loc2_ != null)
         {
            _loc3_ = this.ctrlDataDict[_loc2_];
            _loc3_.state = !!_loc2_.hitTestPoint(param1.stageX,param1.stageY,true)?uint(OVER_STATE):uint(NORMAL_STATE);
            this.skinButtonControl(_loc2_);
            switch(this.mouseCaptureCtrl)
            {
               case SEEK_BAR_HANDLE:
               case SEEK_BAR_HIT:
                  this.handleRelease(SEEK_BAR);
                  break;
               case VOLUME_BAR_HANDLE:
               case VOLUME_BAR_HIT:
                  this.handleRelease(VOLUME_BAR);
                  break;
               case FULL_SCREEN_OFF_BUTTON:
               case FULL_SCREEN_ON_BUTTON:
                  this.dispatchMessage(_loc3_.index);
            }
         }
         param1.currentTarget.removeEventListener(MouseEvent.MOUSE_DOWN,this.captureMouseEvent,true);
         param1.currentTarget.removeEventListener(MouseEvent.MOUSE_OUT,this.captureMouseEvent,true);
         param1.currentTarget.removeEventListener(MouseEvent.MOUSE_OVER,this.captureMouseEvent,true);
         param1.currentTarget.removeEventListener(MouseEvent.MOUSE_UP,this.handleMouseUp);
         param1.currentTarget.removeEventListener(MouseEvent.ROLL_OUT,this.captureMouseEvent,true);
         param1.currentTarget.removeEventListener(MouseEvent.ROLL_OVER,this.captureMouseEvent,true);
      }
      
      flvplayback_internal function removeButtonListeners(param1:Sprite) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(MouseEvent.ROLL_OVER,this.handleButtonEvent);
         param1.removeEventListener(MouseEvent.ROLL_OUT,this.handleButtonEvent);
         param1.removeEventListener(MouseEvent.MOUSE_DOWN,this.handleButtonEvent);
         param1.removeEventListener(MouseEvent.CLICK,this.handleButtonEvent);
         param1.removeEventListener(Event.ENTER_FRAME,this.skinButtonControl);
      }
      
      flvplayback_internal function downloadSkin() : void
      {
         if(this.skinLoader == null)
         {
            this.skinLoader = new Loader();
            this.skinLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.handleLoad);
            this.skinLoader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.handleLoadErrorEvent);
            this.skinLoader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.handleLoadErrorEvent);
         }
         this.skinLoader.load(new URLRequest(this._skin));
      }
      
      flvplayback_internal function handleLoadErrorEvent(param1:ErrorEvent) : void
      {
         this._skinReady = true;
         this._vc.skinError(param1.toString());
      }
      
      flvplayback_internal function handleLoad(param1:Event) : void
      {
         var i:int = 0;
         var dispObj:DisplayObject = null;
         var index:Number = NaN;
         var e:Event = param1;
         try
         {
            this.skin_mc = new Sprite();
            if(e != null)
            {
               this.skinTemplate = Sprite(this.skinLoader.content);
            }
            this.layout_mc = this.skinTemplate;
            this.customClips = new Array();
            this.delayedControls = new Array();
            i = 0;
            while(i < this.layout_mc.numChildren)
            {
               dispObj = this.layout_mc.getChildAt(i);
               index = layoutNameToIndexMappings[dispObj.name];
               if(!isNaN(index))
               {
                  this.setSkin(int(index),dispObj);
               }
               else if(dispObj.name != "video_mc")
               {
                  this.setCustomClip(dispObj);
               }
               i++;
            }
            this.skinLoadDelayCount = 0;
            this._vc.addEventListener(Event.ENTER_FRAME,this.finishLoad);
            return;
         }
         catch(err:Error)
         {
            _vc.skinError(err.message);
            removeSkin();
            return;
         }
      }
      
      flvplayback_internal function finishLoad(param1:Event) : void
      {
         var i:int = 0;
         var cachedActivePlayerIndex:int = 0;
         var state:String = null;
         var j:int = 0;
         var e:Event = param1;
         try
         {
            this.skinLoadDelayCount++;
            if(this.skinLoadDelayCount < 2)
            {
               return;
            }
            this._vc.removeEventListener(Event.ENTER_FRAME,this.finishLoad);
            this.focusRect = this.isFocusRectActive();
            i = 0;
            while(i < NUM_CONTROLS)
            {
               if(this.delayedControls[i] != undefined)
               {
                  this.setControl(i,this.delayedControls[i]);
               }
               i++;
            }
            if(this._fullScreenTakeOver)
            {
               this.enterFullScreenTakeOver();
            }
            else
            {
               this.exitFullScreenTakeOver();
            }
            this.layoutSkin();
            this.setupSkinAutoHide(false);
            this.skin_mc.visible = this.__visible;
            this._vc.addChild(this.skin_mc);
            this._skinReady = true;
            this._vc.skinLoaded();
            cachedActivePlayerIndex = this._vc.activeVideoPlayerIndex;
            this._vc.activeVideoPlayerIndex = this._vc.visibleVideoPlayerIndex;
            state = this._vc.state;
            j = 0;
            while(j < NUM_CONTROLS)
            {
               if(this.controls[j] != undefined)
               {
                  this.setEnabledAndVisibleForState(j,state);
                  if(j < NUM_BUTTONS)
                  {
                     this.skinButtonControl(this.controls[j]);
                  }
               }
               j++;
            }
            this._vc.activeVideoPlayerIndex = cachedActivePlayerIndex;
            return;
         }
         catch(err:Error)
         {
            _vc.skinError(err.message);
            removeSkin();
            return;
         }
      }
      
      flvplayback_internal function layoutSkin() : void
      {
         var i:int = 0;
         var borderRect:Rectangle = null;
         var forceSkinAutoHide:Boolean = false;
         var minWidth:Number = NaN;
         var vidWidth:Number = NaN;
         var minHeight:Number = NaN;
         var vidHeight:Number = NaN;
         if(this.layout_mc == null)
         {
            return;
         }
         if(this.skinLoadDelayCount < 2)
         {
            return;
         }
         var video_mc:DisplayObject = this.layout_mc["video_mc"];
         if(video_mc == null)
         {
            throw new Error("No layout_mc.video_mc");
         }
         this.placeholderLeft = video_mc.x;
         this.placeholderRight = video_mc.x + video_mc.width;
         this.placeholderTop = video_mc.y;
         this.placeholderBottom = video_mc.y + video_mc.height;
         this.videoLeft = this._vc.x - this._vc.registrationX;
         this.videoRight = this.videoLeft + this._vc.width;
         this.videoTop = this._vc.y - this._vc.registrationY;
         this.videoBottom = this.videoTop + this._vc.height;
         if(this._fullScreen && this._fullScreenTakeOver && this.border_mc != null)
         {
            borderRect = this.calcLayoutControl(this.border_mc);
            forceSkinAutoHide = false;
            if(borderRect.width > 0 && borderRect.height > 0)
            {
               if(borderRect.x < 0)
               {
                  this.placeholderLeft = this.placeholderLeft + (this.videoLeft - borderRect.x);
                  forceSkinAutoHide = true;
               }
               if(borderRect.x + borderRect.width > this._vc.registrationWidth)
               {
                  this.placeholderRight = this.placeholderRight + (borderRect.x + borderRect.width - this.videoRight);
                  forceSkinAutoHide = true;
               }
               if(borderRect.y < 0)
               {
                  this.placeholderTop = this.placeholderTop + (this.videoTop - borderRect.y);
                  forceSkinAutoHide = true;
               }
               if(borderRect.y + borderRect.height > this._vc.registrationHeight)
               {
                  this.placeholderBottom = this.placeholderBottom + (borderRect.y + borderRect.height - this.videoBottom);
                  forceSkinAutoHide = true;
               }
               if(forceSkinAutoHide)
               {
                  this._skinAutoHide = true;
                  this.setupSkinAutoHide(true);
               }
            }
         }
         try
         {
            if(!isNaN(this.layout_mc["minWidth"]))
            {
               minWidth = this.layout_mc["minWidth"];
               vidWidth = this.videoRight - this.videoLeft;
               if(minWidth > 0 && minWidth > vidWidth)
               {
                  this.videoLeft = this.videoLeft - (minWidth - vidWidth) / 2;
                  this.videoRight = minWidth + this.videoLeft;
               }
            }
         }
         catch(re1:ReferenceError)
         {
         }
         try
         {
            if(!isNaN(this.layout_mc["minHeight"]))
            {
               minHeight = this.layout_mc["minHeight"];
               vidHeight = this.videoBottom - this.videoTop;
               if(minHeight > 0 && minHeight > vidHeight)
               {
                  this.videoTop = this.videoTop - (minHeight - vidHeight) / 2;
                  this.videoBottom = minHeight + this.videoTop;
               }
            }
         }
         catch(re2:ReferenceError)
         {
         }
         i = 0;
         while(i < this.customClips.length)
         {
            this.layoutControl(this.customClips[i]);
            if(this.customClips[i] == this.border_mc)
            {
               this.bitmapCopyBorder();
            }
            i++;
         }
         i = 0;
         while(i < NUM_CONTROLS)
         {
            this.layoutControl(this.controls[i]);
            i++;
         }
      }
      
      flvplayback_internal function bitmapCopyBorder() : void
      {
         var _loc2_:BitmapData = null;
         var _loc3_:Matrix = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Rectangle = null;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:int = 0;
         var _loc11_:Bitmap = null;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(this.border_mc == null || this.borderCopy == null)
         {
            return;
         }
         var _loc1_:Rectangle = this.border_mc.getBounds(this.skin_mc);
         if(this.borderPrevRect == null || !this.borderPrevRect.equals(_loc1_))
         {
            this.borderCopy.x = _loc1_.x;
            this.borderCopy.y = _loc1_.y;
            _loc3_ = new Matrix(this.border_mc.scaleX,0,0,this.border_mc.scaleY,0,0);
            if(this.borderScale9Rects == null)
            {
               _loc2_ = new BitmapData(_loc1_.width,_loc1_.height,true,0);
               _loc2_.draw(this.border_mc,_loc3_,this.borderColorTransform);
               Bitmap(this.borderCopy.getChildAt(0)).bitmapData = _loc2_;
            }
            else
            {
               _loc4_ = 0;
               _loc5_ = 0;
               _loc6_ = new Rectangle(0,0,0,0);
               _loc7_ = 0;
               _loc8_ = 0;
               if(this.borderScale9Rects[3] != null)
               {
                  _loc8_ = _loc8_ + this.borderScale9Rects[3].width;
               }
               if(this.borderScale9Rects[5] != null)
               {
                  _loc8_ = _loc8_ + this.borderScale9Rects[5].width;
               }
               _loc9_ = 0;
               if(this.borderScale9Rects[1] != null)
               {
                  _loc9_ = _loc9_ + this.borderScale9Rects[1].height;
               }
               if(this.borderScale9Rects[7] != null)
               {
                  _loc9_ = _loc9_ + this.borderScale9Rects[7].height;
               }
               _loc10_ = 0;
               while(_loc10_ < this.borderScale9Rects.length)
               {
                  if(_loc10_ % 3 == 0)
                  {
                     _loc4_ = 0;
                     _loc5_ = _loc5_ + _loc6_.height;
                  }
                  if(this.borderScale9Rects[_loc10_] != null)
                  {
                     _loc6_ = Rectangle(this.borderScale9Rects[_loc10_]).clone();
                     _loc3_.a = 1;
                     if(_loc10_ == 1 || _loc10_ == 4 || _loc10_ == 7)
                     {
                        _loc12_ = (_loc1_.width - _loc8_) / _loc6_.width;
                        _loc6_.x = _loc6_.x * _loc12_;
                        _loc6_.width = _loc6_.width * _loc12_;
                        _loc6_.width = Math.round(_loc6_.width);
                        _loc3_.a = _loc3_.a * _loc12_;
                     }
                     _loc3_.tx = -_loc6_.x;
                     _loc6_.x = 0;
                     _loc3_.d = 1;
                     if(_loc10_ >= 3 && _loc10_ <= 5)
                     {
                        _loc13_ = (_loc1_.height - _loc9_) / _loc6_.height;
                        _loc6_.y = _loc6_.y * _loc13_;
                        _loc6_.height = _loc6_.height * _loc13_;
                        _loc6_.height = Math.round(_loc6_.height);
                        _loc3_.d = _loc3_.d * _loc13_;
                     }
                     _loc3_.ty = -_loc6_.y;
                     _loc6_.y = 0;
                     _loc2_ = new BitmapData(_loc6_.width,_loc6_.height,true,0);
                     _loc2_.draw(this.border_mc,_loc3_,this.borderColorTransform,null,_loc6_,false);
                     _loc11_ = Bitmap(this.borderCopy.getChildAt(_loc7_));
                     _loc7_++;
                     _loc11_.bitmapData = _loc2_;
                     _loc11_.x = _loc4_;
                     _loc11_.y = _loc5_;
                     _loc4_ = _loc4_ + _loc6_.width;
                  }
                  _loc10_++;
               }
            }
            this.borderPrevRect = _loc1_;
         }
      }
      
      flvplayback_internal function layoutControl(param1:DisplayObject) : void
      {
         var _loc4_:Sprite = null;
         var _loc5_:Rectangle = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:ControlData = this.ctrlDataDict[param1];
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.avatar == null)
         {
            return;
         }
         var _loc3_:Rectangle = this.calcLayoutControl(param1);
         param1.x = _loc3_.x;
         param1.y = _loc3_.y;
         param1.width = _loc3_.width;
         param1.height = _loc3_.height;
         switch(_loc2_.index)
         {
            case SEEK_BAR:
            case VOLUME_BAR:
               if(_loc2_.hit_mc != null && _loc2_.hit_mc.parent == this.skin_mc)
               {
                  _loc4_ = _loc2_.hit_mc;
                  _loc5_ = this.calcLayoutControl(_loc4_);
                  _loc4_.x = _loc5_.x;
                  _loc4_.y = _loc5_.y;
                  _loc4_.width = _loc5_.width;
                  _loc4_.height = _loc5_.height;
               }
               if(_loc2_.progress_mc != null)
               {
                  if(isNaN(this._progressPercent))
                  {
                     this._progressPercent = !!this._vc.isRTMP?Number(100):Number(0);
                  }
                  this.positionBar(Sprite(param1),"progress",this._progressPercent);
               }
               this.positionHandle(Sprite(param1));
               break;
            case BUFFERING_BAR:
               this.positionMaskedFill(param1,100);
         }
      }
      
      flvplayback_internal function calcLayoutControl(param1:DisplayObject) : Rectangle
      {
         var ctrl:DisplayObject = param1;
         var rect:Rectangle = new Rectangle();
         if(ctrl == null)
         {
            return rect;
         }
         var ctrlData:ControlData = this.ctrlDataDict[ctrl];
         if(ctrlData == null)
         {
            return rect;
         }
         if(ctrlData.avatar == null)
         {
            return rect;
         }
         var anchorRight:Boolean = false;
         var anchorLeft:Boolean = true;
         var anchorTop:Boolean = false;
         var anchorBottom:Boolean = true;
         try
         {
            anchorRight = ctrlData.avatar["anchorRight"];
         }
         catch(re1:ReferenceError)
         {
            anchorRight = false;
         }
         try
         {
            anchorLeft = ctrlData.avatar["anchorLeft"];
         }
         catch(re1:ReferenceError)
         {
            anchorLeft = true;
         }
         try
         {
            anchorTop = ctrlData.avatar["anchorTop"];
         }
         catch(re1:ReferenceError)
         {
            anchorTop = false;
         }
         try
         {
            anchorBottom = ctrlData.avatar["anchorBottom"];
         }
         catch(re1:ReferenceError)
         {
            anchorBottom = true;
         }
         if(anchorRight)
         {
            if(anchorLeft)
            {
               rect.x = ctrlData.avatar.x - this.placeholderLeft + this.videoLeft;
               rect.width = ctrlData.avatar.x + ctrlData.avatar.width - this.placeholderRight + this.videoRight - rect.x;
               ctrlData.origWidth = NaN;
            }
            else
            {
               rect.x = ctrlData.avatar.x - this.placeholderRight + this.videoRight;
               rect.width = ctrl.width;
            }
         }
         else
         {
            rect.x = ctrlData.avatar.x - this.placeholderLeft + this.videoLeft;
            rect.width = ctrl.width;
         }
         if(anchorTop)
         {
            if(anchorBottom)
            {
               rect.y = ctrlData.avatar.y - this.placeholderTop + this.videoTop;
               rect.height = ctrlData.avatar.y + ctrlData.avatar.height - this.placeholderBottom + this.videoBottom - rect.y;
               ctrlData.origHeight = NaN;
            }
            else
            {
               rect.y = ctrlData.avatar.y - this.placeholderTop + this.videoTop;
               rect.height = ctrl.height;
            }
         }
         else
         {
            rect.y = ctrlData.avatar.y - this.placeholderBottom + this.videoBottom;
            rect.height = ctrl.height;
         }
         try
         {
            if(ctrl["layoutSelf"] is Function)
            {
               rect = ctrl["layoutSelf"](rect);
            }
         }
         catch(re3:ReferenceError)
         {
         }
         return rect;
      }
      
      flvplayback_internal function removeSkin() : void
      {
         var i:int = 0;
         if(this.skinLoader != null)
         {
            try
            {
               this.skinLoader.close();
            }
            catch(e1:Error)
            {
            }
            this.skinLoader = null;
         }
         if(this.skin_mc != null)
         {
            i = 0;
            while(i < NUM_CONTROLS)
            {
               if(this.controls[i] != undefined)
               {
                  if(i < NUM_BUTTONS)
                  {
                     this.removeButtonListeners(this.controls[i]);
                  }
                  delete this.ctrlDataDict[this.controls[i]];
                  delete this.controls[i];
               }
               i++;
            }
            try
            {
               this.skin_mc.parent.removeChild(this.skin_mc);
            }
            catch(e2:Error)
            {
            }
            this.skin_mc = null;
         }
         this.skinTemplate = null;
         this.layout_mc = null;
         this.border_mc = null;
         this.borderCopy = null;
         this.borderPrevRect = null;
         this.borderScale9Rects = null;
      }
      
      flvplayback_internal function setCustomClip(param1:DisplayObject) : void
      {
         var scale9Grid:Rectangle = null;
         var diff:Number = NaN;
         var numBorderBitmaps:int = 0;
         var i:int = 0;
         var lastXDim:Number = NaN;
         var floorLastXDim:Number = NaN;
         var lastYDim:Number = NaN;
         var floorLastYDim:Number = NaN;
         var newRect:Rectangle = null;
         var dispObj:DisplayObject = param1;
         var dCopy:DisplayObject = new dispObj["constructor"]();
         this.skin_mc.addChild(dCopy);
         var ctrlData:ControlData = new ControlData(this,dCopy,null,-1);
         this.ctrlDataDict[dCopy] = ctrlData;
         ctrlData.avatar = dispObj;
         this.customClips.push(dCopy);
         dCopy.accessibilityProperties = new AccessibilityProperties();
         dCopy.accessibilityProperties.silent = true;
         if(dispObj.name == "border_mc")
         {
            this.border_mc = dCopy;
            try
            {
               this.borderCopy = !!ctrlData.avatar["colorMe"]?new Sprite():null;
            }
            catch(re:ReferenceError)
            {
               borderCopy = null;
            }
            if(this.borderCopy != null)
            {
               this.border_mc.visible = false;
               scale9Grid = this.border_mc.scale9Grid;
               scale9Grid.x = Math.round(scale9Grid.x);
               scale9Grid.y = Math.round(scale9Grid.y);
               scale9Grid.width = Math.round(scale9Grid.width);
               diff = scale9Grid.x + scale9Grid.width - this.border_mc.scale9Grid.right;
               if(diff > 0.5)
               {
                  scale9Grid.width--;
               }
               else if(diff < -0.5)
               {
                  scale9Grid.width++;
               }
               scale9Grid.height = Math.round(scale9Grid.height);
               diff = scale9Grid.y + scale9Grid.height - this.border_mc.scale9Grid.bottom;
               if(diff > 0.5)
               {
                  scale9Grid.height--;
               }
               else if(diff < -0.5)
               {
                  scale9Grid.height++;
               }
               if(scale9Grid != null)
               {
                  this.borderScale9Rects = new Array();
                  lastXDim = this.border_mc.width - (scale9Grid.x + scale9Grid.width);
                  floorLastXDim = Math.floor(lastXDim);
                  if(lastXDim - floorLastXDim < 0.05)
                  {
                     lastXDim = floorLastXDim;
                  }
                  else
                  {
                     lastXDim = floorLastXDim + 1;
                  }
                  lastYDim = this.border_mc.height - (scale9Grid.y + scale9Grid.height);
                  floorLastYDim = Math.floor(lastYDim);
                  if(lastYDim - floorLastYDim < 0.05)
                  {
                     lastYDim = floorLastYDim;
                  }
                  else
                  {
                     lastYDim = floorLastYDim + 1;
                  }
                  newRect = new Rectangle(0,0,scale9Grid.x,scale9Grid.y);
                  this.borderScale9Rects.push(newRect.width < 1 || newRect.height < 1?null:newRect);
                  newRect = new Rectangle(scale9Grid.x,0,scale9Grid.width,scale9Grid.y);
                  this.borderScale9Rects.push(newRect.width < 1 || newRect.height < 1?null:newRect);
                  newRect = new Rectangle(scale9Grid.x + scale9Grid.width,0,lastXDim,scale9Grid.y);
                  this.borderScale9Rects.push(newRect.width < 1 || newRect.height < 1?null:newRect);
                  newRect = new Rectangle(0,scale9Grid.y,scale9Grid.x,scale9Grid.height);
                  this.borderScale9Rects.push(newRect.width < 1 || newRect.height < 1?null:newRect);
                  newRect = new Rectangle(scale9Grid.x,scale9Grid.y,scale9Grid.width,scale9Grid.height);
                  this.borderScale9Rects.push(newRect.width < 1 || newRect.height < 1?null:newRect);
                  newRect = new Rectangle(scale9Grid.x + scale9Grid.width,scale9Grid.y,lastXDim,scale9Grid.height);
                  this.borderScale9Rects.push(newRect.width < 1 || newRect.height < 1?null:newRect);
                  newRect = new Rectangle(0,scale9Grid.y + scale9Grid.height,scale9Grid.x,lastYDim);
                  this.borderScale9Rects.push(newRect.width < 1 || newRect.height < 1?null:newRect);
                  newRect = new Rectangle(scale9Grid.x,scale9Grid.y + scale9Grid.height,scale9Grid.width,lastYDim);
                  this.borderScale9Rects.push(newRect.width < 1 || newRect.height < 1?null:newRect);
                  newRect = new Rectangle(scale9Grid.x + scale9Grid.width,scale9Grid.y + scale9Grid.height,lastXDim,lastYDim);
                  this.borderScale9Rects.push(newRect.width < 1 || newRect.height < 1?null:newRect);
                  i = 0;
                  while(i < this.borderScale9Rects.length)
                  {
                     if(this.borderScale9Rects[i] != null)
                     {
                        break;
                     }
                     i++;
                  }
                  if(i >= this.borderScale9Rects.length)
                  {
                     this.borderScale9Rects = null;
                  }
               }
               numBorderBitmaps = this.borderScale9Rects == null?1:9;
               i = 0;
               while(i < numBorderBitmaps)
               {
                  if(this.borderScale9Rects == null || this.borderScale9Rects[i] != null)
                  {
                     this.borderCopy.addChild(new Bitmap());
                  }
                  i++;
               }
               this.borderCopy.accessibilityProperties = new AccessibilityProperties();
               this.borderCopy.accessibilityProperties.silent = true;
               this.skin_mc.addChild(this.borderCopy);
               this.borderPrevRect = null;
            }
         }
      }
      
      flvplayback_internal function setSkin(param1:int, param2:DisplayObject) : void
      {
         var _loc3_:Sprite = null;
         var _loc4_:ControlData = null;
         var _loc5_:String = null;
         if(param1 >= NUM_CONTROLS)
         {
            return;
         }
         if(param1 < NUM_BUTTONS)
         {
            _loc3_ = this.setupButtonSkin(param1,param2);
            this.skin_mc.addChild(_loc3_);
            _loc4_ = this.ctrlDataDict[_loc3_];
         }
         else
         {
            switch(param1)
            {
               case PLAY_PAUSE_BUTTON:
                  _loc3_ = this.setTwoButtonHolderSkin(param1,PLAY_BUTTON,"play_mc",PAUSE_BUTTON,"pause_mc",param2);
                  _loc4_ = this.ctrlDataDict[_loc3_];
                  break;
               case FULL_SCREEN_BUTTON:
                  _loc3_ = this.setTwoButtonHolderSkin(param1,FULL_SCREEN_ON_BUTTON,"on_mc",FULL_SCREEN_OFF_BUTTON,"off_mc",param2);
                  _loc4_ = this.ctrlDataDict[_loc3_];
                  break;
               case MUTE_BUTTON:
                  _loc3_ = this.setTwoButtonHolderSkin(param1,MUTE_ON_BUTTON,"on_mc",MUTE_OFF_BUTTON,"off_mc",param2);
                  _loc4_ = this.ctrlDataDict[_loc3_];
                  break;
               case SEEK_BAR:
               case VOLUME_BAR:
                  _loc5_ = skinClassPrefixes[param1];
                  _loc3_ = Sprite(this.createSkin(this.skinTemplate,_loc5_));
                  if(_loc3_ != null)
                  {
                     this.skin_mc.addChild(_loc3_);
                     _loc4_ = new ControlData(this,_loc3_,null,param1);
                     this.ctrlDataDict[_loc3_] = _loc4_;
                     _loc4_.progress_mc = this.setupBarSkinPart(_loc3_,param2,this.skinTemplate,_loc5_ + "Progress","progress_mc");
                     _loc4_.fullness_mc = this.setupBarSkinPart(_loc3_,param2,this.skinTemplate,_loc5_ + "Fullness","fullness_mc");
                     _loc4_.hit_mc = Sprite(this.setupBarSkinPart(_loc3_,param2,this.skinTemplate,_loc5_ + "Hit","hit_mc"));
                     _loc4_.handle_mc = Sprite(this.setupBarSkinPart(_loc3_,param2,this.skinTemplate,_loc5_ + "Handle","handle_mc",true));
                     _loc3_.width = param2.width;
                     _loc3_.height = param2.height;
                     _loc3_.accessibilityProperties = new AccessibilityProperties();
                     _loc3_.accessibilityProperties.silent = true;
                  }
                  break;
               case BUFFERING_BAR:
                  _loc5_ = skinClassPrefixes[param1];
                  _loc3_ = Sprite(this.createSkin(this.skinTemplate,_loc5_));
                  if(_loc3_ != null)
                  {
                     this.skin_mc.addChild(_loc3_);
                     _loc4_ = new ControlData(this,_loc3_,null,param1);
                     this.ctrlDataDict[_loc3_] = _loc4_;
                     _loc4_.fill_mc = this.setupBarSkinPart(_loc3_,param2,this.skinTemplate,_loc5_ + "Fill","fill_mc");
                     _loc3_.width = param2.width;
                     _loc3_.height = param2.height;
                     _loc4_.fill_mc.accessibilityProperties = new AccessibilityProperties();
                     _loc4_.fill_mc.accessibilityProperties.silent = true;
                     _loc3_.accessibilityProperties = new AccessibilityProperties();
                     _loc3_.accessibilityProperties.silent = true;
                  }
            }
         }
         _loc4_.avatar = param2;
         this.ctrlDataDict[_loc3_] = _loc4_;
         this.delayedControls[param1] = _loc3_;
      }
      
      flvplayback_internal function setTwoButtonHolderSkin(param1:int, param2:int, param3:String, param4:int, param5:String, param6:DisplayObject) : Sprite
      {
         var _loc7_:Sprite = null;
         var _loc8_:Sprite = null;
         var _loc9_:ControlData = null;
         _loc8_ = new Sprite();
         _loc9_ = new ControlData(this,_loc8_,null,param1);
         this.ctrlDataDict[_loc8_] = _loc9_;
         this.skin_mc.addChild(_loc8_);
         _loc7_ = this.setupButtonSkin(param2,param6);
         _loc7_.name = param3;
         _loc7_.visible = true;
         _loc8_.addChild(_loc7_);
         _loc7_ = this.setupButtonSkin(param4,param6);
         _loc7_.name = param5;
         _loc7_.visible = false;
         _loc8_.addChild(_loc7_);
         return _loc8_;
      }
      
      flvplayback_internal function setupButtonSkin(param1:int, param2:DisplayObject) : Sprite
      {
         var _loc3_:String = skinClassPrefixes[param1];
         if(_loc3_ == null)
         {
            return null;
         }
         var _loc4_:Sprite = new Sprite();
         var _loc5_:ControlData = new ControlData(this,_loc4_,null,param1);
         this.ctrlDataDict[_loc4_] = _loc5_;
         _loc5_.state_mc = new Array();
         _loc5_.state_mc[NORMAL_STATE] = this.setupButtonSkinState(_loc4_,this.skinTemplate,_loc3_ + "NormalState");
         _loc5_.state_mc[NORMAL_STATE].visible = true;
         _loc5_.state_mc[OVER_STATE] = this.setupButtonSkinState(_loc4_,this.skinTemplate,_loc3_ + "OverState",_loc5_.state_mc[NORMAL_STATE]);
         _loc5_.state_mc[DOWN_STATE] = this.setupButtonSkinState(_loc4_,this.skinTemplate,_loc3_ + "DownState",_loc5_.state_mc[NORMAL_STATE]);
         _loc5_.disabled_mc = this.setupButtonSkinState(_loc4_,this.skinTemplate,_loc3_ + "DisabledState",_loc5_.state_mc[NORMAL_STATE]);
         if(param2 is InteractiveObject)
         {
            _loc4_.tabIndex = InteractiveObject(param2).tabIndex;
         }
         return _loc4_;
      }
      
      flvplayback_internal function setupButtonSkinState(param1:Sprite, param2:Sprite, param3:String, param4:DisplayObject = null) : DisplayObject
      {
         var stateSkin:DisplayObject = null;
         var ctrl:Sprite = param1;
         var definitionHolder:Sprite = param2;
         var skinName:String = param3;
         var defaultSkin:DisplayObject = param4;
         try
         {
            stateSkin = this.createSkin(definitionHolder,skinName);
         }
         catch(ve:VideoError)
         {
            if(defaultSkin != null)
            {
               stateSkin = null;
            }
            else
            {
               throw ve;
            }
         }
         if(stateSkin != null)
         {
            stateSkin.visible = false;
            ctrl.addChild(stateSkin);
         }
         else if(defaultSkin != null)
         {
            stateSkin = defaultSkin;
         }
         return stateSkin;
      }
      
      flvplayback_internal function setupBarSkinPart(param1:Sprite, param2:DisplayObject, param3:Sprite, param4:String, param5:String, param6:Boolean = false) : DisplayObject
      {
         var part:DisplayObject = null;
         var partAvatar:DisplayObject = null;
         var ctrlData:ControlData = null;
         var partData:ControlData = null;
         var ctrl:Sprite = param1;
         var avatar:DisplayObject = param2;
         var definitionHolder:Sprite = param3;
         var skinName:String = param4;
         var partName:String = param5;
         var required:Boolean = param6;
         try
         {
            part = ctrl[partName];
         }
         catch(re:ReferenceError)
         {
            part = null;
         }
         if(part == null)
         {
            try
            {
               part = this.createSkin(definitionHolder,skinName);
            }
            catch(ve:VideoError)
            {
               if(required)
               {
                  throw ve;
               }
            }
            if(part != null)
            {
               this.skin_mc.addChild(part);
               part.x = ctrl.x;
               part.y = ctrl.y;
               partAvatar = this.layout_mc.getChildByName(skinName + "_mc");
               if(partAvatar != null)
               {
                  if(partName == "hit_mc")
                  {
                     ctrlData = this.ctrlDataDict[ctrl];
                     partData = new ControlData(this,part,this.controls[ctrlData.index],-1);
                     partData.avatar = partAvatar;
                     this.ctrlDataDict[part] = partData;
                  }
                  else
                  {
                     part.x = part.x + (partAvatar.x - avatar.x);
                     part.y = part.y + (partAvatar.y - avatar.y);
                     part.width = partAvatar.width;
                     part.height = partAvatar.height;
                  }
                  if(part is InteractiveObject && partAvatar is InteractiveObject)
                  {
                     InteractiveObject(part).tabIndex = InteractiveObject(partAvatar).tabIndex;
                  }
               }
            }
         }
         if(required && part == null)
         {
            throw new VideoError(VideoError.MISSING_SKIN_STYLE,skinName);
         }
         if(part != null)
         {
            part.accessibilityProperties = new AccessibilityProperties();
            part.accessibilityProperties.silent = true;
         }
         return part;
      }
      
      flvplayback_internal function createSkin(param1:DisplayObject, param2:String) : DisplayObject
      {
         var stateSkinDesc:* = undefined;
         var theClass:Class = null;
         var definitionHolder:DisplayObject = param1;
         var skinName:String = param2;
         try
         {
            stateSkinDesc = definitionHolder[skinName];
            if(stateSkinDesc is String)
            {
               try
               {
                  theClass = Class(definitionHolder.loaderInfo.applicationDomain.getDefinition(stateSkinDesc));
               }
               catch(err1:Error)
               {
                  theClass = Class(getDefinitionByName(stateSkinDesc));
               }
               return DisplayObject(new theClass());
            }
            if(stateSkinDesc is Class)
            {
               return new stateSkinDesc();
            }
            if(stateSkinDesc is DisplayObject)
            {
               return stateSkinDesc;
            }
         }
         catch(err2:Error)
         {
            throw new VideoError(VideoError.MISSING_SKIN_STYLE,skinName);
         }
         return null;
      }
      
      flvplayback_internal function skinButtonControl(param1:Object) : void
      {
         var ctrl:Sprite = null;
         var e:Event = null;
         var ctrlOrEvent:Object = param1;
         if(ctrlOrEvent == null)
         {
            return;
         }
         if(ctrlOrEvent is Event)
         {
            e = Event(ctrlOrEvent);
            ctrl = Sprite(e.currentTarget);
            ctrl.removeEventListener(Event.ENTER_FRAME,this.skinButtonControl);
         }
         else
         {
            ctrl = Sprite(ctrlOrEvent);
         }
         var ctrlData:ControlData = this.ctrlDataDict[ctrl];
         if(ctrlData == null)
         {
            return;
         }
         try
         {
            if(ctrl["placeholder_mc"] != undefined)
            {
               ctrl.removeChild(ctrl["placeholder_mc"]);
               ctrl["placeholder_mc"] = null;
            }
         }
         catch(re:ReferenceError)
         {
         }
         if(ctrlData.state_mc == null)
         {
            ctrlData.state_mc = new Array();
         }
         if(ctrlData.state_mc[NORMAL_STATE] == undefined)
         {
            ctrlData.state_mc[NORMAL_STATE] = this.setupButtonSkinState(ctrl,ctrl,buttonSkinLinkageIDs[NORMAL_STATE],null);
         }
         if(ctrlData.enabled && this._controlsEnabled)
         {
            if(ctrlData.state_mc[ctrlData.state] == undefined)
            {
               ctrlData.state_mc[ctrlData.state] = this.setupButtonSkinState(ctrl,ctrl,buttonSkinLinkageIDs[ctrlData.state],ctrlData.state_mc[NORMAL_STATE]);
            }
            if(ctrlData.state_mc[ctrlData.state] != ctrlData.currentState_mc)
            {
               if(ctrlData.currentState_mc != null)
               {
                  ctrlData.currentState_mc.visible = false;
               }
               ctrlData.currentState_mc = ctrlData.state_mc[ctrlData.state];
               ctrlData.currentState_mc.visible = true;
            }
            this.applySkinState(ctrlData,ctrlData.state_mc[ctrlData.state]);
         }
         else
         {
            ctrlData.state = NORMAL_STATE;
            if(ctrlData.disabled_mc == null)
            {
               ctrlData.disabled_mc = this.setupButtonSkinState(ctrl,ctrl,"disabledLinkageID",ctrlData.state_mc[NORMAL_STATE]);
            }
            this.applySkinState(ctrlData,ctrlData.disabled_mc);
         }
      }
      
      flvplayback_internal function applySkinState(param1:ControlData, param2:DisplayObject) : void
      {
         if(param2 != param1.currentState_mc)
         {
            if(param1.currentState_mc != null)
            {
               param1.currentState_mc.visible = false;
            }
            param1.currentState_mc = param2;
            param1.currentState_mc.visible = true;
         }
      }
      
      flvplayback_internal function addBarControl(param1:Sprite) : void
      {
         var _loc2_:ControlData = this.ctrlDataDict[param1];
         _loc2_.isDragging = false;
         _loc2_.percentage = 0;
         if(param1.parent == this.skin_mc && this.skin_mc != null)
         {
            this.finishAddBarControl(param1);
         }
         else
         {
            param1.addEventListener(Event.REMOVED_FROM_STAGE,this.cleanupHandle);
            param1.addEventListener(Event.ENTER_FRAME,this.finishAddBarControl);
         }
      }
      
      flvplayback_internal function finishAddBarControl(param1:Object) : void
      {
         var ctrl:Sprite = null;
         var e:Event = null;
         var ctrlOrEvent:Object = param1;
         if(ctrlOrEvent == null)
         {
            return;
         }
         if(ctrlOrEvent is Event)
         {
            e = Event(ctrlOrEvent);
            ctrl = Sprite(e.currentTarget);
            ctrl.removeEventListener(Event.ENTER_FRAME,this.finishAddBarControl);
         }
         else
         {
            ctrl = Sprite(ctrlOrEvent);
         }
         var ctrlData:ControlData = this.ctrlDataDict[ctrl];
         try
         {
            if(ctrl["addBarControl"] is Function)
            {
               ctrl["addBarControl"]();
            }
         }
         catch(re:ReferenceError)
         {
         }
         ctrlData.origWidth = ctrl.width;
         ctrlData.origHeight = ctrl.height;
         this.fixUpBar(ctrl,"progress",ctrl,"progress_mc");
         this.calcBarMargins(ctrl,"progress",false);
         if(ctrlData.progress_mc != null)
         {
            this.fixUpBar(ctrl,"progressBarFill",ctrlData.progress_mc,"fill_mc");
            this.calcBarMargins(ctrlData.progress_mc,"fill",false);
            this.calcBarMargins(ctrlData.progress_mc,"mask",false);
            if(isNaN(this._progressPercent))
            {
               this._progressPercent = !!this._vc.isRTMP?Number(100):Number(0);
            }
            this.positionBar(ctrl,"progress",this._progressPercent);
         }
         this.fixUpBar(ctrl,"fullness",ctrl,"fullness_mc");
         this.calcBarMargins(ctrl,"fullness",false);
         if(ctrlData.fullness_mc != null)
         {
            this.fixUpBar(ctrl,"fullnessBarFill",ctrlData.fullness_mc,"fill_mc");
            this.calcBarMargins(ctrlData.fullness_mc,"fill",false);
            this.calcBarMargins(ctrlData.fullness_mc,"mask",false);
         }
         this.fixUpBar(ctrl,"hit",ctrl,"hit_mc");
         this.fixUpBar(ctrl,"handle",ctrl,"handle_mc");
         this.calcBarMargins(ctrl,"handle",true);
         switch(ctrlData.index)
         {
            case SEEK_BAR:
               this.setControl(SEEK_BAR_HANDLE,ctrlData.handle_mc);
               if(ctrlData.hit_mc != null)
               {
                  this.setControl(SEEK_BAR_HIT,ctrlData.hit_mc);
               }
               break;
            case VOLUME_BAR:
               this.setControl(VOLUME_BAR_HANDLE,ctrlData.handle_mc);
               if(ctrlData.hit_mc != null)
               {
                  this.setControl(VOLUME_BAR_HIT,ctrlData.hit_mc);
               }
         }
         this.positionHandle(ctrl);
         ctrl.accessibilityProperties = new AccessibilityProperties();
         ctrl.accessibilityProperties.silent = true;
      }
      
      flvplayback_internal function cleanupHandle(param1:Object) : void
      {
         var e:Event = null;
         var ctrl:Sprite = null;
         var ctrlData:ControlData = null;
         var ctrlOrEvent:Object = param1;
         try
         {
            if(ctrlOrEvent is Event)
            {
               e = Event(ctrlOrEvent);
            }
            ctrl = e == null?Sprite(ctrlOrEvent):Sprite(e.currentTarget);
            ctrlData = this.ctrlDataDict[ctrl];
            if(ctrlData == null || e == null)
            {
               ctrl.removeEventListener(Event.REMOVED_FROM_STAGE,this.cleanupHandle,false);
               if(ctrlData == null)
               {
                  return;
               }
            }
            ctrl.removeEventListener(Event.ENTER_FRAME,this.finishAddBarControl);
            if(ctrlData.handle_mc != null)
            {
               if(ctrlData.handle_mc.parent != null)
               {
                  ctrlData.handle_mc.parent.removeChild(ctrlData.handle_mc);
               }
               delete this.ctrlDataDict[ctrlData.handle_mc];
               ctrlData.handle_mc = null;
            }
            if(ctrlData.hit_mc != null)
            {
               if(ctrlData.hit_mc.parent != null)
               {
                  ctrlData.hit_mc.parent.removeChild(ctrlData.hit_mc);
               }
               delete this.ctrlDataDict[ctrlData.hit_mc];
               ctrlData.hit_mc = null;
            }
            return;
         }
         catch(err:Error)
         {
            return;
         }
      }
      
      flvplayback_internal function fixUpBar(param1:DisplayObject, param2:String, param3:DisplayObject, param4:String) : void
      {
         var bar:DisplayObject = null;
         var definitionHolder:DisplayObject = param1;
         var propPrefix:String = param2;
         var ctrl:DisplayObject = param3;
         var name:String = param4;
         var ctrlData:ControlData = this.ctrlDataDict[ctrl];
         if(ctrlData[name] != null)
         {
            return;
         }
         try
         {
            bar = ctrl[name];
         }
         catch(re:ReferenceError)
         {
            bar = null;
         }
         if(bar == null)
         {
            try
            {
               bar = this.createSkin(definitionHolder,propPrefix + "LinkageID");
            }
            catch(ve:VideoError)
            {
               bar = null;
            }
            if(bar == null)
            {
               return;
            }
            if(ctrl.parent != null)
            {
               if(getBooleanPropSafe(ctrl,propPrefix + "Below"))
               {
                  ctrl.parent.addChildAt(bar,ctrl.parent.getChildIndex(ctrl));
               }
               else
               {
                  ctrl.parent.addChild(bar);
               }
            }
         }
         ctrlData[name] = bar;
         var barData:ControlData = this.ctrlDataDict[bar];
         if(barData == null)
         {
            barData = new ControlData(this,bar,ctrl,-1);
            this.ctrlDataDict[bar] = barData;
         }
      }
      
      flvplayback_internal function calcBarMargins(param1:DisplayObject, param2:String, param3:Boolean) : void
      {
         var ctrl:DisplayObject = param1;
         var type:String = param2;
         var symmetricMargins:Boolean = param3;
         if(ctrl == null)
         {
            return;
         }
         var ctrlData:ControlData = this.ctrlDataDict[ctrl];
         var bar:DisplayObject = ctrlData[type + "_mc"];
         if(bar == null)
         {
            try
            {
               bar = ctrl[type + "_mc"];
            }
            catch(re:ReferenceError)
            {
               bar = null;
            }
            if(bar == null)
            {
               return;
            }
            ctrlData[type + "_mc"] = bar;
         }
         var barData:ControlData = this.ctrlDataDict[bar];
         if(barData == null)
         {
            barData = new ControlData(this,bar,ctrl,-1);
            this.ctrlDataDict[bar] = barData;
         }
         barData.leftMargin = getNumberPropSafe(ctrl,type + "LeftMargin");
         if(isNaN(barData.leftMargin) && bar.parent == ctrl.parent)
         {
            barData.leftMargin = bar.x - ctrl.x;
         }
         barData.rightMargin = getNumberPropSafe(ctrl,type + "RightMargin");
         if(isNaN(barData.rightMargin))
         {
            if(symmetricMargins)
            {
               barData.rightMargin = barData.leftMargin;
            }
            else if(bar.parent == ctrl.parent)
            {
               barData.rightMargin = ctrl.width - bar.width - bar.x + ctrl.x;
            }
         }
         barData.topMargin = getNumberPropSafe(ctrl,type + "TopMargin");
         if(isNaN(barData.topMargin) && bar.parent == ctrl.parent)
         {
            barData.topMargin = bar.y - ctrl.y;
         }
         barData.bottomMargin = getNumberPropSafe(ctrl,type + "BottomMargin");
         if(isNaN(barData.bottomMargin))
         {
            if(symmetricMargins)
            {
               barData.bottomMargin = barData.topMargin;
            }
            else if(bar.parent == ctrl.parent)
            {
               barData.bottomMargin = ctrl.height - bar.height - bar.y + ctrl.y;
            }
         }
         barData.origX = getNumberPropSafe(ctrl,type + "X");
         if(isNaN(barData.origX))
         {
            if(bar.parent == ctrl.parent)
            {
               barData.origX = bar.x - ctrl.x;
            }
            else if(bar.parent == ctrl)
            {
               barData.origX = bar.x;
            }
         }
         barData.origY = getNumberPropSafe(ctrl,type + "Y");
         if(isNaN(barData.origY))
         {
            if(bar.parent == ctrl.parent)
            {
               barData.origY = bar.y - ctrl.y;
            }
            else if(bar.parent == ctrl)
            {
               barData.origY = bar.y;
            }
         }
         barData.origWidth = bar.width;
         barData.origHeight = bar.height;
         barData.origScaleX = bar.scaleX;
         barData.origScaleY = bar.scaleY;
      }
      
      flvplayback_internal function finishAddBufferingBar(param1:Event = null) : void
      {
         if(param1 != null)
         {
            param1.currentTarget.removeEventListener(Event.ENTER_FRAME,this.finishAddBufferingBar);
         }
         var _loc2_:Sprite = this.controls[BUFFERING_BAR];
         this.calcBarMargins(_loc2_,"fill",true);
         this.fixUpBar(_loc2_,"fill",_loc2_,"fill_mc");
         this.positionMaskedFill(_loc2_,100);
      }
      
      flvplayback_internal function positionMaskedFill(param1:DisplayObject, param2:Number) : void
      {
         var ctrlData:ControlData = null;
         var slideReveal:Boolean = false;
         var maskSprite:Sprite = null;
         var barData:ControlData = null;
         var ctrl:DisplayObject = param1;
         var percent:Number = param2;
         if(ctrl == null)
         {
            return;
         }
         ctrlData = this.ctrlDataDict[ctrl];
         var fill:DisplayObject = ctrlData.fill_mc;
         if(fill == null)
         {
            return;
         }
         var mask:DisplayObject = ctrlData.mask_mc;
         if(ctrlData.mask_mc == null)
         {
            try
            {
               ctrlData.mask_mc = mask = ctrl["mask_mc"];
            }
            catch(re:ReferenceError)
            {
               ctrlData.mask_mc = null;
            }
            if(ctrlData.mask_mc == null)
            {
               maskSprite = new Sprite();
               ctrlData.mask_mc = mask = maskSprite;
               maskSprite.graphics.beginFill(16777215);
               maskSprite.graphics.drawRect(0,0,1,1);
               maskSprite.graphics.endFill();
               barData = this.ctrlDataDict[fill];
               maskSprite.x = barData.origX;
               maskSprite.y = barData.origY;
               maskSprite.width = barData.origWidth;
               maskSprite.height = barData.origHeight;
               maskSprite.visible = false;
               fill.parent.addChild(maskSprite);
               fill.mask = maskSprite;
            }
            if(ctrlData.mask_mc != null)
            {
               this.calcBarMargins(ctrl,"mask",true);
            }
         }
         var fillData:ControlData = this.ctrlDataDict[fill];
         var maskData:ControlData = this.ctrlDataDict[mask];
         try
         {
            slideReveal = fill["slideReveal"];
         }
         catch(re:ReferenceError)
         {
            slideReveal = false;
         }
         if(fill.parent == ctrl)
         {
            if(slideReveal)
            {
               fill.x = maskData.origX - fillData.origWidth + fillData.origWidth * percent / 100;
            }
            else
            {
               mask.width = fillData.origWidth * percent / 100;
            }
         }
         else if(fill.parent == ctrl.parent)
         {
            if(slideReveal)
            {
               mask.x = ctrl.x + maskData.leftMargin;
               mask.y = ctrl.y + maskData.topMargin;
               mask.width = ctrl.width - maskData.rightMargin - maskData.leftMargin;
               mask.height = ctrl.height - maskData.topMargin - maskData.bottomMargin;
               fill.x = mask.x - fillData.origWidth + maskData.origWidth * percent / 100;
               fill.y = ctrl.y + fillData.topMargin;
            }
            else
            {
               fill.x = ctrl.x + fillData.leftMargin;
               fill.y = ctrl.y + fillData.topMargin;
               mask.x = fill.x;
               mask.y = fill.y;
               mask.width = (ctrl.width - fillData.rightMargin - fillData.leftMargin) * percent / 100;
               mask.height = ctrl.height - fillData.topMargin - fillData.bottomMargin;
            }
         }
      }
      
      flvplayback_internal function startHandleDrag(param1:Sprite) : void
      {
         var ctrl:Sprite = param1;
         if(ctrl == null)
         {
            return;
         }
         var ctrlData:ControlData = this.ctrlDataDict[ctrl];
         try
         {
            if(ctrl["startHandleDrag"] is Function && ctrl["startHandleDrag"]())
            {
               ctrlData.isDragging = true;
               return;
            }
         }
         catch(re:ReferenceError)
         {
         }
         var handle:Sprite = ctrlData.handle_mc;
         if(handle == null)
         {
            return;
         }
         var handleData:ControlData = this.ctrlDataDict[handle];
         var theY:Number = ctrl.y + handleData.origY;
         var theWidth:Number = !!isNaN(ctrlData.origWidth)?Number(ctrl.width):Number(ctrlData.origWidth);
         var bounds:Rectangle = new Rectangle(ctrl.x + handleData.leftMargin,theY,theWidth - handleData.rightMargin,0);
         handle.startDrag(false,bounds);
         ctrlData.isDragging = true;
         handle.focusRect = false;
         handle.stage.focus = handle;
      }
      
      flvplayback_internal function stopHandleDrag(param1:Sprite) : void
      {
         var ctrl:Sprite = param1;
         if(ctrl == null)
         {
            return;
         }
         var ctrlData:ControlData = this.ctrlDataDict[ctrl];
         try
         {
            if(ctrl["stopHandleDrag"] is Function && ctrl["stopHandleDrag"]())
            {
               ctrlData.isDragging = false;
               return;
            }
         }
         catch(re:ReferenceError)
         {
         }
         var handle:Sprite = ctrlData.handle_mc;
         if(handle == null)
         {
            return;
         }
         handle.stopDrag();
         ctrlData.isDragging = false;
         handle.stage.focus = handle;
      }
      
      flvplayback_internal function positionHandle(param1:Sprite) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(param1["positionHandle"] is Function && param1["positionHandle"]())
         {
            return;
         }
         var _loc2_:ControlData = this.ctrlDataDict[param1];
         var _loc3_:Sprite = _loc2_.handle_mc;
         if(_loc3_ == null)
         {
            return;
         }
         var _loc4_:ControlData = this.ctrlDataDict[_loc3_];
         var _loc5_:Number = !!isNaN(_loc2_.origWidth)?Number(param1.width):Number(_loc2_.origWidth);
         var _loc6_:Number = _loc5_ - _loc4_.rightMargin - _loc4_.leftMargin;
         _loc3_.x = param1.x + _loc4_.leftMargin + _loc6_ * _loc2_.percentage / 100;
         _loc3_.y = param1.y + _loc4_.origY;
         if(_loc2_.fullness_mc != null)
         {
            this.positionBar(param1,"fullness",_loc2_.percentage);
         }
      }
      
      flvplayback_internal function positionBar(param1:Sprite, param2:String, param3:Number) : void
      {
         var ctrl:Sprite = param1;
         var type:String = param2;
         var percent:Number = param3;
         try
         {
            if(ctrl["positionBar"] is Function && ctrl["positionBar"](type,percent))
            {
               return;
            }
         }
         catch(re2:ReferenceError)
         {
         }
         var ctrlData:ControlData = this.ctrlDataDict[ctrl];
         var bar:DisplayObject = ctrlData[type + "_mc"];
         if(bar == null)
         {
            return;
         }
         var barData:ControlData = this.ctrlDataDict[bar];
         if(bar.parent == ctrl)
         {
            if(barData.fill_mc == null)
            {
               bar.scaleX = barData.origScaleX * percent / 100;
            }
            else
            {
               this.positionMaskedFill(bar,percent);
            }
         }
         else
         {
            bar.x = ctrl.x + barData.leftMargin;
            bar.y = ctrl.y + barData.origY;
            if(barData.fill_mc == null)
            {
               bar.width = (ctrl.width - barData.leftMargin - barData.rightMargin) * percent / 100;
            }
            else
            {
               this.positionMaskedFill(bar,percent);
            }
         }
      }
      
      flvplayback_internal function calcPercentageFromHandle(param1:Sprite) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:ControlData = this.ctrlDataDict[param1];
         if(param1["calcPercentageFromHandle"] is Function && param1["calcPercentageFromHandle"]())
         {
            if(_loc2_.percentage < 0)
            {
               _loc2_.percentage = 0;
            }
            if(_loc2_.percentage > 100)
            {
               _loc2_.percentage = 100;
            }
            return;
         }
         var _loc3_:Sprite = _loc2_.handle_mc;
         if(_loc3_ == null)
         {
            return;
         }
         var _loc4_:ControlData = this.ctrlDataDict[_loc3_];
         var _loc5_:Number = !!isNaN(_loc2_.origWidth)?Number(param1.width):Number(_loc2_.origWidth);
         var _loc6_:Number = _loc5_ - _loc4_.rightMargin - _loc4_.leftMargin;
         var _loc7_:Number = _loc3_.x - (param1.x + _loc4_.leftMargin);
         _loc2_.percentage = _loc7_ / _loc6_ * 100;
         if(_loc2_.percentage < 0)
         {
            _loc2_.percentage = 0;
         }
         if(_loc2_.percentage > 100)
         {
            _loc2_.percentage = 100;
         }
         if(_loc2_.fullness_mc != null)
         {
            this.positionBar(param1,"fullness",_loc2_.percentage);
         }
      }
      
      flvplayback_internal function handleRelease(param1:int) : void
      {
         var _loc2_:int = this._vc.activeVideoPlayerIndex;
         this._vc.activeVideoPlayerIndex = this._vc.visibleVideoPlayerIndex;
         if(param1 == SEEK_BAR)
         {
            this.seekBarListener(null);
         }
         else if(param1 == VOLUME_BAR)
         {
            this.volumeBarListener(null);
         }
         this.stopHandleDrag(this.controls[param1]);
         this._vc.activeVideoPlayerIndex = _loc2_;
         if(param1 == SEEK_BAR)
         {
            this._vc._scrubFinish();
         }
      }
      
      flvplayback_internal function seekBarListener(param1:TimerEvent) : void
      {
         var _loc2_:int = this._vc.activeVideoPlayerIndex;
         this._vc.activeVideoPlayerIndex = this._vc.visibleVideoPlayerIndex;
         var _loc3_:Sprite = this.controls[SEEK_BAR];
         if(_loc3_ == null)
         {
            return;
         }
         var _loc4_:ControlData = this.ctrlDataDict[_loc3_];
         this.calcPercentageFromHandle(_loc3_);
         var _loc5_:Number = _loc4_.percentage;
         if(param1 == null)
         {
            this._seekBarTimer.stop();
            if(_loc5_ != this._lastScrubPos)
            {
               this._vc.seekPercent(_loc5_);
            }
            this._vc.addEventListener(VideoEvent.PLAYHEAD_UPDATE,this.handleIVPEvent);
            if(this._playAfterScrub)
            {
               this._vc.play();
            }
         }
         else if(this._vc.getVideoPlayer(this._vc.visibleVideoPlayerIndex).state != VideoState.SEEKING)
         {
            if(this._seekBarScrubTolerance <= 0 || Math.abs(_loc5_ - this._lastScrubPos) > this._seekBarScrubTolerance || _loc5_ < this._seekBarScrubTolerance || _loc5_ > 100 - this._seekBarScrubTolerance)
            {
               if(_loc5_ != this._lastScrubPos)
               {
                  this._lastScrubPos = _loc5_;
                  this._vc.seekPercent(_loc5_);
               }
            }
         }
         this._vc.activeVideoPlayerIndex = _loc2_;
      }
      
      flvplayback_internal function volumeBarListener(param1:TimerEvent) : void
      {
         var _loc2_:Sprite = this.controls[VOLUME_BAR];
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:ControlData = this.ctrlDataDict[_loc2_];
         this.calcPercentageFromHandle(_loc2_);
         var _loc4_:Number = _loc3_.percentage;
         var _loc5_:* = param1 == null;
         if(_loc5_)
         {
            this._volumeBarTimer.stop();
            this._vc.addEventListener(SoundEvent.SOUND_UPDATE,this.handleSoundEvent);
         }
         if(_loc5_ || this._volumeBarScrubTolerance <= 0 || Math.abs(_loc4_ - this._lastVolumePos) > this._volumeBarScrubTolerance || _loc4_ < this._volumeBarScrubTolerance || _loc4_ > 100 - this._volumeBarScrubTolerance)
         {
            if(_loc4_ != this._lastVolumePos)
            {
               if(this._isMuted)
               {
                  this.cachedSoundLevel = _loc4_ / 100;
               }
               else
               {
                  this._vc.volume = _loc4_ / 100;
               }
               this._lastVolumePos = _loc4_;
            }
         }
      }
      
      flvplayback_internal function doBufferingDelay(param1:TimerEvent) : void
      {
         this._bufferingDelayTimer.reset();
         var _loc2_:int = this._vc.activeVideoPlayerIndex;
         this._vc.activeVideoPlayerIndex = this._vc.visibleVideoPlayerIndex;
         if(this._vc.state == VideoState.BUFFERING)
         {
            this._bufferingOn = true;
            this.handleIVPEvent(new VideoEvent(VideoEvent.STATE_CHANGE,false,false,VideoState.BUFFERING,NaN,this._vc.visibleVideoPlayerIndex));
         }
         this._vc.activeVideoPlayerIndex = _loc2_;
      }
      
      flvplayback_internal function dispatchMessage(param1:int) : void
      {
         var ctrl:Sprite = null;
         var ctrlData:ControlData = null;
         var handle:Sprite = null;
         var index:int = param1;
         if(index == SEEK_BAR_HANDLE || index == SEEK_BAR_HIT)
         {
            this._vc._scrubStart();
         }
         var cachedActivePlayerIndex:int = this._vc.activeVideoPlayerIndex;
         this._vc.activeVideoPlayerIndex = this._vc.visibleVideoPlayerIndex;
         switch(index)
         {
            case PAUSE_BUTTON:
               this._vc.pause();
               break;
            case PLAY_BUTTON:
               this._vc.play();
               break;
            case STOP_BUTTON:
               this._vc.stop();
               break;
            case SEEK_BAR_HIT:
            case SEEK_BAR_HANDLE:
               ctrl = this.controls[SEEK_BAR];
               ctrlData = this.ctrlDataDict[ctrl];
               this.calcPercentageFromHandle(ctrl);
               this._lastScrubPos = ctrlData.percentage;
               if(index == SEEK_BAR_HIT)
               {
                  handle = this.controls[SEEK_BAR_HANDLE];
                  handle.x = handle.parent.mouseX;
                  handle.y = handle.parent.mouseY;
               }
               this._vc.removeEventListener(VideoEvent.PLAYHEAD_UPDATE,this.handleIVPEvent);
               if(this._vc.playing || this._vc.buffering)
               {
                  this._playAfterScrub = true;
               }
               else if(this._vc.state != VideoState.SEEKING)
               {
                  this._playAfterScrub = false;
               }
               this._seekBarTimer.start();
               this.startHandleDrag(ctrl);
               this._vc.pause();
               break;
            case VOLUME_BAR_HIT:
            case VOLUME_BAR_HANDLE:
               ctrl = this.controls[VOLUME_BAR];
               ctrlData = this.ctrlDataDict[ctrl];
               this.calcPercentageFromHandle(ctrl);
               this._lastVolumePos = ctrlData.percentage;
               if(index == VOLUME_BAR_HIT)
               {
                  handle = this.controls[VOLUME_BAR_HANDLE];
                  handle.x = handle.parent.mouseX;
                  handle.y = handle.parent.mouseY;
               }
               this._vc.removeEventListener(SoundEvent.SOUND_UPDATE,this.handleSoundEvent);
               this._volumeBarTimer.start();
               this.startHandleDrag(ctrl);
               break;
            case BACK_BUTTON:
               this._vc.seekToPrevNavCuePoint();
               break;
            case FORWARD_BUTTON:
               this._vc.seekToNextNavCuePoint();
               break;
            case MUTE_ON_BUTTON:
               if(!this._isMuted)
               {
                  this._isMuted = true;
                  this.cachedSoundLevel = this._vc.volume;
                  this._vc.volume = 0;
                  this.setEnabledAndVisibleForState(MUTE_OFF_BUTTON,VideoState.PLAYING);
                  this.skinButtonControl(this.controls[MUTE_OFF_BUTTON]);
                  this.setEnabledAndVisibleForState(MUTE_ON_BUTTON,VideoState.PLAYING);
                  this.skinButtonControl(this.controls[MUTE_ON_BUTTON]);
               }
               break;
            case MUTE_OFF_BUTTON:
               if(this._isMuted)
               {
                  this._isMuted = false;
                  this._vc.volume = this.cachedSoundLevel;
                  this.setEnabledAndVisibleForState(MUTE_OFF_BUTTON,VideoState.PLAYING);
                  this.skinButtonControl(this.controls[MUTE_OFF_BUTTON]);
                  this.setEnabledAndVisibleForState(MUTE_ON_BUTTON,VideoState.PLAYING);
                  this.skinButtonControl(this.controls[MUTE_ON_BUTTON]);
               }
               break;
            case FULL_SCREEN_ON_BUTTON:
               if(!this._fullScreen && this._vc.stage != null)
               {
                  this.enterFullScreenDisplayState();
                  this.setEnabledAndVisibleForState(FULL_SCREEN_OFF_BUTTON,VideoState.PLAYING);
                  this.skinButtonControl(this.controls[FULL_SCREEN_OFF_BUTTON]);
                  this.setEnabledAndVisibleForState(FULL_SCREEN_ON_BUTTON,VideoState.PLAYING);
                  this.skinButtonControl(this.controls[FULL_SCREEN_ON_BUTTON]);
               }
               break;
            case FULL_SCREEN_OFF_BUTTON:
               if(this._fullScreen && this._vc.stage != null)
               {
                  try
                  {
                     this._vc.stage.displayState = StageDisplayState.NORMAL;
                  }
                  catch(se:SecurityError)
                  {
                  }
                  this.setEnabledAndVisibleForState(FULL_SCREEN_OFF_BUTTON,VideoState.PLAYING);
                  this.skinButtonControl(this.controls[FULL_SCREEN_OFF_BUTTON]);
                  this.setEnabledAndVisibleForState(FULL_SCREEN_ON_BUTTON,VideoState.PLAYING);
                  this.skinButtonControl(this.controls[FULL_SCREEN_ON_BUTTON]);
               }
               break;
            default:
               throw new Error("Unknown ButtonControl");
         }
         this._vc.activeVideoPlayerIndex = cachedActivePlayerIndex;
      }
      
      flvplayback_internal function setEnabledAndVisibleForState(param1:int, param2:String) : void
      {
         var _loc6_:ControlData = null;
         var _loc7_:Boolean = false;
         var _loc8_:ControlData = null;
         var _loc9_:ControlData = null;
         var _loc10_:ControlData = null;
         var _loc11_:ControlData = null;
         var _loc3_:int = this._vc.activeVideoPlayerIndex;
         this._vc.activeVideoPlayerIndex = this._vc.visibleVideoPlayerIndex;
         var _loc4_:String = param2;
         if(_loc4_ == VideoState.BUFFERING && !this._bufferingOn)
         {
            _loc4_ = VideoState.PLAYING;
         }
         var _loc5_:Sprite = this.controls[param1];
         if(_loc5_ == null)
         {
            return;
         }
         _loc6_ = this.ctrlDataDict[_loc5_];
         if(_loc6_ == null)
         {
            return;
         }
         switch(param1)
         {
            case VOLUME_BAR:
            case VOLUME_BAR_HANDLE:
            case VOLUME_BAR_HIT:
               _loc6_.enabled = true;
               break;
            case FULL_SCREEN_ON_BUTTON:
               _loc6_.enabled = !this._fullScreen;
               if(this.controls[FULL_SCREEN_BUTTON] != undefined)
               {
                  _loc5_.visible = _loc6_.enabled;
               }
               break;
            case FULL_SCREEN_OFF_BUTTON:
               _loc6_.enabled = this._fullScreen;
               if(this.controls[FULL_SCREEN_BUTTON] != undefined)
               {
                  _loc5_.visible = _loc6_.enabled;
               }
               break;
            case MUTE_ON_BUTTON:
               _loc6_.enabled = !this._isMuted;
               if(this.controls[MUTE_BUTTON] != undefined)
               {
                  _loc5_.visible = _loc6_.enabled;
               }
               break;
            case MUTE_OFF_BUTTON:
               _loc6_.enabled = this._isMuted;
               if(this.controls[MUTE_BUTTON] != undefined)
               {
                  _loc5_.visible = _loc6_.enabled;
               }
               break;
            default:
               switch(_loc4_)
               {
                  case VideoState.LOADING:
                  case VideoState.CONNECTION_ERROR:
                     _loc6_.enabled = false;
                     break;
                  case VideoState.DISCONNECTED:
                     _loc6_.enabled = this._vc.source != null && this._vc.source != "";
                     break;
                  case VideoState.SEEKING:
                     break;
                  default:
                     _loc6_.enabled = true;
               }
         }
         switch(param1)
         {
            case SEEK_BAR:
               switch(_loc4_)
               {
                  case VideoState.STOPPED:
                  case VideoState.PLAYING:
                  case VideoState.PAUSED:
                  case VideoState.REWINDING:
                  case VideoState.SEEKING:
                     _loc6_.enabled = true;
                     break;
                  case VideoState.BUFFERING:
                     _loc6_.enabled = !this._bufferingBarHides || this.controls[BUFFERING_BAR] == undefined;
                     break;
                  default:
                     _loc6_.enabled = false;
               }
               if(_loc6_.enabled)
               {
                  _loc6_.enabled = !isNaN(this._vc.totalTime);
               }
               if(_loc6_.handle_mc != null)
               {
                  _loc8_ = this.ctrlDataDict[_loc6_.handle_mc];
                  _loc8_.enabled = _loc6_.enabled;
                  _loc6_.handle_mc.visible = _loc8_.enabled;
               }
               if(_loc6_.hit_mc != null)
               {
                  _loc9_ = this.ctrlDataDict[_loc6_.hit_mc];
                  _loc9_.enabled = _loc6_.enabled;
                  _loc6_.hit_mc.visible = _loc9_.enabled;
               }
               _loc7_ = !this._bufferingBarHides || _loc6_.enabled || this.controls[BUFFERING_BAR] == undefined || !this.controls[BUFFERING_BAR].visible;
               _loc5_.visible = _loc7_;
               if(_loc6_.progress_mc != null)
               {
                  _loc6_.progress_mc.visible = _loc7_;
                  _loc10_ = this.ctrlDataDict[_loc6_.progress_mc];
                  if(_loc10_.fill_mc != null)
                  {
                     _loc10_.fill_mc.visible = _loc7_;
                  }
               }
               if(_loc6_.fullness_mc != null)
               {
                  _loc6_.fullness_mc.visible = _loc7_;
                  _loc11_ = this.ctrlDataDict[_loc6_.fullness_mc];
                  if(_loc11_.fill_mc != null)
                  {
                     _loc11_.fill_mc.visible = _loc7_;
                  }
               }
               break;
            case BUFFERING_BAR:
               switch(_loc4_)
               {
                  case VideoState.STOPPED:
                  case VideoState.PLAYING:
                  case VideoState.PAUSED:
                  case VideoState.REWINDING:
                  case VideoState.SEEKING:
                     _loc6_.enabled = false;
                     break;
                  default:
                     _loc6_.enabled = true;
               }
               _loc5_.visible = _loc6_.enabled;
               if(_loc6_.fill_mc != null)
               {
                  _loc6_.fill_mc.visible = _loc6_.enabled;
               }
               break;
            case PAUSE_BUTTON:
               switch(_loc4_)
               {
                  case VideoState.DISCONNECTED:
                  case VideoState.STOPPED:
                  case VideoState.PAUSED:
                  case VideoState.REWINDING:
                     _loc6_.enabled = false;
                     break;
                  case VideoState.PLAYING:
                     _loc6_.enabled = true;
                     break;
                  case VideoState.BUFFERING:
                     _loc6_.enabled = !this._bufferingBarHides || this.controls[BUFFERING_BAR] == undefined;
               }
               if(this.controls[PLAY_PAUSE_BUTTON] != undefined)
               {
                  _loc5_.visible = _loc6_.enabled;
               }
               break;
            case PLAY_BUTTON:
               switch(_loc4_)
               {
                  case VideoState.PLAYING:
                     _loc6_.enabled = false;
                     break;
                  case VideoState.STOPPED:
                  case VideoState.PAUSED:
                     _loc6_.enabled = true;
                     break;
                  case VideoState.BUFFERING:
                     _loc6_.enabled = !this._bufferingBarHides || this.controls[BUFFERING_BAR] == undefined;
               }
               if(this.controls[PLAY_PAUSE_BUTTON] != undefined)
               {
                  _loc5_.visible = !this.controls[PAUSE_BUTTON].visible;
               }
               break;
            case STOP_BUTTON:
               switch(_loc4_)
               {
                  case VideoState.DISCONNECTED:
                  case VideoState.STOPPED:
                     _loc6_.enabled = false;
                     _loc5_.tabEnabled = false;
                     break;
                  case VideoState.PAUSED:
                  case VideoState.PLAYING:
                  case VideoState.BUFFERING:
                     _loc6_.enabled = true;
                     _loc5_.tabEnabled = true;
               }
               break;
            case BACK_BUTTON:
            case FORWARD_BUTTON:
               switch(_loc4_)
               {
                  case VideoState.BUFFERING:
                     _loc6_.enabled = !this._bufferingBarHides || this.controls[BUFFERING_BAR] == undefined;
                     _loc5_.tabEnabled = !this._bufferingBarHides || this.controls[BUFFERING_BAR] == undefined;
               }
         }
         _loc5_.mouseEnabled = _loc6_.enabled;
         this._vc.activeVideoPlayerIndex = _loc3_;
      }
      
      flvplayback_internal function setupSkinAutoHide(param1:Boolean) : void
      {
         var uiMgr:UIManager = null;
         var clickHandler:Function = null;
         var doFade:Boolean = param1;
         if(this._skinAutoHide && this.skin_mc != null)
         {
            if(!this.hitTarget_mc)
            {
               this.hitTarget_mc = new Sprite();
               this.hitTarget_mc.accessibilityProperties = new AccessibilityProperties();
               this.hitTarget_mc.accessibilityProperties.name = this.accessibilityPropertyNames[SHOW_CONTROLS_BUTTON];
               this.customClips.push(this.hitTarget_mc);
               uiMgr = this;
               clickHandler = function(param1:*):void
               {
                  if(param1.type == FocusEvent.FOCUS_IN)
                  {
                     uiMgr._skinAutoHide = false;
                  }
                  else if(param1.type == MouseEvent.CLICK)
                  {
                     uiMgr._skinAutoHide = !uiMgr._skinAutoHide;
                  }
                  uiMgr.setupSkinAutoHide(true);
                  if(uiMgr._skinAutoHide)
                  {
                     param1.target.accessibilityProperties.name = accessibilityPropertyNames[SHOW_CONTROLS_BUTTON];
                  }
                  else
                  {
                     param1.target.accessibilityProperties.name = accessibilityPropertyNames[HIDE_CONTROLS_BUTTON];
                  }
                  if(Accessibility.active)
                  {
                     Accessibility.updateProperties();
                  }
               };
               this.hitTarget_mc.useHandCursor = false;
               this.hitTarget_mc.buttonMode = true;
               this.hitTarget_mc.tabEnabled = true;
               this.hitTarget_mc.tabChildren = true;
               this.hitTarget_mc.focusRect = true;
               this.hitTarget_mc.addEventListener(FocusEvent.FOCUS_IN,clickHandler);
               this.hitTarget_mc.addEventListener(MouseEvent.CLICK,clickHandler);
               this.hitTarget_mc.accessibilityProperties.silent = this._fullScreen;
               this.hitTarget_mc.tabEnabled = !this._fullScreen;
               if(Accessibility.active)
               {
                  Accessibility.updateProperties();
               }
               this._vc.addChild(this.hitTarget_mc);
            }
            this.hitTarget_mc.graphics.clear();
            this.hitTarget_mc.graphics.lineStyle(0,16711680,0);
            this.hitTarget_mc.graphics.drawRect(0,0,this._vc.width,this._vc.height);
            this.skinAutoHideHitTest(null,doFade);
            this._skinAutoHideTimer.start();
         }
         else
         {
            if(this.skin_mc != null)
            {
               if(doFade && this._skinFadingMaxTime > 0 && (!this.skin_mc.visible || this.skin_mc.alpha < 1) && this.__visible)
               {
                  this._skinFadingTimer.stop();
                  this._skinFadeStartTime = getTimer();
                  this._skinFadingIn = true;
                  if(this.skin_mc.alpha == 1)
                  {
                     this.skin_mc.alpha = 0;
                  }
                  this._skinFadingTimer.start();
               }
               else if(this._skinFadingMaxTime <= 0)
               {
                  this._skinFadingTimer.stop();
                  this.skin_mc.alpha = 1;
               }
               this.skin_mc.visible = this.__visible;
            }
            this._skinAutoHideTimer.stop();
         }
      }
      
      flvplayback_internal function skinAutoHideHitTest(param1:TimerEvent, param2:Boolean = true) : void
      {
         var visibleVP:VideoPlayer = null;
         var hit:Boolean = false;
         var e:TimerEvent = param1;
         var doFade:Boolean = param2;
         try
         {
            if(!this.__visible)
            {
               this.skin_mc.visible = false;
               if(this.hitTarget_mc)
               {
                  this.hitTarget_mc.accessibilityProperties.name = this.accessibilityPropertyNames[SHOW_CONTROLS_BUTTON];
               }
            }
            else if(this._vc.stage != null)
            {
               visibleVP = this._vc.getVideoPlayer(this._vc.visibleVideoPlayerIndex);
               hit = visibleVP.hitTestPoint(this._vc.stage.mouseX,this._vc.stage.mouseY,true);
               if(this._fullScreen && this._fullScreenTakeOver && e != null)
               {
                  if(this._vc.stage.mouseX == this._skinAutoHideMouseX && this._vc.stage.mouseY == this._skinAutoHideMouseY)
                  {
                     if(getTimer() - this._skinAutoHideLastMotionTime > this._skinAutoHideMotionTimeout)
                     {
                        hit = false;
                     }
                  }
                  else
                  {
                     this._skinAutoHideLastMotionTime = getTimer();
                     this._skinAutoHideMouseX = this._vc.stage.mouseX;
                     this._skinAutoHideMouseY = this._vc.stage.mouseY;
                  }
               }
               if(!hit && this.border_mc != null)
               {
                  hit = this.border_mc.hitTestPoint(this._vc.stage.mouseX,this._vc.stage.mouseY,true);
                  if(hit && this._fullScreen && this._fullScreenTakeOver)
                  {
                     this._skinAutoHideLastMotionTime = getTimer();
                  }
               }
               if(!doFade || this._skinFadingMaxTime <= 0)
               {
                  this._skinFadingTimer.stop();
                  this.skin_mc.visible = hit;
                  this.skin_mc.alpha = 1;
               }
               else if(!(hit && this.skin_mc.visible && (!this._skinFadingTimer.running || this._skinFadingIn) || !hit && (!this.skin_mc.visible || this._skinFadingTimer.running && !this._skinFadingIn)))
               {
                  this._skinFadingTimer.stop();
                  this._skinFadingIn = hit;
                  if(this._skinFadingIn && this.skin_mc.alpha == 1)
                  {
                     this.skin_mc.alpha = 0;
                  }
                  this._skinFadeStartTime = getTimer();
                  this._skinFadingTimer.start();
                  this.skin_mc.visible = true;
               }
               if(this.hitTarget_mc)
               {
                  this.hitTarget_mc.accessibilityProperties.name = !!hit?this.accessibilityPropertyNames[HIDE_CONTROLS_BUTTON]:this.accessibilityPropertyNames[SHOW_CONTROLS_BUTTON];
               }
            }
         }
         catch(se:SecurityError)
         {
            _skinAutoHideTimer.stop();
            _skinFadingTimer.stop();
            skin_mc.visible = __visible;
            skin_mc.alpha = 1;
            if(hitTarget_mc)
            {
               hitTarget_mc.accessibilityProperties.name = accessibilityPropertyNames[HIDE_CONTROLS_BUTTON];
            }
         }
         if(this.hitTarget_mc && Capabilities.hasAccessibility)
         {
            Accessibility.updateProperties();
         }
      }
      
      flvplayback_internal function skinFadeMore(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         if(!this._skinFadingIn && this.skin_mc.alpha <= 0.5 || this._skinFadingIn && this.skin_mc.alpha >= 0.95)
         {
            this.skin_mc.visible = this._skinFadingIn;
            this.skin_mc.alpha = 1;
            this._skinFadingTimer.stop();
         }
         else
         {
            _loc2_ = (getTimer() - this._skinFadeStartTime) / this._skinFadingMaxTime;
            if(!this._skinFadingIn)
            {
               _loc2_ = 1 - _loc2_;
            }
            if(_loc2_ < 0)
            {
               _loc2_ = 0;
            }
            else if(_loc2_ > 1)
            {
               _loc2_ = 1;
            }
            this.skin_mc.alpha = _loc2_;
         }
      }
      
      public function enterFullScreenDisplayState() : void
      {
         var theRect:Rectangle = null;
         var vp:VideoPlayer = null;
         var effectiveWidth:int = 0;
         var effectiveHeight:int = 0;
         var videoAspectRatio:Number = NaN;
         var screenAspectRatio:Number = NaN;
         var effectiveMinWidth:int = 0;
         var effectiveMinHeight:int = 0;
         var skinScaleMinWidth:int = 0;
         var skinScaleMinHeight:int = 0;
         if(!this._fullScreen && this._vc.stage != null)
         {
            if(this._fullScreenTakeOver)
            {
               try
               {
                  theRect = this._vc.stage.fullScreenSourceRect;
                  this._fullScreenAccel = true;
                  vp = this._vc.getVideoPlayer(this._vc.visibleVideoPlayerIndex);
                  effectiveWidth = vp.videoWidth;
                  effectiveHeight = vp.videoHeight;
                  videoAspectRatio = effectiveWidth / effectiveHeight;
                  screenAspectRatio = this._vc.stage.fullScreenWidth / this._vc.stage.fullScreenHeight;
                  if(videoAspectRatio > screenAspectRatio)
                  {
                     effectiveHeight = effectiveWidth / screenAspectRatio;
                  }
                  else if(videoAspectRatio < screenAspectRatio)
                  {
                     effectiveWidth = effectiveHeight * screenAspectRatio;
                  }
                  effectiveMinWidth = this.fullScreenSourceRectMinWidth;
                  effectiveMinHeight = this.fullScreenSourceRectMinHeight;
                  if(this.fullScreenSourceRectMinAspectRatio > screenAspectRatio)
                  {
                     effectiveMinHeight = effectiveMinWidth / screenAspectRatio;
                  }
                  else if(this.fullScreenSourceRectMinAspectRatio < screenAspectRatio)
                  {
                     effectiveMinWidth = effectiveMinHeight * screenAspectRatio;
                  }
                  skinScaleMinWidth = this._vc.stage.fullScreenWidth / this._skinScaleMaximum;
                  skinScaleMinHeight = this._vc.stage.fullScreenHeight / this._skinScaleMaximum;
                  if(effectiveMinWidth < skinScaleMinWidth || effectiveMinHeight < skinScaleMinHeight)
                  {
                     effectiveMinWidth = skinScaleMinWidth;
                     effectiveMinHeight = skinScaleMinHeight;
                  }
                  if(effectiveWidth < effectiveMinWidth || effectiveHeight < effectiveMinHeight)
                  {
                     effectiveWidth = effectiveMinWidth;
                     effectiveHeight = effectiveMinHeight;
                  }
                  this._vc.stage.fullScreenSourceRect = new Rectangle(0,0,effectiveWidth,effectiveHeight);
                  this._vc.stage.displayState = StageDisplayState.FULL_SCREEN;
               }
               catch(re:ReferenceError)
               {
                  _fullScreenAccel = false;
               }
               catch(re:SecurityError)
               {
                  _fullScreenAccel = false;
               }
            }
            try
            {
               this._vc.stage.displayState = StageDisplayState.FULL_SCREEN;
               return;
            }
            catch(se:SecurityError)
            {
               return;
            }
         }
      }
      
      flvplayback_internal function enterFullScreenTakeOver() : void
      {
         var i:int = 0;
         var fullScreenBG:Sprite = null;
         var vp:VideoPlayer = null;
         if(!this._fullScreen || this.cacheFLVPlaybackParent != null)
         {
            return;
         }
         this._vc.removeEventListener(LayoutEvent.LAYOUT,this.handleLayoutEvent);
         this._vc.removeEventListener(AutoLayoutEvent.AUTO_LAYOUT,this.handleLayoutEvent);
         this._vc.removeEventListener(Event.ADDED_TO_STAGE,this.handleEvent);
         this._vc.stage.removeEventListener(FullScreenEvent.FULL_SCREEN,this.handleFullScreenEvent);
         try
         {
            this.cacheFLVPlaybackScaleMode = new Array();
            this.cacheFLVPlaybackAlign = new Array();
            i = 0;
            while(i < this._vc.videoPlayers.length)
            {
               vp = this._vc.videoPlayers[i] as VideoPlayer;
               if(vp != null)
               {
                  this.cacheFLVPlaybackScaleMode[i] = vp.scaleMode;
                  this.cacheFLVPlaybackAlign[i] = vp.align;
               }
               i++;
            }
            this.cacheFLVPlaybackParent = this._vc.parent;
            this.cacheFLVPlaybackIndex = this._vc.parent.getChildIndex(this._vc);
            this.cacheFLVPlaybackLocation = new Rectangle(this._vc.registrationX,this._vc.registrationY,this._vc.registrationWidth,this._vc.registrationHeight);
            if(!this._fullScreenAccel)
            {
               this.cacheStageAlign = this._vc.stage.align;
               this.cacheStageScaleMode = this._vc.stage.scaleMode;
               this._vc.stage.align = StageAlign.TOP_LEFT;
               this._vc.stage.scaleMode = StageScaleMode.NO_SCALE;
            }
            this._vc.align = VideoAlign.CENTER;
            this._vc.scaleMode = VideoScaleMode.MAINTAIN_ASPECT_RATIO;
            this._vc.registrationX = 0;
            this._vc.registrationY = 0;
            if(this._fullScreenAccel)
            {
               this._vc.setSize(this._vc.stage.fullScreenSourceRect.width,this._vc.stage.fullScreenSourceRect.height);
            }
            else
            {
               this._vc.setSize(this._vc.stage.stageWidth,this._vc.stage.stageHeight);
            }
            if(this._vc.stage != this._vc.parent)
            {
               this._vc.stage.addChild(this._vc);
            }
            else
            {
               this._vc.stage.setChildIndex(this._vc,this._vc.stage.numChildren - 1);
            }
            fullScreenBG = Sprite(this._vc.getChildByName("fullScreenBG"));
            if(fullScreenBG == null)
            {
               fullScreenBG = new Sprite();
               fullScreenBG.name = "fullScreenBG";
               this._vc.addChildAt(fullScreenBG,0);
            }
            else
            {
               this._vc.setChildIndex(fullScreenBG,0);
            }
            fullScreenBG.graphics.beginFill(this._fullScreenBgColor);
            if(this._fullScreenAccel)
            {
               fullScreenBG.graphics.drawRect(0,0,this._vc.stage.fullScreenSourceRect.width,this._vc.stage.fullScreenSourceRect.height);
            }
            else
            {
               fullScreenBG.graphics.drawRect(0,0,this._vc.stage.stageWidth,this._vc.stage.stageHeight);
            }
            this.layoutSkin();
            this.setupSkinAutoHide(false);
            if(this.hitTarget_mc != null)
            {
               this.hitTarget_mc.graphics.clear();
               this.hitTarget_mc.graphics.lineStyle(0,0,0);
               if(this._fullScreenAccel)
               {
                  this.hitTarget_mc.graphics.drawRect(0,0,this._vc.stage.fullScreenSourceRect.width,this._vc.stage.fullScreenSourceRect.height);
               }
               else
               {
                  this.hitTarget_mc.graphics.drawRect(0,0,this._vc.stage.stageWidth,this._vc.stage.stageHeight);
               }
            }
         }
         catch(err:Error)
         {
            cacheFLVPlaybackParent = null;
         }
         this._vc.addEventListener(LayoutEvent.LAYOUT,this.handleLayoutEvent);
         this._vc.addEventListener(AutoLayoutEvent.AUTO_LAYOUT,this.handleLayoutEvent);
         this._vc.addEventListener(Event.ADDED_TO_STAGE,this.handleEvent);
         this._vc.stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.handleFullScreenEvent,false,0,true);
      }
      
      flvplayback_internal function exitFullScreenTakeOver() : void
      {
         var fullScreenBG:Sprite = null;
         var cacheActiveIndex:int = 0;
         var i:int = 0;
         var vp:VideoPlayer = null;
         if(this.cacheFLVPlaybackParent == null)
         {
            return;
         }
         this._vc.removeEventListener(Event.ADDED_TO_STAGE,this.handleEvent);
         this._vc.stage.removeEventListener(FullScreenEvent.FULL_SCREEN,this.handleFullScreenEvent);
         try
         {
            if(this._fullScreenAccel)
            {
               this._vc.stage.fullScreenSourceRect = new Rectangle(0,0,-1,-1);
            }
            else
            {
               this._vc.stage.align = this.cacheStageAlign;
               this._vc.stage.scaleMode = this.cacheStageScaleMode;
            }
            fullScreenBG = Sprite(this._vc.getChildByName("fullScreenBG"));
            if(fullScreenBG != null)
            {
               this._vc.removeChild(fullScreenBG);
            }
            if(this.hitTarget_mc != null)
            {
               this.hitTarget_mc.graphics.clear();
               this.hitTarget_mc.graphics.lineStyle(0,0,0);
               this.hitTarget_mc.graphics.drawRect(0,0,this._vc.width,this._vc.height);
            }
            if(this._vc.parent != this.cacheFLVPlaybackParent)
            {
               this.cacheFLVPlaybackParent.addChildAt(this._vc,this.cacheFLVPlaybackIndex);
            }
            else
            {
               this.cacheFLVPlaybackParent.setChildIndex(this._vc,this.cacheFLVPlaybackIndex);
            }
            cacheActiveIndex = this._vc.activeVideoPlayerIndex;
            i = 0;
            while(i < this._vc.videoPlayers.length)
            {
               vp = this._vc.videoPlayers[i] as VideoPlayer;
               if(vp != null)
               {
                  this._vc.activeVideoPlayerIndex = i;
                  if(this.cacheFLVPlaybackScaleMode[i] != undefined)
                  {
                     this._vc.scaleMode = this.cacheFLVPlaybackScaleMode[i];
                  }
                  if(this.cacheFLVPlaybackAlign[i])
                  {
                     this._vc.align = this.cacheFLVPlaybackAlign[i];
                  }
               }
               i++;
            }
            this._vc.activeVideoPlayerIndex = cacheActiveIndex;
            this._vc.registrationX = this.cacheFLVPlaybackLocation.x;
            this._vc.registrationY = this.cacheFLVPlaybackLocation.y;
            this._vc.setSize(this.cacheFLVPlaybackLocation.width,this.cacheFLVPlaybackLocation.height);
         }
         catch(err:Error)
         {
         }
         this._vc.addEventListener(Event.ADDED_TO_STAGE,this.handleEvent);
         this._vc.stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.handleFullScreenEvent,false,0,true);
         this._fullScreen = false;
         this._fullScreenAccel = false;
         this.cacheStageAlign = null;
         this.cacheStageScaleMode = null;
         this.cacheFLVPlaybackParent = null;
         this.cacheFLVPlaybackIndex = 0;
         this.cacheFLVPlaybackLocation = null;
         this.cacheFLVPlaybackScaleMode = null;
         this.cacheFLVPlaybackAlign = null;
         if(this._skinAutoHide != this.cacheSkinAutoHide)
         {
            this._skinAutoHide = this.cacheSkinAutoHide;
            this.setupSkinAutoHide(false);
         }
      }
      
      flvplayback_internal function hookUpCustomComponents() : void
      {
         var i:int = 0;
         var dispObj:DisplayObject = null;
         var name:String = null;
         var index:int = 0;
         var ctrl:Sprite = null;
         this.focusRect = this.isFocusRectActive();
         var searchHash:Object = new Object();
         var doTheSearch:Boolean = false;
         i = 0;
         while(i < NUM_CONTROLS)
         {
            if(this.controls[i] == null)
            {
               searchHash[customComponentClassNames[i]] = i;
               doTheSearch = true;
            }
            i++;
         }
         if(!doTheSearch)
         {
            return;
         }
         i = 0;
         while(i < this._vc.parent.numChildren)
         {
            dispObj = this._vc.parent.getChildAt(i);
            name = getQualifiedClassName(dispObj);
            if(searchHash[name] != undefined)
            {
               if(typeof searchHash[name] == "number")
               {
                  index = int(searchHash[name]);
                  try
                  {
                     ctrl = Sprite(dispObj);
                     if((index >= NUM_BUTTONS || ctrl["placeholder_mc"] is DisplayObject) && ctrl["uiMgr"] == null)
                     {
                        this.setControl(index,ctrl);
                        searchHash[name] = ctrl;
                     }
                  }
                  catch(err:Error)
                  {
                  }
               }
            }
            i++;
         }
      }
      
      flvplayback_internal function configureBarAccessibility(param1:int) : void
      {
         switch(param1)
         {
            case SEEK_BAR_HANDLE:
               SeekBarAccImpl.createAccessibilityImplementation(this.controls[SEEK_BAR_HANDLE]);
               break;
            case VOLUME_BAR_HANDLE:
               VolumeBarAccImpl.createAccessibilityImplementation(this.controls[VOLUME_BAR_HANDLE]);
         }
      }
      
      flvplayback_internal function handleKeyEvent(param1:KeyboardEvent) : void
      {
         var ctrlData:ControlData = null;
         var focusControl:InteractiveObject = null;
         var percent:Number = NaN;
         var nearestCuePoint:Object = null;
         var nextCuePoint:Object = null;
         var wasMuted:Boolean = false;
         var num:Number = NaN;
         var ctrl:Sprite = null;
         var setFocusedControl:Function = null;
         var event:KeyboardEvent = param1;
         ctrlData = this.ctrlDataDict[event.currentTarget];
         var k:int = event.keyCode;
         var ka:int = event.charCode;
         var kaBool:Boolean = ka >= 48 && ka <= 57;
         ka = int(String.fromCharCode(event.charCode));
         switch(event.type)
         {
            case KeyboardEvent.KEY_DOWN:
               switch(event.target)
               {
                  case this.controls[SEEK_BAR_HANDLE]:
                  case this.controls[VOLUME_BAR_HANDLE]:
                     if(k != Keyboard.TAB && (k == Keyboard.UP || k == Keyboard.DOWN || k == Keyboard.LEFT || k == Keyboard.RIGHT || k == Keyboard.PAGE_UP || k == Keyboard.PAGE_DOWN || k == Keyboard.HOME || k == Keyboard.END || !isNaN(ka) && kaBool))
                     {
                        focusControl = event.target as InteractiveObject;
                        focusControl.stage.focus = focusControl;
                        if(event.target == this.controls[SEEK_BAR_HANDLE])
                        {
                           percent = this._vc.playheadPercentage;
                           nearestCuePoint = this._vc.findNearestCuePoint(this._vc.playheadTime);
                           if(k == Keyboard.LEFT || k == Keyboard.DOWN)
                           {
                              percent = percent - this._vc.seekBarScrubTolerance * 2;
                              this._vc.playheadPercentage = Math.max(percent,0);
                           }
                           else if(k == Keyboard.RIGHT || k == Keyboard.UP)
                           {
                              if(this._vc.playheadPercentage >= 99)
                              {
                                 return;
                              }
                              if(nearestCuePoint != null && nearestCuePoint.index < (nearestCuePoint.array as Array).length - 1)
                              {
                                 try
                                 {
                                    nextCuePoint = this._vc.findCuePoint(nearestCuePoint.array[nearestCuePoint.index + 1]);
                                    if(nextCuePoint && this._vc.isFLVCuePointEnabled(nextCuePoint))
                                    {
                                       if(isNaN(Number(this._vc.metadata.videocodecid)))
                                       {
                                          this._vc.playheadPercentage = Math.max(nextCuePoint.time / this._vc.totalTime * 100,Math.min(99,this._vc.playheadPercentage + this._vc.seekBarScrubTolerance * 2));
                                       }
                                       else
                                       {
                                          this._vc.playheadTime = nextCuePoint.time;
                                       }
                                    }
                                 }
                                 catch(err:Error)
                                 {
                                 }
                              }
                              else
                              {
                                 percent = percent + this._vc.seekBarScrubTolerance;
                                 this._vc.playheadPercentage = Math.min(99,percent);
                              }
                           }
                           else if(k == Keyboard.PAGE_UP || k == Keyboard.HOME)
                           {
                              this._vc.playheadPercentage = 0;
                           }
                           else if(k == Keyboard.PAGE_DOWN || k == Keyboard.END)
                           {
                              this._vc.playheadPercentage = 99;
                           }
                        }
                        else
                        {
                           wasMuted = this._isMuted;
                           num = !!this._isMuted?Number(Math.round(this.cachedSoundLevel * 1000) / 100):Number(Math.round(this._vc.volume * 1000) / 100);
                           if(k == Keyboard.LEFT || k == Keyboard.DOWN)
                           {
                              if(Math.floor(num) != num)
                              {
                                 this._vc.volume = Math.floor(num) / 10;
                              }
                              else
                              {
                                 this._vc.volume = Math.max(0,(num - 1) / 10);
                              }
                           }
                           else if(k == Keyboard.RIGHT || k == Keyboard.UP)
                           {
                              if(Math.round(num) != num)
                              {
                                 this._vc.volume = Math.round(num) / 10;
                              }
                              else
                              {
                                 this._vc.volume = Math.min(1,(num + 1) / 10);
                              }
                           }
                           else if(k == Keyboard.PAGE_UP || k == Keyboard.HOME)
                           {
                              this._vc.volume = 1;
                           }
                           else if(k == Keyboard.PAGE_DOWN || k == Keyboard.END)
                           {
                              this._vc.volume = 0;
                           }
                           else if(!isNaN(ka) && kaBool)
                           {
                              this._vc.volume = Math.min(1,(ka + 1) / 10);
                           }
                           this.cachedSoundLevel = this._vc.volume;
                           if(wasMuted)
                           {
                              this._isMuted = true;
                              this.cachedSoundLevel = this._vc.volume;
                              this._vc.volume = 0;
                              this.setEnabledAndVisibleForState(MUTE_OFF_BUTTON,VideoState.PLAYING);
                              this.skinButtonControl(this.controls[MUTE_OFF_BUTTON]);
                              this.setEnabledAndVisibleForState(MUTE_ON_BUTTON,VideoState.PLAYING);
                              this.skinButtonControl(this.controls[MUTE_ON_BUTTON]);
                           }
                        }
                     }
                     break;
                  case this.controls[PAUSE_BUTTON]:
                     if(k == Keyboard.SPACE || k == Keyboard.ENTER)
                     {
                        ctrlData.state = DOWN_STATE;
                        if(!event.target.focusRect)
                        {
                           this.dispatchMessage(ctrlData.index);
                        }
                        focusControl = this.controls[PLAY_BUTTON] as InteractiveObject;
                     }
                     break;
                  case this.controls[PLAY_BUTTON]:
                     if(k == Keyboard.SPACE || k == Keyboard.ENTER)
                     {
                        ctrlData.state = DOWN_STATE;
                        if(!event.target.focusRect)
                        {
                           this.dispatchMessage(ctrlData.index);
                        }
                        focusControl = this.controls[PAUSE_BUTTON] as InteractiveObject;
                     }
                     break;
                  case this.controls[STOP_BUTTON]:
                  case this.controls[BACK_BUTTON]:
                  case this.controls[FORWARD_BUTTON]:
                     if(k == Keyboard.SPACE || k == Keyboard.ENTER)
                     {
                        ctrlData.state = DOWN_STATE;
                        event.target.tabEnabled = true;
                        if(!event.target.focusRect)
                        {
                           this.dispatchMessage(ctrlData.index);
                        }
                        focusControl = event.target as InteractiveObject;
                     }
                     break;
                  case this.controls[MUTE_ON_BUTTON]:
                     if(k == Keyboard.SPACE || k == Keyboard.ENTER)
                     {
                        ctrlData.state = DOWN_STATE;
                        if(!event.target.focusRect)
                        {
                           this.dispatchMessage(ctrlData.index);
                        }
                        focusControl = this.controls[MUTE_OFF_BUTTON] as InteractiveObject;
                     }
                     break;
                  case this.controls[MUTE_OFF_BUTTON]:
                     if(k == Keyboard.SPACE || k == Keyboard.ENTER)
                     {
                        ctrlData.state = DOWN_STATE;
                        if(!event.target.focusRect)
                        {
                           this.dispatchMessage(ctrlData.index);
                        }
                        focusControl = this.controls[MUTE_ON_BUTTON] as InteractiveObject;
                     }
                     break;
                  case this.controls[FULL_SCREEN_ON_BUTTON]:
                     if(k == Keyboard.SPACE || k == Keyboard.ENTER)
                     {
                        ctrlData.state = DOWN_STATE;
                        this.dispatchMessage(FULL_SCREEN_ON_BUTTON);
                     }
                     break;
                  case this.controls[FULL_SCREEN_OFF_BUTTON]:
                     if(k == Keyboard.SPACE || k == Keyboard.ENTER)
                     {
                        ctrlData.state = DOWN_STATE;
                        this.dispatchMessage(FULL_SCREEN_OFF_BUTTON);
                     }
               }
               this.skinButtonControl(event.currentTarget);
               break;
            case KeyboardEvent.KEY_UP:
               switch(event.target)
               {
                  case this.controls[SEEK_BAR_HANDLE]:
                  case this.controls[VOLUME_BAR_HANDLE]:
                     if(k != Keyboard.TAB && (k == Keyboard.UP || k == Keyboard.DOWN || k == Keyboard.LEFT || k == Keyboard.RIGHT || k == Keyboard.PAGE_UP || k == Keyboard.PAGE_DOWN || k == Keyboard.HOME || k == Keyboard.END))
                     {
                        focusControl = event.target as InteractiveObject;
                        focusControl.stage.focus = focusControl;
                     }
                     break;
                  default:
                     ctrlData.state = OVER_STATE;
               }
         }
         if(focusControl != null)
         {
            if(focusControl.visible)
            {
               ctrlData.state = NORMAL_STATE;
               if(!focusControl.tabEnabled)
               {
                  focusControl.tabEnabled = true;
               }
               focusControl.stage.focus = focusControl;
            }
            else
            {
               ctrl = event.currentTarget as Sprite;
               setFocusedControl = function(param1:Event):void
               {
                  if(param1.target.visible)
                  {
                     ctrlData.state = NORMAL_STATE;
                     if(!param1.target.tabEnabled)
                     {
                        param1.target.tabEnabled = true;
                     }
                     param1.target.stage.focus = param1.target;
                     param1.target.removeEventListener(Event.ENTER_FRAME,setFocusedControl);
                  }
               };
               focusControl.addEventListener(Event.ENTER_FRAME,setFocusedControl);
            }
         }
      }
      
      flvplayback_internal function handleFocusEvent(param1:FocusEvent) : void
      {
         var _loc2_:ControlData = this.ctrlDataDict[param1.currentTarget];
         if(_loc2_ == null)
         {
            return;
         }
         switch(param1.type)
         {
            case FocusEvent.FOCUS_IN:
               switch(param1.target)
               {
                  case this.controls[SEEK_BAR_HANDLE]:
                  case this.controls[VOLUME_BAR_HANDLE]:
                     param1.target.focusRect = false;
               }
               _loc2_.state = OVER_STATE;
               break;
            case FocusEvent.FOCUS_OUT:
               switch(param1.target)
               {
                  case this.controls[SEEK_BAR_HANDLE]:
                  case this.controls[VOLUME_BAR_HANDLE]:
                     param1.target.focusRect = true;
                     break;
                  case this.controls[STOP_BUTTON]:
                     if(!_loc2_.enabled)
                     {
                        param1.target.tabEnabled = false;
                     }
               }
               _loc2_.state = NORMAL_STATE;
         }
         this.skinButtonControl(param1.currentTarget);
      }
      
      flvplayback_internal function assignTabIndexes(param1:int) : int
      {
         var controlsSlice:Array = null;
         var customSlice:Array = null;
         var sortedControls:Array = null;
         var i:int = 0;
         var ctrl:Sprite = null;
         var startTabbing:int = param1;
         if(startTabbing)
         {
            this.startTabIndex = startTabbing;
            this.endTabIndex = this.startTabIndex + 1;
         }
         else if(this._vc.tabIndex)
         {
            this.startTabIndex = this._vc.tabIndex;
            this.endTabIndex = this.startTabIndex + 1;
         }
         else
         {
            return this.endTabIndex;
         }
         var sortByPosition:Function = function(param1:DisplayObject, param2:DisplayObject):int
         {
            var _loc3_:Rectangle = param1.getBounds(_vc);
            var _loc4_:Rectangle = param2.getBounds(_vc);
            if(_loc3_.x > _loc4_.x)
            {
               return 1;
            }
            if(_loc3_.x < _loc4_.x)
            {
               return -1;
            }
            if(_loc3_.y > _loc4_.y)
            {
               return -1;
            }
            if(_loc3_.y < _loc4_.y)
            {
               return 1;
            }
            return 0;
         };
         try
         {
            controlsSlice = this.controls.slice();
            if(this.customClips && this.customClips.length > 0)
            {
               customSlice = this.customClips.slice();
            }
            sortedControls = !customSlice?controlsSlice:controlsSlice.concat(customSlice);
            sortedControls.sort(sortByPosition);
            while(i < sortedControls.length)
            {
               ctrl = sortedControls[i] as Sprite;
               ctrl.tabIndex = ++this.endTabIndex;
               if(!ctrl.tabEnabled)
               {
                  ctrl.tabEnabled = false;
               }
               i++;
            }
         }
         catch(err:Error)
         {
         }
         return ++this.endTabIndex;
      }
      
      flvplayback_internal function isFocusRectActive() : Boolean
      {
         var i:int = 0;
         var doc:DisplayObjectContainer = null;
         var child:DisplayObject = null;
         var classReference:Class = null;
         var c:* = undefined;
         var o:InteractiveObject = this._vc.parent;
         while(o)
         {
            if(o is DisplayObjectContainer)
            {
               doc = DisplayObjectContainer(o);
            }
            i = 0;
            while(i < doc.numChildren)
            {
               try
               {
                  child = doc.getChildAt(i) as DisplayObject;
                  classReference = getDefinitionByName("fl.core.UIComponent") as Class;
                  if(child != null && child != this._vc && child is classReference)
                  {
                     c = child as classReference;
                     if(c.focusManager.showFocusIndicator)
                     {
                        return false;
                     }
                     break;
                  }
               }
               catch(e:Error)
               {
               }
               i++;
            }
            o = o.parent;
         }
         return true;
      }
      
      private function handleMouseFocusChangeEvent(param1:FocusEvent) : void
      {
         var ctrlData:ControlData = null;
         var focusCtrlData:ControlData = null;
         var ctrl:Sprite = null;
         var setFocusedControl:Function = null;
         var event:FocusEvent = param1;
         try
         {
            ctrlData = this.ctrlDataDict[event.relatedObject];
         }
         catch(error:ReferenceError)
         {
         }
         if(ctrlData == null)
         {
            return;
         }
         var index:int = ctrlData.index;
         var currentFocus:InteractiveObject = event.target.stage.focus as InteractiveObject;
         var focusControl:InteractiveObject = null;
         switch(index)
         {
            case PLAY_BUTTON:
               focusControl = this.controls[PAUSE_BUTTON] as InteractiveObject;
               break;
            case PAUSE_BUTTON:
               focusControl = this.controls[PLAY_BUTTON] as InteractiveObject;
               break;
            case STOP_BUTTON:
            case BACK_BUTTON:
            case FORWARD_BUTTON:
            case SEEK_BAR_HANDLE:
            case VOLUME_BAR_HANDLE:
               focusControl = this.controls[event.relatedObject] as InteractiveObject;
               break;
            case SEEK_BAR_HIT:
               focusControl = this.controls[SEEK_BAR_HANDLE] as InteractiveObject;
               break;
            case VOLUME_BAR_HIT:
               focusControl = this.controls[VOLUME_BAR_HANDLE] as InteractiveObject;
               break;
            case MUTE_ON_BUTTON:
               focusControl = this.controls[MUTE_OFF_BUTTON] as InteractiveObject;
               break;
            case MUTE_OFF_BUTTON:
               focusControl = this.controls[MUTE_ON_BUTTON] as InteractiveObject;
               break;
            case FULL_SCREEN_ON_BUTTON:
               focusControl = this.controls[FULL_SCREEN_OFF_BUTTON] as InteractiveObject;
               break;
            case FULL_SCREEN_OFF_BUTTON:
               focusControl = this.controls[FULL_SCREEN_ON_BUTTON] as InteractiveObject;
         }
         if(focusControl != null)
         {
            try
            {
               focusCtrlData = this.ctrlDataDict[focusControl];
               focusCtrlData.cachedFocusRect = focusControl.focusRect;
            }
            catch(error:ReferenceError)
            {
            }
            focusControl.focusRect = false;
            if(focusControl.visible)
            {
               focusControl.stage.focus = focusControl;
               focusControl.focusRect = focusCtrlData.cachedFocusRect;
            }
            else
            {
               ctrl = event.currentTarget as Sprite;
               setFocusedControl = function(param1:Event):void
               {
                  if(param1.target.visible)
                  {
                     param1.target.stage.focus = param1.target;
                     param1.target.focusRect = focusCtrlData.cachedFocusRect;
                     param1.target.removeEventListener(Event.ENTER_FRAME,setFocusedControl);
                  }
               };
               focusControl.addEventListener(Event.ENTER_FRAME,setFocusedControl);
            }
         }
      }
   }
}
