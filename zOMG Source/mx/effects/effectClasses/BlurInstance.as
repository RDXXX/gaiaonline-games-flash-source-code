package mx.effects.effectClasses
{
   import flash.events.Event;
   import flash.filters.BlurFilter;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class BlurInstance extends TweenEffectInstance
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public var blurXTo:Number;
      
      public var blurYTo:Number;
      
      public var blurXFrom:Number;
      
      public var blurYFrom:Number;
      
      public function BlurInstance(target:Object)
      {
         super(target);
      }
      
      override public function initEffect(event:Event) : void
      {
         super.initEffect(event);
      }
      
      override public function onTweenEnd(value:Object) : void
      {
         setBlurFilter(value[0],value[1]);
         super.onTweenEnd(value);
      }
      
      private function setBlurFilter(blurX:Number, blurY:Number) : void
      {
         var filters:Array = target.filters;
         var n:int = filters.length;
         for(var i:int = 0; i < n; i++)
         {
            if(filters[i] is BlurFilter)
            {
               filters.splice(i,1);
            }
         }
         if(blurX || blurY)
         {
            filters.push(new BlurFilter(blurX,blurY));
         }
         target.filters = filters;
      }
      
      override public function play() : void
      {
         super.play();
         if(isNaN(blurXFrom))
         {
            blurXFrom = 4;
         }
         if(isNaN(blurXTo))
         {
            blurXTo = 0;
         }
         if(isNaN(blurYFrom))
         {
            blurYFrom = 4;
         }
         if(isNaN(blurYTo))
         {
            blurYTo = 0;
         }
         tween = createTween(this,[blurXFrom,blurYFrom],[blurXTo,blurYTo],duration);
      }
      
      override public function onTweenUpdate(value:Object) : void
      {
         setBlurFilter(value[0],value[1]);
      }
   }
}
