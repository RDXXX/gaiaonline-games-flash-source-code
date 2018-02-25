package com.gaiaonline.battle.sounds
{
   import com.gaiaonline.utils.Enumeration;
   
   public class MusicState extends Enumeration
   {
      
      public static const PLAYING:MusicState = new MusicState("playing");
      
      private static var s_lookup:Object = {};
      
      public static const STOPPED:MusicState = new MusicState("stopped");
      
      public static const PAUSED:MusicState = new MusicState("paused");
       
      
      public function MusicState(name:String)
      {
         super(name);
         s_lookup[name] = this;
      }
      
      public static function valueOf(enumName:String) : MusicState
      {
         return MusicState(s_lookup[enumName]);
      }
   }
}
