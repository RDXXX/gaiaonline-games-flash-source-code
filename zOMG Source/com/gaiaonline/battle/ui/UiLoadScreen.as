package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.ConfigManager;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.objectPool.LoaderFactory;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.NetStatusEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.media.Video;
   import flash.net.NetConnection;
   import flash.net.NetStream;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public final class UiLoadScreen extends MovieClip
   {
       
      
      private var _timer:Timer = null;
      
      private var _ratio:Number = 1;
      
      private var _introDone:Boolean = false;
      
      private var _configManager:ConfigManager = null;
      
      private var _nc:NetConnection = null;
      
      private var _loadBackground:String = null;
      
      private var _ns:NetStream = null;
      
      private var _loader:Loader = null;
      
      private var _loaderFactory:LoaderFactory = null;
      
      private var _video:Video = null;
      
      public function UiLoadScreen(path:String, loadedExternally:Boolean)
      {
         super();
         _configManager = ConfigManager.getInstance();
         var loadScreenUrl:* = path;
         if(loadedExternally)
         {
            loadScreenUrl = loadScreenUrl + "thirdpartyloadscreen.jpg";
         }
         else
         {
            loadScreenUrl = loadScreenUrl + _configManager.loadScreen;
         }
         if(ConfigManager.getInstance().loadBackground)
         {
            _loadBackground = path + _configManager.loadBackground;
         }
         var timerFunction:Function = null;
         if(loadScreenUrl.indexOf(".flv") != -1)
         {
            timerFunction = onVideoTimer;
            loadVideo(loadScreenUrl);
         }
         else
         {
            timerFunction = onSwfTimer;
            loadContent(loadScreenUrl);
         }
         if(!isNaN(_configManager.loadScreenTimer))
         {
            _timer = new Timer(_configManager.loadScreenTimer,1);
            _timer.addEventListener(TimerEvent.TIMER,timerFunction,false,0,true);
            _timer.start();
         }
      }
      
      public function destroy() : void
      {
         if(_loaderFactory)
         {
            _loaderFactory.checkIn(_loader);
            _loader = null;
         }
      }
      
      private function onResizeVideo(evt:Event) : void
      {
         centerContent();
      }
      
      private function onVideoTimer(e:TimerEvent) : void
      {
         stopVideo();
      }
      
      private function onMetaData(item:Object) : void
      {
         _ratio = item.width / item.height;
         centerContent();
      }
      
      private function onNetStatus(status:NetStatusEvent) : void
      {
         if(status.info.code == "NetStream.Play.Stop")
         {
            stopVideo();
         }
      }
      
      private function centerContent() : void
      {
         var stageRatio:Number = this.stage.stageWidth / this.stage.stageHeight;
         if(stageRatio > _ratio)
         {
            _video.height = this.stage.stageHeight;
            _video.width = _video.height * _ratio;
         }
         else
         {
            _video.width = this.stage.stageWidth;
            _video.height = _video.width / _ratio;
         }
         _video.smoothing = true;
         _video.x = (this.stage.width - _video.width) * 0.5;
         _video.y = (this.stage.height - _video.height) * 0.5;
      }
      
      private function stopVideo() : void
      {
         stage.removeEventListener(Event.RESIZE,onResizeVideo);
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.END_INTRO,{}));
         if(_timer)
         {
            _timer.stop();
            _timer = null;
         }
         if(_loadBackground)
         {
            loadContent(_loadBackground);
         }
         if(_nc != null && _nc.connected)
         {
            _nc.close();
         }
         if(_ns != null)
         {
            _ns.close();
         }
         if(_video != null)
         {
            _video.clear();
         }
         _nc = null;
         _ns = null;
         this.removeChild(_video);
         _video = null;
      }
      
      private function onVideoAddedToStage(event:Event) : void
      {
         (event.target as IEventDispatcher).removeEventListener(event.type,arguments.callee);
         stage.addEventListener(Event.RESIZE,onResizeVideo,false,0,true);
      }
      
      private function onSwfTimer(e:TimerEvent) : void
      {
         onIntroDone();
      }
      
      private function onIntroAnimLoaded(event:Event) : void
      {
         _loader.content.addEventListener("INTRO_DONE",onIntroDone);
         (event.target as IEventDispatcher).removeEventListener(event.type,arguments.callee);
         if(String(event.target.contentType).indexOf("image") != -1)
         {
            onIntroAnimFinishedPlaying();
         }
         else
         {
            LoaderInfo(event.target).sharedEvents.addEventListener(Event.COMPLETE,onIntroAnimFinishedPlaying,false,0,false);
         }
         addChild(_loader);
      }
      
      private function onIntroDone(evt:Event = null) : void
      {
         if(_loader.content)
         {
            _loader.content.removeEventListener("INTRO_DONE",onIntroDone);
            if(!_introDone)
            {
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.END_INTRO,{}));
               _introDone = true;
            }
         }
         if(_timer)
         {
            _timer.stop();
            _timer = null;
         }
      }
      
      private function resize() : void
      {
         var w:Number = Math.min(Math.ceil(this.width),2880);
         var h:Number = Math.min(Math.ceil(this.height),2880);
         var bitmapData:BitmapData = new BitmapData(w,h,true,0);
         bitmapData.draw(this);
         var rect:Rectangle = bitmapData.getColorBoundsRect(4278190080,0,false);
         bitmapData.dispose();
         bitmapData = null;
         var scale:Number = this.stage.stageWidth / (rect.width - 1);
         this.scaleX = this.scaleY = scale;
         this.x = 0;
         this.y = this.stage.stageHeight / 2 - rect.height * scale / 2;
      }
      
      private function loadVideo(url:String) : void
      {
         _nc = new NetConnection();
         _nc.connect(null);
         var customClient:Object = new Object();
         customClient.onMetaData = onMetaData;
         _ns = new NetStream(_nc);
         _ns.addEventListener(NetStatusEvent.NET_STATUS,onNetStatus,false,0,true);
         _ns.client = customClient;
         _video = new Video();
         _video.addEventListener(Event.ADDED_TO_STAGE,onVideoAddedToStage,false,0,true);
         _video.attachNetStream(_ns);
         this.addChild(_video);
         _ns.play(url);
      }
      
      public function get content() : DisplayObject
      {
         if(_loader)
         {
            return _loader.content;
         }
         return null;
      }
      
      private function loadContent(url:String) : void
      {
         _loaderFactory = LoaderFactory.getInstance();
         _loader = _loaderFactory.checkOut();
         _loader.contentLoaderInfo.addEventListener(Event.COMPLETE,onIntroAnimLoaded,false,0,true);
         _loader.addEventListener(Event.ADDED_TO_STAGE,onIntroAddedToStage,false,0,true);
         _loader.load(new URLRequest(url));
      }
      
      private function onIntroAddedToStage(event:Event) : void
      {
         (event.target as IEventDispatcher).removeEventListener(event.type,arguments.callee);
         resize();
      }
      
      private function onIntroAnimFinishedPlaying(event:Event = null) : void
      {
         var content:DisplayObject = null;
         if(_loader)
         {
            if(_loader.content is MovieClip)
            {
               (_loader.content as MovieClip).stop();
            }
            else
            {
               content = _loader.content;
               content.width = this.stage.stageWidth;
               content.height = this.stage.stageHeight;
            }
         }
      }
   }
}
