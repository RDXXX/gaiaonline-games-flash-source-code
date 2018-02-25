package com.gaiaonline.events
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.ProgressEvent;
   import flash.utils.Dictionary;
   
   public class ProgressEventManager extends EventDispatcher
   {
       
      
      private var _currentDispatcher:IEventDispatcher;
      
      private var _dispatchers:Dictionary;
      
      public function ProgressEventManager()
      {
         _dispatchers = new Dictionary(true);
         super();
      }
      
      public function addProgressObject(progressObj:IEventDispatcher, label:String, priority:int = 0, loaded:int = 0, total:int = 100) : void
      {
         this._dispatchers[progressObj] = new DispatcherData(label,total,loaded,priority);
         progressObj.addEventListener(ProgressEvent.PROGRESS,onProgress);
         progressObj.addEventListener(Event.COMPLETE,onComplete);
         if(this._currentDispatcher == null || priority > this._dispatchers[this._currentDispatcher].priority)
         {
            this._currentDispatcher = progressObj;
         }
         if(this._currentDispatcher == progressObj)
         {
            this.dispatchEvent(new ProgressEvent(ProgressEvent.PROGRESS,false,false,loaded,total));
         }
      }
      
      private function onComplete(evt:Event) : void
      {
         var prio:int = 0;
         var obj:* = null;
         var total:Number = NaN;
         var loaded:Number = NaN;
         if(this._dispatchers[evt.target] != null)
         {
            EventDispatcher(evt.target).removeEventListener(ProgressEvent.PROGRESS,onProgress);
            EventDispatcher(evt.target).removeEventListener(Event.COMPLETE,onComplete);
            delete this._dispatchers[evt.target];
         }
         if(this._currentDispatcher == evt.target)
         {
            this._currentDispatcher = null;
            prio = -1;
            for(obj in this._dispatchers)
            {
               if(this._dispatchers[obj].priority > prio)
               {
                  this._currentDispatcher = EventDispatcher(obj);
                  prio = this._dispatchers[obj].priority;
               }
            }
         }
         if(this._currentDispatcher != null)
         {
            total = this._dispatchers[this._currentDispatcher].total;
            loaded = this._dispatchers[this._currentDispatcher].loaded;
            this.dispatchEvent(new ProgressEvent(ProgressEvent.PROGRESS,false,false,loaded,total));
         }
         else
         {
            this.dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      public function get label() : String
      {
         var v:String = null;
         if(this._dispatchers[this._currentDispatcher] != null)
         {
            v = this._dispatchers[this._currentDispatcher].label;
         }
         return v;
      }
      
      private function onProgress(evt:ProgressEvent) : void
      {
         if(this._dispatchers[evt.target] != null)
         {
            this._dispatchers[evt.target].total = evt.bytesTotal;
            this._dispatchers[evt.target].loaded = evt.bytesLoaded;
         }
         if(evt.target == this._currentDispatcher)
         {
            this.dispatchEvent(new ProgressEvent(ProgressEvent.PROGRESS,false,false,evt.bytesLoaded,evt.bytesTotal));
         }
      }
   }
}

class DispatcherData
{
    
   
   private var _priority:int = 0;
   
   public var total:int = 0;
   
   private var _label:String;
   
   public var loaded:int = 0;
   
   function DispatcherData(label:String, total:int = 0, loaded:int = 0, priority:int = 0)
   {
      super();
      this._label = label;
      this._priority = priority;
      this.loaded = loaded;
      this.total = total;
   }
   
   public function get label() : String
   {
      return this._label;
   }
   
   public function get priority() : int
   {
      return this._priority;
   }
}
