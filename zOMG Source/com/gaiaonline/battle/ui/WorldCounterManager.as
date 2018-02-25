package com.gaiaonline.battle.ui
{
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.DisplayObjectUtils;
   
   public class WorldCounterManager
   {
      
      private static var instance:WorldCounterManager = null;
      
      private static var countersDataHash:Object = {};
       
      
      public function WorldCounterManager(singletonEnforcer:SingletonEnforcer#115)
      {
         super();
         if(singletonEnforcer == null)
         {
            throw "WorldCounterManager is a singleton.  Use getInstance() to instantiate.";
         }
      }
      
      private static function onWorldCounter(evt:GlobalEvent) : void
      {
         var data:Object = evt.data;
         var name:String = data.name;
         if(!name || name.length == 0)
         {
            return;
         }
         var counterData:Object = WorldCounterManager.countersDataHash[name];
         if(counterData == null)
         {
            counterData = data;
            WorldCounterManager.countersDataHash[name] = counterData;
         }
         if(data.show == null)
         {
            data.show = true;
         }
         var show:Boolean = data.show;
         if(!show)
         {
            delete WorldCounterManager.countersDataHash[name];
         }
         counterData.show = show;
         var title:String = data.title;
         if(title && title.length > 0)
         {
            counterData.title = title;
         }
         if(data.value != null)
         {
            counterData.value = data.value;
         }
         counterData.goal = data.goal;
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.WORLD_COUNTER_UPDATE,counterData));
      }
      
      public static function getInstance() : WorldCounterManager
      {
         if(!instance)
         {
            instance = new WorldCounterManager(new SingletonEnforcer#115());
         }
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.WORLD_COUNTER,onWorldCounter);
         return instance;
      }
   }
}

class SingletonEnforcer#115
{
    
   
   function SingletonEnforcer#115()
   {
      super();
   }
}
