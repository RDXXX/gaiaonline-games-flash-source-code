package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.newactors.ActorManager;
   import com.gaiaonline.battle.newactors.BaseActor;
   import com.gaiaonline.battle.newactors.TeamManager;
   import com.gaiaonline.battle.ui.actorInfo.TargetInfoController;
   import com.gaiaonline.flexModulesAPIs.actorInfo.ITargetInfo;
   import com.gaiaonline.flexModulesAPIs.crewListWidget.ICrewList;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   
   public class CrewListController implements IAsyncCreationHandler
   {
       
      
      private var _flexUiManager:IFlexUiManager = null;
      
      private var _view:ICrewList = null;
      
      private var _lastHighlightedController:TargetInfoController;
      
      private var _targetInfoControllersNeedingViews:Array;
      
      private var _targetInfoControllers:Array;
      
      public function CrewListController(flexUiManager:IFlexUiManager)
      {
         _targetInfoControllersNeedingViews = [];
         _targetInfoControllers = [];
         super();
         this._flexUiManager = flexUiManager;
         this.initInternalState();
      }
      
      private function onLeftTeam(e:GlobalEvent) : void
      {
         var actorId:String = e.data.actorId;
         if(actorId != ActorManager.getInstance().myActor.actorId)
         {
            this.removeUser(actorId);
         }
      }
      
      private function getNewtargetInfoController() : TargetInfoController
      {
         var targetInfoController:TargetInfoController = new TargetInfoController(this._flexUiManager,false);
         this._targetInfoControllers.push(targetInfoController);
         this._targetInfoControllersNeedingViews.push(targetInfoController);
         if(this._view)
         {
            this.getNewTargetView();
         }
         return targetInfoController;
      }
      
      private function actorIdToControllerIndex(actorId:String) : int
      {
         var targetInfoController:TargetInfoController = null;
         var controllerActor:BaseActor = null;
         var controllerActorId:String = null;
         var len:uint = this._targetInfoControllers.length;
         for(var i:uint = 0; i < len; i++)
         {
            targetInfoController = this._targetInfoControllers[i];
            controllerActor = targetInfoController.getActor();
            controllerActorId = targetInfoController.getActorId();
            if(actorId == null)
            {
               if(controllerActor == null && controllerActorId == null)
               {
                  return i;
               }
            }
            else if(controllerActorId == actorId)
            {
               return i;
            }
         }
         return -1;
      }
      
      private function onTargetInfoViewLoaded(instance:Object) : void
      {
         var targetInfoInstance:DisplayObject = DisplayObject(instance);
         var targetInfoController:TargetInfoController = this._targetInfoControllersNeedingViews.shift();
         this._view.addPlayerInfo(targetInfoInstance);
         this._flexUiManager.initializeContainer(targetInfoInstance);
         targetInfoController.addView(targetInfoInstance as ITargetInfo);
         targetInfoInstance.addEventListener(MouseEvent.CLICK,onViewSelected,false,0,true);
      }
      
      public function clearAll() : void
      {
         var me:BaseActor = ActorManager.getInstance().myActor;
         var myController:TargetInfoController = null;
         var targetInfoController:TargetInfoController = null;
         while(this._targetInfoControllers.length > 0)
         {
            targetInfoController = this._targetInfoControllers[0];
            if(targetInfoController.getActorId() != me.actorId)
            {
               this.removeUser(targetInfoController.getActorId());
            }
            else
            {
               myController = this._targetInfoControllers[0];
               this._targetInfoControllers.splice(0,1);
            }
         }
         if(myController)
         {
            this._targetInfoControllers.push(myController);
         }
      }
      
      private function onViewSelected(e:MouseEvent) : void
      {
         var controller:TargetInfoController = null;
         var targetInfoInstance:ITargetInfo = ITargetInfo(e.currentTarget);
         for each(controller in this._targetInfoControllers)
         {
            if(controller.hasView(targetInfoInstance))
            {
               ActorManager.getInstance().selectActor(controller.getActorId());
            }
         }
      }
      
      private function getNewTargetView() : void
      {
         this._flexUiManager.getModule(ModulePaths.TARGETINFO,this);
      }
      
      private function initInternalState() : void
      {
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.LEFT_TEAM,onLeftTeam);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.INVITE_TO_TEAM,onInviteToTeam);
      }
      
      public function onCreation(object:Object, modulePath:String) : void
      {
         switch(modulePath)
         {
            case ModulePaths.TARGETINFO:
               onTargetInfoViewLoaded(object);
         }
      }
      
      public function addView(view:ICrewList) : void
      {
         this._view = view;
         var len:uint = this._targetInfoControllersNeedingViews.length;
         for(var i:uint = 0; i < len; i++)
         {
            this.getNewTargetView();
         }
      }
      
      private function onInviteToTeam(e:GlobalEvent) : void
      {
         var targetInfoController:TargetInfoController = null;
         var actorId:String = e.data.actorId;
         var actorName:String = e.data.actorName;
         var roomId:String = e.data.roomName;
         if(this.actorIdToControllerIndex(actorId) == -1 && !ActorManager.getInstance().myActor.isOnMyTeam(actorId) && ActorManager.getInstance().myActor.teamCount() < TeamManager.TEAM_MAX)
         {
            targetInfoController = this.getNewtargetInfoController();
            targetInfoController.setRawData(actorName,actorId,roomId);
         }
      }
      
      public function highlightUser(actor:BaseActor) : void
      {
         var index:int = !!actor?int(this.actorIdToControllerIndex(actor.actorId)):-1;
         var targetInfoController:TargetInfoController = index >= 0?_targetInfoControllers[index]:null;
         if(targetInfoController != _lastHighlightedController)
         {
            if(_lastHighlightedController)
            {
               _lastHighlightedController.setHighlighted(false);
            }
            _lastHighlightedController = targetInfoController;
            if(_lastHighlightedController)
            {
               _lastHighlightedController.setHighlighted(true);
            }
         }
      }
      
      private function removeUser(actorId:String) : void
      {
         var targetInfoController:TargetInfoController = null;
         var controllerIndex:int = this.actorIdToControllerIndex(actorId);
         if(controllerIndex >= 0)
         {
            targetInfoController = this._targetInfoControllers[controllerIndex];
            this._targetInfoControllers.splice(controllerIndex,1);
            targetInfoController.setActorInfo(null);
         }
      }
      
      public function updateUser(actor:BaseActor) : void
      {
         if(!actor)
         {
            return;
         }
         var targetInfoController:TargetInfoController = this.getActorEntry(actor);
         if(targetInfoController.getActor() == null)
         {
            targetInfoController.setActorInfo(actor);
         }
      }
      
      private function getActorEntry(actor:BaseActor) : TargetInfoController
      {
         var unusedControllerIndex:int = 0;
         var targetInfoController:TargetInfoController = null;
         var controllerIndex:int = this.actorIdToControllerIndex(actor.actorId);
         if(controllerIndex == -1)
         {
            unusedControllerIndex = this.actorIdToControllerIndex(null);
            if(controllerIndex == -1)
            {
               targetInfoController = this.getNewtargetInfoController();
               targetInfoController.setActorInfo(actor);
            }
         }
         else
         {
            targetInfoController = this._targetInfoControllers[controllerIndex];
         }
         return targetInfoController;
      }
      
      private function getMyActorEntry() : TargetInfoController
      {
         return this.getActorEntry(ActorManager.getInstance().myActor);
      }
   }
}
