package mx.effects
{
   import flash.events.EventDispatcher;
   import mx.core.mx_internal;
   import mx.effects.effectClasses.TweenEffectInstance;
   import mx.events.TweenEvent;
   
   use namespace mx_internal;
   
   public class TweenEffect extends Effect
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public var easingFunction:Function = null;
      
      public function TweenEffect(target:Object = null)
      {
         super(target);
         instanceClass = TweenEffectInstance;
      }
      
      protected function tweenEventHandler(event:TweenEvent) : void
      {
         dispatchEvent(event);
      }
      
      override protected function initInstance(instance:IEffectInstance) : void
      {
         super.initInstance(instance);
         TweenEffectInstance(instance).easingFunction = easingFunction;
         EventDispatcher(instance).addEventListener(TweenEvent.TWEEN_START,tweenEventHandler);
         EventDispatcher(instance).addEventListener(TweenEvent.TWEEN_UPDATE,tweenEventHandler);
         EventDispatcher(instance).addEventListener(TweenEvent.TWEEN_END,tweenEventHandler);
      }
   }
}
