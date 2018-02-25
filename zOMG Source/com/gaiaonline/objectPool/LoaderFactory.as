package com.gaiaonline.objectPool
{
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   
   public class LoaderFactory
   {
      
      private static var _instance:LoaderFactory = null;
       
      
      private var _loaderConfiguration:LoaderConfiguration = null;
      
      private var _loaderPool:ObjectPool = null;
      
      private const _loaderEventTypes:Array = [Event.ACTIVATE,Event.ADDED,Event.ADDED_TO_STAGE,Event.DEACTIVATE,Event.ENTER_FRAME,Event.REMOVED,Event.REMOVED_FROM_STAGE,Event.RENDER,Event.TAB_CHILDREN_CHANGE,Event.TAB_ENABLED_CHANGE,Event.TAB_INDEX_CHANGE,FocusEvent.FOCUS_IN,FocusEvent.FOCUS_OUT,FocusEvent.KEY_FOCUS_CHANGE,KeyboardEvent.KEY_DOWN,KeyboardEvent.KEY_UP,MouseEvent.CLICK,MouseEvent.DOUBLE_CLICK,MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_OUT,MouseEvent.MOUSE_OVER,MouseEvent.MOUSE_UP,MouseEvent.MOUSE_WHEEL,MouseEvent.ROLL_OUT,MouseEvent.ROLL_OVER];
      
      private const _loaderInfoEventTypes:Array = [Event.ACTIVATE,Event.COMPLETE,Event.DEACTIVATE,Event.INIT,Event.OPEN,Event.UNLOAD,HTTPStatusEvent.HTTP_STATUS,IOErrorEvent.IO_ERROR,ProgressEvent.PROGRESS];
      
      public function LoaderFactory(enforcer:SingletonEnforcer#44)
      {
         super();
         if(_instance || !enforcer)
         {
            throw new Error("LoaderFactory is a singleton!");
         }
         _loaderConfiguration = new LoaderConfiguration();
         _loaderPool = new ObjectPool(_loaderConfiguration,_loaderConfiguration,_loaderConfiguration);
      }
      
      public static function getInstance() : LoaderFactory
      {
         if(!_instance)
         {
            _instance = new LoaderFactory(new SingletonEnforcer#44());
         }
         return _instance;
      }
      
      public function checkOut() : Loader
      {
         return _loaderPool.checkOut(_loaderConfiguration) as Loader;
      }
      
      private function isLoaderSafe(loader:Loader) : Boolean
      {
         var eventType:String = null;
         if(loader.parent)
         {
            return false;
         }
         for each(eventType in _loaderEventTypes)
         {
            if(loader.hasEventListener(eventType))
            {
               return false;
            }
         }
         return true;
      }
      
      public function checkIn(loader:Loader) : Boolean
      {
         if(isLoaderInfoSafe(loader.contentLoaderInfo) && isLoaderSafe(loader))
         {
            return _loaderPool.checkIn(loader,_loaderConfiguration);
         }
         return false;
      }
      
      private function isLoaderInfoSafe(loaderInfo:LoaderInfo) : Boolean
      {
         var eventType:String = null;
         for each(eventType in _loaderInfoEventTypes)
         {
            if(loaderInfo.hasEventListener(eventType))
            {
               return false;
            }
         }
         return true;
      }
   }
}

import com.gaiaonline.objectPool.IObjectPoolCleanUp;
import com.gaiaonline.objectPool.IObjectPoolDeconstructor;
import com.gaiaonline.objectPool.IObjectPoolFactory;
import com.gaiaonline.objectPool.IObjectPoolInitializer;
import flash.display.Loader;

class LoaderConfiguration implements IObjectPoolFactory, IObjectPoolDeconstructor, IObjectPoolCleanUp, IObjectPoolInitializer
{
    
   
   function LoaderConfiguration()
   {
      super();
   }
   
   public function deconstruct(obj:*) : void
   {
      objectPoolCleanUp(obj);
   }
   
   public function objectPoolCleanUp(obj:*) : void
   {
      var loader:Loader = obj as Loader;
      if(loader)
      {
         loader.unload();
      }
   }
   
   public function initializeObjectPool(obj:*, args:Array = null) : void
   {
   }
   
   public function create() : *
   {
      return new Loader();
   }
}

class SingletonEnforcer#44
{
    
   
   function SingletonEnforcer#44()
   {
      super();
   }
}
