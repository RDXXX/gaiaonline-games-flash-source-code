package mx.effects
{
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import mx.core.UIComponentGlobals;
   import mx.core.mx_internal;
   import mx.events.TweenEvent;
   
   use namespace mx_internal;
   
   public class Tween extends EventDispatcher
   {
      
      private static var timer:Timer = null;
      
      private static var interval:Number = 10;
      
      mx_internal static var activeTweens:Array = [];
      
      mx_internal static var intervalTime:Number = NaN;
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var started:Boolean = false;
      
      private var previousUpdateTime:Number;
      
      public var duration:Number = 3000;
      
      private var id:int;
      
      private var arrayMode:Boolean;
      
      private var _isPlaying:Boolean = true;
      
      private var startValue:Object;
      
      public var listener:Object;
      
      private var userEquation:Function;
      
      mx_internal var needToLayout:Boolean = false;
      
      private var updateFunction:Function;
      
      private var _doSeek:Boolean = false;
      
      mx_internal var startTime:Number;
      
      private var endFunction:Function;
      
      private var endValue:Object;
      
      private var _doReverse:Boolean = false;
      
      private var _playheadTime:Number = 0;
      
      private var _invertValues:Boolean = false;
      
      private var maxDelay:Number = 87.5;
      
      public function Tween(listener:Object, startValue:Object, endValue:Object, duration:Number = -1, minFps:Number = -1, updateFunction:Function = null, endFunction:Function = null)
      {
         userEquation = defaultEasingFunction;
         super();
         if(!listener)
         {
            return;
         }
         if(startValue is Array)
         {
            arrayMode = true;
         }
         this.listener = listener;
         this.startValue = startValue;
         this.endValue = endValue;
         if(!isNaN(duration) && duration != -1)
         {
            this.duration = duration;
         }
         if(!isNaN(minFps) && minFps != -1)
         {
            maxDelay = 1000 / minFps;
         }
         this.updateFunction = updateFunction;
         this.endFunction = endFunction;
         if(duration == 0)
         {
            id = -1;
            endTween();
         }
         else
         {
            Tween.addTween(this);
         }
      }
      
      mx_internal static function removeTween(tween:Tween) : void
      {
         removeTweenAt(tween.id);
      }
      
      private static function addTween(tween:Tween) : void
      {
         tween.id = activeTweens.length;
         activeTweens.push(tween);
         if(!timer)
         {
            timer = new Timer(interval);
            timer.addEventListener(TimerEvent.TIMER,timerHandler);
            timer.start();
         }
         else
         {
            timer.start();
         }
         if(isNaN(intervalTime))
         {
            intervalTime = getTimer();
         }
         tween.startTime = tween.previousUpdateTime = intervalTime;
      }
      
      private static function timerHandler(event:TimerEvent) : void
      {
         var tween:Tween = null;
         var needToLayout:Boolean = false;
         var oldTime:Number = intervalTime;
         intervalTime = getTimer();
         var n:int = activeTweens.length;
         for(var i:int = n; i >= 0; i--)
         {
            tween = Tween(activeTweens[i]);
            if(tween)
            {
               tween.needToLayout = false;
               tween.doInterval();
               if(tween.needToLayout)
               {
                  needToLayout = true;
               }
            }
         }
         if(needToLayout)
         {
            UIComponentGlobals.layoutManager.validateNow();
         }
         event.updateAfterEvent();
      }
      
      private static function removeTweenAt(index:int) : void
      {
         var curTween:Tween = null;
         if(index >= activeTweens.length || index < 0)
         {
            return;
         }
         activeTweens.splice(index,1);
         var n:int = activeTweens.length;
         for(var i:int = index; i < n; i++)
         {
            curTween = Tween(activeTweens[i]);
            curTween.id--;
         }
         if(n == 0)
         {
            intervalTime = NaN;
            timer.reset();
         }
      }
      
      mx_internal function get playheadTime() : Number
      {
         return _playheadTime;
      }
      
      public function stop() : void
      {
         if(id >= 0)
         {
            Tween.removeTweenAt(id);
         }
      }
      
      mx_internal function get playReversed() : Boolean
      {
         return _invertValues;
      }
      
      mx_internal function set playReversed(value:Boolean) : void
      {
         _invertValues = value;
      }
      
      public function resume() : void
      {
         _isPlaying = true;
         startTime = intervalTime - _playheadTime;
         if(_doReverse)
         {
            reverse();
            _doReverse = false;
         }
      }
      
      public function setTweenHandlers(updateFunction:Function, endFunction:Function) : void
      {
         this.updateFunction = updateFunction;
         this.endFunction = endFunction;
      }
      
      private function defaultEasingFunction(t:Number, b:Number, c:Number, d:Number) : Number
      {
         return c / 2 * (Math.sin(Math.PI * (t / d - 0.5)) + 1) + b;
      }
      
      public function set easingFunction(value:Function) : void
      {
         userEquation = value;
      }
      
      public function endTween() : void
      {
         var event:TweenEvent = new TweenEvent(TweenEvent.TWEEN_END);
         var value:Object = getCurrentValue(duration);
         event.value = value;
         dispatchEvent(event);
         if(endFunction != null)
         {
            endFunction(value);
         }
         else
         {
            listener.onTweenEnd(value);
         }
         if(id >= 0)
         {
            Tween.removeTweenAt(id);
         }
      }
      
      public function reverse() : void
      {
         if(_isPlaying)
         {
            _doReverse = false;
            seek(duration - _playheadTime);
            _invertValues = !_invertValues;
         }
         else
         {
            _doReverse = !_doReverse;
         }
      }
      
      mx_internal function getCurrentValue(currentTime:Number) : Object
      {
         var returnArray:Array = null;
         var n:int = 0;
         var i:int = 0;
         if(duration == 0)
         {
            return endValue;
         }
         if(_invertValues)
         {
            currentTime = duration - currentTime;
         }
         if(arrayMode)
         {
            returnArray = [];
            n = startValue.length;
            for(i = 0; i < n; i++)
            {
               returnArray[i] = userEquation(currentTime,startValue[i],endValue[i] - startValue[i],duration);
            }
            return returnArray;
         }
         return userEquation(currentTime,startValue,Number(endValue) - Number(startValue),duration);
      }
      
      mx_internal function doInterval() : Boolean
      {
         var currentTime:Number = NaN;
         var currentValue:Object = null;
         var event:TweenEvent = null;
         var startEvent:TweenEvent = null;
         var tweenEnded:Boolean = false;
         previousUpdateTime = intervalTime;
         if(_isPlaying || _doSeek)
         {
            currentTime = intervalTime - startTime;
            _playheadTime = currentTime;
            currentValue = getCurrentValue(currentTime);
            if(currentTime >= duration && !_doSeek)
            {
               endTween();
               tweenEnded = true;
            }
            else
            {
               if(!started)
               {
                  startEvent = new TweenEvent(TweenEvent.TWEEN_START);
                  dispatchEvent(startEvent);
                  started = true;
               }
               event = new TweenEvent(TweenEvent.TWEEN_UPDATE);
               event.value = currentValue;
               dispatchEvent(event);
               if(updateFunction != null)
               {
                  updateFunction(currentValue);
               }
               else
               {
                  listener.onTweenUpdate(currentValue);
               }
            }
            _doSeek = false;
         }
         return tweenEnded;
      }
      
      public function pause() : void
      {
         _isPlaying = false;
      }
      
      public function seek(playheadTime:Number) : void
      {
         var clockTime:Number = intervalTime;
         previousUpdateTime = clockTime;
         startTime = clockTime - playheadTime;
         _doSeek = true;
      }
   }
}
