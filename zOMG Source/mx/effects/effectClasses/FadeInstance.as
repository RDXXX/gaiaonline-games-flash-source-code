package mx.effects.effectClasses
{
   import flash.events.Event;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   
   use namespace mx_internal;
   
   public class FadeInstance extends TweenEffectInstance
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public var alphaFrom:Number;
      
      private var restoreAlpha:Boolean;
      
      public var alphaTo:Number;
      
      private var origAlpha:Number = NaN;
      
      public function FadeInstance(target:Object)
      {
         super(target);
      }
      
      override public function initEffect(event:Event) : void
      {
         super.initEffect(event);
         switch(event.type)
         {
            case "childrenCreationComplete":
            case FlexEvent.CREATION_COMPLETE:
            case FlexEvent.SHOW:
            case Event.ADDED:
            case "resizeEnd":
               if(isNaN(alphaFrom))
               {
                  alphaFrom = 0;
               }
               if(isNaN(alphaTo))
               {
                  alphaTo = target.alpha;
               }
               break;
            case FlexEvent.HIDE:
            case Event.REMOVED:
            case "resizeStart":
               restoreAlpha = true;
               if(isNaN(alphaFrom))
               {
                  alphaFrom = target.alpha;
               }
               if(isNaN(alphaTo))
               {
                  alphaTo = 0;
               }
         }
      }
      
      override public function onTweenEnd(value:Object) : void
      {
         super.onTweenEnd(value);
         if(mx_internal::hideOnEffectEnd || restoreAlpha)
         {
            target.alpha = origAlpha;
         }
      }
      
      override public function play() : void
      {
         super.play();
         origAlpha = target.alpha;
         var values:PropertyChanges = propertyChanges;
         if(isNaN(alphaFrom) && isNaN(alphaTo))
         {
            if(values && values.end["alpha"] !== undefined)
            {
               alphaFrom = origAlpha;
               alphaTo = values.end["alpha"];
            }
            else if(values && values.end["visible"] !== undefined)
            {
               alphaFrom = !!values.start["visible"]?Number(origAlpha):Number(0);
               alphaTo = !!values.end["visible"]?Number(origAlpha):Number(0);
            }
            else
            {
               alphaFrom = 0;
               alphaTo = origAlpha;
            }
         }
         else if(isNaN(alphaFrom))
         {
            alphaFrom = alphaTo == 0?Number(origAlpha):Number(0);
         }
         else if(isNaN(alphaTo))
         {
            if(values && values.end["alpha"] !== undefined)
            {
               alphaTo = values.end["alpha"];
            }
            else
            {
               alphaTo = alphaFrom == 0?Number(origAlpha):Number(0);
            }
         }
         tween = createTween(this,alphaFrom,alphaTo,duration);
         target.alpha = tween.mx_internal::getCurrentValue(0);
      }
      
      override public function onTweenUpdate(value:Object) : void
      {
         target.alpha = value;
      }
   }
}
