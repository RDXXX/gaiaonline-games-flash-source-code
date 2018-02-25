package mx.skins
{
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.Shape;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.getDefinitionByName;
   import mx.core.EdgeMetrics;
   import mx.core.FlexLoader;
   import mx.core.FlexShape;
   import mx.core.IChildList;
   import mx.core.IContainer;
   import mx.core.IRawChildrenContainer;
   import mx.core.IRectangularBorder;
   import mx.core.mx_internal;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   import mx.styles.ISimpleStyleClient;
   
   use namespace mx_internal;
   
   public class RectangularBorder extends Border implements IRectangularBorder
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var backgroundImage:DisplayObject;
      
      private var backgroundImageHeight:Number;
      
      private var _backgroundImageBounds:Rectangle;
      
      private var backgroundImageStyle:Object;
      
      private var backgroundImageWidth:Number;
      
      private var resourceManager:IResourceManager;
      
      public function RectangularBorder()
      {
         resourceManager = ResourceManager.getInstance();
         super();
         addEventListener(Event.REMOVED,removedHandler);
      }
      
      public function layoutBackgroundImage() : void
      {
         var sW:Number = NaN;
         var sH:Number = NaN;
         var sX:Number = NaN;
         var sY:Number = NaN;
         var scale:Number = NaN;
         var g:Graphics = null;
         var p:DisplayObject = parent;
         var bm:EdgeMetrics = p is IContainer?IContainer(p).viewMetrics:borderMetrics;
         var scrollableBk:* = getStyle("backgroundAttachment") != "fixed";
         if(_backgroundImageBounds)
         {
            sW = _backgroundImageBounds.width;
            sH = _backgroundImageBounds.height;
         }
         else
         {
            sW = width - bm.left - bm.right;
            sH = height - bm.top - bm.bottom;
         }
         var percentage:Number = getBackgroundSize();
         if(isNaN(percentage))
         {
            sX = 1;
            sY = 1;
         }
         else
         {
            scale = percentage * 0.01;
            sX = scale * sW / backgroundImageWidth;
            sY = scale * sH / backgroundImageHeight;
         }
         backgroundImage.scaleX = sX;
         backgroundImage.scaleY = sY;
         var offsetX:Number = Math.round(0.5 * (sW - backgroundImageWidth * sX));
         var offsetY:Number = Math.round(0.5 * (sH - backgroundImageHeight * sY));
         backgroundImage.x = bm.left;
         backgroundImage.y = bm.top;
         var backgroundMask:Shape = Shape(backgroundImage.mask);
         backgroundMask.x = bm.left;
         backgroundMask.y = bm.top;
         if(scrollableBk && p is IContainer)
         {
            offsetX = offsetX - IContainer(p).horizontalScrollPosition;
            offsetY = offsetY - IContainer(p).verticalScrollPosition;
         }
         backgroundImage.alpha = getStyle("backgroundAlpha");
         backgroundImage.x = backgroundImage.x + offsetX;
         backgroundImage.y = backgroundImage.y + offsetY;
         var maskWidth:Number = width - bm.left - bm.right;
         var maskHeight:Number = height - bm.top - bm.bottom;
         if(backgroundMask.width != maskWidth || backgroundMask.height != maskHeight)
         {
            g = backgroundMask.graphics;
            g.clear();
            g.beginFill(16777215);
            g.drawRect(0,0,maskWidth,maskHeight);
            g.endFill();
         }
      }
      
      public function set backgroundImageBounds(value:Rectangle) : void
      {
         if(_backgroundImageBounds && value && _backgroundImageBounds.equals(value))
         {
            return;
         }
         _backgroundImageBounds = value;
         invalidateDisplayList();
      }
      
      private function getBackgroundSize() : Number
      {
         var index:int = 0;
         var percentage:Number = NaN;
         var backgroundSize:Object = getStyle("backgroundSize");
         if(backgroundSize && backgroundSize is String)
         {
            index = backgroundSize.indexOf("%");
            if(index != -1)
            {
               percentage = Number(backgroundSize.substr(0,index));
            }
         }
         return percentage;
      }
      
      private function removedHandler(event:Event) : void
      {
         var childrenList:IChildList = null;
         if(backgroundImage)
         {
            childrenList = parent is IRawChildrenContainer?IRawChildrenContainer(parent).rawChildren:IChildList(parent);
            childrenList.removeChild(backgroundImage.mask);
            childrenList.removeChild(backgroundImage);
            backgroundImage = null;
         }
      }
      
      private function initBackgroundImage(image:DisplayObject) : void
      {
         backgroundImage = image;
         if(image is Loader)
         {
            backgroundImageWidth = Loader(image).contentLoaderInfo.width;
            backgroundImageHeight = Loader(image).contentLoaderInfo.height;
         }
         else
         {
            backgroundImageWidth = backgroundImage.width;
            backgroundImageHeight = backgroundImage.height;
            if(image is ISimpleStyleClient)
            {
               ISimpleStyleClient(image).styleName = styleName;
            }
         }
         var childrenList:IChildList = parent is IRawChildrenContainer?IRawChildrenContainer(parent).rawChildren:IChildList(parent);
         var backgroundMask:Shape = new FlexShape();
         backgroundMask.name = "backgroundMask";
         backgroundMask.x = 0;
         backgroundMask.y = 0;
         childrenList.addChild(backgroundMask);
         var myIndex:int = childrenList.getChildIndex(this);
         childrenList.addChildAt(backgroundImage,myIndex + 1);
         backgroundImage.mask = backgroundMask;
      }
      
      public function get backgroundImageBounds() : Rectangle
      {
         return _backgroundImageBounds;
      }
      
      public function get hasBackgroundImage() : Boolean
      {
         return backgroundImage != null;
      }
      
      private function completeEventHandler(event:Event) : void
      {
         if(!parent)
         {
            return;
         }
         var target:DisplayObject = DisplayObject(LoaderInfo(event.target).loader);
         initBackgroundImage(target);
         layoutBackgroundImage();
         dispatchEvent(event.clone());
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         var cls:Class = null;
         var newStyleObj:DisplayObject = null;
         var loader:Loader = null;
         var loaderContext:LoaderContext = null;
         var message:String = null;
         if(!parent)
         {
            return;
         }
         var newStyle:Object = getStyle("backgroundImage");
         if(newStyle != backgroundImageStyle)
         {
            removedHandler(null);
            backgroundImageStyle = newStyle;
            if(newStyle && newStyle as Class)
            {
               cls = Class(newStyle);
               initBackgroundImage(new cls());
            }
            else if(newStyle && newStyle is String)
            {
               try
               {
                  cls = Class(getDefinitionByName(String(newStyle)));
               }
               catch(e:Error)
               {
               }
               if(cls)
               {
                  newStyleObj = new cls();
                  initBackgroundImage(newStyleObj);
               }
               else
               {
                  loader = new FlexLoader();
                  loader.contentLoaderInfo.addEventListener(Event.COMPLETE,completeEventHandler);
                  loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,errorEventHandler);
                  loader.contentLoaderInfo.addEventListener(ErrorEvent.ERROR,errorEventHandler);
                  loaderContext = new LoaderContext();
                  loaderContext.applicationDomain = new ApplicationDomain(ApplicationDomain.currentDomain);
                  loader.load(new URLRequest(String(newStyle)),loaderContext);
               }
            }
            else if(newStyle)
            {
               message = resourceManager.getString("skins","notLoaded",[newStyle]);
               throw new Error(message);
            }
         }
         if(backgroundImage)
         {
            layoutBackgroundImage();
         }
      }
      
      private function errorEventHandler(event:Event) : void
      {
      }
   }
}
