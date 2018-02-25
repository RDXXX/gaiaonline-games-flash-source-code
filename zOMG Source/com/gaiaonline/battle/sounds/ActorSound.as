package com.gaiaonline.battle.sounds
{
   import com.gaiaonline.battle.newactors.ActorManager;
   import com.gaiaonline.battle.newactors.BaseActor;
   import com.gaiaonline.utils.FrameTimer;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class ActorSound
   {
       
      
      private var stop:Boolean = false;
      
      private var channel:SoundChannel;
      
      private var soundRef:Object;
      
      private var sounds:Object;
      
      private var sid:String;
      
      private var minRadius:Number = 30;
      
      private var _curSound:Sound;
      
      private var maxRadius:Number = 200;
      
      private var isInit:Boolean = false;
      
      private var repeat:int = 0;
      
      private var maxVolume:Number = 0;
      
      private var lastLoop:String;
      
      private var overrideSound:Boolean = false;
      
      private var isPlaying:Boolean = false;
      
      private var actorRef:BaseActor;
      
      private var frame:String;
      
      private var _audioSettings:AudioSettings = null;
      
      private var _frameTimer:FrameTimer;
      
      private var _actorSoundManager:ActorSoundManager;
      
      public function ActorSound(audioSettings:AudioSettings)
      {
         _frameTimer = new FrameTimer(onTimer);
         super();
         _audioSettings = audioSettings;
      }
      
      private function getSoundId(frame:String) : String
      {
         var min:int = 0;
         var max:int = this.sounds[frame].list.length - 1;
         var i:int = Math.floor(min + Math.random() * (max - min + 1));
         var sid:String = this.sounds[frame].list[i];
         return sid;
      }
      
      private function stopSound() : void
      {
         if(this.channel != null)
         {
            this.channel.stop();
            this.channel.removeEventListener(Event.SOUND_COMPLETE,onSoundCompleted);
            if(this.sid != null && this.soundRef != null && this._curSound != null)
            {
               this._actorSoundManager.checkin(this.soundRef,this.sid,this._curSound);
            }
         }
         this.channel = null;
      }
      
      private function onSoundCompleted(evt:Event) : void
      {
         this.overrideSound = false;
         this.stopSound();
         if(this.lastLoop != null && !this.stop)
         {
            this.sid = this.lastLoop;
            this.startSound();
         }
         else
         {
            this.sid = null;
            this._curSound = null;
         }
      }
      
      public function dispose() : void
      {
         this._frameTimer.stop();
         this._frameTimer = null;
         if(this.sid != null && this.soundRef != null && this._curSound != null)
         {
            this._actorSoundManager.checkin(this.soundRef,this.sid,this._curSound);
         }
         if(this.channel != null && (this.repeat >= 100000 || this.repeat <= 0))
         {
            this.channel.stop();
         }
         this._actorSoundManager = null;
         this._curSound = null;
         this.actorRef = null;
         this.soundRef = null;
         this.sounds = null;
         this.channel = null;
      }
      
      public function playFrame(frame:String, stop:Boolean = false, overrideSound:Boolean = false) : void
      {
         var n:String = null;
         this.stop = stop;
         if(this.overrideSound && !overrideSound)
         {
            if(this.sounds != null && this.sounds[frame] != null)
            {
               this.repeat = this.sounds[frame].repeat;
               if(this.repeat <= 0)
               {
                  this.lastLoop = this.getSoundId(frame);
               }
            }
            return;
         }
         this.overrideSound = overrideSound;
         if(this.isInit)
         {
            this.stopSound();
            n = "NA";
            if(this.actorRef != null)
            {
               n = this.actorRef.actorName;
            }
            if(this.sounds != null && this.sounds[frame] != null)
            {
               this.sid = this.getSoundId(frame);
               if(this.sid != null)
               {
                  this.maxVolume = this.sounds[frame].vol;
                  this.repeat = this.sounds[frame].repeat;
                  if(this.repeat <= 0)
                  {
                     this.lastLoop = this.sid;
                     this.repeat = 100000;
                  }
               }
               else
               {
                  this.stopSound();
                  this.sid = null;
                  this._curSound = null;
               }
            }
            else
            {
               this.stopSound();
               this.sid = null;
               this._curSound = null;
            }
         }
         else
         {
            this.frame = frame;
         }
      }
      
      public function initSound(actorRef:BaseActor, soundRef:Object) : void
      {
         var soundList:Array = null;
         var i:int = 0;
         var frame:String = null;
         var vol:int = 0;
         var repeat:int = 0;
         var list:Array = null;
         this.actorRef = actorRef;
         this.soundRef = soundRef;
         this._actorSoundManager = ActorSoundManager.getInstance();
         if(this.soundRef != null && this.soundRef.soundList != null)
         {
            if(this.soundRef.maxRadius != null)
            {
               this.maxRadius = this.soundRef.maxRadius;
            }
            if(this.soundRef.minRadius != null)
            {
               this.minRadius = this.soundRef.minRadius;
            }
            soundList = this.soundRef.soundList;
            this.sounds = new Object();
            if(soundList != null && soundList.length > 0)
            {
               for(i = 0; i < soundList.length; i++)
               {
                  frame = soundList[i].frame;
                  vol = soundList[i].vol;
                  repeat = soundList[i].repeat;
                  list = soundList[i].sounds;
                  this.sounds[frame] = {
                     "list":list,
                     "vol":vol,
                     "repeat":repeat
                  };
               }
               this._frameTimer.startPerFrame(2);
               this.isInit = true;
               if(this.frame != null)
               {
                  this.playFrame(this.frame);
               }
            }
         }
      }
      
      private function startSound() : void
      {
         try
         {
            if(this.sid != null && this.soundRef != null)
            {
               this._curSound = this._actorSoundManager.checkout(this.soundRef,this.sid);
               if(this._curSound != null)
               {
                  this.channel = this._curSound.play(0,this.repeat,new SoundTransform(0,0));
                  if(this.channel != null)
                  {
                     this.channel.addEventListener(Event.SOUND_COMPLETE,onSoundCompleted);
                  }
               }
               else
               {
                  this.stopSound();
                  this.sid = null;
                  this._curSound = null;
               }
            }
         }
         catch(err:Error)
         {
            this.stopSound();
            this.sid = null;
            this._curSound = null;
         }
      }
      
      public function onTimer() : void
      {
         var trans1:SoundTransform = null;
         var v:Number = NaN;
         var trans:SoundTransform = null;
         if(ActorManager.getInstance().myActor == null || ActorManager.getInstance().myActor.position == null)
         {
            if(this.channel == null && this.sid != null)
            {
               this.startSound();
            }
            else if(this.channel != null)
            {
               trans1 = new SoundTransform();
               trans1.volume = 1;
               this.channel.soundTransform = trans1;
            }
            return;
         }
         var dx:Number = 0;
         var dy:Number = 0;
         var dist:Number = 0;
         if(this.actorRef != null)
         {
            dx = this.actorRef.position.x - ActorManager.getInstance().myActor.position.x;
            dy = this.actorRef.position.y - ActorManager.getInstance().myActor.position.y;
            dist = Math.sqrt(dx * dx + dy * dy);
         }
         if(dist <= this.maxRadius)
         {
            v = this.maxVolume / 100 - (dist - this.minRadius) / (this.maxRadius - this.minRadius) * (this.maxVolume / 100);
            v = v * (this._audioSettings.soundVolume / 100);
            if(v > this.maxVolume / 100)
            {
               v = this.maxVolume / 100;
            }
            else if(v <= 0)
            {
               v = 0;
            }
            if(v > 0)
            {
               if(this.channel == null && this.sid != null)
               {
                  this.startSound();
               }
               if(this.channel != null && this.sid != null)
               {
                  trans = new SoundTransform();
                  trans.volume = v;
                  trans.pan = dx / this.maxRadius;
                  this.channel.soundTransform = trans;
               }
            }
         }
         else
         {
            this.stopSound();
         }
      }
   }
}
