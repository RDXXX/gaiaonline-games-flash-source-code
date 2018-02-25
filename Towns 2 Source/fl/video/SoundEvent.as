package fl.video
{
   import flash.events.Event;
   import flash.media.SoundTransform;
   
   public class SoundEvent extends Event
   {
      
      public static const SOUND_UPDATE:String = "soundUpdate";
       
      
      private var _soundTransform:SoundTransform;
      
      public function SoundEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:SoundTransform = null)
      {
         super(param1,param2,param3);
         this._soundTransform = param4;
      }
      
      public function get soundTransform() : SoundTransform
      {
         return this._soundTransform;
      }
      
      override public function clone() : Event
      {
         return new SoundEvent(type,bubbles,cancelable,this.soundTransform);
      }
   }
}
