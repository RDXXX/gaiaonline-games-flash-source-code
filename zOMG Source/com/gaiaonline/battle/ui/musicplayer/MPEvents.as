package com.gaiaonline.battle.ui.musicplayer
{
   import flash.events.Event;
   
   public class MPEvents extends Event
   {
      
      public static const NEW_TRACK_INIT:String = "initNewTrack";
      
      public static const MINIMIZE_VIEW:String = "minimizePlayer";
      
      public static const COMBAT_LOADED:String = "onCombatLoaded";
      
      public static const AUDIBILITY_CHANGE:String = "audibilityChange";
      
      public static const RESTORE_VIEW:String = "restorePlayer";
      
      public static const CHANGE_TRACK:String = "changeTrack";
      
      public static const CROSSFADE_END:String = "onCrossFadeEnd";
       
      
      public var value:Object;
      
      public var command:String;
      
      public function MPEvents(type:String, command:String = "")
      {
         super(type);
         this.command = command;
      }
   }
}
