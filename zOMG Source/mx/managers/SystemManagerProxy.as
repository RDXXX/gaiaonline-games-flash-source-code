package mx.managers
{
   import flash.display.DisplayObject;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import mx.core.IFlexModuleFactory;
   import mx.core.ISWFBridgeGroup;
   import mx.core.ISWFBridgeProvider;
   import mx.core.mx_internal;
   import mx.events.SWFBridgeEvent;
   import mx.utils.NameUtil;
   import mx.utils.SecurityUtil;
   
   use namespace mx_internal;
   
   public class SystemManagerProxy extends SystemManager
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var _systemManager:ISystemManager;
      
      public function SystemManagerProxy(systemManager:ISystemManager)
      {
         super();
         _systemManager = systemManager;
         topLevel = true;
         super.addEventListener(MouseEvent.MOUSE_DOWN,proxyMouseDownHandler,true);
      }
      
      override public function create(... params) : Object
      {
         return IFlexModuleFactory(_systemManager).create.apply(this,params);
      }
      
      public function get systemManager() : ISystemManager
      {
         return _systemManager;
      }
      
      override public function activate(f:IFocusManagerContainer) : void
      {
         var mutualTrust:Boolean = false;
         var bridgeEvent:SWFBridgeEvent = null;
         var bridge:IEventDispatcher = !!_systemManager.swfBridgeGroup?_systemManager.swfBridgeGroup.parentBridge:null;
         if(bridge)
         {
            mutualTrust = SecurityUtil.hasMutualTrustBetweenParentAndChild(ISWFBridgeProvider(_systemManager));
            bridgeEvent = new SWFBridgeEvent(SWFBridgeEvent.BRIDGE_WINDOW_ACTIVATE,false,false,{
               "notifier":bridge,
               "window":(!!mutualTrust?this:NameUtil.displayObjectToString(this))
            });
            _systemManager.getSandboxRoot().dispatchEvent(bridgeEvent);
         }
      }
      
      override public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false) : void
      {
         super.addEventListener(type,listener,useCapture,priority,useWeakReference);
         _systemManager.addEventListener(type,listener,useCapture,priority,useWeakReference);
      }
      
      public function deactivateByProxy(f:IFocusManagerContainer) : void
      {
         if(f)
         {
            f.focusManager.deactivate();
         }
      }
      
      override public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         super.removeEventListener(type,listener,useCapture);
         _systemManager.removeEventListener(type,listener,useCapture);
      }
      
      override public function get document() : Object
      {
         return findFocusManagerContainer(this);
      }
      
      public function activateByProxy(f:IFocusManagerContainer) : void
      {
         super.activate(f);
      }
      
      override public function removeChildBridge(bridge:IEventDispatcher) : void
      {
         _systemManager.removeChildBridge(bridge);
      }
      
      override public function get swfBridgeGroup() : ISWFBridgeGroup
      {
         return _systemManager.swfBridgeGroup;
      }
      
      override public function addChildBridge(bridge:IEventDispatcher, owner:DisplayObject) : void
      {
         _systemManager.addChildBridge(bridge,owner);
      }
      
      override public function useSWFBridge() : Boolean
      {
         return _systemManager.useSWFBridge();
      }
      
      override public function get screen() : Rectangle
      {
         return _systemManager.screen;
      }
      
      override public function set swfBridgeGroup(bridgeGroup:ISWFBridgeGroup) : void
      {
      }
      
      private function proxyMouseDownHandler(event:MouseEvent) : void
      {
         if(findFocusManagerContainer(this))
         {
            SystemManager(_systemManager).dispatchActivatedWindowEvent(this);
         }
      }
      
      override public function deactivate(f:IFocusManagerContainer) : void
      {
         var mutualTrust:Boolean = false;
         var bridgeEvent:SWFBridgeEvent = null;
         var sm:ISystemManager = _systemManager;
         var bridge:IEventDispatcher = !!sm.swfBridgeGroup?sm.swfBridgeGroup.parentBridge:null;
         if(bridge)
         {
            mutualTrust = SecurityUtil.hasMutualTrustBetweenParentAndChild(ISWFBridgeProvider(_systemManager));
            bridgeEvent = new SWFBridgeEvent(SWFBridgeEvent.BRIDGE_WINDOW_DEACTIVATE,false,false,{
               "notifier":bridge,
               "window":(!!mutualTrust?this:NameUtil.displayObjectToString(this))
            });
            _systemManager.getSandboxRoot().dispatchEvent(bridgeEvent);
         }
      }
      
      override public function set document(value:Object) : void
      {
      }
      
      override public function getVisibleApplicationRect(bounds:Rectangle = null) : Rectangle
      {
         return _systemManager.getVisibleApplicationRect(bounds);
      }
      
      override public function getDefinitionByName(name:String) : Object
      {
         return _systemManager.getDefinitionByName(name);
      }
   }
}
