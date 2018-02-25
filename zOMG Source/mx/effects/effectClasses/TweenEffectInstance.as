package mx.effects.effectClasses
{
   import mx.core.UIComponentGlobals;
   import mx.core.mx_internal;
   import mx.effects.EffectInstance;
   import mx.effects.Tween;
   import mx.events.TweenEvent;
   
   use namespace mx_internal;
   
   public class TweenEffectInstance extends EffectInstance
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var _seekTime:Number = 0;
      
      public var easingFunction:Function;
      
      public var tween:Tween;
      
      mx_internal var needToLayout:Boolean = false;
      
      public function TweenEffectInstance(target:Object)
      {
         super(target);
      }
      
      override public function stop() : void
      {
         super.stop();
         if(tween)
         {
            tween.stop();
         }
      }
      
      mx_internal function applyTweenStartValues() : void
      {
         if(duration > 0)
         {
            onTweenUpdate(tween.getCurrentValue(0));
         }
      }
      
      override public function get playheadTime() : Number
      {
         if(tween)
         {
            return tween.playheadTime + super.playheadTime;
         }
         return 0;
      }
      
      protected function createTween(listener:Object, startValue:Object, endValue:Object, duration:Number = -1, minFps:Number = -1) : Tween
      {
         var newTween:Tween = new Tween(listener,startValue,endValue,duration,minFps);
         newTween.addEventListener(TweenEvent.TWEEN_START,tweenEventHandler);
         newTween.addEventListener(TweenEvent.TWEEN_UPDATE,tweenEventHandler);
         newTween.addEventListener(TweenEvent.TWEEN_END,tweenEventHandler);
         if(easingFunction != null)
         {
            newTween.easingFunction = easingFunction;
         }
         if(_seekTime > 0)
         {
            newTween.seek(_seekTime);
         }
         newTween.playReversed = playReversed;
         return newTween;
      }
      
      private function tweenEventHandler(event:TweenEvent) : void
      {
         dispatchEvent(event);
      }
      
      override public function end() : void
      {
         stopRepeat = true;
         if(delayTimer)
         {
            delayTimer.reset();
         }
         if(tween)
         {
            tween.endTween();
            tween = null;
         }
      }
      
      override public function reverse() : void
      {
         super.reverse();
         if(tween)
         {
            tween.reverse();
         }
         super.playReversed = !playReversed;
      }
      
      override mx_internal function set playReversed(value:Boolean) : void
      {
         super.playReversed = value;
         if(tween)
         {
            tween.playReversed = value;
         }
      }
      
      override public function resume() : void
      {
         super.resume();
         if(tween)
         {
            tween.resume();
         }
      }
      
      public function onTweenEnd(value:Object) : void
      {
         onTweenUpdate(value);
         tween = null;
         if(needToLayout)
         {
            UIComponentGlobals.layoutManager.validateNow();
         }
         finishRepeat();
      }
      
      public function onTweenUpdate(value:Object) : void
      {
      }
      
      override public function pause() : void
      {
         super.pause();
         if(tween)
         {
            tween.pause();
         }
      }
      
      public function seek(playheadTime:Number) : void
      {
         if(tween)
         {
            tween.seek(playheadTime);
         }
         else
         {
            _seekTime = playheadTime;
         }
      }
   }
}
