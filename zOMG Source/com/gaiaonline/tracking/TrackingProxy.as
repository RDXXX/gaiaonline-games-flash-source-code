package com.gaiaonline.tracking
{
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.objectPool.LoaderFactory;
   import com.gaiaonline.platform.ITrackingManager;
   import com.gaiaonline.utils.factories.LoaderContextFactory;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   
   public class TrackingProxy implements ITrackingManager
   {
       
      
      private var _currentCampaign:String = null;
      
      private var _prefix:String = "";
      
      private var _queue:Array;
      
      private var _trackingManager:DisplayObject = null;
      
      private var _trackingManagerLoader:Loader = null;
      
      public function TrackingProxy(baseUrl:String)
      {
         _queue = [];
         super();
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.TRACKING_PREFIX_EVENT,onTrackingPrefixEvent,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.TRACKING_EVENT,onTrackingEvent,false,0,true);
         _trackingManagerLoader = LoaderFactory.getInstance().checkOut();
         _trackingManagerLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,onTrackingManagerLoaded,false,0,true);
         _trackingManagerLoader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onTrackingManagerLoadFailure,false,0,true);
         var loadContext:LoaderContext = LoaderContextFactory.getInstance().getLoaderContext();
         _trackingManagerLoader.load(new URLRequest(baseUrl + "TrackingManager.swf"),loadContext);
      }
      
      public function set campaign(c:String) : void
      {
         if(_trackingManager)
         {
            _trackingManager["campaign"] = c;
         }
         else
         {
            _queue.push(new QueuedObject(this,"campaign",arguments,true));
            _currentCampaign = c;
         }
      }
      
      private function onTrackingPrefixEvent(event:GlobalEvent) : void
      {
         var prefix:String = event.data as String;
         if(prefix)
         {
            _prefix = prefix;
         }
      }
      
      private function emptyQueue() : void
      {
         var queuedObject:QueuedObject = null;
         if(_trackingManager)
         {
            for each(queuedObject in _queue)
            {
               queuedObject.execute();
            }
            _queue = null;
         }
      }
      
      private function onTrackingEvent(event:GlobalEvent) : void
      {
         track(event.data as String);
      }
      
      private function onTrackingManagerLoadFailure(event:Event) : void
      {
         throw new Error("TrackingManager Failed to load");
      }
      
      public function get campaign() : String
      {
         if(_trackingManager)
         {
            return _trackingManager["campaign"];
         }
         return _currentCampaign;
      }
      
      public function track(pageName:String) : void
      {
         if(_trackingManager)
         {
            _trackingManager["track"](_prefix + pageName);
         }
         else
         {
            _queue.push(new QueuedObject(this,"track",arguments,false));
         }
      }
      
      private function onTrackingManagerLoaded(event:Event) : void
      {
         var loadInfo:LoaderInfo = event.target as LoaderInfo;
         _trackingManager = loadInfo.content;
         if(!_trackingManager)
         {
            throw new Error("Incompatible Tracking Manager Loaded");
         }
         loadInfo.removeEventListener(event.type,arguments.callee);
         LoaderFactory.getInstance().checkIn(_trackingManagerLoader);
         emptyQueue();
      }
   }
}

import com.gaiaonline.tracking.TrackingProxy;

class QueuedObject
{
    
   
   private var _func:String = null;
   
   private var _isSetter:Boolean = false;
   
   private var _reference:TrackingProxy;
   
   private var _args:Array = null;
   
   function QueuedObject(reference:TrackingProxy, functionString:String, args:Array, isSetter:Boolean = false)
   {
      super();
      _reference = reference;
      _func = functionString;
      _args = args;
      _isSetter = isSetter;
   }
   
   public function execute() : void
   {
      if(_isSetter)
      {
         _reference[_func] = _args[0];
      }
      else
      {
         (_reference[_func] as Function).apply(this,_args);
      }
   }
}
