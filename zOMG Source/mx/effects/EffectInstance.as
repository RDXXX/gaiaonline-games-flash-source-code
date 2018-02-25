package mx.effects
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getQualifiedClassName;
   import flash.utils.getTimer;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.effects.effectClasses.PropertyChanges;
   import mx.events.EffectEvent;
   import mx.events.FlexEvent;
   
   use namespace mx_internal;
   
   public class EffectInstance extends EventDispatcher implements IEffectInstance
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var _hideFocusRing:Boolean;
      
      private var delayStartTime:Number = 0;
      
      mx_internal var stopRepeat:Boolean = false;
      
      private var playCount:int = 0;
      
      private var _repeatCount:int = 0;
      
      private var _suspendBackgroundProcessing:Boolean = false;
      
      mx_internal var delayTimer:Timer;
      
      private var _triggerEvent:Event;
      
      private var _effectTargetHost:IEffectTargetHost;
      
      mx_internal var parentCompositeEffectInstance:EffectInstance;
      
      mx_internal var durationExplicitlySet:Boolean = false;
      
      private var _effect:IEffect;
      
      private var _target:Object;
      
      mx_internal var hideOnEffectEnd:Boolean = false;
      
      private var _startDelay:int = 0;
      
      private var delayElapsedTime:Number = 0;
      
      private var _repeatDelay:int = 0;
      
      private var _propertyChanges:PropertyChanges;
      
      private var _duration:Number = 500;
      
      private var _playReversed:Boolean;
      
      public function EffectInstance(target:Object)
      {
         super();
         this.target = target;
      }
      
      public function get playheadTime() : Number
      {
         return Math.max(playCount - 1,0) * duration + Math.max(playCount - 2,0) * repeatDelay + (!!playReversed?0:startDelay);
      }
      
      public function get hideFocusRing() : Boolean
      {
         return _hideFocusRing;
      }
      
      public function stop() : void
      {
         if(delayTimer)
         {
            delayTimer.reset();
         }
         stopRepeat = true;
         finishEffect();
      }
      
      public function finishEffect() : void
      {
         playCount = 0;
         dispatchEvent(new EffectEvent(EffectEvent.EFFECT_END,false,false,this));
         if(target)
         {
            target.dispatchEvent(new EffectEvent(EffectEvent.EFFECT_END,false,false,this));
         }
         if(target is UIComponent)
         {
            UIComponent(target).effectFinished(this);
         }
         EffectManager.effectFinished(this);
      }
      
      public function set hideFocusRing(value:Boolean) : void
      {
         _hideFocusRing = value;
      }
      
      public function finishRepeat() : void
      {
         if(!stopRepeat && playCount != 0 && (playCount < repeatCount || repeatCount == 0))
         {
            if(repeatDelay > 0)
            {
               delayTimer = new Timer(repeatDelay,1);
               delayStartTime = getTimer();
               delayTimer.addEventListener(TimerEvent.TIMER,delayTimerHandler);
               delayTimer.start();
            }
            else
            {
               play();
            }
         }
         else
         {
            finishEffect();
         }
      }
      
      mx_internal function get playReversed() : Boolean
      {
         return _playReversed;
      }
      
      public function set effect(value:IEffect) : void
      {
         _effect = value;
      }
      
      public function get className() : String
      {
         var name:String = getQualifiedClassName(this);
         var index:int = name.indexOf("::");
         if(index != -1)
         {
            name = name.substr(index + 2);
         }
         return name;
      }
      
      public function set duration(value:Number) : void
      {
         durationExplicitlySet = true;
         _duration = value;
      }
      
      mx_internal function set playReversed(value:Boolean) : void
      {
         _playReversed = value;
      }
      
      public function resume() : void
      {
         if(delayTimer && !delayTimer.running && !isNaN(delayElapsedTime))
         {
            delayTimer.delay = !playReversed?Number(delayTimer.delay - delayElapsedTime):Number(delayElapsedTime);
            delayTimer.start();
         }
      }
      
      public function get propertyChanges() : PropertyChanges
      {
         return _propertyChanges;
      }
      
      public function set target(value:Object) : void
      {
         _target = value;
      }
      
      public function get repeatCount() : int
      {
         return _repeatCount;
      }
      
      mx_internal function playWithNoDuration() : void
      {
         duration = 0;
         repeatCount = 1;
         repeatDelay = 0;
         startDelay = 0;
         startEffect();
      }
      
      public function get startDelay() : int
      {
         return _startDelay;
      }
      
      mx_internal function get actualDuration() : Number
      {
         var value:Number = NaN;
         if(repeatCount > 0)
         {
            value = duration * repeatCount + (repeatDelay * repeatCount - 1) + startDelay;
         }
         return value;
      }
      
      public function play() : void
      {
         playCount++;
         dispatchEvent(new EffectEvent(EffectEvent.EFFECT_START,false,false,this));
         if(target)
         {
            target.dispatchEvent(new EffectEvent(EffectEvent.EFFECT_START,false,false,this));
         }
      }
      
      public function get suspendBackgroundProcessing() : Boolean
      {
         return _suspendBackgroundProcessing;
      }
      
      public function get effectTargetHost() : IEffectTargetHost
      {
         return _effectTargetHost;
      }
      
      public function set repeatDelay(value:int) : void
      {
         _repeatDelay = value;
      }
      
      public function set propertyChanges(value:PropertyChanges) : void
      {
         _propertyChanges = value;
      }
      
      mx_internal function eventHandler(event:Event) : void
      {
         if(event.type == FlexEvent.SHOW && hideOnEffectEnd == true)
         {
            hideOnEffectEnd = false;
            event.target.removeEventListener(FlexEvent.SHOW,eventHandler);
         }
      }
      
      public function set repeatCount(value:int) : void
      {
         _repeatCount = value;
      }
      
      private function delayTimerHandler(event:TimerEvent) : void
      {
         delayTimer.reset();
         delayStartTime = NaN;
         delayElapsedTime = NaN;
         play();
      }
      
      public function set suspendBackgroundProcessing(value:Boolean) : void
      {
         _suspendBackgroundProcessing = value;
      }
      
      public function set triggerEvent(value:Event) : void
      {
         _triggerEvent = value;
      }
      
      public function set startDelay(value:int) : void
      {
         _startDelay = value;
      }
      
      public function get effect() : IEffect
      {
         return _effect;
      }
      
      public function set effectTargetHost(value:IEffectTargetHost) : void
      {
         _effectTargetHost = value;
      }
      
      public function get target() : Object
      {
         return _target;
      }
      
      public function startEffect() : void
      {
         EffectManager.effectStarted(this);
         if(target is UIComponent)
         {
            UIComponent(target).effectStarted(this);
         }
         if(startDelay > 0 && !playReversed)
         {
            delayTimer = new Timer(startDelay,1);
            delayStartTime = getTimer();
            delayTimer.addEventListener(TimerEvent.TIMER,delayTimerHandler);
            delayTimer.start();
         }
         else
         {
            play();
         }
      }
      
      public function get repeatDelay() : int
      {
         return _repeatDelay;
      }
      
      public function get duration() : Number
      {
         if(!durationExplicitlySet && parentCompositeEffectInstance)
         {
            return parentCompositeEffectInstance.duration;
         }
         return _duration;
      }
      
      public function initEffect(event:Event) : void
      {
         triggerEvent = event;
         switch(event.type)
         {
            case "resizeStart":
            case "resizeEnd":
               if(!durationExplicitlySet)
               {
                  duration = 250;
               }
               break;
            case FlexEvent.HIDE:
               target.setVisible(true,true);
               hideOnEffectEnd = true;
               target.addEventListener(FlexEvent.SHOW,eventHandler);
         }
      }
      
      public function get triggerEvent() : Event
      {
         return _triggerEvent;
      }
      
      public function end() : void
      {
         if(delayTimer)
         {
            delayTimer.reset();
         }
         stopRepeat = true;
         finishEffect();
      }
      
      public function reverse() : void
      {
         if(repeatCount > 0)
         {
            playCount = repeatCount - playCount + 1;
         }
      }
      
      public function pause() : void
      {
         if(delayTimer && delayTimer.running && !isNaN(delayStartTime))
         {
            delayTimer.stop();
            delayElapsedTime = getTimer() - delayStartTime;
         }
      }
   }
}
