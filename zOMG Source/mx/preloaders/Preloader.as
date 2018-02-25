package mx.preloaders
{
   import flash.display.DisplayObject;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import mx.core.RSLItem;
   import mx.core.RSLListLoader;
   import mx.core.ResourceModuleRSLItem;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.RSLEvent;
   
   use namespace mx_internal;
   
   public class Preloader extends Sprite
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var app:IEventDispatcher = null;
      
      private var showDisplay:Boolean;
      
      private var timer:Timer;
      
      private var rslDone:Boolean = false;
      
      private var displayClass:IPreloaderDisplay = null;
      
      private var rslListLoader:RSLListLoader;
      
      public function Preloader()
      {
         super();
      }
      
      private function getByteValues() : Object
      {
         var li:LoaderInfo = root.loaderInfo;
         var loaded:int = li.bytesLoaded;
         var total:int = li.bytesTotal;
         var n:int = !!rslListLoader?int(rslListLoader.getItemCount()):0;
         for(var i:int = 0; i < n; i++)
         {
            loaded = loaded + rslListLoader.getItem(i).loaded;
            total = total + rslListLoader.getItem(i).total;
         }
         return {
            "loaded":loaded,
            "total":total
         };
      }
      
      private function appProgressHandler(event:Event) : void
      {
         dispatchEvent(new FlexEvent(FlexEvent.INIT_PROGRESS));
      }
      
      private function dispatchAppEndEvent(event:Object = null) : void
      {
         dispatchEvent(new FlexEvent(FlexEvent.INIT_COMPLETE));
         if(!showDisplay)
         {
            displayClassCompleteHandler(null);
         }
      }
      
      private function ioErrorHandler(event:IOErrorEvent) : void
      {
      }
      
      private function appCreationCompleteHandler(event:FlexEvent) : void
      {
         dispatchAppEndEvent();
      }
      
      mx_internal function rslErrorHandler(event:ErrorEvent) : void
      {
         var index:int = rslListLoader.getIndex();
         var item:RSLItem = rslListLoader.getItem(index);
         var rslEvent:RSLEvent = new RSLEvent(RSLEvent.RSL_ERROR);
         rslEvent.bytesLoaded = 0;
         rslEvent.bytesTotal = 0;
         rslEvent.rslIndex = index;
         rslEvent.rslTotal = rslListLoader.getItemCount();
         rslEvent.url = item.urlRequest;
         rslEvent.errorText = decodeURI(event.text);
         dispatchEvent(rslEvent);
      }
      
      public function initialize(showDisplay:Boolean, displayClassName:Class, backgroundColor:uint, backgroundAlpha:Number, backgroundImage:Object, backgroundSize:String, displayWidth:Number, displayHeight:Number, libs:Array = null, sizes:Array = null, rslList:Array = null, resourceModuleURLs:Array = null) : void
      {
         var n:int = 0;
         var i:int = 0;
         var node:RSLItem = null;
         var resourceModuleNode:ResourceModuleRSLItem = null;
         if((libs != null || sizes != null) && rslList != null)
         {
            throw new Error("RSLs may only be specified by using libs and sizes or rslList, not both.");
         }
         root.loaderInfo.addEventListener(IOErrorEvent.IO_ERROR,ioErrorHandler);
         if(libs && libs.length > 0)
         {
            if(rslList == null)
            {
               rslList = [];
            }
            n = libs.length;
            for(i = 0; i < n; i++)
            {
               node = new RSLItem(libs[i]);
               rslList.push(node);
            }
         }
         if(resourceModuleURLs && resourceModuleURLs.length > 0)
         {
            n = resourceModuleURLs.length;
            for(i = 0; i < n; i++)
            {
               resourceModuleNode = new ResourceModuleRSLItem(resourceModuleURLs[i]);
               rslList.push(resourceModuleNode);
            }
         }
         rslListLoader = new RSLListLoader(rslList);
         this.showDisplay = showDisplay;
         timer = new Timer(10);
         timer.addEventListener(TimerEvent.TIMER,timerHandler);
         timer.start();
         if(showDisplay)
         {
            displayClass = new displayClassName();
            displayClass.addEventListener(Event.COMPLETE,displayClassCompleteHandler);
            addChild(DisplayObject(displayClass));
            displayClass.backgroundColor = backgroundColor;
            displayClass.backgroundAlpha = backgroundAlpha;
            displayClass.backgroundImage = backgroundImage;
            displayClass.backgroundSize = backgroundSize;
            displayClass.stageWidth = displayWidth;
            displayClass.stageHeight = displayHeight;
            displayClass.initialize();
            displayClass.preloader = this;
         }
         if(rslListLoader.getItemCount() > 0)
         {
            rslListLoader.load(mx_internal::rslProgressHandler,mx_internal::rslCompleteHandler,mx_internal::rslErrorHandler,mx_internal::rslErrorHandler,mx_internal::rslErrorHandler);
         }
         else
         {
            rslDone = true;
         }
      }
      
      mx_internal function rslProgressHandler(event:ProgressEvent) : void
      {
         var index:int = rslListLoader.getIndex();
         var item:RSLItem = rslListLoader.getItem(index);
         var rslEvent:RSLEvent = new RSLEvent(RSLEvent.RSL_PROGRESS);
         rslEvent.bytesLoaded = event.bytesLoaded;
         rslEvent.bytesTotal = event.bytesTotal;
         rslEvent.rslIndex = index;
         rslEvent.rslTotal = rslListLoader.getItemCount();
         rslEvent.url = item.urlRequest;
         dispatchEvent(rslEvent);
      }
      
      public function registerApplication(app:IEventDispatcher) : void
      {
         app.addEventListener("validatePropertiesComplete",appProgressHandler);
         app.addEventListener("validateSizeComplete",appProgressHandler);
         app.addEventListener("validateDisplayListComplete",appProgressHandler);
         app.addEventListener(FlexEvent.CREATION_COMPLETE,appCreationCompleteHandler);
         this.app = app;
      }
      
      mx_internal function rslCompleteHandler(event:Event) : void
      {
         var index:int = rslListLoader.getIndex();
         var item:RSLItem = rslListLoader.getItem(index);
         var rslEvent:RSLEvent = new RSLEvent(RSLEvent.RSL_COMPLETE);
         rslEvent.bytesLoaded = item.total;
         rslEvent.bytesTotal = item.total;
         rslEvent.loaderInfo = event.target as LoaderInfo;
         rslEvent.rslIndex = index;
         rslEvent.rslTotal = rslListLoader.getItemCount();
         rslEvent.url = item.urlRequest;
         dispatchEvent(rslEvent);
         rslDone = index + 1 == rslEvent.rslTotal;
      }
      
      private function timerHandler(event:TimerEvent) : void
      {
         if(!root)
         {
            return;
         }
         var bytes:Object = getByteValues();
         var loaded:int = bytes.loaded;
         var total:int = bytes.total;
         dispatchEvent(new ProgressEvent(ProgressEvent.PROGRESS,false,false,loaded,total));
         if(rslDone && (loaded >= total && total > 0 || total == 0 && loaded > 0 || root is MovieClip && MovieClip(root).totalFrames > 2 && MovieClip(root).framesLoaded >= 2))
         {
            timer.removeEventListener(TimerEvent.TIMER,timerHandler);
            timer.reset();
            dispatchEvent(new Event(Event.COMPLETE));
            dispatchEvent(new FlexEvent(FlexEvent.INIT_PROGRESS));
         }
      }
      
      private function displayClassCompleteHandler(event:Event) : void
      {
         if(displayClass)
         {
            displayClass.removeEventListener(Event.COMPLETE,displayClassCompleteHandler);
         }
         if(root)
         {
            root.loaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,ioErrorHandler);
         }
         if(app)
         {
            app.removeEventListener("validatePropertiesComplete",appProgressHandler);
            app.removeEventListener("validateSizeComplete",appProgressHandler);
            app.removeEventListener("validateDisplayListComplete",appProgressHandler);
            app.removeEventListener(FlexEvent.CREATION_COMPLETE,appCreationCompleteHandler);
            app = null;
         }
         dispatchEvent(new FlexEvent(FlexEvent.PRELOADER_DONE));
      }
   }
}
