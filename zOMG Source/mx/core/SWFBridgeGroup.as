package mx.core
{
   import flash.events.IEventDispatcher;
   import flash.utils.Dictionary;
   import mx.managers.ISystemManager;
   
   use namespace mx_internal;
   
   public class SWFBridgeGroup implements ISWFBridgeGroup
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var _parentBridge:IEventDispatcher;
      
      private var _childBridges:Dictionary;
      
      private var _groupOwner:ISystemManager;
      
      public function SWFBridgeGroup(owner:ISystemManager)
      {
         super();
         _groupOwner = owner;
      }
      
      public function getChildBridgeProvider(bridge:IEventDispatcher) : ISWFBridgeProvider
      {
         if(!_childBridges)
         {
            return null;
         }
         return ISWFBridgeProvider(_childBridges[bridge]);
      }
      
      public function removeChildBridge(bridge:IEventDispatcher) : void
      {
         var iter:* = null;
         if(!_childBridges || !bridge)
         {
            return;
         }
         for(iter in _childBridges)
         {
            if(iter == bridge)
            {
               delete _childBridges[iter];
            }
         }
      }
      
      public function get parentBridge() : IEventDispatcher
      {
         return _parentBridge;
      }
      
      public function containsBridge(bridge:IEventDispatcher) : Boolean
      {
         var iter:* = null;
         if(parentBridge && parentBridge == bridge)
         {
            return true;
         }
         for(iter in _childBridges)
         {
            if(bridge == iter)
            {
               return true;
            }
         }
         return false;
      }
      
      public function set parentBridge(bridge:IEventDispatcher) : void
      {
         _parentBridge = bridge;
      }
      
      public function addChildBridge(bridge:IEventDispatcher, bridgeProvider:ISWFBridgeProvider) : void
      {
         if(!_childBridges)
         {
            _childBridges = new Dictionary();
         }
         _childBridges[bridge] = bridgeProvider;
      }
      
      public function getChildBridges() : Array
      {
         var iter:* = null;
         var bridges:Array = [];
         for(iter in _childBridges)
         {
            bridges.push(iter);
         }
         return bridges;
      }
   }
}
