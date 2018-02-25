package com.gaiaonline.battle.moduleManagers
{
   import com.gaiaonline.battle.newactors.BaseActor;
   import com.gaiaonline.battle.ui.IAsyncCreationHandler;
   import com.gaiaonline.battle.ui.IFlexUiManager;
   import com.gaiaonline.battle.ui.IModuleManager;
   import com.gaiaonline.battle.ui.actorInfo.TargetInfoController;
   import com.gaiaonline.containers.GameWindowEvent;
   import com.gaiaonline.containers.GameWindowManager;
   import com.gaiaonline.containers.GameWindowSettings;
   import com.gaiaonline.containers.IGameWindowFactory;
   import com.gaiaonline.flexModulesAPIs.actorInfo.ITargetInfo;
   import com.gaiaonline.flexModulesAPIs.gatewayInterfaces.IBattleGateway;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import com.gskinner.utils.WeakReference;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public final class TargetInfoModuleManager implements IModuleManager, IAsyncCreationHandler
   {
       
      
      private var _path:String = null;
      
      private var _controller:TargetInfoController = null;
      
      private var _window:DisplayObjectContainer = null;
      
      private var _winUtils:WindowUtils = null;
      
      private var _pending:Boolean = false;
      
      private var _title:String = null;
      
      private var _windowManager:GameWindowManager = null;
      
      private var _flexUIManager:IFlexUiManager = null;
      
      private var _mostRecentlySelectedActorRef:WeakReference = null;
      
      private var _instance:DisplayObject = null;
      
      private var _windowFactory:IGameWindowFactory;
      
      public function TargetInfoModuleManager()
      {
         super();
      }
      
      private function open(e:GlobalEvent) : void
      {
         if(this._instance == null)
         {
            this.getModule();
         }
         else if(this._window)
         {
            if(this._mostRecentlySelectedActorRef)
            {
               this._controller.setActorInfo(BaseActor(this._mostRecentlySelectedActorRef.get()));
            }
            if(this._window && !_winUtils.isWindowOpen(this._window.parent) && this._mostRecentlySelectedActorRef && this._mostRecentlySelectedActorRef.get())
            {
               _winUtils.openWindow(this._window);
               this._window.addEventListener(GameWindowEvent.CLOSE,onCloseWindow,false,0,true);
            }
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
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.ACTOR_INFO_SET,onSetSelectedTarget);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.ACTOR_INFO_OPEN,open);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.ACTOR_INFO_CLOSE,close);
      }
      
      private function getModule() : void
      {
         if(!_pending)
         {
            this._controller = new TargetInfoController(this._flexUIManager,true);
            if(this._mostRecentlySelectedActorRef)
            {
               this._controller.setActorInfo(BaseActor(this._mostRecentlySelectedActorRef.get()));
            }
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
         this._flexUIManager.initializeContainer(this._instance);
         _window = this._windowFactory.createWindow(_title,false);
         _window.addChild(this._instance);
         var gws:GameWindowSettings = new GameWindowSettings(_title).setPos(10,10);
         gws.resizable = false;
         this._windowManager.add(_window,gws);
         this._controller.addView(this._instance as ITargetInfo);
         this.open(null);
         _pending = false;
      }
      
      private function close(e:GlobalEvent) : void
      {
         if(this._controller)
         {
            this._controller.setActorInfo(null);
            if(this._window && _winUtils.isWindowOpen(this._window.parent))
            {
               _winUtils.closeWindow(this._window);
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.CLEAR_SELECTED_TARGET,{"actor":null}));
            }
         }
      }
      
      private function onSetSelectedTarget(e:GlobalEvent) : void
      {
         this._mostRecentlySelectedActorRef = new WeakReference(e.data.actor as BaseActor);
      }
   }
}
