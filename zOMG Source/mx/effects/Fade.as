package mx.effects
{
   import mx.core.mx_internal;
   import mx.effects.effectClasses.FadeInstance;
   
   use namespace mx_internal;
   
   public class Fade extends TweenEffect
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      private static var AFFECTED_PROPERTIES:Array = ["alpha","visible"];
       
      
      public var alphaFrom:Number;
      
      public var alphaTo:Number;
      
      public function Fade(target:Object = null)
      {
         super(target);
         instanceClass = FadeInstance;
      }
      
      override protected function initInstance(instance:IEffectInstance) : void
      {
         super.initInstance(instance);
         var fadeInstance:FadeInstance = FadeInstance(instance);
         fadeInstance.alphaFrom = alphaFrom;
         fadeInstance.alphaTo = alphaTo;
      }
      
      override public function getAffectedProperties() : Array
      {
         return AFFECTED_PROPERTIES;
      }
   }
}
