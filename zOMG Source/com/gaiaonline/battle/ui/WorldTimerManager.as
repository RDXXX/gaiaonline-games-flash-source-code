package com.gaiaonline.battle.ui
{
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.DisplayObjectUtils;
   
   public class WorldTimerManager
   {
      
      private static var instance:WorldTimerManager = null;
      
      private static var timersDataHash:Object = {};
       
      
      public function WorldTimerManager(singletonEnforcer:SingletonEnforcer#117)
      {
         super();
         if(singletonEnforcer == null)
         {
            throw "WorldTimerManager is a singleton.  Use getInstance() to instantiate.";
         }
      }
      
      private static function onWorldTimer(evt:GlobalEvent) : void
      {
         var data:Object = evt.data;
         var name:String = data.name;
         if(!name || name.length == 0)
         {
            return;
         }
         var timerData:Object = WorldTimerManager.timersDataHash[name];
         if(!timerData)
         {
            timerData = data;
            WorldTimerManager.timersDataHash[name] = timerData;
         }
         if(data.show == null)
         {
            data.show = true;
         }
         var show:Boolean = data.show;
         if(!show)
         {
            delete WorldTimerManager.timersDataHash[name];
         }
         timerData.show = show;
         var title:String = data.title;
         if(title && title.length > 0)
         {
            timerData.title = title;
         }
         if(data.start != null)
         {
            timerData.start = data.start;
         }
         if(data.finish != null)
         {
            timerData.finish = data.finish;
         }
         if(data.countUp != null)
         {
            timerData.countUp = data.countUp;
         }
         timerData.playing = data.playing;
         timerData.stop = data.stop;
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.WORLD_TIMER_UPDATE,timerData));
      }
      
      public static function getInstance() : WorldTimerManager
      {
         if(!instance)
         {
            instance = new WorldTimerManager(new SingletonEnforcer#117());
         }
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.WORLD_TIMER,onWorldTimer);
         return instance;
      }
   }
}

class SingletonEnforcer#117
{
    
   
   function SingletonEnforcer#117()
   {
      super();
   }
}
