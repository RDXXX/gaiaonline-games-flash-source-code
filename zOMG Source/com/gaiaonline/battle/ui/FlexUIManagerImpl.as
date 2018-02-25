package com.gaiaonline.battle.ui
{
   import mx.collections.ArrayCollection;
   import mx.core.Container;
   import qs.caching.ContentCache;
   
   public class FlexUIManagerImpl implements IFlexUiManager
   {
       
      
      private var _modules:Object;
      
      public function FlexUIManagerImpl()
      {
         _modules = {};
         super();
      }
      
      public function getArrayCollection() : Object
      {
         return new ArrayCollection();
      }
      
      public function getModule(modulePath:String, handler:IAsyncCreationHandler) : void
      {
         if(!_modules[modulePath])
         {
            _modules[modulePath] = new ModuleRequestList(modulePath);
         }
         ModuleRequestList(this._modules[modulePath]).add(handler);
      }
      
      public function clearContentCache(cacheName:String) : void
      {
         var cacheContent:ContentCache = ContentCache.getCache(cacheName);
         cacheContent.clear();
      }
      
      public function initializeContainer(container:Object) : void
      {
         Container(container).initialize();
      }
   }
}

import com.gaiaonline.battle.ui.IAsyncCreationHandler;

class ModuleRequestList
{
    
   
   private var pendingRequests:Array;
   
   private var moduleEntry:ModuleEntry;
   
   function ModuleRequestList(modulePath:String)
   {
      pendingRequests = [];
      super();
      this.moduleEntry = new ModuleEntry(modulePath);
      this.moduleEntry.addEventListener(ModuleRequestList.READY,onModuleReady,false,0,true);
   }
   
   public function add(handler:IAsyncCreationHandler) : void
   {
      pendingRequests.push(handler);
      moduleEntry.getModule();
   }
   
   private function onModuleReady(e:ModuleLoadEvent) : void
   {
      var handler:IAsyncCreationHandler = null;
      for each(handler in pendingRequests)
      {
         if(handler)
         {
            handler.onCreation(moduleEntry.create(),moduleEntry.path);
         }
      }
      pendingRequests.length = 0;
   }
}

import flash.events.Event;

class ModuleLoadEvent extends Event
{
   
   public static const READY:String = "ready";
    
   
   public var moduleID:String;
   
   function ModuleLoadEvent(moduleID:String)
   {
      super(READY);
      this.moduleID = moduleID;
   }
}

import flash.display.DisplayObject;
import flash.events.EventDispatcher;
import mx.events.ModuleEvent;
import mx.modules.IModuleInfo;
import mx.modules.ModuleManager;

class ModuleEntry extends EventDispatcher
{
    
   
   private var moduleInfo:IModuleInfo;
   
   private var _path:String;
   
   function ModuleEntry(path:String)
   {
      super();
      this._path = path;
   }
   
   private function dispatchReadyEvent() : void
   {
      dispatchEvent(new ModuleLoadEvent(path));
   }
   
   public function getModule() : void
   {
      this.moduleInfo = ModuleManager.getModule("flexModules/" + path);
      this.moduleInfo.addEventListener(ModuleEvent.READY,onModuleReady,false,0,true);
      this.moduleInfo.load();
   }
   
   public function get path() : String
   {
      return this._path;
   }
   
   public function create() : DisplayObject
   {
      if(this.moduleInfo)
      {
         return DisplayObject(this.moduleInfo.factory.create());
      }
      throw "Module " + path + " invoked before load complete";
   }
   
   private function onModuleReady(e:ModuleEvent) : void
   {
      dispatchReadyEvent();
   }
}
