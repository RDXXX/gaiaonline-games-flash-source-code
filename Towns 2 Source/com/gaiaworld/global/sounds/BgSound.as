package com.gaiaworld.global.sounds
{
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.global.model.GlobalModel;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.net.URLRequest;
   
   public class BgSound extends EventDispatcher
   {
      
      private static var instance:BgSound;
       
      
      private var _bgMusic:Sound;
      
      private var soundChannel:SoundChannel;
      
      public var playing:Boolean = false;
      
      private var globalModel:GlobalModel;
      
      public var mute:Boolean = false;
      
      public var musicPath:String;
      
      private var specailSet:Boolean = false;
      
      private var todaysDate:Date;
      
      public function BgSound()
      {
         this.soundChannel = new SoundChannel();
         this.globalModel = GlobalModel.getInstance();
         this.todaysDate = new Date();
         super();
         this.globalModel.addEventListener(GlobalConstants.STOP_MUSIC,this.stopSound);
      }
      
      public static function getInstance() : BgSound
      {
         if(instance == null)
         {
            instance = new BgSound();
         }
         return instance;
      }
      
      public function startSound() : *
      {
         this.soundChannel = this._bgMusic.play(0,100);
         this.playing = true;
      }
      
      public function stopSound(param1:Event = null) : *
      {
         this.soundChannel.stop();
         this.playing = false;
      }
      
      public function setNewSound(param1:Sound) : *
      {
         this.soundChannel.stop();
         this._bgMusic = new Sound();
         this._bgMusic = param1;
      }
      
      public function toggleSound() : *
      {
         this.mute = !this.mute;
         if(this.mute == false)
         {
            this.startSound();
         }
         else
         {
            this.stopSound();
         }
      }
      
      public function get bgMusic() : Sound
      {
         return this._bgMusic;
      }
      
      public function loadBgMusic(param1:String) : *
      {
         if(this.specailSet == true)
         {
            return;
         }
         if(param1 != this.musicPath)
         {
            this.musicPath = param1;
            this.stopSound();
            this._bgMusic = new Sound();
            this._bgMusic.load(new URLRequest(param1));
            if(this.mute == false)
            {
               this.startSound();
            }
         }
      }
      
      public function loadStandard() : *
      {
         if(this.todaysDate.month == 9 && this.todaysDate.date > 12)
         {
            this.loadBgMusic("music/halloweenMusic.mp3");
         }
         else if(this.todaysDate.month == 11)
         {
            this.loadBgMusic("music/Christmas.mp3");
         }
         else
         {
            this.loadBgMusic("music/township_theme2.mp3");
         }
      }
      
      public function set bgMusic(param1:Sound) : void
      {
         if(param1.toString() != this.musicPath)
         {
            this.musicPath = param1.toString();
            this.stopSound();
            this._bgMusic = new Sound();
            this._bgMusic = param1;
            if(this.mute == false)
            {
               this.startSound();
            }
         }
      }
   }
}
