package com.gaiaonline.battle.map
{
   import com.gaiaonline.battle.ApplicationInterfaces.IFileVersionManager;
   import com.gaiaonline.battle.ItemLoadManager.EventManager;
   import com.gaiaonline.battle.ItemLoadManager.EventManagerData;
   import com.gaiaonline.battle.StepLoader;
   import com.gaiaonline.events.ProgressEventManager;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.objectPool.LoaderFactory;
   import com.gaiaonline.platform.gateway.IAreaLoadingConnector;
   import com.gaiaonline.platform.gateway.IAreaLoadingHandler;
   import com.gaiaonline.platform.map.IMapSoundLoader;
   import com.gaiaonline.platform.map.IMapSoundLoaderHandler;
   import com.gaiaonline.platform.map.MapFilesFactory;
   import com.gaiaonline.utils.factories.LoaderContextFactory;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class MapLoadManager extends EventDispatcher implements IAreaLoadingHandler, IMapSoundLoaderHandler
   {
       
      
      private var _progressManager:ProgressEventManager;
      
      private var _soundManager:IMapSoundLoader = null;
      
      private var _serverZoneReady:Boolean = false;
      
      private var _clientZoneReady:Boolean = false;
      
      private var _baseUrl:String = null;
      
      private var _filePath:String = null;
      
      private var _listeningForServerZoneProgress:Boolean = false;
      
      private var _currentLoadProgressObj:Object;
      
      private var _fileVersionManager:IFileVersionManager = null;
      
      private var _loader:Loader = null;
      
      public function MapLoadManager(soundManager:IMapSoundLoader, baseUrl:String, fileVersionManager:IFileVersionManager, areaLoadingConnector:IAreaLoadingConnector, progressManager:ProgressEventManager)
      {
         super();
         _soundManager = soundManager;
         _baseUrl = baseUrl;
         _fileVersionManager = fileVersionManager;
         this._progressManager = progressManager;
         areaLoadingConnector.registerForAreaLoadingEvents(this);
      }
      
      private function loadMainSwf() : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MAP_LOAD_START,null));
         var mapLoader:Loader = LoaderFactory.getInstance().checkOut();
         mapLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,onMapLoaded);
         mapLoader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,onMapLoadProgress);
         mapLoader.contentLoaderInfo.addEventListener(Event.UNLOAD,onMapUnload);
         mapLoader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onMapLoadError);
         var vUrl:String = "?v=" + "maps/" + this._fileVersionManager.getClientVersion("maps/" + this._filePath.toLowerCase() + ".swf");
         var lc:LoaderContext = LoaderContextFactory.getInstance().getLoaderContext();
         mapLoader.load(new URLRequest(this._baseUrl + "maps/" + this._filePath.toLowerCase() + ".swf" + vUrl),lc);
      }
      
      private function onMapLoadError(evt:IOErrorEvent) : void
      {
         trace("onMapLoadError :" + evt.text,10);
         LoaderInfo(evt.target).loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,onMapLoaded);
         LoaderInfo(evt.target).loader.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS,onMapLoadProgress);
         LoaderInfo(evt.target).loader.contentLoaderInfo.removeEventListener(Event.UNLOAD,onMapUnload);
         LoaderInfo(evt.target).loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onMapLoadError);
      }
      
      private function loadSounds(fileName:String) : void
      {
         this._progressManager.addProgressObject(this,"Loading Map Sound",10);
         _soundManager.registerForLoadEvents(this);
         var loadMapSoundsUrl:* = this._baseUrl + "sounds/" + fileName.toLowerCase() + "_sounds.swf";
         _soundManager.loadSoundFile(loadMapSoundsUrl);
      }
      
      private function onDependenciesLoaded(evt:Event) : void
      {
         loadMainSwf();
      }
      
      public function onSoundLoadComplete() : void
      {
         startLoadMap();
      }
      
      private function onMapLoadProgress(evt:ProgressEvent) : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new ProgressEvent(GlobalEvent.MAP_LOADPROGRESS,false,false,evt.bytesLoaded,evt.bytesTotal));
         this.dispatchEvent(new ProgressEvent(ProgressEvent.PROGRESS,false,false,evt.bytesLoaded,evt.bytesTotal));
      }
      
      private function tryToDispatchCompleteEvent() : void
      {
         if(_serverZoneReady && _clientZoneReady)
         {
            _clientZoneReady = false;
            _serverZoneReady = false;
            dispatchEvent(new MapLoadManagerEvent(MapLoadManagerEvent.COMPLETE,_loader.content as MovieClip));
            this.dispatchEvent(new Event(Event.COMPLETE));
            LoaderFactory.getInstance().checkIn(_loader);
            _loader = null;
         }
         else if(!_serverZoneReady && _clientZoneReady)
         {
            _listeningForServerZoneProgress = true;
            dispatchZoneProgress(0);
         }
      }
      
      public function onSoundIOError() : void
      {
         startLoadMap();
      }
      
      private function dispatchZoneProgress(progress:Number) : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new ProgressEvent(GlobalEvent.MAP_SERVER_ZONE_PROGRESS,false,false,progress,100));
      }
      
      private function onDependenciesLoadedProgress(evt:ProgressEvent) : void
      {
         if(this._currentLoadProgressObj == null)
         {
            this._currentLoadProgressObj = evt.target;
         }
         if(this._currentLoadProgressObj == evt.target)
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new ProgressEvent(GlobalEvent.MAP_LOADPROGRESS,false,false,evt.bytesLoaded,evt.bytesTotal));
            this.dispatchEvent(new ProgressEvent(ProgressEvent.PROGRESS,false,false,evt.bytesLoaded,evt.bytesTotal));
         }
         if(evt.bytesLoaded >= evt.bytesTotal)
         {
            this._currentLoadProgressObj = null;
         }
      }
      
      private function startLoadMap() : void
      {
         this._progressManager.addProgressObject(this,"Loading Map",10);
         _soundManager.unregisterForLoadEvents(this);
         var dependencies:Array = MapFilesFactory.getInstance().mapFiles.getDependencies(_filePath.toLowerCase() + ".swf");
         if(dependencies && dependencies.length > 0)
         {
            loadDependencies(dependencies);
         }
         else
         {
            loadMainSwf();
         }
      }
      
      private function onMapLoaded(event:Event) : void
      {
         var loaderInfo:LoaderInfo = LoaderInfo(event.target);
         loaderInfo.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,onMapLoaded);
         loaderInfo.loader.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS,onMapLoadProgress);
         loaderInfo.loader.contentLoaderInfo.removeEventListener(Event.UNLOAD,onMapUnload);
         loaderInfo.loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onMapLoadError);
         _loader = loaderInfo.loader;
         _clientZoneReady = true;
         tryToDispatchCompleteEvent();
      }
      
      private function onMapUnload(evt:Event) : void
      {
         trace("onMapUnload");
      }
      
      public function onAreaLoadProgress(percent:Number) : void
      {
         if(_listeningForServerZoneProgress)
         {
            dispatchZoneProgress(percent);
         }
      }
      
      public function startLoad(zone:String) : void
      {
         _filePath = MapFilesFactory.getInstance().mapFiles.getZoneFile(zone);
         var img:String = "";
         var titleImgUrl:String = MapFilesFactory.getInstance().mapFiles.getZoneTitleImg(zone);
         var splashScreens:Array = MapFilesFactory.getInstance().mapFiles.getZoneImgs(zone);
         if(splashScreens)
         {
            img = splashScreens[Math.floor(Math.random() * splashScreens.length)];
         }
         var eventData:Object = {
            "name":MapFilesFactory.getInstance().mapFiles.getZoneName(zone),
            "splashScreen":this._baseUrl + img,
            "titleImgUrl":this._baseUrl + titleImgUrl
         };
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MAP_START_LOAD,eventData));
         loadSounds(_filePath);
      }
      
      public function onAreaLoadComplete() : void
      {
         _listeningForServerZoneProgress = false;
         _serverZoneReady = true;
         tryToDispatchCompleteEvent();
      }
      
      private function loadDependencies(list:Array) : void
      {
         var url:String = null;
         var evm:EventManager = null;
         var ll:Object = null;
         var l:Loader = null;
         var lc:LoaderContext = null;
         this._progressManager.addProgressObject(this,"Loading Map Dependencies",10);
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MAP_DEPENDENCIES_LOAD_START,null));
         var events:Array = new Array();
         var loaders:Array = new Array();
         for each(url in list)
         {
            l = new Loader();
            l.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,onDependenciesLoadedProgress);
            loaders.push({
               "loader":l,
               "url":url
            });
            events.push(new EventManagerData(l.contentLoaderInfo,Event.COMPLETE));
         }
         evm = new EventManager(events);
         evm.addEventListener(Event.COMPLETE,onDependenciesLoaded);
         for each(ll in loaders)
         {
            lc = LoaderContextFactory.getInstance().getLoaderContext();
            lc.applicationDomain = ApplicationDomain.currentDomain;
            StepLoader.add(ll.loader,new URLRequest(this._baseUrl + ll.url),lc);
         }
      }
      
      public function onSoundProgress(event:ProgressEvent) : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new ProgressEvent(GlobalEvent.MAP_LOADPROGRESS,false,false,event.bytesLoaded,event.bytesTotal));
         this.dispatchEvent(new ProgressEvent(ProgressEvent.PROGRESS,false,false,event.bytesLoaded,event.bytesTotal));
      }
   }
}
