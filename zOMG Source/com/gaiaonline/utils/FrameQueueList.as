package com.gaiaonline.utils
{
   import flash.utils.Dictionary;
   
   public class FrameQueueList
   {
       
      
      private var _queueList:Dictionary;
      
      public function FrameQueueList()
      {
         _queueList = new Dictionary();
         super();
      }
      
      public function addFrameQueue(fn:Function, intervalPerFrames:int = 0, perFrame:int = 0) : void
      {
         this._queueList[fn] = new FrameQueue(intervalPerFrames,perFrame);
      }
      
      public function dispose() : void
      {
         var fq:FrameQueue = null;
         for each(fq in this._queueList)
         {
            fq.dispose();
         }
         this._queueList = null;
      }
      
      public function addToFrameQueue(fn:Function, data:Object, replaceLast:Boolean = false) : Boolean
      {
         if(this._queueList[fn] == null)
         {
            return false;
         }
         FrameQueue(this._queueList[fn]).addToQueue(fn,data,replaceLast);
         return true;
      }
      
      public function removeFrameQueue(fn:Function) : void
      {
         if(this._queueList[fn] != null)
         {
            FrameQueue(this._queueList[fn]).dispose();
            delete this._queueList[fn];
         }
      }
   }
}
