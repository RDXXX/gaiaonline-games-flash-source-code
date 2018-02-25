package com.gaiaonline.battle.moduleManagers
{
   import com.gaiaonline.battle.ui.AdminPanelController;
   import com.gaiaonline.battle.ui.IAsyncCreationHandler;
   import com.gaiaonline.battle.ui.IFlexUiManager;
   import com.gaiaonline.battle.ui.IModuleManager;
   import com.gaiaonline.containers.GameWindowEvent;
   import com.gaiaonline.containers.GameWindowManager;
   import com.gaiaonline.containers.GameWindowSettings;
   import com.gaiaonline.containers.IGameWindowFactory;
   import com.gaiaonline.flexModulesAPIs.adminpanel.IAdminPanelModule;
   import com.gaiaonline.flexModulesAPIs.gatewayInterfaces.IBattleGateway;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class AdminPanelModuleManager implements IModuleManager, IAsyncCreationHandler
   {
       
      
      private var _path:String = null;
      
      private var _gateway:IBattleGateway = null;
      
      private var _window:DisplayObjectContainer = null;
      
      private var _windowFactory:IGameWindowFactory;
      
      private var _winUtils:WindowUtils = null;
      
      private var _pending:Boolean = false;
      
      private var _title:String = null;
      
      private var _flexUIManager:IFlexUiManager = null;
      
      private var _windowManager:GameWindowManager = null;
      
      private var _instance:DisplayObject = null;
      
      private var _controller:AdminPanelController = null;
      
      public function AdminPanelModuleManager()
      {
         super();
      }
      
      private function open(e:GlobalEvent) : void
      {
         if(this._instance == null)
         {
            this.getModule();
         }
         else if(this._window && !_winUtils.isWindowOpen(this._window.parent))
         {
            _winUtils.openWindow(this._window);
            this._window.addEventListener(GameWindowEvent.CLOSE,onCloseWindow,false,0,true);
         }
      }
      
      public function init(path:String, title:String, gateway:IBattleGateway, flexWinLayer:DisplayObjectContainer, flexUIManager:IFlexUiManager, windowManager:GameWindowManager, windowFactory:IGameWindowFactory, params:XML = null) : void
      {
         _winUtils = new WindowUtils(flexWinLayer);
         _path = path;
         _title = title;
         _flexUIManager = flexUIManager;
         _windowManager = windowManager;
         _windowFactory = windowFactory;
         _gateway = gateway;
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.OPEN_ADMIN_PANEL,open);
      }
      
      private function getModule() : void
      {
         if(!_pending)
         {
            this._flexUIManager.getModule(_path,this);
            _pending = true;
         }
      }
      
      private function onCloseWindow(e:GameWindowEvent) : void
      {
         close(null);
      }
      
      public function onCreation(instance:Object, modulePath:String) : void
      {
         this._instance = DisplayObject(instance);
         this._controller = new AdminPanelController(this._gateway);
         this._flexUIManager.initializeContainer(this._instance);
         _window = this._windowFactory.createWindow(_title,true);
         _window.addChild(this._instance);
         var gws:GameWindowSettings = new GameWindowSettings(_title).setPos(10,10);
         gws.resizable = true;
         this._windowManager.add(_window,gws);
         this._controller.addView(this._instance as IAdminPanelModule);
         _pending = false;
         open(null);
      }
      
      private function close(e:GlobalEvent) : void
      {
         if(this._window && _winUtils.isWindowOpen(this._window.parent))
         {
            _winUtils.closeWindow(this._window);
         }
      }
   }
}
