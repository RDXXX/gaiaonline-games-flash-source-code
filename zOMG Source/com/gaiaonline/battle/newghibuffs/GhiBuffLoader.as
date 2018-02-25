package com.gaiaonline.battle.newghibuffs
{
   import com.gaiaonline.battle.newrings.RingIconFactory;
   import com.gaiaonline.utils.FrameTimer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class GhiBuffLoader extends EventDispatcher
   {
       
      
      private var _ghiBuff:GhiBuff = null;
      
      private var _callLater:FrameTimer;
      
      public function GhiBuffLoader()
      {
         _callLater = new FrameTimer(onIconLoaded);
         super();
      }
      
      public function load(ghiBuff:GhiBuff) : void
      {
         _ghiBuff = ghiBuff;
         _callLater.startPerFrame(0,1);
      }
      
      private function onIconLoaded() : void
      {
         _ghiBuff.bitmap = RingIconFactory.getBitmap(_ghiBuff.iconUrl);
         _ghiBuff.dispatchEvent(new Event(GhiBuff.LOADED));
      }
   }
}
