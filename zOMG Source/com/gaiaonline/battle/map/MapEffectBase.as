package com.gaiaonline.battle.map
{
   import com.gaiaonline.utils.RegisterUtils;
   
   public class MapEffectBase
   {
       
      
      private var _eventHandlers:Array;
      
      public function MapEffectBase()
      {
         _eventHandlers = [];
         super();
      }
      
      protected function runWarpInComplete() : void
      {
         var warpInHandler:ITransitionEventHandler = null;
         for each(warpInHandler in _eventHandlers)
         {
            warpInHandler.onWarpInTransitionComplete();
         }
      }
      
      protected function runWarpOutComplete() : void
      {
         var warpOutHandler:ITransitionEventHandler = null;
         for each(warpOutHandler in _eventHandlers)
         {
            warpOutHandler.onWarpOutTransitionComplete();
         }
      }
      
      public function registerForTransitionEvents(handler:ITransitionEventHandler) : void
      {
         RegisterUtils.register(_eventHandlers,handler);
      }
      
      public function unregisterForTransitionEvents(handler:ITransitionEventHandler) : void
      {
         RegisterUtils.unregister(_eventHandlers,handler);
      }
   }
}
