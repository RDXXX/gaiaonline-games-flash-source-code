package com.gaiaonline.battle.ItemLoadManager
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class ItemTimer extends MovieClip
   {
       
      
      private var timerLength:Number = 100;
      
      private var time:int = 0;
      
      private var _lastFrame:int = -1;
      
      public var running:Boolean = false;
      
      public function ItemTimer()
      {
         super();
         this.resetTimer();
      }
      
      public function startTimer(length:Number, startTime:Number = 0) : void
      {
         this.running = true;
         this.setPos();
         this.timerLength = length;
         this.time = getTimer() - startTime * 1000;
         this.addEventListener(Event.ENTER_FRAME,onFrame);
      }
      
      private function onFrame(evt:Event) : void
      {
         var t:Number = NaN;
         t = (getTimer() - this.time) / 1000;
         var p:int = Math.round(t / this.timerLength * 100);
         this.setPos(p);
         if(p >= 100)
         {
            this.resetTimer();
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function setPos(pos:int = 100) : void
      {
         if(pos != _lastFrame)
         {
            this.gotoAndStop(pos);
         }
      }
      
      public function resetTimer() : void
      {
         this.running = false;
         this.setPos();
         if(this.hasEventListener(Event.ENTER_FRAME))
         {
            this.removeEventListener(Event.ENTER_FRAME,onFrame);
         }
      }
   }
}
