package fl.transitions
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class Transition extends EventDispatcher
   {
      
      public static const IN:uint = 0;
      
      public static const OUT:uint = 1;
       
      
      protected var _direction:uint = 0;
      
      protected var _height:Number = NaN;
      
      protected var _easing:Function;
      
      protected var _twn:Tween;
      
      protected var _width:Number = NaN;
      
      protected var _outerBounds:Rectangle;
      
      protected var _progress:Number;
      
      public var ID:int;
      
      protected var _innerBounds:Rectangle;
      
      protected var _manager:TransitionManager;
      
      protected var _duration:Number = 2;
      
      protected var _content:MovieClip;
      
      public function Transition(content:MovieClip, transParams:Object, manager:TransitionManager)
      {
         super();
         this.content = content;
         this.direction = transParams.direction;
         this.duration = transParams.duration;
         this.easing = transParams.easing;
         this.manager = manager;
         this._innerBounds = this.manager._innerBounds;
         this._outerBounds = this.manager._outerBounds;
         this._width = this.manager._width;
         this._height = this.manager._height;
         this._resetTween();
      }
      
      public function get type() : Class
      {
         return Transition;
      }
      
      public function cleanUp() : void
      {
         this.removeEventListener("transitionInDone",this._manager.transitionInDone);
         this.removeEventListener("transitionOutDone",this._manager.transitionOutDone);
         this.stop();
      }
      
      public function stop() : void
      {
         this._twn.fforward();
         this._twn.stop();
      }
      
      public function onMotionFinished(src:Object) : void
      {
         if(this.direction == Transition.OUT)
         {
            this.dispatchEvent(new Event("transitionOutDone"));
         }
         else
         {
            this.dispatchEvent(new Event("transitionInDone"));
         }
      }
      
      public function set easing(e:Function) : void
      {
         this._easing = e;
         if(this._twn)
         {
            this._twn.func = e;
         }
      }
      
      public function set manager(mgr:TransitionManager) : void
      {
         if(this._manager)
         {
            this.removeEventListener("transitionInDone",this._manager.transitionInDone);
            this.removeEventListener("transitionOutDone",this._manager.transitionOutDone);
         }
         this._manager = mgr;
         this.addEventListener("transitionInDone",this._manager.transitionInDone);
         this.addEventListener("transitionOutDone",this._manager.transitionOutDone);
      }
      
      private function _resetTween() : void
      {
         if(this._twn)
         {
            this._twn.stop();
            this._twn.removeEventListener(TweenEvent.MOTION_FINISH,this.onMotionFinished);
         }
         this._twn = new Tween(this,"",this.easing,0,1,this.duration,true);
         this._twn.stop();
         this._twn.prop = "progress";
         this._twn.addEventListener(TweenEvent.MOTION_FINISH,this.onMotionFinished,false,0,true);
      }
      
      public function drawBox(mc:MovieClip, x:Number, y:Number, w:Number, h:Number) : void
      {
         mc.graphics.moveTo(x,y);
         mc.graphics.lineTo(x + w,y);
         mc.graphics.lineTo(x + w,y + h);
         mc.graphics.lineTo(x,y + h);
         mc.graphics.lineTo(x,y);
      }
      
      public function set progress(p:Number) : void
      {
         if(this._progress == p)
         {
            return;
         }
         this._progress = p;
         if(this._direction)
         {
            this._render(1 - p);
         }
         else
         {
            this._render(p);
         }
         this.dispatchEvent(new Event("transitionProgress"));
      }
      
      public function get duration() : Number
      {
         return this._duration;
      }
      
      public function set duration(d:Number) : void
      {
         if(d)
         {
            this._duration = d;
            if(this._twn)
            {
               this._twn.duration = d;
            }
         }
      }
      
      public function start() : void
      {
         this.content.visible = true;
         this._twn.start();
      }
      
      public function get easing() : Function
      {
         return this._easing;
      }
      
      public function get manager() : TransitionManager
      {
         return this._manager;
      }
      
      public function set content(c:MovieClip) : void
      {
         if(c)
         {
            this._content = c;
            if(this._twn)
            {
               this._twn.obj = c;
            }
         }
      }
      
      protected function _render(p:Number) : void
      {
      }
      
      public function get content() : MovieClip
      {
         return this._content;
      }
      
      public function drawCircle(mc:MovieClip, x:Number, y:Number, r:Number) : void
      {
         mc.graphics.moveTo(x + r,y);
         mc.graphics.curveTo(r + x,Math.tan(Math.PI / 8) * r + y,Math.sin(Math.PI / 4) * r + x,Math.sin(Math.PI / 4) * r + y);
         mc.graphics.curveTo(Math.tan(Math.PI / 8) * r + x,r + y,x,r + y);
         mc.graphics.curveTo(-Math.tan(Math.PI / 8) * r + x,r + y,-Math.sin(Math.PI / 4) * r + x,Math.sin(Math.PI / 4) * r + y);
         mc.graphics.curveTo(-r + x,Math.tan(Math.PI / 8) * r + y,-r + x,y);
         mc.graphics.curveTo(-r + x,-Math.tan(Math.PI / 8) * r + y,-Math.sin(Math.PI / 4) * r + x,-Math.sin(Math.PI / 4) * r + y);
         mc.graphics.curveTo(-Math.tan(Math.PI / 8) * r + x,-r + y,x,-r + y);
         mc.graphics.curveTo(Math.tan(Math.PI / 8) * r + x,-r + y,Math.sin(Math.PI / 4) * r + x,-Math.sin(Math.PI / 4) * r + y);
         mc.graphics.curveTo(r + x,-Math.tan(Math.PI / 8) * r + y,r + x,y);
      }
      
      public function get progress() : Number
      {
         return this._progress;
      }
      
      private function _noEase(t:Number, b:Number, c:Number, d:Number) : Number
      {
         return c * t / d + b;
      }
      
      public function set direction(direction:Number) : void
      {
         this._direction = !!direction?uint(1):uint(0);
      }
      
      public function get direction() : Number
      {
         return this._direction;
      }
   }
}
