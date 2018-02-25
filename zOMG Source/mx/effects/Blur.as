package mx.effects
{
   import mx.core.mx_internal;
   import mx.effects.effectClasses.BlurInstance;
   
   use namespace mx_internal;
   
   public class Blur extends TweenEffect
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      private static var AFFECTED_PROPERTIES:Array = ["filters"];
       
      
      public var blurXTo:Number;
      
      public var blurXFrom:Number;
      
      public var blurYFrom:Number;
      
      public var blurYTo:Number;
      
      public function Blur(target:Object = null)
      {
         super(target);
         instanceClass = BlurInstance;
      }
      
      override public function getAffectedProperties() : Array
      {
         return AFFECTED_PROPERTIES;
      }
      
      override protected function initInstance(instance:IEffectInstance) : void
      {
         var blurInstance:BlurInstance = null;
         super.initInstance(instance);
         blurInstance = BlurInstance(instance);
         blurInstance.blurXFrom = blurXFrom;
         blurInstance.blurXTo = blurXTo;
         blurInstance.blurYFrom = blurYFrom;
         blurInstance.blurYTo = blurYTo;
      }
   }
}
