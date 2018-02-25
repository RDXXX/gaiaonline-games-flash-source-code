package com.gaiaonline.battle.ItemLoadManager
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.ProgressEvent;
   
   public class EventManager extends EventDispatcher
   {
       
      
      private var _totalFired:uint = 0;
      
      private var _totalListeners:uint = 0;
      
      private var _debugName:String;
      
      public function EventManager(eventManagerDataObjects:Array, debugName:String = null)
      {
         var data:EventManagerData = null;
         super();
         _debugName = debugName;
         try
         {
            for each(data in eventManagerDataObjects)
            {
               registerListener(data.dispatcher,data.eventType);
            }
         }
         catch(error:Error)
         {
            trace("Event Manager received an object that was not EventManagerData: " + error.message);
         }
      }
      
      private function registerListener(target:IEventDispatcher, eventType:String) : void
      {
         if(target && eventType && eventType.length > 0)
         {
            target.addEventListener(eventType,onComplete,false,0,false);
            _totalListeners++;
         }
      }
      
      private function onComplete(event:Event) : void
      {
         event.target.removeEventListener(event.type,onComplete);
         _totalFired++;
         dispatchEvent(new ProgressEvent(ProgressEvent.PROGRESS,false,false,_totalFired,_totalListeners));
         if(_debugName)
         {
            trace("EventManager.onComplete firing for",event.type,_totalFired + "/" + _totalListeners);
         }
         if(_totalFired >= _totalListeners)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
