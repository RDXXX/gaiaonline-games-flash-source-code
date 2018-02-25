package com.gaiaonline.battle.monsters.BitmapMonster
{
   import com.gaiaonline.utils.DisplayObjectStopper;
   import com.gaiaonline.utils.DisplayObjectStopperModes;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import com.gaiaonline.utils.Enumeration;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class MonsterMainBitmapConverter extends EventDispatcher
   {
       
      
      private var _rect:Rectangle;
      
      private var _totalFrames:int = 0;
      
      private var _bitmapAnimationData:BitmapAnimationData;
      
      private var _totalMem:Number = 0;
      
      private var _waitTimer:Timer;
      
      private var _displayObjectStopper:DisplayObjectStopper;
      
      private var _currentStateIndex:int = 0;
      
      private var _angles:Array;
      
      private var _matrix:Matrix;
      
      private var _states:Array;
      
      private var _lastTime:int = 0;
      
      private var _currentFrameLabel:String = null;
      
      private var _skipFrame:int = 0;
      
      private var _mc:MovieClip;
      
      private var _totalFrameReused:int = 0;
      
      private var _bmdRef:Object;
      
      private var _precision:Number = 1;
      
      public function MonsterMainBitmapConverter(precision:Number = 1, skipFrame:int = 0)
      {
         _displayObjectStopper = new DisplayObjectStopper(DisplayObjectStopperModes.SHOW_NO_ANIM,true);
         _matrix = new Matrix();
         _rect = new Rectangle();
         _bmdRef = new Object();
         _states = new Array();
         super();
         this._precision = precision;
         this._skipFrame = skipFrame;
      }
      
      private function getBitmapFrame(topMc:MovieClip, mc:MovieClip, frameIndex:int) : BitmapFrame
      {
         var bmd:BitmapData = null;
         var ba:ByteArray = null;
         var label:String = null;
         if(this._currentFrameLabel != mc.currentLabel)
         {
            label = mc.currentLabel;
            this._currentFrameLabel = mc.currentLabel;
         }
         if(topMc.width > 0 && topMc.height > 0)
         {
            this._rect = topMc.getBounds(topMc);
            bmd = new BitmapData(Math.max(this._rect.width * this._precision,1),Math.max(this._rect.height * this._precision,1),true,0);
            this._matrix.identity();
            this._matrix.translate(-this._rect.left,-this._rect.top);
            this._matrix.scale(this._precision,this._precision);
            bmd.draw(topMc,this._matrix);
            ba = bmd.getPixels(new Rectangle(0,0,bmd.width,bmd.height));
            if(this._bmdRef[ba] != null)
            {
               bmd = this._bmdRef[ba];
               this._totalFrameReused++;
            }
            else
            {
               this._totalMem = this._totalMem + bmd.width * bmd.height * 4;
               this._bmdRef[ba] = bmd;
            }
            this._totalFrames++;
         }
         return new BitmapFrame(frameIndex,bmd,this._rect.left,this._rect.top,1 / this._precision,frameIndex + 1,label);
      }
      
      public function get totalFrames() : int
      {
         return this._totalFrames;
      }
      
      private function onTimerComplete(evt:TimerEvent) : void
      {
         this.createAnimationsData(this._mc,this._angles);
      }
      
      private function createDataStructure(mc:MovieClip) : Array
      {
         var mcAng:MovieClip = null;
         var poses:Object = null;
         var poseIndex:int = 0;
         var mcPose:MovieClip = null;
         var states:Object = null;
         var stateCount:int = 0;
         var stateIndex:int = 0;
         var mcState:MovieClip = null;
         var angles:Array = new Array();
         for(var angIndex:int = 0; angIndex < mc.numChildren; angIndex++)
         {
            mcAng = mc.getChildAt(angIndex) as MovieClip;
            poses = new Object();
            for(poseIndex = 0; poseIndex < mcAng.numChildren; poseIndex++)
            {
               mcPose = mcAng.getChildAt(poseIndex) as MovieClip;
               states = new Object();
               stateCount = mcPose.numChildren;
               for(stateIndex = 0; stateIndex < stateCount; stateIndex++)
               {
                  mcState = mcPose.getChildAt(0) as MovieClip;
                  states[mcState.name] = mcState;
                  mcPose.removeChild(mcState);
                  this._states.push({
                     "angIndex":angIndex,
                     "pose":mcPose.name,
                     "state":mcState.name
                  });
               }
               poses[MonsterPoseEnum(Enumeration.getEnumFromName(MonsterPoseEnum,mcPose.name))] = states;
            }
            angles.push({
               "angMin":mcAng.angMin,
               "angMax":mcAng.angMax,
               "poses":poses
            });
         }
         return angles;
      }
      
      private function convertDone(angles:Array) : void
      {
         trace("totalFrames, totalFrameReused, totalMemory MB:",this._totalFrames,this._totalFrameReused,uint(this._totalMem / 1024) / 1024);
         this._bmdRef = null;
         this._states = null;
         if(this._waitTimer != null)
         {
            this._waitTimer.stop();
            this._waitTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,onTimerComplete);
            this._waitTimer = null;
         }
         this._bitmapAnimationData = new BitmapAnimationData(angles);
         this.dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function get totalFramesReused() : int
      {
         return this._totalFrameReused;
      }
      
      private function createAnimationsData(mc:MovieClip, angles:Array) : void
      {
         var angIndex:int = 0;
         var pose:String = null;
         var state:MovieClip = null;
         var anims:Object = null;
         this._lastTime = getTimer();
         for(var i:int = this._currentStateIndex; i < this._states.length; i++)
         {
            angIndex = this._states[i].angIndex;
            pose = this._states[i].pose;
            state = angles[angIndex].poses[pose][this._states[i].state];
            MovieClip(MovieClip(mc.getChildAt(angIndex)).getChildByName(pose)).addChild(state);
            anims = getAnimations(mc,state);
            MovieClip(MovieClip(mc.getChildAt(angIndex)).getChildByName(pose)).removeChild(state);
            angles[angIndex].poses[pose][state.name] = anims;
            DisplayObjectUtils.stopAllMovieClips(state);
            this._displayObjectStopper.addGarbageStopper(state);
            state = null;
            if(getTimer() - this._lastTime > 1000)
            {
               this._lastTime = getTimer();
               this._currentStateIndex = i + 1;
               this._mc = mc;
               this._angles = angles;
               this._waitTimer.start();
               return;
            }
         }
         convertDone(angles);
      }
      
      private function getAnimations(topMc:MovieClip, mc:MovieClip) : Object
      {
         var lastFrame:BitmapFrame = null;
         var currentLabel:String = "main";
         var obj:Object = new Object();
         var frameIndex:int = 0;
         obj["main"] = new Array();
         var skipCount:int = 0;
         for(var f:int = 1; f <= mc.totalFrames; f++)
         {
            mc.gotoAndStop(f);
            if(mc.currentLabel != null && mc.currentLabel.toLowerCase() != currentLabel && (mc.currentLabel.toLowerCase().substr(0,2) == "ts" || mc.currentLabel.toLowerCase() == "qmin" || mc.currentLabel.toLowerCase() == "qmout" || mc.currentLabel.toLowerCase() == "qmloop" || mc.currentLabel.toLowerCase() == "end"))
            {
               if(mc.currentLabel.toLowerCase() != "end")
               {
                  obj[mc.currentLabel.toLowerCase()] = new Array();
                  frameIndex = 0;
                  skipCount = 0;
               }
               else
               {
                  obj[currentLabel].push(getBitmapFrame(topMc,mc,frameIndex));
               }
               currentLabel = mc.currentLabel.toLowerCase();
            }
            if(currentLabel != "end")
            {
               if(skipCount == 0 || lastFrame == null)
               {
                  lastFrame = getBitmapFrame(topMc,mc,frameIndex);
                  obj[currentLabel].push(lastFrame);
               }
               else
               {
                  obj[currentLabel].push(new BitmapFrame(frameIndex,lastFrame.bitmapData,lastFrame.xOffset,lastFrame.yOffest,lastFrame.scale,frameIndex + 1));
               }
            }
            frameIndex++;
            skipCount++;
            if(skipCount > this._skipFrame)
            {
               skipCount = 0;
            }
         }
         return obj;
      }
      
      public function get bitmapAnimationData() : BitmapAnimationData
      {
         return this._bitmapAnimationData;
      }
      
      public function get totalMem() : Number
      {
         return this._totalMem;
      }
      
      public function convert(mc:MovieClip) : void
      {
         this._displayObjectStopper.addGarbageStopper(mc);
         DisplayObjectUtils.stopAllMovieClips(mc);
         this._waitTimer = new Timer(100,1);
         this._waitTimer.addEventListener(TimerEvent.TIMER_COMPLETE,onTimerComplete);
         var angles:Array = createDataStructure(mc);
         createAnimationsData(mc,angles);
      }
   }
}
