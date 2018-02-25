package com.gaiaonline.battle.ui
{
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.objectPool.LoaderFactory;
   import com.gaiaonline.utils.VisManagerSingleParent;
   import com.gaiaonline.utils.factories.ILoaderContextFactory;
   import com.gaiaonline.utils.factories.LoaderContextFactory;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.NetStatusEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Rectangle;
   import flash.media.Video;
   import flash.net.NetConnection;
   import flash.net.NetStream;
   import flash.net.URLRequest;
   
   public class UiBackImg extends MovieClip
   {
      
      public static var INTRO_ANIM_COMPLETE:String = "intro_anim_complete";
       
      
      private var stream:NetStream;
      
      private var container:Sprite;
      
      public var mcBuff:MovieClip;
      
      private var titleContainer:Sprite;
      
      private var _mcBuffIndex:int = 0;
      
      private var video:Video;
      
      private var _version:String = "";
      
      private var vContainer:Sprite;
      
      public var mcVer:Sprite;
      
      private var videoDuration:Number = 85;
      
      private var bg:Sprite;
      
      private var connection:NetConnection;
      
      private var visManager:VisManagerSingleParent = null;
      
      private var videoURL:String;
      
      private var _introAnimComplete:Boolean = false;
      
      public var btnSkip:SimpleButton;
      
      public function UiBackImg()
      {
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.MAP_START_LOAD,onMapStartLoad,false,0,true);
         super();
         this.mcBuff.gotoAndStop(1);
         this.mcBuff.omg.omgAnim.halt();
         this.vContainer = new Sprite();
         this.addChildAt(this.vContainer,0);
         this.container = new Sprite();
         this.addChildAt(this.container,0);
         this.bg = new Sprite();
         this.bg.graphics.beginFill(0);
         this.bg.graphics.drawRect(0,0,10,10);
         this.bg.graphics.endFill();
         this.addChildAt(this.bg,0);
         this.titleContainer = new Sprite();
         this.addChild(this.titleContainer);
         this.btnSkip.addEventListener(MouseEvent.CLICK,onSkipClick,false,0,true);
         this.addEventListener(Event.ADDED_TO_STAGE,onAddedToStage,false,0,true);
         this.addEventListener(Event.REMOVED_FROM_STAGE,onRemoveFromStage,false,0,true);
         this.visManager = new VisManagerSingleParent(this);
         hideBuffering();
         this.setBtnSkipVisible(false);
         this.setvContainerVisible(false);
      }
      
      private function hideBuffering() : void
      {
         if(this.hasEventListener(Event.ENTER_FRAME))
         {
            this.removeEventListener(Event.ENTER_FRAME,onFrame);
         }
         this.setBufferingVisible(false);
         if(this.mcBuff)
         {
            this.mcBuff.omg.omgAnim.halt();
         }
      }
      
      public function addBackImg(dispObj:DisplayObject) : void
      {
         container.addChild(dispObj);
         resize();
      }
      
      private function onImgLoaded(evt:Event) : void
      {
         var loadInfo:LoaderInfo = LoaderInfo(evt.target);
         this.container.addChildAt(loadInfo.content,0);
         this.resize();
         LoaderInfo(evt.target).sharedEvents.addEventListener(Event.COMPLETE,onIntroAnimComplete,false,0,false);
         loadInfo.removeEventListener(Event.COMPLETE,onImgLoaded);
         loadInfo.removeEventListener(IOErrorEvent.IO_ERROR,onImgIoError);
         LoaderFactory.getInstance().checkIn(loadInfo.loader);
      }
      
      private function securityErrorHandler(evt:SecurityErrorEvent) : void
      {
         this.stopVideo();
      }
      
      public function onCuePoint(info:Object) : void
      {
      }
      
      private function onAddedToStage(evt:Event) : void
      {
         this.stage.addEventListener(Event.RESIZE,onResize,false,0,true);
         this.resize();
      }
      
      private function setvContainerVisible(visible:Boolean) : void
      {
         if(this.vContainer)
         {
            this.visManager.setVisible(this.vContainer,visible);
         }
      }
      
      public function stopVideo(dispatch:Boolean = true) : void
      {
         this.setBtnSkipVisible(false);
         this.setVerVisible(true);
         if(this.hasEventListener(Event.ENTER_FRAME))
         {
            this.removeEventListener(Event.ENTER_FRAME,onFrame);
         }
         this.setBufferingVisible(false);
         if(this.mcBuff)
         {
            this.mcBuff.gotoAndStop(1);
            this.mcBuff.omg.omgAnim.halt();
         }
         if(this.connection != null && this.connection.connected)
         {
            this.connection.close();
         }
         if(this.stream != null)
         {
            this.stream.close();
         }
         if(this.video != null)
         {
            this.video.clear();
         }
         this.connection = null;
         this.stream = null;
         this.video = null;
         this.videoURL = "";
         while(this.vContainer.numChildren > 0)
         {
            this.vContainer.removeChildAt(0);
         }
         this.setvContainerVisible(false);
         this.setContainerVisible(true);
         if(dispatch)
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.VIDEO_DONE,null));
         }
      }
      
      private function onSkipClick(evt:MouseEvent) : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.TRACKING_EVENT,"intro_skipped"));
         this.stopVideo();
      }
      
      private function showBuffering() : void
      {
         if(!this.hasEventListener(Event.ENTER_FRAME))
         {
            this.addEventListener(Event.ENTER_FRAME,onFrame);
         }
         this.setBufferingVisible(true);
         if(this.mcBuff)
         {
            this.mcBuff.omg.omgAnim.go();
         }
      }
      
      public function set version(v:String) : void
      {
         this._version = v;
         if(this.mcVer)
         {
            MovieClip(this.mcVer).txtVer.text = "Ver: " + this._version;
         }
      }
      
      private function setContainerVisible(visible:Boolean) : void
      {
         if(this.container)
         {
            this.visManager.setVisible(this.container,visible);
         }
      }
      
      private function resize() : void
      {
         var _bmd:BitmapData = null;
         var rect:Rectangle = null;
         var scale:Number = NaN;
         this.bg.x = this.bg.y = this.x = this.y = 0;
         if(this.stage != null)
         {
            this.bg.width = this.stage.stageWidth;
            this.bg.height = this.stage.stageHeight;
            this.container.scaleX = this.container.scaleY = 1;
            if(this.vContainer)
            {
               this.vContainer.scaleX = this.vContainer.scaleY = 1;
            }
            if(this.container.width > 0 && this.container.height > 0)
            {
               _bmd = new BitmapData(Math.min(Math.ceil(this.container.width),2880),Math.min(Math.ceil(this.container.height),2880),true,0);
               _bmd.draw(this.container);
               rect = _bmd.getColorBoundsRect(4278190080,0,false);
               scale = this.stage.stageWidth / (rect.width - 1);
               this.container.scaleX = this.container.scaleY = scale;
               this.container.x = 0;
               this.container.y = this.stage.stageHeight / 2 - rect.height * scale / 2;
               _bmd.dispose();
               _bmd = null;
            }
            if(this.vContainer && this.vContainer.width > 0 && this.vContainer.height > 0)
            {
               this.vContainer.x = this.stage.stageWidth / 2 - this.vContainer.width / 2;
               this.vContainer.y = this.stage.stageHeight / 2 - this.vContainer.height / 2;
            }
            if(this.mcVer)
            {
               this.mcVer.x = 2;
               this.mcVer.y = this.bg.height - this.mcVer.height - 5;
            }
            if(this.mcBuff)
            {
               this.mcBuff.x = this.stage.stageWidth / 2 - this.mcBuff.width / 2;
               this.mcBuff.y = this.stage.stageHeight / 2 - this.mcBuff.height / 2;
            }
            if(this.btnSkip)
            {
               this.btnSkip.x = this.stage.stageWidth - this.btnSkip.width - 5;
               this.btnSkip.y = this.stage.stageHeight - this.btnSkip.height - 5;
            }
         }
      }
      
      public function loadVideo(url:String) : void
      {
         this.stopVideo(false);
         this.setvContainerVisible(true);
         this.videoURL = url;
         this.connection = new NetConnection();
         this.connection.addEventListener(NetStatusEvent.NET_STATUS,netStatusHandler,false,0,true);
         this.connection.addEventListener(SecurityErrorEvent.SECURITY_ERROR,securityErrorHandler,false,0,true);
         this.connection.connect(null);
         this.setBtnSkipVisible(true);
         this.setBtnSkipVisible(true);
         this.setVerVisible(false);
         if(this.mcBuff)
         {
            this.mcBuff.gotoAndStop(1);
         }
      }
      
      private function connectStream() : void
      {
         this.stream = new NetStream(connection);
         this.stream.bufferTime = 28;
         stream.addEventListener(NetStatusEvent.NET_STATUS,netStatusHandler,false,0,true);
         stream.client = this;
         this.video = new Video();
         this.video.attachNetStream(stream);
         this.stream.play(videoURL);
      }
      
      public function clear(nukeStartupStuff:Boolean = false) : void
      {
         while(this.container.numChildren > 0)
         {
            this.container.removeChildAt(0);
         }
         while(this.vContainer && this.vContainer.numChildren > 0)
         {
            this.vContainer.removeChildAt(0);
         }
         while(this.titleContainer.numChildren > 0)
         {
            this.titleContainer.removeChildAt(0);
         }
         if(nukeStartupStuff)
         {
            if(this.mcVer && this.contains(this.mcVer))
            {
               this.removeChild(this.mcVer);
            }
            this.mcVer = null;
            if(this.mcBuff && this.contains(this.mcBuff))
            {
               this.removeChild(this.mcBuff);
            }
            this.mcBuff = null;
            if(this.btnSkip && this.contains(this.btnSkip))
            {
               this.removeChild(this.btnSkip);
            }
            this.btnSkip = null;
         }
      }
      
      private function onFrame(evt:Event) : void
      {
         var p:Number = this.stream.bufferLength / Math.min(this.stream.bufferTime,this.videoDuration - this.stream.time) * 100;
         if(this.mcBuff)
         {
            this.mcBuff.gotoAndStop(Math.ceil(p));
         }
         if(p <= 95)
         {
            this.setBufferingVisible(true);
         }
         else
         {
            this.setBufferingVisible(false);
            this.setContainerVisible(false);
         }
      }
      
      private function setVerVisible(visible:Boolean) : void
      {
         if(this.mcVer)
         {
            this.visManager.setVisible(this.mcVer,visible);
         }
      }
      
      public function onMetaData(info:Object) : void
      {
         if(info.duration != null)
         {
            this.videoDuration = info.duration;
         }
         if(info.height != null && info.width != null)
         {
            this.vContainer.addChild(video);
            this.video.height = info.height;
            this.video.width = info.width;
            this.resize();
         }
      }
      
      private function onIntroAnimComplete(event:Event) : void
      {
         (event.target as EventDispatcher).removeEventListener(event.type,onIntroAnimComplete);
         _introAnimComplete = true;
         dispatchEvent(new Event(INTRO_ANIM_COMPLETE,true));
      }
      
      public function get version() : String
      {
         return this._version;
      }
      
      private function netStatusHandler(evt:NetStatusEvent) : void
      {
         switch(evt.info.code)
         {
            case "NetConnection.Connect.Success":
               connectStream();
               break;
            case "NetStream.Play.StreamNotFound":
               this.stopVideo();
               break;
            case "NetStream.Play.Stop":
               this.stopVideo();
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.VIDEO_DONE,null));
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.TRACKING_EVENT,"intro_finished"));
               break;
            case "NetStream.Play.Start":
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.TRACKING_EVENT,"intro_start"));
               this.showBuffering();
               break;
            case "NetStream.Buffer.Empty":
               this.showBuffering();
               break;
            case "NetStream.Buffer.Full":
               this.hideBuffering();
         }
      }
      
      private function onMapStartLoad(event:GlobalEvent) : void
      {
         loadImg(LoaderContextFactory.getInstance(),event.data.splashScreen,event.data.titleImgUrl);
      }
      
      private function onTitleImgLoaded(evt:Event) : void
      {
         var loadInfo:LoaderInfo = LoaderInfo(evt.target);
         this.titleContainer.addChildAt(loadInfo.content,0);
         loadInfo.removeEventListener(Event.COMPLETE,onImgLoaded);
         loadInfo.removeEventListener(IOErrorEvent.IO_ERROR,onImgIoError);
         LoaderFactory.getInstance().checkIn(loadInfo.loader);
      }
      
      private function onRemoveFromStage(evt:Event) : void
      {
         this.stage.removeEventListener(Event.RESIZE,onResize);
      }
      
      private function setBufferingVisible(visible:Boolean) : void
      {
         if(this.mcBuff)
         {
            this.visManager.setVisible(this.mcBuff,visible);
         }
      }
      
      private function onResize(evt:Event) : void
      {
         this.resize();
      }
      
      public function get introAnimComplete() : Boolean
      {
         return _introAnimComplete;
      }
      
      private function setBtnSkipVisible(visible:Boolean) : void
      {
         if(this.btnSkip)
         {
            this.visManager.setVisible(this.btnSkip,visible);
         }
      }
      
      private function loadImg(loaderContextFactory:ILoaderContextFactory, url:String, titleUrl:String = null) : void
      {
         this.clear();
         var l:Loader = LoaderFactory.getInstance().checkOut();
         l.contentLoaderInfo.addEventListener(Event.COMPLETE,onImgLoaded,false,0,true);
         l.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onImgIoError,false,0,true);
         l.load(new URLRequest(url),loaderContextFactory.getLoaderContext());
         var lTitle:Loader = LoaderFactory.getInstance().checkOut();
         lTitle.contentLoaderInfo.addEventListener(Event.COMPLETE,onTitleImgLoaded,false,0,true);
         lTitle.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onImgIoError,false,0,true);
         lTitle.load(new URLRequest(titleUrl),loaderContextFactory.getLoaderContext());
      }
      
      private function onImgIoError(evt:IOErrorEvent) : void
      {
      }
   }
}
