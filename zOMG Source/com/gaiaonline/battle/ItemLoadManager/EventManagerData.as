package com.gaiaonline.battle.ItemLoadManager
{
   import flash.events.IEventDispatcher;
   
   public class EventManagerData
   {
       
      
      public var eventType:String = null;
      
      public var dispatcher:IEventDispatcher = null;
      
      public function EventManagerData(eventDispatcher:IEventDispatcher, eventType:String)
      {
         super();
         this.dispatcher = eventDispatcher;
         this.eventType = eventType;
      }
   }
}
