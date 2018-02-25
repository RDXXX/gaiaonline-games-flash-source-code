package mx.core
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.events.ContextMenuEvent;
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.Capabilities;
   import flash.ui.ContextMenu;
   import flash.ui.ContextMenuItem;
   import flash.utils.setInterval;
   import mx.containers.utilityClasses.ApplicationLayout;
   import mx.effects.EffectManager;
   import mx.events.FlexEvent;
   import mx.managers.FocusManager;
   import mx.managers.ILayoutManager;
   import mx.managers.ISystemManager;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.IStyleClient;
   import mx.styles.StyleManager;
   
   use namespace mx_internal;
   
   public class Application extends LayoutContainer
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      mx_internal static var useProgressiveLayout:Boolean = false;
       
      
      public var preloader:Object;
      
      public var pageTitle:String;
      
      private var resizeWidth:Boolean = true;
      
      private var _applicationViewMetrics:EdgeMetrics;
      
      mx_internal var _parameters:Object;
      
      private var processingCreationQueue:Boolean = false;
      
      private var resizeHandlerAdded:Boolean = false;
      
      public var scriptRecursionLimit:int;
      
      private var preloadObj:Object;
      
      public var usePreloader:Boolean;
      
      mx_internal var _url:String;
      
      private var _viewSourceURL:String;
      
      public var resetHistory:Boolean = true;
      
      public var historyManagementEnabled:Boolean = true;
      
      public var scriptTimeLimit:Number;
      
      public var frameRate:Number;
      
      private var creationQueue:Array;
      
      private var resizeHeight:Boolean = true;
      
      public var controlBar:IUIComponent;
      
      private var viewSourceCMI:ContextMenuItem;
      
      public function Application()
      {
         creationQueue = [];
         name = "application";
         UIComponentGlobals.layoutManager = ILayoutManager(Singleton.getInstance("mx.managers::ILayoutManager"));
         UIComponentGlobals.layoutManager.usePhasedInstantiation = true;
         if(!ApplicationGlobals.application)
         {
            ApplicationGlobals.application = this;
         }
         super();
         layoutObject = new ApplicationLayout();
         layoutObject.target = this;
         boxLayoutClass = ApplicationLayout;
         showInAutomationHierarchy = true;
      }
      
      public static function get application() : Object
      {
         return ApplicationGlobals.application;
      }
      
      public function set viewSourceURL(value:String) : void
      {
         _viewSourceURL = value;
      }
      
      override public function set enabled(value:Boolean) : void
      {
         super.enabled = value;
         if(controlBar)
         {
            controlBar.enabled = value;
         }
      }
      
      override public function prepareToPrint(target:IFlexDisplayObject) : Object
      {
         var objData:Object = {};
         if(target == this)
         {
            objData.width = width;
            objData.height = height;
            objData.verticalScrollPosition = verticalScrollPosition;
            objData.horizontalScrollPosition = horizontalScrollPosition;
            objData.horizontalScrollBarVisible = horizontalScrollBar != null;
            objData.verticalScrollBarVisible = verticalScrollBar != null;
            objData.whiteBoxVisible = whiteBox != null;
            setActualSize(measuredWidth,measuredHeight);
            horizontalScrollPosition = 0;
            verticalScrollPosition = 0;
            if(horizontalScrollBar)
            {
               horizontalScrollBar.visible = false;
            }
            if(verticalScrollBar)
            {
               verticalScrollBar.visible = false;
            }
            if(whiteBox)
            {
               whiteBox.visible = false;
            }
            updateDisplayList(unscaledWidth,unscaledHeight);
         }
         objData.scrollRect = super.prepareToPrint(target);
         return objData;
      }
      
      override protected function measure() : void
      {
         var controlWidth:Number = NaN;
         super.measure();
         var bm:EdgeMetrics = borderMetrics;
         if(controlBar && controlBar.includeInLayout)
         {
            controlWidth = controlBar.getExplicitOrMeasuredWidth() + bm.left + bm.right;
            measuredWidth = Math.max(measuredWidth,controlWidth);
            measuredMinWidth = Math.max(measuredMinWidth,controlWidth);
         }
      }
      
      override public function getChildIndex(child:DisplayObject) : int
      {
         if(controlBar && child == controlBar)
         {
            return -1;
         }
         return super.getChildIndex(child);
      }
      
      private function resizeHandler(event:Event) : void
      {
         var w:Number = NaN;
         var h:Number = NaN;
         if(resizeWidth)
         {
            if(isNaN(percentWidth))
            {
               w = DisplayObject(systemManager).width;
            }
            else
            {
               super.percentWidth = Math.max(percentWidth,0);
               super.percentWidth = Math.min(percentWidth,100);
               w = percentWidth * screen.width / 100;
            }
            if(!isNaN(explicitMaxWidth))
            {
               w = Math.min(w,explicitMaxWidth);
            }
            if(!isNaN(explicitMinWidth))
            {
               w = Math.max(w,explicitMinWidth);
            }
         }
         else
         {
            w = width;
         }
         if(resizeHeight)
         {
            if(isNaN(percentHeight))
            {
               h = DisplayObject(systemManager).height;
            }
            else
            {
               super.percentHeight = Math.max(percentHeight,0);
               super.percentHeight = Math.min(percentHeight,100);
               h = percentHeight * screen.height / 100;
            }
            if(!isNaN(explicitMaxHeight))
            {
               h = Math.min(h,explicitMaxHeight);
            }
            if(!isNaN(explicitMinHeight))
            {
               h = Math.max(h,explicitMinHeight);
            }
         }
         else
         {
            h = height;
         }
         if(w != width || h != height)
         {
            invalidateProperties();
            invalidateSize();
         }
         setActualSize(w,h);
         invalidateDisplayList();
      }
      
      private function initManagers(sm:ISystemManager) : void
      {
         if(sm.isTopLevel())
         {
            focusManager = new FocusManager(this);
            sm.activate(this);
         }
      }
      
      override public function initialize() : void
      {
         var properties:Object = null;
         var sm:ISystemManager = systemManager;
         _url = sm.loaderInfo.url;
         _parameters = sm.loaderInfo.parameters;
         initManagers(sm);
         _descriptor = null;
         if(documentDescriptor)
         {
            creationPolicy = documentDescriptor.properties.creationPolicy;
            if(creationPolicy == null || creationPolicy.length == 0)
            {
               creationPolicy = ContainerCreationPolicy.AUTO;
            }
            properties = documentDescriptor.properties;
            if(properties.width != null)
            {
               width = properties.width;
               delete properties.width;
            }
            if(properties.height != null)
            {
               height = properties.height;
               delete properties.height;
            }
            documentDescriptor.events = null;
         }
         initContextMenu();
         super.initialize();
         addEventListener(Event.ADDED,addedHandler);
         if(sm.isTopLevelRoot() && Capabilities.isDebugger == true)
         {
            setInterval(debugTickler,1500);
         }
      }
      
      override public function set percentHeight(value:Number) : void
      {
         super.percentHeight = value;
         invalidateDisplayList();
      }
      
      override public function set percentWidth(value:Number) : void
      {
         super.percentWidth = value;
         invalidateDisplayList();
      }
      
      override public function get id() : String
      {
         if(!super.id && this == Application.application && ExternalInterface.available)
         {
            return ExternalInterface.objectID;
         }
         return super.id;
      }
      
      override mx_internal function setUnscaledWidth(value:Number) : void
      {
         invalidateProperties();
         super.setUnscaledWidth(value);
      }
      
      private function doNextQueueItem(event:FlexEvent = null) : void
      {
         processingCreationQueue = true;
         Application.useProgressiveLayout = true;
         callLater(processNextQueueItem);
      }
      
      private function addedHandler(event:Event) : void
      {
         if(event.target == this && creationQueue.length > 0)
         {
            doNextQueueItem();
         }
      }
      
      public function get viewSourceURL() : String
      {
         return _viewSourceURL;
      }
      
      override mx_internal function get usePadding() : Boolean
      {
         return layout != ContainerLayout.ABSOLUTE;
      }
      
      override mx_internal function setUnscaledHeight(value:Number) : void
      {
         invalidateProperties();
         super.setUnscaledHeight(value);
      }
      
      private function debugTickler() : void
      {
         var i:int = 0;
      }
      
      override public function styleChanged(styleProp:String) : void
      {
         super.styleChanged(styleProp);
         if(styleProp == "backgroundColor" && getStyle("backgroundImage") == getStyle("defaultBackgroundImage"))
         {
            clearStyle("backgroundImage");
         }
      }
      
      override protected function layoutChrome(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         super.layoutChrome(unscaledWidth,unscaledHeight);
         if(!doingLayout)
         {
            createBorder();
         }
         var bm:EdgeMetrics = borderMetrics;
         var thickness:Number = getStyle("borderThickness");
         var em:EdgeMetrics = new EdgeMetrics();
         em.left = bm.left - thickness;
         em.top = bm.top - thickness;
         em.right = bm.right - thickness;
         em.bottom = bm.bottom - thickness;
         if(controlBar && controlBar.includeInLayout)
         {
            if(controlBar is IInvalidating)
            {
               IInvalidating(controlBar).invalidateDisplayList();
            }
            controlBar.setActualSize(width - (em.left + em.right),controlBar.getExplicitOrMeasuredHeight());
            controlBar.move(em.left,em.top);
         }
      }
      
      protected function menuItemSelectHandler(event:Event) : void
      {
         navigateToURL(new URLRequest(_viewSourceURL),"_blank");
      }
      
      private function printCreationQueue() : void
      {
         var child:Object = null;
         var msg:String = "";
         var n:Number = creationQueue.length;
         for(var i:int = 0; i < n; i++)
         {
            child = creationQueue[i];
            msg = msg + (" [" + i + "] " + child.id + " " + child.index);
         }
      }
      
      override protected function resourcesChanged() : void
      {
         super.resourcesChanged();
         if(viewSourceCMI)
         {
            viewSourceCMI.caption = resourceManager.getString("core","viewSource");
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         resizeWidth = isNaN(explicitWidth);
         resizeHeight = isNaN(explicitHeight);
         if(resizeWidth || resizeHeight)
         {
            resizeHandler(new Event(Event.RESIZE));
            if(!resizeHandlerAdded)
            {
               systemManager.addEventListener(Event.RESIZE,resizeHandler,false,0,true);
               resizeHandlerAdded = true;
            }
         }
         else if(resizeHandlerAdded)
         {
            systemManager.removeEventListener(Event.RESIZE,resizeHandler);
            resizeHandlerAdded = false;
         }
      }
      
      override public function set toolTip(value:String) : void
      {
      }
      
      public function addToCreationQueue(id:Object, preferredIndex:int = -1, callbackFunc:Function = null, parent:IFlexDisplayObject = null) : void
      {
         var insertIndex:int = 0;
         var pointerIndex:int = 0;
         var pointerLevel:int = 0;
         var parentLevel:int = 0;
         var queueLength:int = creationQueue.length;
         var queueObj:Object = {};
         var insertedItem:Boolean = false;
         queueObj.id = id;
         queueObj.parent = parent;
         queueObj.callbackFunc = callbackFunc;
         queueObj.index = preferredIndex;
         for(var i:int = 0; i < queueLength; i++)
         {
            pointerIndex = creationQueue[i].index;
            pointerLevel = !!creationQueue[i].parent?int(creationQueue[i].parent.nestLevel):0;
            if(queueObj.index != -1)
            {
               if(pointerIndex == -1 || queueObj.index < pointerIndex)
               {
                  insertIndex = i;
                  insertedItem = true;
                  break;
               }
            }
            else
            {
               parentLevel = !!queueObj.parent?int(queueObj.parent.nestLevel):0;
               if(pointerIndex == -1 && pointerLevel < parentLevel)
               {
                  insertIndex = i;
                  insertedItem = true;
                  break;
               }
            }
         }
         if(!insertedItem)
         {
            creationQueue.push(queueObj);
            insertedItem = true;
         }
         else
         {
            creationQueue.splice(insertIndex,0,queueObj);
         }
         if(initialized && !processingCreationQueue)
         {
            doNextQueueItem();
         }
      }
      
      override mx_internal function initThemeColor() : Boolean
      {
         var tc:Object = null;
         var rc:Number = NaN;
         var sc:Number = NaN;
         var globalSelector:CSSStyleDeclaration = null;
         var result:Boolean = super.initThemeColor();
         if(!result)
         {
            globalSelector = StyleManager.getStyleDeclaration("global");
            if(globalSelector)
            {
               tc = globalSelector.getStyle("themeColor");
               rc = globalSelector.getStyle("rollOverColor");
               sc = globalSelector.getStyle("selectionColor");
            }
            if(tc && isNaN(rc) && isNaN(sc))
            {
               setThemeColor(tc);
            }
            result = true;
         }
         return result;
      }
      
      mx_internal function dockControlBar(controlBar:IUIComponent, dock:Boolean) : void
      {
         if(dock)
         {
            try
            {
               removeChild(DisplayObject(controlBar));
            }
            catch(e:Error)
            {
               return;
            }
            rawChildren.addChildAt(DisplayObject(controlBar),firstChildIndex);
            setControlBar(controlBar);
         }
         else
         {
            try
            {
               rawChildren.removeChild(DisplayObject(controlBar));
            }
            catch(e:Error)
            {
               return;
            }
            setControlBar(null);
            addChildAt(DisplayObject(controlBar),0);
         }
      }
      
      override public function get viewMetrics() : EdgeMetrics
      {
         if(!_applicationViewMetrics)
         {
            _applicationViewMetrics = new EdgeMetrics();
         }
         var vm:EdgeMetrics = _applicationViewMetrics;
         var o:EdgeMetrics = super.viewMetrics;
         var thickness:Number = getStyle("borderThickness");
         vm.left = o.left;
         vm.top = o.top;
         vm.right = o.right;
         vm.bottom = o.bottom;
         if(controlBar && controlBar.includeInLayout)
         {
            vm.top = vm.top - thickness;
            vm.top = vm.top + Math.max(controlBar.getExplicitOrMeasuredHeight(),thickness);
         }
         return vm;
      }
      
      override public function finishPrint(obj:Object, target:IFlexDisplayObject) : void
      {
         if(target == this)
         {
            setActualSize(obj.width,obj.height);
            if(horizontalScrollBar)
            {
               horizontalScrollBar.visible = obj.horizontalScrollBarVisible;
            }
            if(verticalScrollBar)
            {
               verticalScrollBar.visible = obj.verticalScrollBarVisible;
            }
            if(whiteBox)
            {
               whiteBox.visible = obj.whiteBoxVisible;
            }
            horizontalScrollPosition = obj.horizontalScrollPosition;
            verticalScrollPosition = obj.verticalScrollPosition;
            updateDisplayList(unscaledWidth,unscaledHeight);
         }
         super.finishPrint(obj.scrollRect,target);
      }
      
      private function processNextQueueItem() : void
      {
         var queueItem:Object = null;
         var nextChild:IUIComponent = null;
         if(EffectManager.effectsPlaying.length > 0)
         {
            callLater(processNextQueueItem);
         }
         else if(creationQueue.length > 0)
         {
            queueItem = creationQueue.shift();
            try
            {
               nextChild = queueItem.id is String?document[queueItem.id]:queueItem.id;
               if(nextChild is Container)
               {
                  Container(nextChild).createComponentsFromDescriptors(true);
               }
               if(nextChild is Container && Container(nextChild).creationPolicy == ContainerCreationPolicy.QUEUED)
               {
                  doNextQueueItem();
               }
               else
               {
                  nextChild.addEventListener("childrenCreationComplete",doNextQueueItem);
               }
            }
            catch(e:Error)
            {
               processNextQueueItem();
            }
         }
         else
         {
            processingCreationQueue = false;
            Application.useProgressiveLayout = false;
         }
      }
      
      override public function set label(value:String) : void
      {
      }
      
      public function get parameters() : Object
      {
         return _parameters;
      }
      
      public function get url() : String
      {
         return _url;
      }
      
      private function initContextMenu() : void
      {
         var caption:String = null;
         if(flexContextMenu != null)
         {
            if(systemManager is InteractiveObject)
            {
               InteractiveObject(systemManager).contextMenu = contextMenu;
            }
            return;
         }
         var defaultMenu:ContextMenu = new ContextMenu();
         defaultMenu.hideBuiltInItems();
         defaultMenu.builtInItems.print = true;
         if(_viewSourceURL)
         {
            caption = resourceManager.getString("core","viewSource");
            viewSourceCMI = new ContextMenuItem(caption,true);
            viewSourceCMI.addEventListener(ContextMenuEvent.MENU_ITEM_SELECT,menuItemSelectHandler);
            defaultMenu.customItems.push(viewSourceCMI);
         }
         contextMenu = defaultMenu;
         if(systemManager is InteractiveObject)
         {
            InteractiveObject(systemManager).contextMenu = defaultMenu;
         }
      }
      
      override public function set icon(value:Class) : void
      {
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         createBorder();
      }
      
      private function setControlBar(newControlBar:IUIComponent) : void
      {
         if(newControlBar == controlBar)
         {
            return;
         }
         if(controlBar && controlBar is IStyleClient)
         {
            IStyleClient(controlBar).clearStyle("cornerRadius");
            IStyleClient(controlBar).clearStyle("docked");
         }
         controlBar = newControlBar;
         if(controlBar && controlBar is IStyleClient)
         {
            IStyleClient(controlBar).setStyle("cornerRadius",0);
            IStyleClient(controlBar).setStyle("docked",true);
         }
         invalidateSize();
         invalidateDisplayList();
         invalidateViewMetricsAndPadding();
      }
      
      override public function set tabIndex(value:int) : void
      {
      }
   }
}
