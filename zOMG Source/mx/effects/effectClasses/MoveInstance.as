package mx.effects.effectClasses
{
   import flash.events.Event;
   import mx.core.Container;
   import mx.core.EdgeMetrics;
   import mx.core.IUIComponent;
   import mx.core.mx_internal;
   import mx.effects.EffectManager;
   import mx.events.MoveEvent;
   import mx.styles.IStyleClient;
   
   use namespace mx_internal;
   
   public class MoveInstance extends TweenEffectInstance
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public var xFrom:Number;
      
      public var yFrom:Number;
      
      private var left;
      
      private var forceClipping:Boolean = false;
      
      public var xTo:Number;
      
      private var top;
      
      private var horizontalCenter;
      
      public var yTo:Number;
      
      private var oldWidth:Number;
      
      private var right;
      
      private var bottom;
      
      private var oldHeight:Number;
      
      public var xBy:Number;
      
      public var yBy:Number;
      
      private var checkClipping:Boolean = true;
      
      private var verticalCenter;
      
      public function MoveInstance(target:Object)
      {
         super(target);
      }
      
      override public function initEffect(event:Event) : void
      {
         super.initEffect(event);
         if(event is MoveEvent && event.type == MoveEvent.MOVE)
         {
            if(isNaN(xFrom) && isNaN(xTo) && isNaN(xBy) && isNaN(yFrom) && isNaN(yTo) && isNaN(yBy))
            {
               xFrom = MoveEvent(event).oldX;
               xTo = target.x;
               yFrom = MoveEvent(event).oldY;
               yTo = target.y;
            }
         }
      }
      
      override public function play() : void
      {
         var vm:EdgeMetrics = null;
         var l:Number = NaN;
         var r:Number = NaN;
         var t:Number = NaN;
         var b:Number = NaN;
         var w:Number = NaN;
         var h:Number = NaN;
         super.play();
         EffectManager.mx_internal::startBitmapEffect(IUIComponent(target));
         if(isNaN(xFrom))
         {
            xFrom = !isNaN(xTo) && !isNaN(xBy)?Number(xTo - xBy):Number(target.x);
         }
         if(isNaN(xTo))
         {
            if(isNaN(xBy) && propertyChanges && propertyChanges.end["x"] !== undefined)
            {
               xTo = propertyChanges.end["x"];
            }
            else
            {
               xTo = !isNaN(xBy)?Number(xFrom + xBy):Number(target.x);
            }
         }
         if(isNaN(yFrom))
         {
            yFrom = !isNaN(yTo) && !isNaN(yBy)?Number(yTo - yBy):Number(target.y);
         }
         if(isNaN(yTo))
         {
            if(isNaN(yBy) && propertyChanges && propertyChanges.end["y"] !== undefined)
            {
               yTo = propertyChanges.end["y"];
            }
            else
            {
               yTo = !isNaN(yBy)?Number(yFrom + yBy):Number(target.y);
            }
         }
         tween = createTween(this,[xFrom,yFrom],[xTo,yTo],duration);
         var p:Container = target.parent as Container;
         if(p)
         {
            vm = p.viewMetrics;
            l = vm.left;
            r = p.width - vm.right;
            t = vm.top;
            b = p.height - vm.bottom;
            if(xFrom < l || xTo < l || xFrom + target.width > r || xTo + target.width > r || yFrom < t || yTo < t || yFrom + target.height > b || yTo + target.height > b)
            {
               forceClipping = true;
               p.mx_internal::forceClipping = true;
            }
         }
         mx_internal::applyTweenStartValues();
         if(target is IStyleClient)
         {
            left = target.getStyle("left");
            if(left != undefined)
            {
               target.setStyle("left",undefined);
            }
            right = target.getStyle("right");
            if(right != undefined)
            {
               target.setStyle("right",undefined);
            }
            top = target.getStyle("top");
            if(top != undefined)
            {
               target.setStyle("top",undefined);
            }
            bottom = target.getStyle("bottom");
            if(bottom != undefined)
            {
               target.setStyle("bottom",undefined);
            }
            horizontalCenter = target.getStyle("horizontalCenter");
            if(horizontalCenter != undefined)
            {
               target.setStyle("horizontalCenter",undefined);
            }
            verticalCenter = target.getStyle("verticalCenter");
            if(verticalCenter != undefined)
            {
               target.setStyle("verticalCenter",undefined);
            }
            if(left != undefined && right != undefined)
            {
               w = target.width;
               oldWidth = target.explicitWidth;
               target.width = w;
            }
            if(top != undefined && bottom != undefined)
            {
               h = target.height;
               oldHeight = target.explicitHeight;
               target.height = h;
            }
         }
      }
      
      override public function onTweenUpdate(value:Object) : void
      {
         var p:Container = null;
         var vm:EdgeMetrics = null;
         var l:Number = NaN;
         var r:Number = NaN;
         var t:Number = NaN;
         var b:Number = NaN;
         EffectManager.suspendEventHandling();
         if(!forceClipping && checkClipping)
         {
            p = target.parent as Container;
            if(p)
            {
               vm = p.viewMetrics;
               l = vm.left;
               r = p.width - vm.right;
               t = vm.top;
               b = p.height - vm.bottom;
               if(value[0] < l || value[0] + target.width > r || value[1] < t || value[1] + target.height > b)
               {
                  forceClipping = true;
                  p.mx_internal::forceClipping = true;
               }
            }
         }
         target.move(value[0],value[1]);
         EffectManager.resumeEventHandling();
      }
      
      override public function onTweenEnd(value:Object) : void
      {
         var p:Container = null;
         EffectManager.mx_internal::endBitmapEffect(IUIComponent(target));
         if(left != undefined)
         {
            target.setStyle("left",left);
         }
         if(right != undefined)
         {
            target.setStyle("right",right);
         }
         if(top != undefined)
         {
            target.setStyle("top",top);
         }
         if(bottom != undefined)
         {
            target.setStyle("bottom",bottom);
         }
         if(horizontalCenter != undefined)
         {
            target.setStyle("horizontalCenter",horizontalCenter);
         }
         if(verticalCenter != undefined)
         {
            target.setStyle("verticalCenter",verticalCenter);
         }
         if(left != undefined && right != undefined)
         {
            target.explicitWidth = oldWidth;
         }
         if(top != undefined && bottom != undefined)
         {
            target.explicitHeight = oldHeight;
         }
         if(forceClipping)
         {
            p = target.parent as Container;
            if(p)
            {
               forceClipping = false;
               p.mx_internal::forceClipping = false;
            }
         }
         checkClipping = false;
         super.onTweenEnd(value);
      }
   }
}
