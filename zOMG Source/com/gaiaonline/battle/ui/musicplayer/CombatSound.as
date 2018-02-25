package com.gaiaonline.battle.ui.musicplayer
{
   import fl.transitions.Tween;
   import fl.transitions.TweenEvent;
   import fl.transitions.easing.Regular;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.net.URLRequest;
   
   public class CombatSound extends Sprite
   {
       
      
      private var soundData:SoundTransform;
      
      private var trackVolume:Number;
      
      private var fadeTime:int = 3;
      
      private var trackStream:Sound;
      
      private var fadeTween:Tween;
      
      private var trackChannel:SoundChannel;
      
      public function CombatSound(urlTrack:String, baseVolume:Number = 20, fadetime:int = 3)
      {
         soundData = new SoundTransform(0);
         super();
         this.fadeTime = fadetime;
         this.trackVolume = baseVolume;
         this.trackStream = new Sound();
         this.trackStream.load(new URLRequest(urlTrack));
         this.trackStream.addEventListener(Event.COMPLETE,onSoundLoaded,false,0,true);
         this.trackStream.addEventListener(IOErrorEvent.IO_ERROR,errorHandler,false,0,true);
      }
      
      public function fadeIn() : void
      {
         this.soundData = new SoundTransform(0);
         this.trackChannel = this.trackStream.play();
         this.trackChannel.soundTransform = this.soundData;
         this.fadeTween = new Tween(this.soundData,"volume",Regular.easeInOut,0,this.trackVolume / 100,this.fadeTime,true);
         this.fadeTween.addEventListener(TweenEvent.MOTION_CHANGE,onFadeChange,false,0,true);
         this.fadeTween.start();
      }
      
      private function errorHandler(e:IOErrorEvent) : void
      {
      }
      
      private function onFadeEnd(e:TweenEvent) : void
      {
         this.dispose();
      }
      
      public function fadeOut() : void
      {
         if(this.trackChannel != null)
         {
            this.fadeTween = new Tween(this.soundData,"volume",Regular.easeInOut,this.soundData.volume,0,this.fadeTime,true);
            this.fadeTween.addEventListener(TweenEvent.MOTION_CHANGE,onFadeChange,false,0,true);
            this.fadeTween.addEventListener(TweenEvent.MOTION_FINISH,onFadeEnd,false,0,true);
            this.fadeTween.start();
         }
      }
      
      private function onSoundLoaded(e:Event) : void
      {
         var se:MPEvents = new MPEvents(MPEvents.COMBAT_LOADED);
         this.dispatchEvent(se);
      }
      
      public function set _fadetime(val:Number) : void
      {
         this.fadeTime = val;
      }
      
      private function onFadeChange(e:TweenEvent) : void
      {
         this.trackChannel.soundTransform = this.soundData;
      }
      
      public function dispose() : void
      {
         if(this.trackChannel != null)
         {
            this.trackChannel.stop();
            this.trackChannel = null;
         }
         if(this.trackStream != null)
         {
            this.trackStream = null;
         }
         this.fadeTween = null;
      }
   }
}
