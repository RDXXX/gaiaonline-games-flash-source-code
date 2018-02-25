package com.gaiaonline.utils
{
   public class FrameQueue
   {
       
      
      private var _queue:Array;
      
      private var _frameTimer:FrameTimer;
      
      private var _intervalFrames:int = 0;
      
      private var _perFrame:int = 0;
      
      public function FrameQueue(intervalFrames:int = 0, perFrame:int = 0)
      {
         _queue = new Array();
         super();
         this._intervalFrames = intervalFrames;
         this._perFrame = perFrame;
         this._frameTimer = new FrameTimer(onFrameTimer);
      }
      
      public function dispose() : void
      {
         this._frameTimer.stop();
         this._queue = null;
      }
      
      private function onFrameTimer() : void
      {
         var obj:Object = null;
         var count:int = this._queue.length;
         if(this._perFrame > 0)
         {
            count = this._perFrame;
         }
         for(var i:int = 0; i < count; i++)
         {
            obj = this._queue.shift();
            obj.fn(obj.data);
         }
         if(this._queue.length == 0)
         {
            this._frameTimer.stop();
         }
      }
      
      public function addToQueue(fn:Function, data:Object = null, replaceLast:Boolean = false) : void
      {
         if(replaceLast && this._queue.length > 0)
         {
            this._queue[this._queue.length - 1] = {
               "fn":fn,
               "data":data
            };
         }
         else
         {
            this._queue.push({
               "fn":fn,
               "data":data
            });
         }
         this._frameTimer.startPerFrame(this._intervalFrames);
      }
   }
}
