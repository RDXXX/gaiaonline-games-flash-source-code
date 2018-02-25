package com.gaiaonline.battle.sounds
{
   import flash.events.Event;
   
   public class AudioSettingsEvent extends Event
   {
      
      public static const MUSIC_MUTE_CHANGED:String = "musicMuteChanged";
      
      public static const MUSIC_VOLUME_CHANGED:String = "musicVolumeChanged";
      
      public static const MUSIC_PLAYBACK_CHANGED:String = "musicPlaybackChanged";
      
      public static const SOUND_VOLUME_CHANGED:String = "soundVolumeChanged";
       
      
      public function AudioSettingsEvent(type:String)
      {
         super(type);
      }
   }
}
