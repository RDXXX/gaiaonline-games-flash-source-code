package com.gaiaonline.utils
{
   import flash.display.Stage;
   
   public class FrameTimer
   {
      
      private static var s_engine:FrameTimerEngine;
       
      
      private var _callback:Function;
      
      private var _checkpoint:ICheckpoint;
      
      private var _delay:int;
      
      private var _currentCount:int;
      
      private var _repeatCount:int;
      
      public function FrameTimer(callback:Function)
      {
         super();
         if(!s_engine)
         {
            s_engine = new FrameTimerEngine();
         }
         _callback = callback;
      }
      
      public static function init(stage:Stage) : void
      {
         if(!stage)
         {
            throw new Error("FrameTimer is being initialized with a null Stage value!");
         }
         if(!s_engine)
         {
            s_engine = new FrameTimerEngine();
         }
         s_engine.init(stage);
      }
      
      public static function get frames() : uint
      {
         return FrameTimer.s_frames;
      }
      
      public static function _debug_die() : void
      {
         s_engine.die();
      }
      
      public function stop() : void
      {
         s_engine.remove(this);
      }
      
      public function get delay() : int
      {
         return _delay;
      }
      
      public function start(delay:int, count:int = 0) : void
      {
         start_impl(delay,count,false);
      }
      
      public function startPerFrame(intervalInFrames:int = 0, count:int = 0) : void
      {
         start_impl(intervalInFrames,count,true);
      }
      
      public function get repeatCount() : int
      {
         return _repeatCount;
      }
      
      public function get currentCount() : int
      {
         return _currentCount;
      }
      
      public function z_internal_fire() : void
      {
         if(_checkpoint.tryToFire(_delay))
         {
            if(_callback != null)
            {
               _callback();
               _currentCount++;
            }
         }
         if(repeatCount && _currentCount >= _repeatCount)
         {
            stop();
         }
      }
      
      private function start_impl(delay:int, count:int, perFrame:Boolean) : void
      {
         _delay = delay;
         _repeatCount = count;
         _currentCount = 0;
         if(perFrame)
         {
            if(_checkpoint as FrameTimer)
            {
               _checkpoint.reset();
            }
            else
            {
               _checkpoint = new FrameCheckpoint();
            }
         }
         else if(_checkpoint as FrameTimer)
         {
            _checkpoint.reset();
         }
         else
         {
            _checkpoint = new TimeCheckpoint();
         }
         s_engine.add(this);
      }
      
      public function get running() : Boolean
      {
         return !!s_engine?Boolean(s_engine.has(this)):false;
      }
   }
}

final class FrameCheckpoint implements ICheckpoint
{
    
   
   private var _frames:int = 0;
   
   function FrameCheckpoint()
   {
      super();
   }
   
   public function tryToFire(delay:int) : Boolean
   {
      _frames++;
      if(_frames >= delay)
      {
         _frames = 0;
         return true;
      }
      return false;
   }
   
   public function reset() : void
   {
      _frames = 0;
   }
}

interface ICheckpoint
{
    
   
   function tryToFire(param1:int) : Boolean;
   
   function reset() : void;
}

import flash.utils.getTimer;

final class TimeCheckpoint implements ICheckpoint
{
    
   
   private var _lastFire:int;
   
   function TimeCheckpoint()
   {
      _lastFire = getTimer();
      super();
   }
   
   public function tryToFire(delay:int) : Boolean
   {
      var now:int = getTimer();
      if(now >= delay + _lastFire)
      {
         _lastFire = now;
         return true;
      }
      return false;
   }
   
   public function reset() : void
   {
      _lastFire = getTimer();
   }
}

import com.gaiaonline.utils.FrameTimer;
import flash.display.Stage;
import flash.events.Event;
import flash.utils.Dictionary;
import flash.utils.getTimer;

final class FrameTimerEngine
{
   
   public static var s_frames:uint;
    
   
   private var _running:Boolean = false;
   
   private var _timers:Dictionary;
   
   private var _debug_dead:Boolean = false;
   
   private var s_stage:Stage;
   
   private var _numTimersProbably:int = 0;
   
   function FrameTimerEngine()
   {
      _timers = new Dictionary(true);
      super();
   }
   
   public function die() : void
   {
      _debug_dead = true;
      s_stage.removeEventListener(Event.ENTER_FRAME,onEnterFrame);
   }
   
   public function add(timer:FrameTimer) : void
   {
      _timers[timer] = true;
      _numTimersProbably++;
      manageEnterFrameListener();
   }
   
   public function remove(timer:FrameTimer) : void
   {
      delete _timers[timer];
   }
   
   private function manageEnterFrameListener() : void
   {
      if(_debug_dead)
      {
         return;
      }
      var shouldRun:* = _numTimersProbably > 0;
      if(s_stage && _running != shouldRun)
      {
         if(shouldRun)
         {
            s_stage.addEventListener(Event.ENTER_FRAME,onEnterFrame,false,0,true);
         }
         else
         {
            s_stage.removeEventListener(Event.ENTER_FRAME,onEnterFrame);
         }
         _running = shouldRun;
      }
   }
   
   public function init(stage:Stage) : void
   {
      s_stage = stage;
      manageEnterFrameListener();
   }
   
   private function onEnterFrame(e:Event) : void
   {
      var key:* = null;
      var timer:FrameTimer = null;
      s_frames++;
      var numTimersNow:int = 0;
      var now:int = getTimer();
      for(key in _timers)
      {
         timer = FrameTimer(key);
         timer.z_internal_fire();
         if(timer.running)
         {
            numTimersNow++;
         }
      }
      _numTimersProbably = numTimersNow;
      manageEnterFrameListener();
   }
   
   public function has(timer:FrameTimer) : Boolean
   {
      return _timers[timer] != null;
   }
}
