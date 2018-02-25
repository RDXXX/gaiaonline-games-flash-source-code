package com.gaiaworld.global.model
{
   import com.gaiaworld.global.constants.GlobalConstants;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class SoundModel extends EventDispatcher
   {
      
      private static var instance:SoundModel;
       
      
      public var sound:String;
      
      public var canPlaySoundEffects:Boolean = true;
      
      public function SoundModel()
      {
         super();
      }
      
      public static function getInstance() : SoundModel
      {
         if(instance == null)
         {
            instance = new SoundModel();
         }
         return instance;
      }
      
      public function playSound(param1:String) : *
      {
         this.sound = param1;
         if(this.canPlaySoundEffects == true)
         {
            this.dispatchEvent(new Event(GlobalConstants.PLAY_SOUND_EFFECT,true));
         }
      }
      
      public function setCanPlaySoundEffect(param1:Boolean) : *
      {
         this.canPlaySoundEffects = param1;
      }
   }
}
