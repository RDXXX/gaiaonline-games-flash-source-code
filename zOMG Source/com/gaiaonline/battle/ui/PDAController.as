package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.Globals;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.newactors.ActorManager;
   import com.gaiaonline.battle.ui.events.PDAEvent;
   import com.gaiaonline.flexModulesAPIs.gatewayInterfaces.IBattleGateway;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.flexModulesAPIs.minimap.IMinimapContainer;
   import com.gaiaonline.flexModulesAPIs.pda.IPDA;
   import com.gaiaonline.flexModulesAPIs.pda.IPDAEventHandler;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.EventDispatcher;
   
   public class PDAController extends EventDispatcher implements IPDAEventHandler, IAsyncCreationHandler
   {
      
      private static var _instance:PDAController = null;
       
      
      private var _flexUiManager:IFlexUiManager = null;
      
      private var _view:IPDA = null;
      
      private var _gateway:IBattleGateway = null;
      
      private var _questController:QuestController = null;
      
      private var _minimap:DisplayObject = null;
      
      private var _minimapManager:MiniMapManager = null;
      
      private var _pendingMinimap:Boolean = true;
      
      private var _isOpen:Boolean = false;
      
      public function PDAController(S:SingletonEnforcer#154, flexUiManager:IFlexUiManager, gateway:IBattleGateway)
      {
         super();
         this._gateway = gateway;
         this._flexUiManager = flexUiManager;
         this._questController = QuestController.getInstance(_gateway);
         init();
      }
      
      private static function createMapDisplay(ttm:ToolTipOld) : UiMapDisplay
      {
         var m:UiMapDisplay = new UiMapDisplay();
         m.init(ttm);
         m.autoCenter = true;
         m.autoCenter = false;
         return m;
      }
      
      public static function getInstance(flexUiManager:IFlexUiManager, gateway:IBattleGateway) : PDAController
      {
         if(_instance == null)
         {
            _instance = new PDAController(new SingletonEnforcer#154(),flexUiManager,gateway);
         }
         return _instance;
      }
      
      private function onLeftTeam(e:GlobalEvent) : void
      {
         var actorId:String = e.data.actorId;
         if(_view && actorId == ActorManager.getInstance().myActor.actorId)
         {
            _view.recrewtButton.enabled = true;
         }
      }
      
      private function doubleDigitFormat(num:uint) : String
      {
         if(num < 10)
         {
            return "0" + num;
         }
         return String(num);
      }
      
      private function onQuestData(e:PDAEvent) : void
      {
         if(_view)
         {
            _view.setQuests(e.questData);
         }
      }
      
      private function init() : void
      {
         this._questController.addEventListener(PDAEvent.QUEST_DATA,onQuestData);
         this._minimapManager = new MiniMapManager(_gateway as BattleGateway,Globals.uiManager.uiFramework);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.WIDGET_SHOW,onWidgetShow);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.GST_UPDATE,onGstUpdate);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.GST_LOADED,onGstLoaded);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.TEAM_UPDATED,onTeamUpdated);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.LEFT_TEAM,onLeftTeam);
      }
      
      private function onGstUpdate(e:GlobalEvent) : void
      {
         var date:Date = e.data.gst;
         var localTime:String = getUSClockTime(date.getHours(),date.getMinutes());
         if(_view)
         {
            _view.setGST("GST: " + localTime);
         }
      }
      
      private function onGstLoaded(e:GlobalEvent) : void
      {
         this._questController.loadQuest();
      }
      
      private function onNewRoomEntered(e:GlobalEvent) : void
      {
         var newRoomId:String = e.data.newRoomId;
         this._minimapManager.updateLocalMap(newRoomId);
      }
      
      public function setPDAOpen(open:Boolean) : void
      {
         this._isOpen = open;
      }
      
      private function onWidgetShow(evt:GlobalEvent) : void
      {
         var widgetName:String = evt.data.widgetName;
         var show:Boolean = evt.data.widgetShow;
         switch(widgetName)
         {
            case "PDARecrewtButton":
               _view.recrewtButton.visible = show;
         }
      }
      
      public function onCreation(module:Object, modulePath:String) : void
      {
         var local:UiMapDisplay = null;
         var global:UiMapDisplay = null;
         if(this._pendingMinimap)
         {
            local = createMapDisplay(Globals.uiManager.uiFramework.tooltipManager);
            this._minimapManager.addView(local,true);
            global = createMapDisplay(Globals.uiManager.uiFramework.tooltipManager);
            this._minimapManager.addView(global,false);
            this._minimap = DisplayObjectContainer(module);
            IMinimapContainer(this._minimap).setRawMinimapDisplay(local,global);
            _view.addMinimap(this._minimap);
            this._pendingMinimap = false;
         }
      }
      
      private function getUSClockTime(hrs:uint, mins:uint) : String
      {
         var modifier:String = "PM";
         var minLabel:String = doubleDigitFormat(mins);
         if(hrs > 12)
         {
            hrs = hrs - 12;
         }
         else if(hrs == 0)
         {
            modifier = "AM";
            hrs = 12;
         }
         else if(hrs < 12)
         {
            modifier = "AM";
         }
         return String(hrs) + ":" + minLabel + " " + modifier;
      }
      
      public function addView(view:IPDA) : void
      {
         _view = view;
         _flexUiManager.getModule(ModulePaths.MINIMAP,this);
      }
      
      public function set activeTab(v:int) : void
      {
      }
      
      private function onTeamUpdated(e:GlobalEvent) : void
      {
         if(_view && e.data != null && e.data.isTeamLeader != null)
         {
            _view.recrewtButton.enabled = e.data.isTeamLeader;
         }
      }
   }
}

class SingletonEnforcer#154
{
    
   
   function SingletonEnforcer#154()
   {
      super();
   }
}
