package com.gaiaonline.battle.map
{
   import com.gaiaonline.battle.userServerSettings.IGraphicOptionsSettings;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.platform.actors.ISilhouetteable;
   import com.gaiaonline.utils.FrameTimer;
   import com.gaiaonline.utils.RegisterUtils;
   
   public class SilhouetteManager implements IEnvironmentChanger
   {
       
      
      private var _silhouetteEnabled:Boolean = true;
      
      private var _environmentChangeHandlers:Array;
      
      private var _silhouetteTimer:FrameTimer;
      
      private var _mapRoomManager:IMapRoomManager = null;
      
      public function SilhouetteManager(mapRoomManager:IMapRoomManager)
      {
         _silhouetteTimer = new FrameTimer(onSilhouetteTimer);
         _environmentChangeHandlers = [];
         super();
         _mapRoomManager = mapRoomManager;
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.USER_SETTINGS_LOADED,onGraphicsOptionChanged,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.GRAPHIC_OPTIONS_CHANGED,onGraphicsOptionChanged,false,0,true);
         _silhouetteTimer.start(1000);
      }
      
      private function onGraphicsOptionChanged(event:GlobalEvent) : void
      {
         var enviroChangeHandler:IEnvironmentChangeHandler = null;
         var data:IGraphicOptionsSettings = event.data as IGraphicOptionsSettings;
         if(data)
         {
            _silhouetteEnabled = data.getSilhouettingEnabled();
         }
         if(_silhouetteEnabled)
         {
            for each(enviroChangeHandler in _environmentChangeHandlers)
            {
               enviroChangeHandler.onEnvironmentChange(this);
            }
         }
         else
         {
            _mapRoomManager.getCurrentMapRoom().removeAllObjectSilhouettes();
         }
      }
      
      private function onSilhouetteTimer() : void
      {
         var currentRoom:MapRoom = _mapRoomManager.getCurrentMapRoom();
         if(currentRoom)
         {
            currentRoom.checkInvalidSilhouettables();
         }
      }
      
      public function updateObject(invalidObj:Object) : void
      {
         var silhouettable:ISilhouetteable = null;
         var currentRoom:MapRoom = null;
         if(_silhouetteEnabled)
         {
            silhouettable = invalidObj as ISilhouetteable;
            if(silhouettable)
            {
               currentRoom = _mapRoomManager.getCurrentMapRoom();
               if(currentRoom)
               {
                  currentRoom.runObjectSilhouette(silhouettable);
               }
            }
         }
      }
      
      public function registerForEnvironmentChanges(handler:IEnvironmentChangeHandler) : void
      {
         RegisterUtils.register(_environmentChangeHandlers,handler);
      }
   }
}
