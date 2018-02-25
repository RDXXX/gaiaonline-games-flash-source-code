package com.gaiaworld.global.sounds
{
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.global.model.SoundModel;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.net.URLRequest;
   
   public class SoundFXUtil
   {
       
      
      private var soundModel:SoundModel;
      
      public function SoundFXUtil()
      {
         this.soundModel = SoundModel.getInstance();
         super();
         this.soundModel.addEventListener(GlobalConstants.PLAY_SOUND_EFFECT,this.playFX);
      }
      
      private function playFX(param1:Event) : void
      {
         var _loc2_:Sound = new Sound();
         _loc2_.load(new URLRequest(this.soundModel.sound));
         _loc2_.play();
      }
   }
}
