package com.gaiaonline.battle.sounds
{
   import com.gaiaonline.battle.gateway.BattleEvent;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.gateway.BattleMessage;
   import com.gaiaonline.utils.FrameTimer;
   import flash.events.EventDispatcher;
   
   public class AudioSettings extends EventDispatcher
   {
      
      private static const DELAY:int = 3000;
      
      private static const MUSIC_VOLUME_KEY:String = "musicVolume";
      
      private static const MUSIC_STATE_KEY:String = "musicState";
      
      private static const SOUND_VOLUME_KEY:String = "soundVolume";
       
      
      private var _lastSaved:Settings#482;
      
      private var _settings:Settings#482;
      
      private var _gateway:BattleGateway = null;
      
      private var _delayedWrite:FrameTimer;
      
      public function AudioSettings(gateway:BattleGateway)
      {
         _settings = new Settings#482();
         _delayedWrite = new FrameTimer(onDelayedWrite);
         _lastSaved = new Settings#482();
         super();
         this._gateway = gateway;
      }
      
      public function get musicState() : MusicState
      {
         return _settings.musicState;
      }
      
      private function onDelayedWrite() : void
      {
         var settings:Object = new Object();
         settings[MUSIC_VOLUME_KEY] = String(_settings.musicVolume);
         settings[SOUND_VOLUME_KEY] = String(_settings.soundVolume);
         settings[MUSIC_STATE_KEY] = _settings.musicState.toString();
         var msg:BattleMessage = new BattleMessage("putNkvp",settings);
         this._gateway.sendMsg(msg);
      }
      
      public function get musicMuted() : Boolean
      {
         return _settings.musicMuted;
      }
      
      public function set musicState(state:MusicState) : void
      {
         if(state != this._settings.musicState)
         {
            this._settings.musicState = state;
            dispatchEvent(new AudioSettingsEvent(AudioSettingsEvent.MUSIC_PLAYBACK_CHANGED));
         }
      }
      
      public function get soundVolume() : Number
      {
         return this._settings.soundVolume;
      }
      
      public function setSettings(obj:Object) : void
      {
         this._settings.musicVolume = obj.musicVolume;
         this._settings.soundVolume = obj.soundVolume;
         this._settings.musicState = obj.musicState;
      }
      
      public function set musicMuted(b:Boolean) : void
      {
         if(b != this._settings.musicMuted)
         {
            this._settings.musicMuted = b;
            dispatchEvent(new AudioSettingsEvent(AudioSettingsEvent.MUSIC_MUTE_CHANGED));
            _delayedWrite.start(DELAY,1);
         }
      }
      
      public function getDefaultNormal() : Object
      {
         return {
            "musicVolume":20,
            "soundVolume":100
         };
      }
      
      public function set soundVolume(v:Number) : void
      {
         if(v != this._settings.soundVolume)
         {
            this._settings.soundVolume = v;
            dispatchEvent(new AudioSettingsEvent(AudioSettingsEvent.SOUND_VOLUME_CHANGED));
            _delayedWrite.start(DELAY,1);
         }
      }
      
      public function getSettings() : Object
      {
         var msg:BattleMessage = new BattleMessage("getNkvp",{"keys":[MUSIC_VOLUME_KEY,SOUND_VOLUME_KEY,MUSIC_STATE_KEY]});
         msg.addEventListener(BattleEvent.CALL_BACK,onNkvpCallBack);
         this._gateway.sendMsg(msg);
         return null;
      }
      
      public function getDefaultFull() : Object
      {
         return {
            "musicVolume":20,
            "soundVolume":100
         };
      }
      
      private function onNkvpCallBack(evt:BattleEvent) : void
      {
         var responseObj:Object = evt.battleMessage.responseObj[0].values;
         if(responseObj.musicVolume != null)
         {
            this._lastSaved.musicVolume = this._settings.musicVolume = responseObj.musicVolume;
            dispatchEvent(new AudioSettingsEvent(AudioSettingsEvent.MUSIC_VOLUME_CHANGED));
         }
         if(responseObj.soundVolume != null)
         {
            this._lastSaved.soundVolume = this._settings.soundVolume = responseObj.soundVolume;
            dispatchEvent(new AudioSettingsEvent(AudioSettingsEvent.SOUND_VOLUME_CHANGED));
         }
         if(responseObj.musicState != null)
         {
            this._lastSaved.musicState = this._settings.musicState = MusicState.valueOf(responseObj.musicState);
            dispatchEvent(new AudioSettingsEvent(AudioSettingsEvent.MUSIC_PLAYBACK_CHANGED));
         }
         BattleMessage(evt.target).removeEventListener(BattleEvent.CALL_BACK,onNkvpCallBack);
      }
      
      public function set musicVolume(v:Number) : void
      {
         if(v != this._settings.musicVolume)
         {
            this._settings.musicVolume = v;
            dispatchEvent(new AudioSettingsEvent(AudioSettingsEvent.MUSIC_VOLUME_CHANGED));
            _delayedWrite.start(DELAY,1);
         }
      }
      
      public function get musicVolume() : Number
      {
         return this._settings.musicVolume;
      }
   }
}

import com.gaiaonline.battle.sounds.MusicState;

class Settings#482
{
   
   private static const DEFAULT_SOUND_VOLUME:Number = 40;
   
   private static const DEFAULT_MUSIC_VOLUME:Number = 30;
    
   
   public var musicState:MusicState;
   
   public var musicMuted:Boolean = false;
   
   public var soundVolume:Number = 40;
   
   public var musicVolume:Number = 30;
   
   function Settings#482()
   {
      musicState = MusicState.PLAYING;
      super();
   }
}
