package com.gaiaonline.utils
{
   import com.gskinner.utils.WeakReference;
   import flash.display.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class MouseMoveLimiter
   {
      
      private static var _benefit:uint;
       
      
      private var _priority:int;
      
      private var _destinations:EventDispatcher;
      
      private var _lastEvent:MouseEvent;
      
      private var _frameTimer:FrameTimer;
      
      private var _source:WeakReference;
      
      public function MouseMoveLimiter(source:DisplayObject, priority:int = 0)
      {
         _destinations = new EventDispatcher();
         _frameTimer = new FrameTimer(onFrame);
         super();
         if(!source)
         {
            throw "MouseMoveCollapser initialization error";
         }
         _source = new WeakReference(source);
         _priority = priority;
      }
      
      public function addListener(listener:Function) : void
      {
         if(!_destinations.hasEventListener(MouseEvent.MOUSE_MOVE))
         {
            _source.get().addEventListener(MouseEvent.MOUSE_MOVE,onMouseMove,false,0,true);
         }
         _destinations.addEventListener(MouseEvent.MOUSE_MOVE,listener,false,0,true);
      }
      
      public function removeListener(listener:Function) : void
      {
         _destinations.removeEventListener(MouseEvent.MOUSE_MOVE,listener);
         if(!_destinations.hasEventListener(MouseEvent.MOUSE_MOVE))
         {
            _source.get().removeEventListener(MouseEvent.MOUSE_MOVE,onMouseMove);
            _lastEvent = null;
         }
      }
      
      private function onFrame() : void
      {
         if(_lastEvent)
         {
            _benefit--;
            _destinations.dispatchEvent(new MouseEventProxy(_lastEvent));
            _lastEvent = null;
         }
      }
      
      private function onMouseMove(e:MouseEvent) : void
      {
         _benefit++;
         _lastEvent = e;
         if(!_frameTimer.running)
         {
            _frameTimer.startPerFrame(0,5);
         }
      }
   }
}
