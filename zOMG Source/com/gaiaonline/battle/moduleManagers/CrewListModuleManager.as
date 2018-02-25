package com.gaiaonline.battle.moduleManagers
{
   import com.gaiaonline.battle.newactors.ActorManager;
   import com.gaiaonline.battle.newactors.BaseActor;
   import com.gaiaonline.battle.ui.AlertTypes;
   import com.gaiaonline.battle.ui.CrewListController;
   import com.gaiaonline.battle.ui.IAsyncCreationHandler;
   import com.gaiaonline.battle.ui.IFlexUiManager;
   import com.gaiaonline.battle.ui.IModuleManager;
   import com.gaiaonline.containers.GameWindowEvent;
   import com.gaiaonline.containers.GameWindowManager;
   import com.gaiaonline.containers.GameWindowSettings;
   import com.gaiaonline.containers.IGameWindowFactory;
   import com.gaiaonline.flexModulesAPIs.crewListWidget.ICrewList;
   import com.gaiaonline.flexModulesAPIs.gatewayInterfaces.IBattleGateway;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public final class CrewListModuleManager implements IModuleManager, IAsyncCreationHandler
   {
       
      
      private var _path:String = null;
      
      private var _controller:CrewListController = null;
      
      private var _window:DisplayObjectContainer = null;
      
      private var _winUtils:WindowUtils = null;
      
      private var _pending:Boolean = false;
      
      private var _title:String = null;
      
      private var _windowManager:GameWindowManager = null;
      
      private var _flexUIManager:IFlexUiManager = null;
      
      private var _instance:DisplayObject = null;
      
      private var _windowFactory:IGameWindowFactory;
      
      public function CrewListModuleManager()
      {
         super();
      }
      
      private function onLeftTeam(e:GlobalEvent) : void
      {
         var actorId:String = e.data.actorId;
         if(actorId == ActorManager.getInstance().myActor.actorId)
         {
            if(this._controller)
            {
               this._controller.clearAll();
            }
         }
      }
      
      private function openCrewList() : void
      {
         if(!isCrewListOpen())
         {
            if(this._instance == null)
            {
               this.getModule();
            }
            else
            {
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.CREW_LIST_CHANGED,{"opened":true}));
               _winUtils.openWindow(this._window);
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.GENERIC_OPEN}));
            }
         }
      }
      
      private function openCloseCrewList() : void
      {
         if(isCrewListOpen())
         {
            closeCrewList();
         }
         else
         {
            openCrewList();
         }
      }
      
      private function onToggleCrewList(evt:GlobalEvent) : void
      {
         this.openCloseCrewList();
      }
      
      private function isCrewListOpen() : Boolean
      {
         return this._window && _winUtils.isWindowOpen(this._window.parent);
      }
      
      public function init(path:String, title:String, gateway:IBattleGateway, flexWinLayer:DisplayObjectContainer, flexUIManager:IFlexUiManager, windowManager:GameWindowManager, windowFactory:IGameWindowFactory, params:XML = null) : void
      {
         _winUtils = new WindowUtils(flexWinLayer);
         _path = path;
         _title = title;
         _flexUIManager = flexUIManager;
         _windowManager = windowManager;
         _windowFactory = windowFactory;
         this._controller = new CrewListController(this._flexUIManager);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.ACTOR_SELECTED,onSetSelectedTarget);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.TEAM_UPDATED,onTeamUpdated);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.LEFT_TEAM,onLeftTeam);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.INVITE_TO_TEAM,onInviteToTeam);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.CREW_LIST_TOGGLE,onToggleCrewList);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.TEXT_BASED_UI_COMMAND,onTextBasedUICommand);
      }
      
      private function onTextBasedUICommand(e:GlobalEvent) : void
      {
         var params:String = e.data.paramString;
         var parameters:Array = params.split(":");
         var firstParam:String = parameters[0];
         if(firstParam.toLowerCase() == "crewlist")
         {
            this.openCrewList();
         }
      }
      
      private function postCrewListClose() : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.CREW_LIST_CHANGED,{"opened":false}));
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.GENERIC_CLOSE}));
      }
      
      private function getModule() : void
      {
         if(!_pending)
         {
            this._flexUIManager.getModule(_path,this);
            _pending = true;
         }
      }
      
      public function onCreation(instance:Object, modulePath:String) : void
      {
         this._instance = DisplayObject(instance);
         this._window = this._windowFactory.createWindow(_title,false);
         this._window.addEventListener(GameWindowEvent.CLOSE,onCrewListClose,false,0,true);
         this._window.addChild(this._instance);
         var gws:GameWindowSettings = new GameWindowSettings(_title).setPos(10,50);
         gws.resizable = false;
         this._windowManager.add(this._window,gws);
         this._controller.addView(ICrewList(this._instance));
         this.openCrewList();
      }
      
      private function onInviteToTeam(e:GlobalEvent) : void
      {
         if(e.data.actorId)
         {
            this.openCrewList();
         }
      }
      
      private function updateCrewUser(actorId:String, updateBuffs:Boolean) : void
      {
         var ac:BaseActor = ActorManager.actorIdToActor(actorId);
         if(this._controller && ac)
         {
            this._controller.updateUser(ac);
         }
      }
      
      private function closeCrewList() : void
      {
         if(isCrewListOpen())
         {
            _winUtils.closeWindow(this._window);
            this.postCrewListClose();
         }
      }
      
      private function onCrewListClose(e:GameWindowEvent) : void
      {
         this.postCrewListClose();
      }
      
      private function onSetSelectedTarget(e:GlobalEvent) : void
      {
         if(this._controller)
         {
            this._controller.highlightUser(e.data.actor);
         }
      }
      
      private function onTeamUpdated(e:GlobalEvent) : void
      {
         var i:int = 0;
         if(!ActorManager.getInstance().myActor)
         {
            return;
         }
         if(ActorManager.getInstance().myActor.teamList.length >= 1)
         {
            for(i = 0; i < ActorManager.getInstance().myActor.teamList.length; i++)
            {
               this.updateCrewUser(ActorManager.getInstance().myActor.teamList[i],true);
            }
         }
         else
         {
            this.updateCrewUser(ActorManager.getInstance().myActor.actorId,true);
         }
         var data:Object = e.data;
         if(data.teammateAdded)
         {
            this.openCrewList();
         }
      }
   }
}
