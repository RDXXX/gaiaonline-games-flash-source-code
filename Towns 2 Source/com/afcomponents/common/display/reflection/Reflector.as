package com.afcomponents.common.display.reflection
{
   import com.afcomponents.common.display.Reflection;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class Reflector
   {
       
      
      protected var _reflection:Reflection = null;
      
      protected var _timer:Timer = null;
      
      protected var _refreshReflection:Boolean = true;
      
      public function Reflector(param1:Reflection)
      {
         super();
         this._timer = new Timer(1000 / param1.style.refreshRate);
         this._timer.addEventListener(TimerEvent.TIMER,this.onTimer);
         param1.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this._reflection = param1;
         this.start();
      }
      
      public function start() : void
      {
         this._timer.start();
      }
      
      public function stop() : void
      {
         this._timer.reset();
      }
      
      public function remove() : void
      {
         this._timer.reset();
         this._timer.removeEventListener(TimerEvent.TIMER,this.onTimer);
         this._reflection.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this._timer = null;
         this._reflection = null;
      }
      
      public function get isStarted() : Boolean
      {
         return this._timer.running;
      }
      
      protected function onTimer(param1:TimerEvent) : void
      {
         this._refreshReflection = true;
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         this._timer.delay = 1000 / this._reflection.style.refreshRate;
         this._reflection.refresh();
         this._refreshReflection = false;
      }
   }
}
