package mx.modules
{
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ModuleManager
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public function ModuleManager()
      {
         super();
      }
      
      public static function getModule(url:String) : IModuleInfo
      {
         return getSingleton().getModule(url);
      }
      
      private static function getSingleton() : Object
      {
         if(!ModuleManagerGlobals.managerSingleton)
         {
            ModuleManagerGlobals.managerSingleton = new ModuleManagerImpl();
         }
         return ModuleManagerGlobals.managerSingleton;
      }
      
      public static function getAssociatedFactory(object:Object) : IFlexModuleFactory
      {
         return getSingleton().getAssociatedFactory(object);
      }
   }
}

import flash.events.EventDispatcher;
import flash.system.ApplicationDomain;
import flash.system.SecurityDomain;
import flash.utils.ByteArray;
import mx.core.IFlexModuleFactory;
import mx.events.ModuleEvent;
import mx.modules.IModuleInfo;

class ModuleInfoProxy extends EventDispatcher implements IModuleInfo
{
    
   
   private var _data:Object;
   
   private var info:ModuleInfo;
   
   private var referenced:Boolean = false;
   
   function ModuleInfoProxy(info:ModuleInfo)
   {
      super();
      this.info = info;
      info.addEventListener(ModuleEvent.SETUP,moduleEventHandler,false,0,true);
      info.addEventListener(ModuleEvent.PROGRESS,moduleEventHandler,false,0,true);
      info.addEventListener(ModuleEvent.READY,moduleEventHandler,false,0,true);
      info.addEventListener(ModuleEvent.ERROR,moduleEventHandler,false,0,true);
      info.addEventListener(ModuleEvent.UNLOAD,moduleEventHandler,false,0,true);
   }
   
   public function get loaded() : Boolean
   {
      return info.loaded;
   }
   
   public function release() : void
   {
      if(referenced)
      {
         info.removeReference();
         referenced = false;
      }
   }
   
   public function get error() : Boolean
   {
      return info.error;
   }
   
   public function get factory() : IFlexModuleFactory
   {
      return info.factory;
   }
   
   public function publish(factory:IFlexModuleFactory) : void
   {
      info.publish(factory);
   }
   
   public function set data(value:Object) : void
   {
      _data = value;
   }
   
   public function get ready() : Boolean
   {
      return info.ready;
   }
   
   public function load(applicationDomain:ApplicationDomain = null, securityDomain:SecurityDomain = null, bytes:ByteArray = null) : void
   {
      var moduleEvent:ModuleEvent = null;
      info.resurrect();
      if(!referenced)
      {
         info.addReference();
         referenced = true;
      }
      if(info.error)
      {
         dispatchEvent(new ModuleEvent(ModuleEvent.ERROR));
      }
      else if(info.loaded)
      {
         if(info.setup)
         {
            dispatchEvent(new ModuleEvent(ModuleEvent.SETUP));
            if(info.ready)
            {
               moduleEvent = new ModuleEvent(ModuleEvent.PROGRESS);
               moduleEvent.bytesLoaded = info.size;
               moduleEvent.bytesTotal = info.size;
               dispatchEvent(moduleEvent);
               dispatchEvent(new ModuleEvent(ModuleEvent.READY));
            }
         }
      }
      else
      {
         info.load(applicationDomain,securityDomain,bytes);
      }
   }
   
   private function moduleEventHandler(event:ModuleEvent) : void
   {
      dispatchEvent(event);
   }
   
   public function get url() : String
   {
      return info.url;
   }
   
   public function get data() : Object
   {
      return _data;
   }
   
   public function get setup() : Boolean
   {
      return info.setup;
   }
   
   public function unload() : void
   {
      info.unload();
      info.removeEventListener(ModuleEvent.SETUP,moduleEventHandler);
      info.removeEventListener(ModuleEvent.PROGRESS,moduleEventHandler);
      info.removeEventListener(ModuleEvent.READY,moduleEventHandler);
      info.removeEventListener(ModuleEvent.ERROR,moduleEventHandler);
      info.removeEventListener(ModuleEvent.UNLOAD,moduleEventHandler);
   }
}

import flash.events.EventDispatcher;
import flash.system.ApplicationDomain;
import flash.utils.getQualifiedClassName;
import mx.core.IFlexModuleFactory;
import mx.modules.IModuleInfo;

class ModuleManagerImpl extends EventDispatcher
{
    
   
   private var moduleList:Object;
   
   function ModuleManagerImpl()
   {
      moduleList = {};
      super();
   }
   
   public function getModule(url:String) : IModuleInfo
   {
      var info:ModuleInfo = moduleList[url] as ModuleInfo;
      if(!info)
      {
         info = new ModuleInfo(url);
         moduleList[url] = info;
      }
      return new ModuleInfoProxy(info);
   }
   
   public function getAssociatedFactory(object:Object) : IFlexModuleFactory
   {
      var m:Object = null;
      var info:ModuleInfo = null;
      var domain:ApplicationDomain = null;
      var cls:Class = null;
      var className:String = getQualifiedClassName(object);
      for each(m in moduleList)
      {
         info = m as ModuleInfo;
         if(info.ready)
         {
            domain = info.applicationDomain;
            try
            {
               cls = Class(domain.getDefinition(className));
               if(object is cls)
               {
                  return info.factory;
               }
            }
            catch(error:Error)
            {
               continue;
            }
         }
      }
      return null;
   }
}

import flash.display.Loader;
import flash.events.ErrorEvent;
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IOErrorEvent;
import flash.events.ProgressEvent;
import flash.events.SecurityErrorEvent;
import flash.net.URLRequest;
import flash.system.ApplicationDomain;
import flash.system.LoaderContext;
import flash.system.Security;
import flash.system.SecurityDomain;
import flash.utils.ByteArray;
import flash.utils.Dictionary;
import mx.core.IFlexModuleFactory;
import mx.events.ModuleEvent;

class ModuleInfo extends EventDispatcher
{
    
   
   private var _error:Boolean = false;
   
   private var loader:Loader;
   
   private var factoryInfo:FactoryInfo;
   
   private var limbo:Dictionary;
   
   private var _loaded:Boolean = false;
   
   private var _ready:Boolean = false;
   
   private var numReferences:int = 0;
   
   private var _url:String;
   
   private var _setup:Boolean = false;
   
   function ModuleInfo(url:String)
   {
      super();
      _url = url;
   }
   
   private function clearLoader() : void
   {
      if(loader)
      {
         if(loader.contentLoaderInfo)
         {
            loader.contentLoaderInfo.removeEventListener(Event.INIT,initHandler);
            loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,completeHandler);
            loader.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS,progressHandler);
            loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,errorHandler);
            loader.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,errorHandler);
         }
         try
         {
            if(loader.content)
            {
               loader.content.removeEventListener("ready",readyHandler);
               loader.content.removeEventListener("error",moduleErrorHandler);
            }
         }
         catch(error:Error)
         {
         }
         if(_loaded)
         {
            try
            {
               loader.close();
            }
            catch(error:Error)
            {
            }
         }
         try
         {
            loader.unload();
         }
         catch(error:Error)
         {
         }
         loader = null;
      }
   }
   
   public function get size() : int
   {
      return !limbo && factoryInfo?int(factoryInfo.bytesTotal):0;
   }
   
   public function get loaded() : Boolean
   {
      return !limbo?Boolean(_loaded):false;
   }
   
   public function release() : void
   {
      if(_ready && !limbo)
      {
         limbo = new Dictionary(true);
         limbo[factoryInfo] = 1;
         factoryInfo = null;
      }
      else
      {
         unload();
      }
   }
   
   public function get error() : Boolean
   {
      return !limbo?Boolean(_error):false;
   }
   
   public function get factory() : IFlexModuleFactory
   {
      return !limbo && factoryInfo?factoryInfo.factory:null;
   }
   
   public function completeHandler(event:Event) : void
   {
      var moduleEvent:ModuleEvent = new ModuleEvent(ModuleEvent.PROGRESS,event.bubbles,event.cancelable);
      moduleEvent.bytesLoaded = loader.contentLoaderInfo.bytesLoaded;
      moduleEvent.bytesTotal = loader.contentLoaderInfo.bytesTotal;
      dispatchEvent(moduleEvent);
   }
   
   public function publish(factory:IFlexModuleFactory) : void
   {
      if(factoryInfo)
      {
         return;
      }
      if(_url.indexOf("published://") != 0)
      {
         return;
      }
      factoryInfo = new FactoryInfo();
      factoryInfo.factory = factory;
      _loaded = true;
      _setup = true;
      _ready = true;
      _error = false;
      dispatchEvent(new ModuleEvent(ModuleEvent.SETUP));
      dispatchEvent(new ModuleEvent(ModuleEvent.PROGRESS));
      dispatchEvent(new ModuleEvent(ModuleEvent.READY));
   }
   
   public function initHandler(event:Event) : void
   {
      var moduleEvent:ModuleEvent = null;
      factoryInfo = new FactoryInfo();
      try
      {
         factoryInfo.factory = loader.content as IFlexModuleFactory;
      }
      catch(error:Error)
      {
      }
      if(!factoryInfo.factory)
      {
         moduleEvent = new ModuleEvent(ModuleEvent.ERROR,event.bubbles,event.cancelable);
         moduleEvent.bytesLoaded = 0;
         moduleEvent.bytesTotal = 0;
         moduleEvent.errorText = "SWF is not a loadable module";
         dispatchEvent(moduleEvent);
         return;
      }
      loader.content.addEventListener("ready",readyHandler);
      loader.content.addEventListener("error",moduleErrorHandler);
      try
      {
         factoryInfo.applicationDomain = loader.contentLoaderInfo.applicationDomain;
      }
      catch(error:Error)
      {
      }
      _setup = true;
      dispatchEvent(new ModuleEvent(ModuleEvent.SETUP));
   }
   
   public function resurrect() : void
   {
      var f:* = null;
      if(!factoryInfo && limbo)
      {
         for(f in limbo)
         {
            factoryInfo = f as FactoryInfo;
         }
         limbo = null;
      }
      if(!factoryInfo)
      {
         if(_loaded)
         {
            dispatchEvent(new ModuleEvent(ModuleEvent.UNLOAD));
         }
         loader = null;
         _loaded = false;
         _setup = false;
         _ready = false;
         _error = false;
      }
   }
   
   public function errorHandler(event:ErrorEvent) : void
   {
      _error = true;
      var moduleEvent:ModuleEvent = new ModuleEvent(ModuleEvent.ERROR,event.bubbles,event.cancelable);
      moduleEvent.bytesLoaded = 0;
      moduleEvent.bytesTotal = 0;
      moduleEvent.errorText = event.text;
      dispatchEvent(moduleEvent);
   }
   
   public function get ready() : Boolean
   {
      return !limbo?Boolean(_ready):false;
   }
   
   private function loadBytes(applicationDomain:ApplicationDomain, bytes:ByteArray) : void
   {
      var c:LoaderContext = new LoaderContext();
      c.applicationDomain = !!applicationDomain?applicationDomain:new ApplicationDomain(ApplicationDomain.currentDomain);
      if("allowLoadBytesCodeExecution" in c)
      {
         c["allowLoadBytesCodeExecution"] = true;
      }
      loader = new Loader();
      loader.contentLoaderInfo.addEventListener(Event.INIT,initHandler);
      loader.contentLoaderInfo.addEventListener(Event.COMPLETE,completeHandler);
      loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,errorHandler);
      loader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,errorHandler);
      loader.loadBytes(bytes,c);
   }
   
   public function removeReference() : void
   {
      numReferences--;
      if(numReferences == 0)
      {
         release();
      }
   }
   
   public function addReference() : void
   {
      numReferences++;
   }
   
   public function progressHandler(event:ProgressEvent) : void
   {
      var moduleEvent:ModuleEvent = new ModuleEvent(ModuleEvent.PROGRESS,event.bubbles,event.cancelable);
      moduleEvent.bytesLoaded = event.bytesLoaded;
      moduleEvent.bytesTotal = event.bytesTotal;
      dispatchEvent(moduleEvent);
   }
   
   public function load(applicationDomain:ApplicationDomain = null, securityDomain:SecurityDomain = null, bytes:ByteArray = null) : void
   {
      if(_loaded)
      {
         return;
      }
      _loaded = true;
      limbo = null;
      if(bytes)
      {
         loadBytes(applicationDomain,bytes);
         return;
      }
      if(_url.indexOf("published://") == 0)
      {
         return;
      }
      var r:URLRequest = new URLRequest(_url);
      var c:LoaderContext = new LoaderContext();
      c.applicationDomain = !!applicationDomain?applicationDomain:new ApplicationDomain(ApplicationDomain.currentDomain);
      if(securityDomain != null && Security.sandboxType == Security.REMOTE)
      {
         c.securityDomain = securityDomain;
      }
      loader = new Loader();
      loader.contentLoaderInfo.addEventListener(Event.INIT,initHandler);
      loader.contentLoaderInfo.addEventListener(Event.COMPLETE,completeHandler);
      loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,progressHandler);
      loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,errorHandler);
      loader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,errorHandler);
      loader.load(r,c);
   }
   
   public function get url() : String
   {
      return _url;
   }
   
   public function get applicationDomain() : ApplicationDomain
   {
      return !limbo && factoryInfo?factoryInfo.applicationDomain:null;
   }
   
   public function moduleErrorHandler(event:Event) : void
   {
      var errorEvent:ModuleEvent = null;
      _ready = true;
      factoryInfo.bytesTotal = loader.contentLoaderInfo.bytesTotal;
      clearLoader();
      if(event is ModuleEvent)
      {
         errorEvent = ModuleEvent(event);
      }
      else
      {
         errorEvent = new ModuleEvent(ModuleEvent.ERROR);
      }
      dispatchEvent(errorEvent);
   }
   
   public function readyHandler(event:Event) : void
   {
      _ready = true;
      factoryInfo.bytesTotal = loader.contentLoaderInfo.bytesTotal;
      var moduleEvent:ModuleEvent = new ModuleEvent(ModuleEvent.READY);
      moduleEvent.bytesLoaded = loader.contentLoaderInfo.bytesLoaded;
      moduleEvent.bytesTotal = loader.contentLoaderInfo.bytesTotal;
      clearLoader();
      dispatchEvent(moduleEvent);
   }
   
   public function get setup() : Boolean
   {
      return !limbo?Boolean(_setup):false;
   }
   
   public function unload() : void
   {
      clearLoader();
      if(_loaded)
      {
         dispatchEvent(new ModuleEvent(ModuleEvent.UNLOAD));
      }
      limbo = null;
      factoryInfo = null;
      _loaded = false;
      _setup = false;
      _ready = false;
      _error = false;
   }
}

import flash.system.ApplicationDomain;
import mx.core.IFlexModuleFactory;

class FactoryInfo
{
    
   
   public var bytesTotal:int = 0;
   
   public var factory:IFlexModuleFactory;
   
   public var applicationDomain:ApplicationDomain;
   
   function FactoryInfo()
   {
      super();
   }
}
