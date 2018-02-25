package com.gaiaonline.battle
{
   import com.gaiaonline.objectPool.LoaderFactory;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.Timer;
   
   public class StepLoader
   {
      
      private static var timeOut:int = 0;
      
      private static var s_pendingLoaderInfos:Object = {};
      
      private static var _nextFrameTimer:Timer = null;
      
      private static var _pendingRemovees:Array = [];
      
      private static var list:Array = new Array();
       
      
      public function StepLoader()
      {
         super();
      }
      
      private static function onLoadError(evt:Event) : void
      {
         var loaderInfo:LoaderInfo = LoaderInfo(evt.target);
         remove(loaderInfo);
         try
         {
            LoaderFactory.getInstance().checkIn(loaderInfo.loader);
         }
         catch(error:Error)
         {
         }
      }
      
      private static function remove(loaderInfo:LoaderInfo) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,onComplete);
         loaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onLoadError);
         loaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,onLoadError);
         loaderInfo.removeEventListener(IOErrorEvent.NETWORK_ERROR,onLoadError);
         loaderInfo.removeEventListener(IOErrorEvent.VERIFY_ERROR,onLoadError);
         loaderInfo.removeEventListener(IOErrorEvent.DISK_ERROR,onLoadError);
         _pendingRemovees.push(loaderInfo);
         if(!_nextFrameTimer)
         {
            _nextFrameTimer = new Timer(1);
            _nextFrameTimer.addEventListener(TimerEvent.TIMER,removeTimeout);
         }
         _nextFrameTimer.start();
      }
      
      private static function removeLoaderInfoReference(loaderInfo:LoaderInfo) : void
      {
         var swf:* = null;
         for(swf in s_pendingLoaderInfos)
         {
            if(LoaderEntry(s_pendingLoaderInfos[swf]).contentLoaderInfo == loaderInfo)
            {
               if(!LoaderEntry(s_pendingLoaderInfos[swf]).holdForever)
               {
                  s_pendingLoaderInfos[swf] = null;
                  delete s_pendingLoaderInfos[swf];
               }
               break;
            }
         }
      }
      
      public static function add(loader:Loader, request:URLRequest, context:LoaderContext = null, holdReferenceForever:Boolean = false) : void
      {
         s_pendingLoaderInfos[request.url] = new LoaderEntry(loader.contentLoaderInfo,holdReferenceForever);
         loader.contentLoaderInfo.addEventListener(Event.COMPLETE,onComplete);
         loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onLoadError);
         loader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onLoadError);
         loader.load(request,context);
      }
      
      private static function onComplete(evt:Event) : void
      {
         var loaderInfo:LoaderInfo = LoaderInfo(evt.target);
         remove(loaderInfo);
         try
         {
            LoaderFactory.getInstance().checkIn(loaderInfo.loader);
         }
         catch(error:Error)
         {
         }
      }
      
      private static function removeTimeout(unused:TimerEvent) : void
      {
         _nextFrameTimer.stop();
         while(_pendingRemovees.length)
         {
            removeLoaderInfoReference(LoaderInfo(_pendingRemovees.pop()));
         }
      }
   }
}

import flash.display.LoaderInfo;

class LoaderEntry
{
    
   
   public var holdForever:Boolean;
   
   public var contentLoaderInfo:LoaderInfo;
   
   function LoaderEntry(_contentLoaderInfo:LoaderInfo, _holdForever:Boolean)
   {
      super();
      contentLoaderInfo = _contentLoaderInfo;
      holdForever = _holdForever;
   }
}
