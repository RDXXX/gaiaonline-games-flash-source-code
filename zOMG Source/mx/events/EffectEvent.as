package mx.events
{
   import flash.events.Event;
   import mx.core.mx_internal;
   import mx.effects.IEffectInstance;
   
   use namespace mx_internal;
   
   public class EffectEvent extends Event
   {
      
      public static const EFFECT_START:String = "effectStart";
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      public static const EFFECT_END:String = "effectEnd";
       
      
      public var effectInstance:IEffectInstance;
      
      public function EffectEvent(eventType:String, bubbles:Boolean = false, cancelable:Boolean = false, effectInstance:IEffectInstance = null)
      {
         super(eventType,bubbles,cancelable);
         this.effectInstance = effectInstance;
      }
      
      override public function clone() : Event
      {
         return new EffectEvent(type,bubbles,cancelable,effectInstance);
      }
   }
}
