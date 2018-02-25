package com.gaiaonline.battle.ItemLoadManager
{
   import com.gaiaonline.gsi.GSIEvent;
   import com.gaiaonline.gsi.GSIGateway;
   import flash.events.EventDispatcher;
   
   public class GSIEventManager extends EventDispatcher
   {
       
      
      private var _gsiNumbers:Array = null;
      
      private var _gsiGateway:GSIGateway = null;
      
      public function GSIEventManager(gsiGateway:GSIGateway, gsiNumbers:Array)
      {
         super();
         _gsiNumbers = gsiNumbers;
         _gsiGateway = gsiGateway;
         _gsiGateway.addEventListener(GSIEvent.LOADED,onLoaded,false,0,true);
      }
      
      private function onLoaded(event:GSIEvent) : void
      {
      }
   }
}
