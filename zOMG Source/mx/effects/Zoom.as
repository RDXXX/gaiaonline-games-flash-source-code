package mx.effects
{
   import mx.core.mx_internal;
   import mx.effects.effectClasses.ZoomInstance;
   
   use namespace mx_internal;
   
   public class Zoom extends TweenEffect
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      private static var AFFECTED_PROPERTIES:Array = ["scaleX","scaleY","x","y","width","height"];
       
      
      public var zoomHeightFrom:Number;
      
      public var zoomWidthTo:Number;
      
      public var originX:Number;
      
      public var zoomHeightTo:Number;
      
      public var originY:Number;
      
      public var captureRollEvents:Boolean;
      
      public var zoomWidthFrom:Number;
      
      public function Zoom(target:Object = null)
      {
         super(target);
         instanceClass = ZoomInstance;
         applyActualDimensions = false;
         relevantProperties = ["scaleX","scaleY","width","height","visible"];
      }
      
      override protected function initInstance(instance:IEffectInstance) : void
      {
         var zoomInstance:ZoomInstance = null;
         super.initInstance(instance);
         zoomInstance = ZoomInstance(instance);
         zoomInstance.zoomWidthFrom = zoomWidthFrom;
         zoomInstance.zoomWidthTo = zoomWidthTo;
         zoomInstance.zoomHeightFrom = zoomHeightFrom;
         zoomInstance.zoomHeightTo = zoomHeightTo;
         zoomInstance.originX = originX;
         zoomInstance.originY = originY;
         zoomInstance.captureRollEvents = captureRollEvents;
      }
      
      override public function getAffectedProperties() : Array
      {
         return AFFECTED_PROPERTIES;
      }
   }
}
