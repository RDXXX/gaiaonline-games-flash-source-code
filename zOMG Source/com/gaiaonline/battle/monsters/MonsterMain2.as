package com.gaiaonline.battle.monsters
{
   import com.gaiaonline.battle.monsters.BitmapMonster.MonsterPoseEnum;
   import com.gaiaonline.battle.ui.events.UiEvents;
   import com.gaiaonline.utils.DisplayObjectStopper;
   import com.gaiaonline.utils.DisplayObjectStopperModes;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import com.gaiaonline.utils.Enumeration;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.media.Sound;
   
   public class MonsterMain2 extends MovieClip
   {
       
      
      private var _baseMonster:Object;
      
      private var _quickMoveAnim:String = "";
      
      private var _state:int = -1;
      
      private var _ang:Number = 0;
      
      private var _stopper:DisplayObjectStopper;
      
      private var _angles:Array;
      
      private var _quickMoveOutAnimationLength:int = 0;
      
      private var _baseActorId:String = "Na";
      
      private var _isAngleRotation:Boolean = false;
      
      private var _quickMoveInFrames:int = 0;
      
      private var _currentLoopPose:MonsterPoseEnum;
      
      private var _currentMc:MovieClip;
      
      private var _quickMoveOutFrames:int = 0;
      
      private var _rotationAngle:Number = 0;
      
      private var _angIndex:int = 0;
      
      private var _isTransition:Boolean = false;
      
      private var _pose:MonsterPoseEnum;
      
      public function MonsterMain2(baseMonster:Object)
      {
         _angles = new Array();
         _pose = MonsterPoseEnum.IDLE;
         _currentLoopPose = MonsterPoseEnum.IDLE;
         _stopper = new DisplayObjectStopper(DisplayObjectStopperModes.SHOW_NO_ANIM,true);
         super();
         this._baseMonster = baseMonster;
         var mc:MovieClip = this._baseMonster.getNewMonster();
         if(this._baseMonster.hasOwnProperty("isAngleRotation"))
         {
            this._isAngleRotation = this._baseMonster.isAngleRotation;
         }
         if(this._baseMonster != null && this._baseMonster.hasOwnProperty("quickMoveInFrames"))
         {
            this._quickMoveInFrames = this._quickMoveOutFrames = this._baseMonster.quickMoveInFrames;
         }
         if(this._baseMonster != null && this._baseMonster.hasOwnProperty("quickMoveOutFrames"))
         {
            this._quickMoveOutFrames = this._baseMonster.quickMoveOutFrames;
         }
         if(this._baseMonster != null && this._baseMonster.hasOwnProperty("quickMoveOutAnimationLength"))
         {
            this._quickMoveOutAnimationLength = this._baseMonster.quickMoveOutAnimationLength;
         }
         buildStructure(mc);
         this.addEventListener(Event.ENTER_FRAME,onFrame);
         this.init();
      }
      
      public function die() : void
      {
         this.setPose(MonsterPoseEnum.DEATH);
         this.addEventListener(Event.ENTER_FRAME,onFrame);
      }
      
      private function containFrameLabel(mc:MovieClip, frameLabel:String) : Boolean
      {
         var i:int = 0;
         var v:Boolean = false;
         if(mc != null)
         {
            for(i = 0; i < mc.currentLabels.length; i++)
            {
               if(mc.currentLabels[i].name == frameLabel)
               {
                  v = true;
                  break;
               }
            }
         }
         return v;
      }
      
      public function set aggro(v:Boolean) : void
      {
         this._baseMonster.aggro = v;
      }
      
      public function get minRadius() : Number
      {
         return _baseMonster.minRadius;
      }
      
      public function get aggro() : Boolean
      {
         if(this._baseMonster.hasOwnProperty("aggro"))
         {
            return this._baseMonster.aggro;
         }
         return false;
      }
      
      public function get hasAggro() : Boolean
      {
         return _baseMonster.hasAggro;
      }
      
      public function setAngle(angle:Number) : int
      {
         var ang:Number = NaN;
         if(this._ang != angle)
         {
            this._ang = angle;
            ang = this._ang - 90;
            if(ang < 0)
            {
               ang = ang + 360;
            }
            if(ang > 180)
            {
               ang = 180 - (ang - 180);
            }
            this._rotationAngle = ang;
         }
         var index:int = 0;
         for(var i:int = 0; i < this._angles.length; i++)
         {
            if(ang >= this._angles[i].angMin && ang < this._angles[i].angMax)
            {
               index = i;
               break;
            }
         }
         if(this._angIndex != index)
         {
            this._angIndex = index;
            setMc(true);
         }
         else if(this._isAngleRotation && this._currentMc != null)
         {
            this._currentMc.rotation = this._rotationAngle - 180;
         }
         return this._ang;
      }
      
      public function hit() : void
      {
         this.setPose(MonsterPoseEnum.HIT);
         this.addEventListener(Event.ENTER_FRAME,onFrame);
      }
      
      public function get maxRadius() : Number
      {
         return _baseMonster.maxRadius;
      }
      
      public function init() : void
      {
         this._state = -1;
         this._pose = MonsterPoseEnum.IDLE;
         this._currentLoopPose = MonsterPoseEnum.IDLE;
         this.setAngle(45);
      }
      
      private function setMc(gotoSameFrame:Boolean = false) : void
      {
         var frame:int = 0;
         if(this._angles[this._angIndex] != null && this._angles[this._angIndex].poses[this._pose.toString()] != null && this._angles[this._angIndex].poses[this._pose.toString()]["s" + this._state.toString()] != null)
         {
            frame = 1;
            if(this._currentMc != null)
            {
               if(gotoSameFrame)
               {
                  frame = this._currentMc.currentFrame;
               }
               if(this.contains(this._currentMc))
               {
                  this.removeChild(this._currentMc);
                  this._currentMc.stop();
                  DisplayObjectUtils.stopAllMovieClips(this._currentMc);
               }
            }
            this._currentMc = this._angles[this._angIndex].poses[this._pose.toString()]["s" + this._state.toString()];
            this._currentMc.addEventListener("startProjectile",this.onProjectile,false,0,true);
            this.addChild(this._currentMc);
            this._currentMc.gotoAndPlay(frame);
            DisplayObjectUtils.startAllMovieClips(this._currentMc);
            if(this._isAngleRotation && this._currentMc != null)
            {
               this._currentMc.rotation = this._rotationAngle - 180;
            }
         }
      }
      
      private function setPose(pose:MonsterPoseEnum) : void
      {
         if(this._pose != pose && pose != null)
         {
            this._pose = pose;
            if(!this._pose.isQuickMove())
            {
               this._quickMoveAnim = "";
            }
            if(!this._pose.isAction() && !this._pose.isQuickMove())
            {
               this._currentLoopPose = this._pose;
            }
            setMc(false);
         }
      }
      
      public function getActorBtn() : *
      {
         return _baseMonster.getActorBtn();
      }
      
      private function buildStructure(mc:MovieClip) : void
      {
         var mtx:Matrix = null;
         var mcAngle:MovieClip = null;
         var poseIndex:int = 0;
         var mcPose:MovieClip = null;
         var stateIndex:int = 0;
         var mcState:MovieClip = null;
         for(var angIndex:int = 0; angIndex < mc.numChildren; angIndex++)
         {
            mcAngle = mc.getChildAt(angIndex) as MovieClip;
            this._angles.push({
               "angMin":mcAngle.angMin,
               "angMax":mcAngle.angMax,
               "poses":new Object()
            });
            for(poseIndex = 0; poseIndex < mcAngle.numChildren; poseIndex++)
            {
               mcPose = mcAngle.getChildAt(poseIndex) as MovieClip;
               this._angles[angIndex].poses[mcPose.name] = new Object();
               for(stateIndex = 0; stateIndex < mcPose.numChildren; stateIndex++)
               {
                  mcState = mcPose.getChildAt(stateIndex) as MovieClip;
                  this._angles[angIndex].poses[mcPose.name][mcState.name] = mcState;
                  mtx = mcState.transform.matrix;
                  mtx.concat(mcPose.transform.matrix);
                  mtx.concat(mcAngle.transform.matrix);
                  mcState.transform.matrix = mtx;
                  mcState.stop();
                  DisplayObjectUtils.stopAllMovieClips(mcState);
                  this._stopper.addGarbageStopper(mcState);
               }
            }
         }
      }
      
      public function dispose() : void
      {
         this._stopper = null;
         this._angles = null;
         if(this._currentMc != null)
         {
            this._currentMc.stop();
            DisplayObjectUtils.stopAllMovieClips(this._currentMc);
            this._currentMc = null;
         }
         this._baseActorId = null;
         this.removeEventListener(Event.ENTER_FRAME,onFrame);
      }
      
      public function getPortrait() : *
      {
         return _baseMonster.getPortrait();
      }
      
      public function getRing() : MovieClip
      {
         var ring:MovieClip = null;
         if(this._baseMonster.hasOwnProperty("getRing"))
         {
            ring = this._baseMonster.getRing();
         }
         return ring;
      }
      
      public function set isGlow(v:Boolean) : void
      {
         this._baseMonster.isGlow = v;
      }
      
      public function getNewMonster() : *
      {
         return new MonsterMain2(this._baseMonster);
      }
      
      private function onProjectile(evt:Event) : void
      {
         this.dispatchEvent(new UiEvents("startProjectile",null));
      }
      
      public function setPoseState(pose:String, state:int = 0) : void
      {
         this.setPose(MonsterPoseEnum(Enumeration.getEnumFromName(MonsterPoseEnum,pose)));
         this.setState(state);
      }
      
      public function onQuickMove(type:String, cTime:int = 0, totalTime:int = 0) : Object
      {
         var qm:MonsterPoseEnum = MonsterPoseEnum.TELEPORT;
         switch(type.toLowerCase())
         {
            case "teleport":
               qm = MonsterPoseEnum.TELEPORT;
               break;
            case "charge":
               qm = MonsterPoseEnum.CHARGE;
         }
         var len:int = this._quickMoveOutAnimationLength * 1000 / 16;
         if(this._pose != qm && cTime < totalTime - len)
         {
            setPose(qm);
         }
         if(this._pose.isQuickMove())
         {
            if(cTime >= totalTime - len && this._quickMoveAnim != "qmout")
            {
               this._currentMc.gotoAndPlay("qmout");
               DisplayObjectUtils.startAllMovieClips(this._currentMc);
               this._quickMoveAnim = "qmout";
            }
            else if(cTime < totalTime - len && this._quickMoveAnim != "qmin" && this._quickMoveAnim != "qmloop")
            {
               this._currentMc.gotoAndPlay("qmin");
               DisplayObjectUtils.startAllMovieClips(this._currentMc);
               this._quickMoveAnim = "qmin";
            }
         }
         return {
            "startFrame":this._quickMoveInFrames,
            "frameFromEnd":this._quickMoveOutFrames
         };
      }
      
      public function attack(atp:String) : void
      {
         switch(atp.toLowerCase())
         {
            case "atk0":
               this.setPose(MonsterPoseEnum.ATK0);
               break;
            case "atk1":
               this.setPose(MonsterPoseEnum.ATK1);
               break;
            case "atk2":
               this.setPose(MonsterPoseEnum.ATK2);
         }
         this.addEventListener(Event.ENTER_FRAME,onFrame);
      }
      
      public function walk() : void
      {
         this.setPose(MonsterPoseEnum.WALK);
         this.addEventListener(Event.ENTER_FRAME,onFrame);
      }
      
      public function set baseActorId(v:String) : void
      {
         if(this._baseActorId != v)
         {
            this._baseActorId = v;
            this.dispatchEvent(new Event("BaseActorIdChanged"));
         }
      }
      
      private function onFrame(evt:Event) : void
      {
         if(this._state >= 0 && this._currentMc != null)
         {
            if(!this._pose.isQuickMove() && (this._pose.isAction() || this._isTransition) && this._currentMc.currentLabel == "end")
            {
               if(this._pose == MonsterPoseEnum.DEATH)
               {
                  this.dispatchEvent(new Event("MonsterDead"));
               }
               else
               {
                  setPose(this._currentLoopPose);
                  this._isTransition = false;
                  this.dispatchEvent(new Event("MonsterActionEnd"));
               }
            }
            else if(this._pose.isQuickMove() && this._currentMc.currentLabel == "end")
            {
               if(this._quickMoveAnim == "qmin" || this._quickMoveAnim == "qmloop")
               {
                  this._currentMc.gotoAndPlay("qmloop");
                  DisplayObjectUtils.startAllMovieClips(this._currentMc);
                  this._quickMoveAnim = "qmloop";
               }
               else if(this._quickMoveAnim == "qmout")
               {
                  setPose(this._currentLoopPose);
                  this._quickMoveAnim = "";
                  this._isTransition = false;
                  this.dispatchEvent(new Event("MonsterActionEnd"));
               }
            }
         }
      }
      
      public function reset() : void
      {
         this.init();
      }
      
      public function idle() : void
      {
         this.setPose(MonsterPoseEnum.IDLE);
      }
      
      public function setState(state:int = 0) : void
      {
         var oldState:int = 0;
         if(this._state != state)
         {
            oldState = this._state;
            this._state = state;
            setMc(false);
            if(this.containFrameLabel(this._currentMc,"ts" + oldState))
            {
               this._currentMc.gotoAndPlay("ts" + oldState);
               DisplayObjectUtils.startAllMovieClips(this._currentMc);
               this._isTransition = true;
            }
         }
      }
      
      public function get isGlow() : Boolean
      {
         if(this._baseMonster.hasOwnProperty("isGlow"))
         {
            return this._baseMonster.isGlow;
         }
         return false;
      }
      
      public function getSound(soundId:String) : Sound
      {
         return this._baseMonster.getSound(soundId);
      }
      
      public function get soundList() : Array
      {
         return this._baseMonster.soundList;
      }
      
      public function get baseActorId() : String
      {
         return this._baseActorId;
      }
      
      private function getAnimationLength(pose:MonsterPoseEnum) : int
      {
         var mc:MovieClip = null;
         var len:int = 0;
         if(this._angles[this._angIndex] != null && this._angles[this._angIndex].poses[pose.toString()] != null && this._angles[this._angIndex].poses[pose.toString()]["s" + this._state.toString()] != null)
         {
            mc = this._angles[this._angIndex].poses[pose.toString()]["s" + this._state.toString()] as MovieClip;
            if(mc != null)
            {
               len = mc.totalFrames;
            }
         }
         return len;
      }
      
      public function sit() : void
      {
         this.setPose(MonsterPoseEnum.SIT);
      }
      
      public function get flip() : Boolean
      {
         if(_baseMonster.hasOwnProperty("flip"))
         {
            return _baseMonster.flip;
         }
         return true;
      }
      
      public function getNewProjectile() : MovieClip
      {
         if(_baseMonster.hasOwnProperty("getNewProjectile"))
         {
            return _baseMonster.getNewProjectile();
         }
         return null;
      }
      
      public function spawn() : void
      {
         this.setPose(MonsterPoseEnum.SPAWN);
         this.addEventListener(Event.ENTER_FRAME,onFrame);
      }
   }
}
