package mx.effects.effectClasses
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.core.mx_internal;
   import mx.effects.EffectManager;
   import mx.events.FlexEvent;
   
   use namespace mx_internal;
   
   public class ZoomInstance extends TweenEffectInstance
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var newY:Number;
      
      public var originY:Number;
      
      private var origX:Number;
      
      private var origY:Number;
      
      public var originX:Number;
      
      private var origPercentHeight:Number;
      
      public var zoomWidthFrom:Number;
      
      public var zoomWidthTo:Number;
      
      private var newX:Number;
      
      public var captureRollEvents:Boolean;
      
      private var origPercentWidth:Number;
      
      public var zoomHeightFrom:Number;
      
      private var origScaleX:Number;
      
      public var zoomHeightTo:Number;
      
      private var origScaleY:Number;
      
      private var scaledOriginX:Number;
      
      private var scaledOriginY:Number;
      
      private var show:Boolean = true;
      
      private var _mouseHasMoved:Boolean = false;
      
      public function ZoomInstance(target:Object)
      {
         super(target);
      }
      
      override public function finishEffect() : void
      {
         if(captureRollEvents)
         {
            target.removeEventListener(MouseEvent.ROLL_OVER,mouseEventHandler,false);
            target.removeEventListener(MouseEvent.ROLL_OUT,mouseEventHandler,false);
            target.removeEventListener(MouseEvent.MOUSE_MOVE,mouseEventHandler,false);
         }
         super.finishEffect();
      }
      
      private function getScaleFromWidth(value:Number) : Number
      {
         return value / (target.width / Math.abs(target.scaleX));
      }
      
      override public function initEffect(event:Event) : void
      {
         super.initEffect(event);
         if(event.type == FlexEvent.HIDE || event.type == Event.REMOVED)
         {
            show = false;
         }
      }
      
      private function getScaleFromHeight(value:Number) : Number
      {
         return value / (target.height / Math.abs(target.scaleY));
      }
      
      private function applyPropertyChanges() : void
      {
         var useSize:Boolean = false;
         var useScale:Boolean = false;
         var values:PropertyChanges = propertyChanges;
         if(values)
         {
            useSize = false;
            useScale = false;
            if(values.end["scaleX"] !== undefined)
            {
               zoomWidthFrom = !!isNaN(zoomWidthFrom)?Number(target.scaleX):Number(zoomWidthFrom);
               zoomWidthTo = !!isNaN(zoomWidthTo)?Number(values.end["scaleX"]):Number(zoomWidthTo);
               useScale = true;
            }
            if(values.end["scaleY"] !== undefined)
            {
               zoomHeightFrom = !!isNaN(zoomHeightFrom)?Number(target.scaleY):Number(zoomHeightFrom);
               zoomHeightTo = !!isNaN(zoomHeightTo)?Number(values.end["scaleY"]):Number(zoomHeightTo);
               useScale = true;
            }
            if(useScale)
            {
               return;
            }
            if(values.end["width"] !== undefined)
            {
               zoomWidthFrom = !!isNaN(zoomWidthFrom)?Number(getScaleFromWidth(target.width)):Number(zoomWidthFrom);
               zoomWidthTo = !!isNaN(zoomWidthTo)?Number(getScaleFromWidth(values.end["width"])):Number(zoomWidthTo);
               useSize = true;
            }
            if(values.end["height"] !== undefined)
            {
               zoomHeightFrom = !!isNaN(zoomHeightFrom)?Number(getScaleFromHeight(target.height)):Number(zoomHeightFrom);
               zoomHeightTo = !!isNaN(zoomHeightTo)?Number(getScaleFromHeight(values.end["height"])):Number(zoomHeightTo);
               useSize = true;
            }
            if(useSize)
            {
               return;
            }
            if(values.end["visible"] !== undefined)
            {
               show = values.end["visible"];
            }
         }
      }
      
      private function mouseEventHandler(event:MouseEvent) : void
      {
         if(event.type == MouseEvent.MOUSE_MOVE)
         {
            _mouseHasMoved = true;
         }
         else if(event.type == MouseEvent.ROLL_OUT || event.type == MouseEvent.ROLL_OVER)
         {
            if(!_mouseHasMoved)
            {
               event.stopImmediatePropagation();
            }
            _mouseHasMoved = false;
         }
      }
      
      override public function play() : void
      {
         super.play();
         applyPropertyChanges();
         if(isNaN(zoomWidthFrom) && isNaN(zoomWidthTo) && isNaN(zoomHeightFrom) && isNaN(zoomHeightTo))
         {
            if(show)
            {
               zoomWidthFrom = zoomHeightFrom = 0;
               zoomWidthTo = target.scaleX;
               zoomHeightTo = target.scaleY;
            }
            else
            {
               zoomWidthFrom = target.scaleX;
               zoomHeightFrom = target.scaleY;
               zoomWidthTo = zoomHeightTo = 0;
            }
         }
         else
         {
            if(isNaN(zoomWidthFrom) && isNaN(zoomWidthTo))
            {
               zoomWidthFrom = zoomWidthTo = target.scaleX;
            }
            else if(isNaN(zoomHeightFrom) && isNaN(zoomHeightTo))
            {
               zoomHeightFrom = zoomHeightTo = target.scaleY;
            }
            if(isNaN(zoomWidthFrom))
            {
               zoomWidthFrom = target.scaleX;
            }
            else if(isNaN(zoomWidthTo))
            {
               zoomWidthTo = zoomWidthFrom == 1?Number(0):Number(1);
            }
            if(isNaN(zoomHeightFrom))
            {
               zoomHeightFrom = target.scaleY;
            }
            else if(isNaN(zoomHeightTo))
            {
               zoomHeightTo = zoomHeightFrom == 1?Number(0):Number(1);
            }
         }
         if(zoomWidthFrom < 0.01)
         {
            zoomWidthFrom = 0.01;
         }
         if(zoomWidthTo < 0.01)
         {
            zoomWidthTo = 0.01;
         }
         if(zoomHeightFrom < 0.01)
         {
            zoomHeightFrom = 0.01;
         }
         if(zoomHeightTo < 0.01)
         {
            zoomHeightTo = 0.01;
         }
         origScaleX = target.scaleX;
         origScaleY = target.scaleY;
         newX = origX = target.x;
         newY = origY = target.y;
         if(isNaN(originX))
         {
            scaledOriginX = target.width / 2;
         }
         else
         {
            scaledOriginX = originX * origScaleX;
         }
         if(isNaN(originY))
         {
            scaledOriginY = target.height / 2;
         }
         else
         {
            scaledOriginY = originY * origScaleY;
         }
         scaledOriginX = Number(scaledOriginX.toFixed(1));
         scaledOriginY = Number(scaledOriginY.toFixed(1));
         origPercentWidth = target.percentWidth;
         if(!isNaN(origPercentWidth))
         {
            target.width = target.width;
         }
         origPercentHeight = target.percentHeight;
         if(!isNaN(origPercentHeight))
         {
            target.height = target.height;
         }
         tween = createTween(this,[zoomWidthFrom,zoomHeightFrom],[zoomWidthTo,zoomHeightTo],duration);
         if(captureRollEvents)
         {
            target.addEventListener(MouseEvent.ROLL_OVER,mouseEventHandler,false);
            target.addEventListener(MouseEvent.ROLL_OUT,mouseEventHandler,false);
            target.addEventListener(MouseEvent.MOUSE_MOVE,mouseEventHandler,false);
         }
      }
      
      override public function onTweenEnd(value:Object) : void
      {
         var curWidth:Number = NaN;
         var curHeight:Number = NaN;
         if(!isNaN(origPercentWidth))
         {
            curWidth = target.width;
            target.percentWidth = origPercentWidth;
            if(target.parent && target.parent.autoLayout == false)
            {
               target._width = curWidth;
            }
         }
         if(!isNaN(origPercentHeight))
         {
            curHeight = target.height;
            target.percentHeight = origPercentHeight;
            if(target.parent && target.parent.autoLayout == false)
            {
               target._height = curHeight;
            }
         }
         super.onTweenEnd(value);
         if(hideOnEffectEnd)
         {
            EffectManager.suspendEventHandling();
            target.scaleX = origScaleX;
            target.scaleY = origScaleY;
            target.move(origX,origY);
            EffectManager.resumeEventHandling();
         }
      }
      
      override public function onTweenUpdate(value:Object) : void
      {
         EffectManager.suspendEventHandling();
         if(Math.abs(newX - target.x) > 0.1)
         {
            origX = origX + (Number(target.x.toFixed(1)) - newX);
         }
         if(Math.abs(newY - target.y) > 0.1)
         {
            origY = origY + (Number(target.y.toFixed(1)) - newY);
         }
         target.scaleX = value[0];
         target.scaleY = value[1];
         var ratioX:Number = value[0] / origScaleX;
         var ratioY:Number = value[1] / origScaleY;
         var newOriginX:Number = scaledOriginX * ratioX;
         var newOriginY:Number = scaledOriginY * ratioY;
         newX = scaledOriginX - newOriginX + origX;
         newY = scaledOriginY - newOriginY + origY;
         newX = Number(newX.toFixed(1));
         newY = Number(newY.toFixed(1));
         target.move(newX,newY);
         if(tween)
         {
            tween.needToLayout = true;
         }
         else
         {
            needToLayout = true;
         }
         EffectManager.resumeEventHandling();
      }
   }
}
