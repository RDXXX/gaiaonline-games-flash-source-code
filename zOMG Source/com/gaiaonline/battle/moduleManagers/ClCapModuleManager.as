package com.gaiaonline.battle.moduleManagers
{
   import com.gaiaonline.battle.ui.ClCapWidgetController;
   import com.gaiaonline.battle.ui.IAsyncCreationHandler;
   import com.gaiaonline.battle.ui.IFlexUiManager;
   import com.gaiaonline.battle.ui.IModuleManager;
   import com.gaiaonline.containers.GameWindowEvent;
   import com.gaiaonline.containers.GameWindowManager;
   import com.gaiaonline.containers.IGameWindowFactory;
   import com.gaiaonline.flexModulesAPIs.clcapwidget.IClCapWidget;
   import com.gaiaonline.flexModulesAPIs.gatewayInterfaces.IBattleGateway;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class ClCapModuleManager implements IAsyncCreationHandler, IModuleManager
   {
       
      
      private var _path:String;
      
      private var _gateway:IBattleGateway;
      
      private var _flexWinLayer:DisplayObjectContainer;
      
      private var _isNullChamber:Boolean = false;
      
      private var _window:DisplayObjectContainer;
      
      private var _winUtils:WindowUtils = null;
      
      private var _pending:Boolean = false;
      
      private var _title:String;
      
      private var _windowManager:GameWindowManager;
      
      private var _flexUIManager:IFlexUiManager;
      
      private var _instance:DisplayObject;
      
      private var _windowFactory:IGameWindowFactory;
      
      private var _clCapWidgetContoller:ClCapWidgetController;
      
      public function ClCapModuleManager()
      {
         super();
      }
      
      private function onWindowClose(evt:GameWindowEvent) : void
      {
      }
      
      private function onClCapOpen(evt:GlobalEvent) : void
      {
         if(!this._winUtils.isWindowOpen(this._window))
         {
            if(!this._instance)
            {
               this.getModule();
            }
            else
            {
               this._clCapWidgetContoller.init();
               _winUtils.openWindow(this._window);
               this._window.x = this._flexWinLayer.width / 2 - this._window.width / 2;
               this._window.y = this._flexWinLayer.height / 2 - this._window.height / 2;
            }
         }
      }
      
      public function init(path:String, title:String, gateway:IBattleGateway, flexWinLayer:DisplayObjectContainer, flexUIManager:IFlexUiManager, windowManager:GameWindowManager, windowFactory:IGameWindowFactory, params:XML = null) : void
      {
         this._gateway = gateway;
         _winUtils = new WindowUtils(flexWinLayer);
         _path = path;
         _title = title;
         _flexUIManager = flexUIManager;
         _windowManager = windowManager;
         _windowFactory = windowFactory;
         _flexWinLayer = flexWinLayer;
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.CL_CAP_OPEN,onClCapOpen,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.CL_CAP_CLOSE,onClCapClose,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.MAP_DONE,onMapDone,false,0,true);
      }
      
      private function onClCapClose(evt:GlobalEvent) : void
      {
         if(this._window != null && this._winUtils.isWindowOpen(this._window))
         {
            _winUtils.closeWindow(this._window);
         }
      }
      
      private function onMapDone(evt:GlobalEvent) : void
      {
         this._isNullChamber = evt.data.isNullChamber;
         if(this._clCapWidgetContoller)
         {
            this._clCapWidgetContoller.isNullChamber = this._isNullChamber;
         }
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
         this._clCapWidgetContoller = new ClCapWidgetController(this._gateway);
         this._clCapWidgetContoller.isNullChamber = this._isNullChamber;
         _window = this._windowFactory.createWindow(_title,false);
         this._window.width = 170;
         this._window.height = 175;
         _window.addEventListener(GameWindowEvent.CLOSE,onWindowClose);
         _window.addChild(this._instance);
         this._windowManager.add(_window);
         this._clCapWidgetContoller.addView(this._instance as IClCapWidget);
         _pending = false;
         _winUtils.openWindow(this._window);
         this._window.x = this._flexWinLayer.width / 2 - this._window.width / 2;
         this._window.y = this._flexWinLayer.height / 2 - this._window.height / 2;
      }
   }
}
