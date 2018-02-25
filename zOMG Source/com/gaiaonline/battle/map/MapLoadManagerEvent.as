package com.gaiaonline.battle.map
{
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class MapLoadManagerEvent extends Event
   {
      
      public static const COMPLETE:String = "mapEventComplete";
       
      
      private var _mapData:MovieClip = null;
      
      public function MapLoadManagerEvent(type:String, mapData:MovieClip, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         _mapData = mapData;
         super(type,bubbles,cancelable);
      }
      
      public function get mapData() : MovieClip
      {
         return _mapData;
      }
   }
}
