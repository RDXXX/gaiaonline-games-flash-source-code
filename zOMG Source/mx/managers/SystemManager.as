package mx.managers
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.InteractiveObject;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.system.ApplicationDomain;
   import flash.text.Font;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import flash.utils.getQualifiedClassName;
   import mx.core.EmbeddedFontRegistry;
   import mx.core.EventPriority;
   import mx.core.FlexSprite;
   import mx.core.IChildList;
   import mx.core.IFlexDisplayObject;
   import mx.core.IFlexModuleFactory;
   import mx.core.IInvalidating;
   import mx.core.IRawChildrenContainer;
   import mx.core.ISWFBridgeGroup;
   import mx.core.ISWFBridgeProvider;
   import mx.core.ISWFLoader;
   import mx.core.IUIComponent;
   import mx.core.RSLItem;
   import mx.core.SWFBridgeGroup;
   import mx.core.Singleton;
   import mx.core.TextFieldFactory;
   import mx.core.mx_internal;
   import mx.events.EventListenerRequest;
   import mx.events.FlexChangeEvent;
   import mx.events.FlexEvent;
   import mx.events.InterManagerRequest;
   import mx.events.InvalidateRequestData;
   import mx.events.RSLEvent;
   import mx.events.SWFBridgeEvent;
   import mx.events.SWFBridgeRequest;
   import mx.events.SandboxMouseEvent;
   import mx.managers.systemClasses.EventProxy;
   import mx.managers.systemClasses.PlaceholderData;
   import mx.managers.systemClasses.RemotePopUp;
   import mx.messaging.config.LoaderConfig;
   import mx.preloaders.DownloadProgressBar;
   import mx.preloaders.Preloader;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceBundle;
   import mx.resources.ResourceManager;
   import mx.styles.ISimpleStyleClient;
   import mx.styles.IStyleClient;
   import mx.styles.StyleManager;
   import mx.utils.EventUtil;
   import mx.utils.LoaderUtil;
   import mx.utils.NameUtil;
   import mx.utils.SecurityUtil;
   
   use namespace mx_internal;
   
   public class SystemManager extends MovieClip implements IChildList, IFlexDisplayObject, IFlexModuleFactory, ISystemManager, ISWFBridgeProvider
   {
      
      private static const IDLE_THRESHOLD:Number = 1000;
      
      mx_internal static var lastSystemManager:SystemManager;
      
      private static const IDLE_INTERVAL:Number = 100;
      
      mx_internal static var allSystemManagers:Dictionary = new Dictionary(true);
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var _stage:Stage;
      
      mx_internal var nestLevel:int = 0;
      
      private var currentSandboxEvent:Event;
      
      private var forms:Array;
      
      private var mouseCatcher:Sprite;
      
      private var _height:Number;
      
      private var preloader:Preloader;
      
      private var lastFrame:int;
      
      private var _document:Object;
      
      private var strongReferenceProxies:Dictionary;
      
      private var _rawChildren:SystemRawChildrenList;
      
      private var _topLevelSystemManager:ISystemManager;
      
      private var _toolTipIndex:int = 0;
      
      private var _bridgeToFocusManager:Dictionary;
      
      private var _explicitHeight:Number;
      
      private var idToPlaceholder:Object;
      
      private var _swfBridgeGroup:ISWFBridgeGroup;
      
      private var _toolTipChildren:SystemChildrenList;
      
      private var form:Object;
      
      private var _width:Number;
      
      private var initialized:Boolean = false;
      
      private var _focusPane:Sprite;
      
      private var _fontList:Object = null;
      
      private var isStageRoot:Boolean = true;
      
      private var _popUpChildren:SystemChildrenList;
      
      private var _topMostIndex:int = 0;
      
      private var nextFrameTimer:Timer = null;
      
      mx_internal var topLevel:Boolean = true;
      
      private var weakReferenceProxies:Dictionary;
      
      private var _cursorIndex:int = 0;
      
      private var isBootstrapRoot:Boolean = false;
      
      mx_internal var _mouseY;
      
      private var _numModalWindows:int = 0;
      
      mx_internal var _mouseX;
      
      private var _screen:Rectangle;
      
      mx_internal var idleCounter:int = 0;
      
      private var _cursorChildren:SystemChildrenList;
      
      private var initCallbackFunctions:Array;
      
      private var _noTopMostIndex:int = 0;
      
      private var _applicationIndex:int = 1;
      
      private var isDispatchingResizeEvent:Boolean;
      
      private var idleTimer:Timer;
      
      private var doneExecutingInitCallbacks:Boolean = false;
      
      private var _explicitWidth:Number;
      
      private var eventProxy:EventProxy;
      
      mx_internal var topLevelWindow:IUIComponent;
      
      public function SystemManager()
      {
         initCallbackFunctions = [];
         forms = [];
         weakReferenceProxies = new Dictionary(true);
         strongReferenceProxies = new Dictionary(false);
         super();
         if(stage)
         {
            stage.scaleMode = StageScaleMode.NO_SCALE;
            stage.align = StageAlign.TOP_LEFT;
         }
         if(SystemManagerGlobals.topLevelSystemManagers.length > 0 && !stage)
         {
            topLevel = false;
         }
         if(!stage)
         {
            isStageRoot = false;
         }
         if(topLevel)
         {
            SystemManagerGlobals.topLevelSystemManagers.push(this);
         }
         lastSystemManager = this;
         var compiledLocales:Array = info()["compiledLocales"];
         ResourceBundle.locale = compiledLocales != null && compiledLocales.length > 0?compiledLocales[0]:"en_US";
         executeCallbacks();
         stop();
         if(topLevel && currentFrame != 1)
         {
            throw new Error("The SystemManager constructor was called when the currentFrame was at " + currentFrame + " Please add this SWF to bug 129782.");
         }
         if(root && root.loaderInfo)
         {
            root.loaderInfo.addEventListener(Event.INIT,initHandler);
         }
      }
      
      public static function getSWFRoot(object:Object) : DisplayObject
      {
         var p:* = undefined;
         var sm:ISystemManager = null;
         var domain:ApplicationDomain = null;
         var cls:Class = null;
         var className:String = getQualifiedClassName(object);
         for(p in allSystemManagers)
         {
            sm = p as ISystemManager;
            domain = sm.loaderInfo.applicationDomain;
            try
            {
               cls = Class(domain.getDefinition(className));
               if(object is cls)
               {
                  return sm as DisplayObject;
               }
            }
            catch(e:Error)
            {
               continue;
            }
         }
         return null;
      }
      
      private static function areRemotePopUpsEqual(form1:Object, form2:Object) : Boolean
      {
         if(!(form1 is RemotePopUp))
         {
            return false;
         }
         if(!(form2 is RemotePopUp))
         {
            return false;
         }
         var remotePopUp1:RemotePopUp = RemotePopUp(form1);
         var remotePopUp2:RemotePopUp = RemotePopUp(form2);
         if(remotePopUp1.window == remotePopUp2.window && remotePopUp1.bridge && remotePopUp2.bridge)
         {
            return true;
         }
         return false;
      }
      
      private static function getChildListIndex(childList:IChildList, f:Object) : int
      {
         var index:int = -1;
         try
         {
            index = childList.getChildIndex(DisplayObject(f));
         }
         catch(e:ArgumentError)
         {
         }
         return index;
      }
      
      mx_internal static function registerInitCallback(initFunction:Function) : void
      {
         if(!allSystemManagers || !lastSystemManager)
         {
            return;
         }
         var sm:SystemManager = lastSystemManager;
         if(sm.doneExecutingInitCallbacks)
         {
            initFunction(sm);
         }
         else
         {
            sm.initCallbackFunctions.push(initFunction);
         }
      }
      
      private static function isRemotePopUp(form:Object) : Boolean
      {
         return !(form is IFocusManagerContainer);
      }
      
      private function removeEventListenerFromSandboxes(type:String, listener:Function, useCapture:Boolean = false, skip:IEventDispatcher = null) : void
      {
         var i:int = 0;
         if(!swfBridgeGroup)
         {
            return;
         }
         var request:EventListenerRequest = new EventListenerRequest(EventListenerRequest.REMOVE_EVENT_LISTENER_REQUEST,false,false,type,useCapture);
         var parentBridge:IEventDispatcher = swfBridgeGroup.parentBridge;
         if(parentBridge && parentBridge != skip)
         {
            parentBridge.removeEventListener(type,listener,useCapture);
         }
         for(var children:Array = swfBridgeGroup.getChildBridges(); i < children.length; )
         {
            if(children[i] != skip)
            {
               IEventDispatcher(children[i]).removeEventListener(type,listener,useCapture);
            }
            i++;
         }
         dispatchEventFromSWFBridges(request,skip);
      }
      
      mx_internal function addingChild(child:DisplayObject) : void
      {
         var obj:DisplayObjectContainer = null;
         var newNestLevel:int = 1;
         if(!topLevel && parent)
         {
            obj = parent.parent;
            while(obj)
            {
               if(obj is ILayoutManagerClient)
               {
                  newNestLevel = ILayoutManagerClient(obj).nestLevel + 1;
                  break;
               }
               obj = obj.parent;
            }
         }
         nestLevel = newNestLevel;
         if(child is IUIComponent)
         {
            IUIComponent(child).systemManager = this;
         }
         var uiComponentClassName:Class = Class(getDefinitionByName("mx.core.UIComponent"));
         if(child is IUIComponent && !IUIComponent(child).document)
         {
            IUIComponent(child).document = document;
         }
         if(child is ILayoutManagerClient)
         {
            ILayoutManagerClient(child).nestLevel = nestLevel + 1;
         }
         if(child is InteractiveObject)
         {
            if(doubleClickEnabled)
            {
               InteractiveObject(child).doubleClickEnabled = true;
            }
         }
         if(child is IUIComponent)
         {
            IUIComponent(child).parentChanged(this);
         }
         if(child is IStyleClient)
         {
            IStyleClient(child).regenerateStyleCache(true);
         }
         if(child is ISimpleStyleClient)
         {
            ISimpleStyleClient(child).styleChanged(null);
         }
         if(child is IStyleClient)
         {
            IStyleClient(child).notifyStyleChangeInChildren(null,true);
         }
         if(uiComponentClassName && child is uiComponentClassName)
         {
            uiComponentClassName(child).initThemeColor();
         }
         if(uiComponentClassName && child is uiComponentClassName)
         {
            uiComponentClassName(child).stylesInitialized();
         }
      }
      
      private function dispatchEventToOtherSystemManagers(event:Event) : void
      {
         SystemManagerGlobals.dispatchingEventToOtherSystemManagers = true;
         var arr:Array = SystemManagerGlobals.topLevelSystemManagers;
         var n:int = arr.length;
         for(var i:int = 0; i < n; i++)
         {
            if(arr[i] != this)
            {
               arr[i].dispatchEvent(event);
            }
         }
         SystemManagerGlobals.dispatchingEventToOtherSystemManagers = false;
      }
      
      private function idleTimer_timerHandler(event:TimerEvent) : void
      {
         idleCounter++;
         if(idleCounter * IDLE_INTERVAL > IDLE_THRESHOLD)
         {
            dispatchEvent(new FlexEvent(FlexEvent.IDLE));
         }
      }
      
      private function initManagerHandler(event:Event) : void
      {
         if(!SystemManagerGlobals.dispatchingEventToOtherSystemManagers)
         {
            dispatchEventToOtherSystemManagers(event);
         }
         if(event is InterManagerRequest)
         {
            return;
         }
         var name:String = event["name"];
         try
         {
            Singleton.getInstance(name);
         }
         catch(e:Error)
         {
         }
      }
      
      mx_internal function rawChildren_getObjectsUnderPoint(pt:Point) : Array
      {
         return super.getObjectsUnderPoint(pt);
      }
      
      public function get preloadedRSLs() : Dictionary
      {
         return null;
      }
      
      private function getSizeRequestHandler(event:Event) : void
      {
         var eObj:Object = Object(event);
         eObj.data = {
            "width":measuredWidth,
            "height":measuredHeight
         };
      }
      
      private function beforeUnloadHandler(event:Event) : void
      {
         var sandboxRoot:DisplayObject = null;
         if(topLevel && stage)
         {
            sandboxRoot = getSandboxRoot();
            if(sandboxRoot != this)
            {
               sandboxRoot.removeEventListener(Event.RESIZE,Stage_resizeHandler);
            }
         }
         removeParentBridgeListeners();
         dispatchEvent(event);
      }
      
      public function getExplicitOrMeasuredHeight() : Number
      {
         return !isNaN(explicitHeight)?Number(explicitHeight):Number(measuredHeight);
      }
      
      private function getVisibleRectRequestHandler(event:Event) : void
      {
         var localRect:Rectangle = null;
         var pt:Point = null;
         var bridge:IEventDispatcher = null;
         if(event is SWFBridgeRequest)
         {
            return;
         }
         var request:SWFBridgeRequest = SWFBridgeRequest.marshal(event);
         var rect:Rectangle = Rectangle(request.data);
         var owner:DisplayObject = DisplayObject(swfBridgeGroup.getChildBridgeProvider(request.requestor));
         var forwardRequest:Boolean = true;
         if(!DisplayObjectContainer(document).contains(owner))
         {
            forwardRequest = false;
         }
         if(owner is ISWFLoader)
         {
            localRect = ISWFLoader(owner).getVisibleApplicationRect();
         }
         else
         {
            localRect = owner.getBounds(this);
            pt = localToGlobal(localRect.topLeft);
            localRect.x = pt.x;
            localRect.y = pt.y;
         }
         rect = rect.intersection(localRect);
         request.data = rect;
         if(forwardRequest && useSWFBridge())
         {
            bridge = swfBridgeGroup.parentBridge;
            request.requestor = bridge;
            bridge.dispatchEvent(request);
         }
         Object(event).data = request.data;
      }
      
      mx_internal function notifyStyleChangeInChildren(styleProp:String, recursive:Boolean) : void
      {
         var child:IStyleClient = null;
         var foundTopLevelWindow:Boolean = false;
         var n:int = rawChildren.numChildren;
         for(var i:int = 0; i < n; i++)
         {
            child = rawChildren.getChildAt(i) as IStyleClient;
            if(child)
            {
               child.styleChanged(styleProp);
               child.notifyStyleChangeInChildren(styleProp,recursive);
            }
            if(isTopLevelWindow(DisplayObject(child)))
            {
               foundTopLevelWindow = true;
            }
            n = rawChildren.numChildren;
         }
         if(!foundTopLevelWindow && topLevelWindow is IStyleClient)
         {
            IStyleClient(topLevelWindow).styleChanged(styleProp);
            IStyleClient(topLevelWindow).notifyStyleChangeInChildren(styleProp,recursive);
         }
      }
      
      private function addEventListenerToOtherSystemManagers(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false) : void
      {
         var arr:Array = SystemManagerGlobals.topLevelSystemManagers;
         if(arr.length < 2)
         {
            return;
         }
         SystemManagerGlobals.changingListenersInOtherSystemManagers = true;
         var n:int = arr.length;
         for(var i:int = 0; i < n; i++)
         {
            if(arr[i] != this)
            {
               arr[i].addEventListener(type,listener,useCapture,priority,useWeakReference);
            }
         }
         SystemManagerGlobals.changingListenersInOtherSystemManagers = false;
      }
      
      private function initHandler(event:Event) : void
      {
         var bridgeEvent:SWFBridgeEvent = null;
         if(!isStageRoot)
         {
            if(root.loaderInfo.parentAllowsChild)
            {
               try
               {
                  if(!parent.dispatchEvent(new Event("mx.managers.SystemManager.isBootstrapRoot",false,true)) || !root.loaderInfo.sharedEvents.hasEventListener(SWFBridgeEvent.BRIDGE_NEW_APPLICATION))
                  {
                     isBootstrapRoot = true;
                  }
               }
               catch(e:Error)
               {
               }
            }
         }
         allSystemManagers[this] = this.loaderInfo.url;
         root.loaderInfo.removeEventListener(Event.INIT,initHandler);
         if(useSWFBridge())
         {
            swfBridgeGroup = new SWFBridgeGroup(this);
            swfBridgeGroup.parentBridge = loaderInfo.sharedEvents;
            addParentBridgeListeners();
            bridgeEvent = new SWFBridgeEvent(SWFBridgeEvent.BRIDGE_NEW_APPLICATION);
            bridgeEvent.data = swfBridgeGroup.parentBridge;
            swfBridgeGroup.parentBridge.dispatchEvent(bridgeEvent);
            addEventListener(SWFBridgeRequest.ADD_POP_UP_PLACE_HOLDER_REQUEST,addPlaceholderPopupRequestHandler);
            root.loaderInfo.addEventListener(Event.UNLOAD,unloadHandler,false,0,true);
         }
         var sbRoot:DisplayObject = getSandboxRoot();
         sbRoot.addEventListener(InterManagerRequest.INIT_MANAGER_REQUEST,initManagerHandler,false,0,true);
         if(sbRoot == this)
         {
            addEventListener(InterManagerRequest.SYSTEM_MANAGER_REQUEST,systemManagerHandler);
            addEventListener(InterManagerRequest.DRAG_MANAGER_REQUEST,multiWindowRedispatcher);
            addEventListener("dispatchDragEvent",multiWindowRedispatcher);
            addEventListener(SWFBridgeRequest.ADD_POP_UP_REQUEST,addPopupRequestHandler);
            addEventListener(SWFBridgeRequest.REMOVE_POP_UP_REQUEST,removePopupRequestHandler);
            addEventListener(SWFBridgeRequest.ADD_POP_UP_PLACE_HOLDER_REQUEST,addPlaceholderPopupRequestHandler);
            addEventListener(SWFBridgeRequest.REMOVE_POP_UP_PLACE_HOLDER_REQUEST,removePlaceholderPopupRequestHandler);
            addEventListener(SWFBridgeEvent.BRIDGE_WINDOW_ACTIVATE,activateFormSandboxEventHandler);
            addEventListener(SWFBridgeEvent.BRIDGE_WINDOW_DEACTIVATE,deactivateFormSandboxEventHandler);
            addEventListener(SWFBridgeRequest.HIDE_MOUSE_CURSOR_REQUEST,hideMouseCursorRequestHandler);
            addEventListener(SWFBridgeRequest.SHOW_MOUSE_CURSOR_REQUEST,showMouseCursorRequestHandler);
            addEventListener(SWFBridgeRequest.RESET_MOUSE_CURSOR_REQUEST,resetMouseCursorRequestHandler);
         }
         var docFrame:int = totalFrames == 1?0:1;
         addEventListener(Event.ENTER_FRAME,docFrameListener);
         initialize();
      }
      
      mx_internal function findFocusManagerContainer(smp:SystemManagerProxy) : IFocusManagerContainer
      {
         var child:DisplayObject = null;
         var children:IChildList = smp.rawChildren;
         var numChildren:int = children.numChildren;
         for(var i:int = 0; i < numChildren; i++)
         {
            child = children.getChildAt(i);
            if(child is IFocusManagerContainer)
            {
               return IFocusManagerContainer(child);
            }
         }
         return null;
      }
      
      private function addPlaceholderPopupRequestHandler(event:Event) : void
      {
         var remoteForm:RemotePopUp = null;
         var popUpRequest:SWFBridgeRequest = SWFBridgeRequest.marshal(event);
         if(event.target != this && event is SWFBridgeRequest)
         {
            return;
         }
         if(!forwardPlaceholderRequest(popUpRequest,true))
         {
            remoteForm = new RemotePopUp(popUpRequest.data.placeHolderId,popUpRequest.requestor);
            forms.push(remoteForm);
         }
      }
      
      override public function contains(child:DisplayObject) : Boolean
      {
         var childIndex:int = 0;
         var i:int = 0;
         var myChild:DisplayObject = null;
         if(super.contains(child))
         {
            if(child.parent == this)
            {
               childIndex = super.getChildIndex(child);
               if(childIndex < noTopMostIndex)
               {
                  return true;
               }
            }
            else
            {
               for(i = 0; i < noTopMostIndex; i++)
               {
                  myChild = super.getChildAt(i);
                  if(myChild is IRawChildrenContainer)
                  {
                     if(IRawChildrenContainer(myChild).rawChildren.contains(child))
                     {
                        return true;
                     }
                  }
                  if(myChild is DisplayObjectContainer)
                  {
                     if(DisplayObjectContainer(myChild).contains(child))
                     {
                        return true;
                     }
                  }
               }
            }
         }
         return false;
      }
      
      private function modalWindowRequestHandler(event:Event) : void
      {
         if(event is SWFBridgeRequest)
         {
            return;
         }
         var request:SWFBridgeRequest = SWFBridgeRequest.marshal(event);
         if(!preProcessModalWindowRequest(request,getSandboxRoot()))
         {
            return;
         }
         Singleton.getInstance("mx.managers::IPopUpManager");
         dispatchEvent(request);
      }
      
      private function activateApplicationSandboxEventHandler(event:Event) : void
      {
         if(!isTopLevelRoot())
         {
            swfBridgeGroup.parentBridge.dispatchEvent(event);
            return;
         }
         activateForm(document);
      }
      
      public function getDefinitionByName(name:String) : Object
      {
         var definition:Object = null;
         var domain:ApplicationDomain = !topLevel && parent is Loader?Loader(parent).contentLoaderInfo.applicationDomain:info()["currentDomain"] as ApplicationDomain;
         if(domain.hasDefinition(name))
         {
            definition = domain.getDefinition(name);
         }
         return definition;
      }
      
      public function removeChildFromSandboxRoot(layer:String, child:DisplayObject) : void
      {
         var me:InterManagerRequest = null;
         if(getSandboxRoot() == this)
         {
            this[layer].removeChild(child);
         }
         else
         {
            removingChild(child);
            me = new InterManagerRequest(InterManagerRequest.SYSTEM_MANAGER_REQUEST);
            me.name = layer + ".removeChild";
            me.value = child;
            getSandboxRoot().dispatchEvent(me);
            childRemoved(child);
         }
      }
      
      private function removeEventListenerFromOtherSystemManagers(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         var arr:Array = SystemManagerGlobals.topLevelSystemManagers;
         if(arr.length < 2)
         {
            return;
         }
         SystemManagerGlobals.changingListenersInOtherSystemManagers = true;
         var n:int = arr.length;
         for(var i:int = 0; i < n; i++)
         {
            if(arr[i] != this)
            {
               arr[i].removeEventListener(type,listener,useCapture);
            }
         }
         SystemManagerGlobals.changingListenersInOtherSystemManagers = false;
      }
      
      public function get embeddedFontList() : Object
      {
         var o:Object = null;
         var p:* = null;
         var fl:Object = null;
         if(_fontList == null)
         {
            _fontList = {};
            o = info()["fonts"];
            for(p in o)
            {
               _fontList[p] = o[p];
            }
            if(!topLevel && _topLevelSystemManager)
            {
               fl = _topLevelSystemManager.embeddedFontList;
               for(p in fl)
               {
                  _fontList[p] = fl[p];
               }
            }
         }
         return _fontList;
      }
      
      mx_internal function set cursorIndex(value:int) : void
      {
         var delta:int = value - _cursorIndex;
         _cursorIndex = value;
      }
      
      mx_internal function addChildBridgeListeners(bridge:IEventDispatcher) : void
      {
         if(!topLevel && topLevelSystemManager)
         {
            SystemManager(topLevelSystemManager).addChildBridgeListeners(bridge);
            return;
         }
         bridge.addEventListener(SWFBridgeRequest.ADD_POP_UP_REQUEST,addPopupRequestHandler);
         bridge.addEventListener(SWFBridgeRequest.REMOVE_POP_UP_REQUEST,removePopupRequestHandler);
         bridge.addEventListener(SWFBridgeRequest.ADD_POP_UP_PLACE_HOLDER_REQUEST,addPlaceholderPopupRequestHandler);
         bridge.addEventListener(SWFBridgeRequest.REMOVE_POP_UP_PLACE_HOLDER_REQUEST,removePlaceholderPopupRequestHandler);
         bridge.addEventListener(SWFBridgeEvent.BRIDGE_WINDOW_ACTIVATE,activateFormSandboxEventHandler);
         bridge.addEventListener(SWFBridgeEvent.BRIDGE_WINDOW_DEACTIVATE,deactivateFormSandboxEventHandler);
         bridge.addEventListener(SWFBridgeEvent.BRIDGE_APPLICATION_ACTIVATE,activateApplicationSandboxEventHandler);
         bridge.addEventListener(EventListenerRequest.ADD_EVENT_LISTENER_REQUEST,eventListenerRequestHandler,false,0,true);
         bridge.addEventListener(EventListenerRequest.REMOVE_EVENT_LISTENER_REQUEST,eventListenerRequestHandler,false,0,true);
         bridge.addEventListener(SWFBridgeRequest.CREATE_MODAL_WINDOW_REQUEST,modalWindowRequestHandler);
         bridge.addEventListener(SWFBridgeRequest.SHOW_MODAL_WINDOW_REQUEST,modalWindowRequestHandler);
         bridge.addEventListener(SWFBridgeRequest.HIDE_MODAL_WINDOW_REQUEST,modalWindowRequestHandler);
         bridge.addEventListener(SWFBridgeRequest.GET_VISIBLE_RECT_REQUEST,getVisibleRectRequestHandler);
         bridge.addEventListener(SWFBridgeRequest.HIDE_MOUSE_CURSOR_REQUEST,hideMouseCursorRequestHandler);
         bridge.addEventListener(SWFBridgeRequest.SHOW_MOUSE_CURSOR_REQUEST,showMouseCursorRequestHandler);
         bridge.addEventListener(SWFBridgeRequest.RESET_MOUSE_CURSOR_REQUEST,resetMouseCursorRequestHandler);
      }
      
      public function set document(value:Object) : void
      {
         _document = value;
      }
      
      override public function getChildAt(index:int) : DisplayObject
      {
         return super.getChildAt(applicationIndex + index);
      }
      
      public function get rawChildren() : IChildList
      {
         if(!_rawChildren)
         {
            _rawChildren = new SystemRawChildrenList(this);
         }
         return _rawChildren;
      }
      
      private function findLastActiveForm(f:Object) : Object
      {
         var n:int = forms.length;
         for(var i:int = forms.length - 1; i >= 0; i--)
         {
            if(forms[i] != f && canActivatePopUp(forms[i]))
            {
               return forms[i];
            }
         }
         return null;
      }
      
      private function multiWindowRedispatcher(event:Event) : void
      {
         if(!SystemManagerGlobals.dispatchingEventToOtherSystemManagers)
         {
            dispatchEventToOtherSystemManagers(event);
         }
      }
      
      public function deployMouseShields(deploy:Boolean) : void
      {
         var me:InterManagerRequest = new InterManagerRequest(InterManagerRequest.DRAG_MANAGER_REQUEST,false,false,"mouseShield",deploy);
         getSandboxRoot().dispatchEvent(me);
      }
      
      override public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false) : void
      {
         var actualType:String = null;
         if(type == FlexEvent.RENDER || type == FlexEvent.ENTER_FRAME)
         {
            if(type == FlexEvent.RENDER)
            {
               var type:String = Event.RENDER;
            }
            else
            {
               type = Event.ENTER_FRAME;
            }
            try
            {
               if(stage)
               {
                  stage.addEventListener(type,listener,useCapture,priority,useWeakReference);
               }
               else
               {
                  super.addEventListener(type,listener,useCapture,priority,useWeakReference);
               }
            }
            catch(error:SecurityError)
            {
               super.addEventListener(type,listener,useCapture,priority,useWeakReference);
            }
            if(stage && type == Event.RENDER)
            {
               stage.invalidate();
            }
            return;
         }
         if(type == MouseEvent.MOUSE_MOVE || type == MouseEvent.MOUSE_UP || type == MouseEvent.MOUSE_DOWN || type == Event.ACTIVATE || type == Event.DEACTIVATE)
         {
            try
            {
               if(stage)
               {
                  stage.addEventListener(type,stageEventHandler,false,0,true);
               }
            }
            catch(error:SecurityError)
            {
            }
         }
         if(type == SandboxMouseEvent.MOUSE_UP_SOMEWHERE)
         {
            try
            {
               if(stage)
               {
                  stage.addEventListener(Event.MOUSE_LEAVE,mouseLeaveHandler,false,0,true);
               }
               else
               {
                  super.addEventListener(Event.MOUSE_LEAVE,mouseLeaveHandler,false,0,true);
               }
            }
            catch(error:SecurityError)
            {
               super.addEventListener(Event.MOUSE_LEAVE,mouseLeaveHandler,false,0,true);
            }
         }
         if(hasSWFBridges() || SystemManagerGlobals.topLevelSystemManagers.length > 1)
         {
            if(!eventProxy)
            {
               eventProxy = new EventProxy(this);
            }
            actualType = EventUtil.sandboxMouseEventMap[type];
            if(actualType)
            {
               if(isTopLevelRoot())
               {
                  stage.addEventListener(MouseEvent.MOUSE_MOVE,resetMouseCursorTracking,true,EventPriority.CURSOR_MANAGEMENT + 1,true);
                  addEventListenerToSandboxes(SandboxMouseEvent.MOUSE_MOVE_SOMEWHERE,resetMouseCursorTracking,true,EventPriority.CURSOR_MANAGEMENT + 1,true);
               }
               else
               {
                  super.addEventListener(MouseEvent.MOUSE_MOVE,resetMouseCursorTracking,true,EventPriority.CURSOR_MANAGEMENT + 1,true);
               }
               addEventListenerToSandboxes(type,sandboxMouseListener,useCapture,priority,useWeakReference);
               if(!SystemManagerGlobals.changingListenersInOtherSystemManagers)
               {
                  addEventListenerToOtherSystemManagers(type,otherSystemManagerMouseListener,useCapture,priority,useWeakReference);
               }
               if(getSandboxRoot() == this)
               {
                  super.addEventListener(actualType,eventProxy.marshalListener,useCapture,priority,useWeakReference);
                  if(actualType == MouseEvent.MOUSE_UP)
                  {
                     try
                     {
                        if(stage)
                        {
                           stage.addEventListener(Event.MOUSE_LEAVE,eventProxy.marshalListener,useCapture,priority,useWeakReference);
                        }
                        else
                        {
                           super.addEventListener(Event.MOUSE_LEAVE,eventProxy.marshalListener,useCapture,priority,useWeakReference);
                        }
                     }
                     catch(e:SecurityError)
                     {
                        super.addEventListener(Event.MOUSE_LEAVE,eventProxy.marshalListener,useCapture,priority,useWeakReference);
                     }
                  }
               }
               super.addEventListener(type,listener,false,priority,useWeakReference);
               return;
            }
         }
         if(type == FlexEvent.IDLE && !idleTimer)
         {
            idleTimer = new Timer(IDLE_INTERVAL);
            idleTimer.addEventListener(TimerEvent.TIMER,idleTimer_timerHandler);
            idleTimer.start();
            addEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler,true);
            addEventListener(MouseEvent.MOUSE_UP,mouseUpHandler,true);
         }
         super.addEventListener(type,listener,useCapture,priority,useWeakReference);
      }
      
      private function activateForm(f:Object) : void
      {
         var z:IFocusManagerContainer = null;
         if(form)
         {
            if(form != f && forms.length > 1)
            {
               if(isRemotePopUp(form))
               {
                  if(!areRemotePopUpsEqual(form,f))
                  {
                     deactivateRemotePopUp(form);
                  }
               }
               else
               {
                  z = IFocusManagerContainer(form);
                  z.focusManager.deactivate();
               }
            }
         }
         form = f;
         if(isRemotePopUp(f))
         {
            activateRemotePopUp(f);
         }
         else if(f.focusManager)
         {
            f.focusManager.activate();
         }
         updateLastActiveForm();
      }
      
      public function removeFocusManager(f:IFocusManagerContainer) : void
      {
         var n:int = forms.length;
         for(var i:int = 0; i < n; i++)
         {
            if(forms[i] == f)
            {
               if(form == f)
               {
                  deactivate(f);
               }
               dispatchDeactivatedWindowEvent(DisplayObject(f));
               forms.splice(i,1);
               return;
            }
         }
      }
      
      private function mouseMoveHandler(event:MouseEvent) : void
      {
         idleCounter = 0;
      }
      
      private function getSandboxScreen() : Rectangle
      {
         var sandboxScreen:Rectangle = null;
         var sm:DisplayObject = null;
         var me:InterManagerRequest = null;
         var sandboxRoot:DisplayObject = getSandboxRoot();
         if(sandboxRoot == this)
         {
            sandboxScreen = new Rectangle(0,0,width,height);
         }
         else if(sandboxRoot == topLevelSystemManager)
         {
            sm = DisplayObject(topLevelSystemManager);
            sandboxScreen = new Rectangle(0,0,sm.width,sm.height);
         }
         else
         {
            me = new InterManagerRequest(InterManagerRequest.SYSTEM_MANAGER_REQUEST,false,false,"screen");
            sandboxRoot.dispatchEvent(me);
            sandboxScreen = Rectangle(me.value);
         }
         return sandboxScreen;
      }
      
      public function get focusPane() : Sprite
      {
         return _focusPane;
      }
      
      override public function get mouseX() : Number
      {
         if(_mouseX === undefined)
         {
            return super.mouseX;
         }
         return _mouseX;
      }
      
      private function mouseDownHandler(event:MouseEvent) : void
      {
         var n:int = 0;
         var p:DisplayObject = null;
         var isApplication:Boolean = false;
         var i:int = 0;
         var form_i:Object = null;
         var j:int = 0;
         var index:int = 0;
         var newIndex:int = 0;
         var childList:IChildList = null;
         var f:DisplayObject = null;
         var isRemotePopUp:Boolean = false;
         var fChildIndex:int = 0;
         idleCounter = 0;
         var bridge:IEventDispatcher = getSWFBridgeOfDisplayObject(event.target as DisplayObject);
         if(bridge && bridgeToFocusManager[bridge] == document.focusManager)
         {
            if(isTopLevelRoot())
            {
               activateForm(document);
            }
            else
            {
               dispatchActivatedApplicationEvent();
            }
            return;
         }
         if(numModalWindows == 0)
         {
            if(!isTopLevelRoot() || forms.length > 1)
            {
               n = forms.length;
               p = DisplayObject(event.target);
               isApplication = document.rawChildren.contains(p);
               while(p)
               {
                  for(i = 0; i < n; i++)
                  {
                     form_i = !!isRemotePopUp(forms[i])?forms[i].window:forms[i];
                     if(form_i == p)
                     {
                        j = 0;
                        if(p != form && p is IFocusManagerContainer || !isTopLevelRoot() && p == form)
                        {
                           if(isTopLevelRoot())
                           {
                              activate(IFocusManagerContainer(p));
                           }
                           if(p == document)
                           {
                              dispatchActivatedApplicationEvent();
                           }
                           else if(p is DisplayObject)
                           {
                              dispatchActivatedWindowEvent(DisplayObject(p));
                           }
                        }
                        if(popUpChildren.contains(p))
                        {
                           childList = popUpChildren;
                        }
                        else
                        {
                           childList = this;
                        }
                        index = childList.getChildIndex(p);
                        newIndex = index;
                        n = forms.length;
                        for(j = 0; j < n; j++)
                        {
                           isRemotePopUp = isRemotePopUp(forms[j]);
                           if(isRemotePopUp)
                           {
                              if(forms[j].window is String)
                              {
                                 continue;
                              }
                              f = forms[j].window;
                           }
                           else
                           {
                              f = forms[j];
                           }
                           if(isRemotePopUp)
                           {
                              fChildIndex = getChildListIndex(childList,f);
                              if(fChildIndex > index)
                              {
                                 newIndex = Math.max(fChildIndex,newIndex);
                              }
                           }
                           else if(childList.contains(f))
                           {
                              if(childList.getChildIndex(f) > index)
                              {
                                 newIndex = Math.max(childList.getChildIndex(f),newIndex);
                                 continue;
                              }
                              continue;
                           }
                        }
                        if(newIndex > index && !isApplication)
                        {
                           childList.setChildIndex(p,newIndex);
                        }
                        return;
                     }
                  }
                  p = p.parent;
               }
            }
            else
            {
               dispatchActivatedApplicationEvent();
            }
         }
      }
      
      public function allowInsecureDomain(... domains) : void
      {
      }
      
      private function removePopupRequestHandler(event:Event) : void
      {
         var request:SWFBridgeRequest = null;
         var popUpRequest:SWFBridgeRequest = SWFBridgeRequest.marshal(event);
         if(swfBridgeGroup.parentBridge && SecurityUtil.hasMutualTrustBetweenParentAndChild(this))
         {
            popUpRequest.requestor = swfBridgeGroup.parentBridge;
            getSandboxRoot().dispatchEvent(popUpRequest);
            return;
         }
         if(popUpChildren.contains(popUpRequest.data.window))
         {
            popUpChildren.removeChild(popUpRequest.data.window);
         }
         else
         {
            removeChild(DisplayObject(popUpRequest.data.window));
         }
         if(popUpRequest.data.modal)
         {
            numModalWindows--;
         }
         removeRemotePopUp(new RemotePopUp(popUpRequest.data.window,popUpRequest.requestor));
         if(!isTopLevelRoot() && swfBridgeGroup)
         {
            request = new SWFBridgeRequest(SWFBridgeRequest.REMOVE_POP_UP_PLACE_HOLDER_REQUEST,false,false,popUpRequest.requestor,{"placeHolderId":NameUtil.displayObjectToString(popUpRequest.data.window)});
            dispatchEvent(request);
         }
      }
      
      public function addChildBridge(bridge:IEventDispatcher, owner:DisplayObject) : void
      {
         var fm:IFocusManager = null;
         var o:DisplayObject = owner;
         while(o)
         {
            if(o is IFocusManagerContainer)
            {
               fm = IFocusManagerContainer(o).focusManager;
               break;
            }
            o = o.parent;
         }
         if(!fm)
         {
            return;
         }
         if(!swfBridgeGroup)
         {
            swfBridgeGroup = new SWFBridgeGroup(this);
         }
         swfBridgeGroup.addChildBridge(bridge,ISWFBridgeProvider(owner));
         fm.addSWFBridge(bridge,owner);
         if(!bridgeToFocusManager)
         {
            bridgeToFocusManager = new Dictionary();
         }
         bridgeToFocusManager[bridge] = fm;
         addChildBridgeListeners(bridge);
         dispatchEvent(new FlexChangeEvent(FlexChangeEvent.ADD_CHILD_BRIDGE,false,false,bridge));
      }
      
      public function get screen() : Rectangle
      {
         if(!_screen)
         {
            Stage_resizeHandler();
         }
         if(!isStageRoot)
         {
            Stage_resizeHandler();
         }
         return _screen;
      }
      
      private function resetMouseCursorRequestHandler(event:Event) : void
      {
         var bridge:IEventDispatcher = null;
         if(!isTopLevelRoot() && event is SWFBridgeRequest)
         {
            return;
         }
         var request:SWFBridgeRequest = SWFBridgeRequest.marshal(event);
         if(!isTopLevelRoot())
         {
            bridge = swfBridgeGroup.parentBridge;
            request.requestor = bridge;
            bridge.dispatchEvent(request);
         }
         else if(eventProxy)
         {
            SystemManagerGlobals.showMouseCursor = true;
         }
      }
      
      private function preloader_rslCompleteHandler(event:RSLEvent) : void
      {
         if(event.loaderInfo)
         {
            preloadedRSLs[event.loaderInfo] = event.url.url;
         }
      }
      
      mx_internal function set topMostIndex(value:int) : void
      {
         var delta:int = value - _topMostIndex;
         _topMostIndex = value;
         toolTipIndex = toolTipIndex + delta;
      }
      
      mx_internal function docFrameHandler(event:Event = null) : void
      {
         var textFieldFactory:TextFieldFactory = null;
         var n:int = 0;
         var i:int = 0;
         var c:Class = null;
         Singleton.registerClass("mx.managers::IBrowserManager",Class(getDefinitionByName("mx.managers::BrowserManagerImpl")));
         Singleton.registerClass("mx.managers::ICursorManager",Class(getDefinitionByName("mx.managers::CursorManagerImpl")));
         Singleton.registerClass("mx.managers::IHistoryManager",Class(getDefinitionByName("mx.managers::HistoryManagerImpl")));
         Singleton.registerClass("mx.managers::ILayoutManager",Class(getDefinitionByName("mx.managers::LayoutManager")));
         Singleton.registerClass("mx.managers::IPopUpManager",Class(getDefinitionByName("mx.managers::PopUpManagerImpl")));
         Singleton.registerClass("mx.managers::IToolTipManager2",Class(getDefinitionByName("mx.managers::ToolTipManagerImpl")));
         var dragManagerClass:Class = null;
         dragManagerClass = Class(getDefinitionByName("mx.managers::NativeDragManagerImpl"));
         if(dragManagerClass == null)
         {
            dragManagerClass = Class(getDefinitionByName("mx.managers::DragManagerImpl"));
         }
         Singleton.registerClass("mx.managers::IDragManager",dragManagerClass);
         Singleton.registerClass("mx.core::ITextFieldFactory",Class(getDefinitionByName("mx.core::TextFieldFactory")));
         executeCallbacks();
         doneExecutingInitCallbacks = true;
         var mixinList:Array = info()["mixins"];
         if(mixinList && mixinList.length > 0)
         {
            n = mixinList.length;
            for(i = 0; i < n; i++)
            {
               c = Class(getDefinitionByName(mixinList[i]));
               c["init"](this);
            }
         }
         installCompiledResourceBundles();
         initializeTopLevelWindow(null);
         deferredNextFrame();
      }
      
      public function get explicitHeight() : Number
      {
         return _explicitHeight;
      }
      
      public function get preloaderBackgroundSize() : String
      {
         return info()["backgroundSize"];
      }
      
      public function isTopLevel() : Boolean
      {
         return topLevel;
      }
      
      override public function get mouseY() : Number
      {
         if(_mouseY === undefined)
         {
            return super.mouseY;
         }
         return _mouseY;
      }
      
      public function getExplicitOrMeasuredWidth() : Number
      {
         return !isNaN(explicitWidth)?Number(explicitWidth):Number(measuredWidth);
      }
      
      public function deactivate(f:IFocusManagerContainer) : void
      {
         deactivateForm(Object(f));
      }
      
      private function preProcessModalWindowRequest(request:SWFBridgeRequest, sbRoot:DisplayObject) : Boolean
      {
         var bridge:IEventDispatcher = null;
         var exclude:ISWFLoader = null;
         var excludeRect:Rectangle = null;
         if(request.data.skip)
         {
            request.data.skip = false;
            if(useSWFBridge())
            {
               bridge = swfBridgeGroup.parentBridge;
               request.requestor = bridge;
               bridge.dispatchEvent(request);
            }
            return false;
         }
         if(this != sbRoot)
         {
            if(request.type == SWFBridgeRequest.CREATE_MODAL_WINDOW_REQUEST || request.type == SWFBridgeRequest.SHOW_MODAL_WINDOW_REQUEST)
            {
               exclude = swfBridgeGroup.getChildBridgeProvider(request.requestor) as ISWFLoader;
               if(exclude)
               {
                  excludeRect = ISWFLoader(exclude).getVisibleApplicationRect();
                  request.data.excludeRect = excludeRect;
                  if(!DisplayObjectContainer(document).contains(DisplayObject(exclude)))
                  {
                     request.data.useExclude = false;
                  }
               }
            }
            bridge = swfBridgeGroup.parentBridge;
            request.requestor = bridge;
            if(request.type == SWFBridgeRequest.HIDE_MODAL_WINDOW_REQUEST)
            {
               sbRoot.dispatchEvent(request);
            }
            else
            {
               bridge.dispatchEvent(request);
            }
            return false;
         }
         request.data.skip = false;
         return true;
      }
      
      private function resetMouseCursorTracking(event:Event) : void
      {
         var cursorRequest:SWFBridgeRequest = null;
         var bridge:IEventDispatcher = null;
         if(isTopLevelRoot())
         {
            SystemManagerGlobals.showMouseCursor = true;
         }
         else if(swfBridgeGroup.parentBridge)
         {
            cursorRequest = new SWFBridgeRequest(SWFBridgeRequest.RESET_MOUSE_CURSOR_REQUEST);
            bridge = swfBridgeGroup.parentBridge;
            cursorRequest.requestor = bridge;
            bridge.dispatchEvent(cursorRequest);
         }
      }
      
      mx_internal function addParentBridgeListeners() : void
      {
         if(!topLevel && topLevelSystemManager)
         {
            SystemManager(topLevelSystemManager).addParentBridgeListeners();
            return;
         }
         var bridge:IEventDispatcher = swfBridgeGroup.parentBridge;
         bridge.addEventListener(SWFBridgeRequest.SET_ACTUAL_SIZE_REQUEST,setActualSizeRequestHandler);
         bridge.addEventListener(SWFBridgeRequest.GET_SIZE_REQUEST,getSizeRequestHandler);
         bridge.addEventListener(SWFBridgeRequest.ACTIVATE_POP_UP_REQUEST,activateRequestHandler);
         bridge.addEventListener(SWFBridgeRequest.DEACTIVATE_POP_UP_REQUEST,deactivateRequestHandler);
         bridge.addEventListener(SWFBridgeRequest.IS_BRIDGE_CHILD_REQUEST,isBridgeChildHandler);
         bridge.addEventListener(EventListenerRequest.ADD_EVENT_LISTENER_REQUEST,eventListenerRequestHandler);
         bridge.addEventListener(EventListenerRequest.REMOVE_EVENT_LISTENER_REQUEST,eventListenerRequestHandler);
         bridge.addEventListener(SWFBridgeRequest.CAN_ACTIVATE_POP_UP_REQUEST,canActivateHandler);
         bridge.addEventListener(SWFBridgeEvent.BRIDGE_APPLICATION_UNLOADING,beforeUnloadHandler);
      }
      
      public function get swfBridgeGroup() : ISWFBridgeGroup
      {
         if(topLevel)
         {
            return _swfBridgeGroup;
         }
         if(topLevelSystemManager)
         {
            return topLevelSystemManager.swfBridgeGroup;
         }
         return null;
      }
      
      override public function getChildByName(name:String) : DisplayObject
      {
         return super.getChildByName(name);
      }
      
      public function get measuredWidth() : Number
      {
         return !!topLevelWindow?Number(topLevelWindow.getExplicitOrMeasuredWidth()):Number(loaderInfo.width);
      }
      
      public function removeChildBridge(bridge:IEventDispatcher) : void
      {
         dispatchEvent(new FlexChangeEvent(FlexChangeEvent.REMOVE_CHILD_BRIDGE,false,false,bridge));
         var fm:IFocusManager = IFocusManager(bridgeToFocusManager[bridge]);
         fm.removeSWFBridge(bridge);
         swfBridgeGroup.removeChildBridge(bridge);
         delete bridgeToFocusManager[bridge];
         removeChildBridgeListeners(bridge);
      }
      
      mx_internal function removeChildBridgeListeners(bridge:IEventDispatcher) : void
      {
         if(!topLevel && topLevelSystemManager)
         {
            SystemManager(topLevelSystemManager).removeChildBridgeListeners(bridge);
            return;
         }
         bridge.removeEventListener(SWFBridgeRequest.ADD_POP_UP_REQUEST,addPopupRequestHandler);
         bridge.removeEventListener(SWFBridgeRequest.REMOVE_POP_UP_REQUEST,removePopupRequestHandler);
         bridge.removeEventListener(SWFBridgeRequest.ADD_POP_UP_PLACE_HOLDER_REQUEST,addPlaceholderPopupRequestHandler);
         bridge.removeEventListener(SWFBridgeRequest.REMOVE_POP_UP_PLACE_HOLDER_REQUEST,removePlaceholderPopupRequestHandler);
         bridge.removeEventListener(SWFBridgeEvent.BRIDGE_WINDOW_ACTIVATE,activateFormSandboxEventHandler);
         bridge.removeEventListener(SWFBridgeEvent.BRIDGE_WINDOW_DEACTIVATE,deactivateFormSandboxEventHandler);
         bridge.removeEventListener(SWFBridgeEvent.BRIDGE_APPLICATION_ACTIVATE,activateApplicationSandboxEventHandler);
         bridge.removeEventListener(EventListenerRequest.ADD_EVENT_LISTENER_REQUEST,eventListenerRequestHandler);
         bridge.removeEventListener(EventListenerRequest.REMOVE_EVENT_LISTENER_REQUEST,eventListenerRequestHandler);
         bridge.removeEventListener(SWFBridgeRequest.CREATE_MODAL_WINDOW_REQUEST,modalWindowRequestHandler);
         bridge.removeEventListener(SWFBridgeRequest.SHOW_MODAL_WINDOW_REQUEST,modalWindowRequestHandler);
         bridge.removeEventListener(SWFBridgeRequest.HIDE_MODAL_WINDOW_REQUEST,modalWindowRequestHandler);
         bridge.removeEventListener(SWFBridgeRequest.GET_VISIBLE_RECT_REQUEST,getVisibleRectRequestHandler);
         bridge.removeEventListener(SWFBridgeRequest.HIDE_MOUSE_CURSOR_REQUEST,hideMouseCursorRequestHandler);
         bridge.removeEventListener(SWFBridgeRequest.SHOW_MOUSE_CURSOR_REQUEST,showMouseCursorRequestHandler);
         bridge.removeEventListener(SWFBridgeRequest.RESET_MOUSE_CURSOR_REQUEST,resetMouseCursorRequestHandler);
      }
      
      override public function addChildAt(child:DisplayObject, index:int) : DisplayObject
      {
         noTopMostIndex++;
         var oldParent:DisplayObjectContainer = child.parent;
         if(oldParent)
         {
            oldParent.removeChild(child);
         }
         return rawChildren_addChildAt(child,applicationIndex + index);
      }
      
      private function Stage_resizeHandler(event:Event = null) : void
      {
         var m:Number = NaN;
         var n:Number = NaN;
         var sandboxScreen:Rectangle = null;
         if(isDispatchingResizeEvent)
         {
            return;
         }
         var w:Number = 0;
         var h:Number = 0;
         try
         {
            m = loaderInfo.width;
            n = loaderInfo.height;
         }
         catch(error:Error)
         {
            if(!_screen)
            {
               _screen = new Rectangle();
            }
            return;
         }
         var align:String = StageAlign.TOP_LEFT;
         try
         {
            if(stage)
            {
               w = stage.stageWidth;
               h = stage.stageHeight;
               align = stage.align;
            }
         }
         catch(error:SecurityError)
         {
            sandboxScreen = getSandboxScreen();
            w = sandboxScreen.width;
            h = sandboxScreen.height;
         }
         var x:Number = (m - w) / 2;
         var y:Number = (n - h) / 2;
         if(align == StageAlign.TOP)
         {
            y = 0;
         }
         else if(align == StageAlign.BOTTOM)
         {
            y = n - h;
         }
         else if(align == StageAlign.LEFT)
         {
            x = 0;
         }
         else if(align == StageAlign.RIGHT)
         {
            x = m - w;
         }
         else if(align == StageAlign.TOP_LEFT || align == "LT")
         {
            y = 0;
            x = 0;
         }
         else if(align == StageAlign.TOP_RIGHT)
         {
            y = 0;
            x = m - w;
         }
         else if(align == StageAlign.BOTTOM_LEFT)
         {
            y = n - h;
            x = 0;
         }
         else if(align == StageAlign.BOTTOM_RIGHT)
         {
            y = n - h;
            x = m - w;
         }
         if(!_screen)
         {
            _screen = new Rectangle();
         }
         _screen.x = x;
         _screen.y = y;
         _screen.width = w;
         _screen.height = h;
         if(isStageRoot)
         {
            _width = stage.stageWidth;
            _height = stage.stageHeight;
         }
         if(event)
         {
            resizeMouseCatcher();
            isDispatchingResizeEvent = true;
            dispatchEvent(event);
            isDispatchingResizeEvent = false;
         }
      }
      
      public function get swfBridge() : IEventDispatcher
      {
         if(swfBridgeGroup)
         {
            return swfBridgeGroup.parentBridge;
         }
         return null;
      }
      
      private function findRemotePopUp(window:Object, bridge:IEventDispatcher) : RemotePopUp
      {
         var popUp:RemotePopUp = null;
         var n:int = forms.length;
         for(var i:int = 0; i < n; i++)
         {
            if(isRemotePopUp(forms[i]))
            {
               popUp = RemotePopUp(forms[i]);
               if(popUp.window == window && popUp.bridge == bridge)
               {
                  return popUp;
               }
            }
         }
         return null;
      }
      
      public function info() : Object
      {
         return {};
      }
      
      mx_internal function get toolTipIndex() : int
      {
         return _toolTipIndex;
      }
      
      public function setActualSize(newWidth:Number, newHeight:Number) : void
      {
         if(isStageRoot)
         {
            return;
         }
         _width = newWidth;
         _height = newHeight;
         if(mouseCatcher)
         {
            mouseCatcher.width = newWidth;
            mouseCatcher.height = newHeight;
         }
         dispatchEvent(new Event(Event.RESIZE));
      }
      
      private function removePlaceholderPopupRequestHandler(event:Event) : void
      {
         var n:int = 0;
         var i:int = 0;
         var popUpRequest:SWFBridgeRequest = SWFBridgeRequest.marshal(event);
         if(!forwardPlaceholderRequest(popUpRequest,false))
         {
            n = forms.length;
            for(i = 0; i < n; i++)
            {
               if(isRemotePopUp(forms[i]))
               {
                  if(forms[i].window == popUpRequest.data.placeHolderId && forms[i].bridge == popUpRequest.requestor)
                  {
                     forms.splice(i,1);
                     break;
                  }
               }
            }
         }
      }
      
      public function set focusPane(value:Sprite) : void
      {
         if(value)
         {
            addChild(value);
            value.x = 0;
            value.y = 0;
            value.scrollRect = null;
            _focusPane = value;
         }
         else
         {
            removeChild(_focusPane);
            _focusPane = null;
         }
      }
      
      mx_internal function removeParentBridgeListeners() : void
      {
         if(!topLevel && topLevelSystemManager)
         {
            SystemManager(topLevelSystemManager).removeParentBridgeListeners();
            return;
         }
         var bridge:IEventDispatcher = swfBridgeGroup.parentBridge;
         bridge.removeEventListener(SWFBridgeRequest.SET_ACTUAL_SIZE_REQUEST,setActualSizeRequestHandler);
         bridge.removeEventListener(SWFBridgeRequest.GET_SIZE_REQUEST,getSizeRequestHandler);
         bridge.removeEventListener(SWFBridgeRequest.ACTIVATE_POP_UP_REQUEST,activateRequestHandler);
         bridge.removeEventListener(SWFBridgeRequest.DEACTIVATE_POP_UP_REQUEST,deactivateRequestHandler);
         bridge.removeEventListener(SWFBridgeRequest.IS_BRIDGE_CHILD_REQUEST,isBridgeChildHandler);
         bridge.removeEventListener(EventListenerRequest.ADD_EVENT_LISTENER_REQUEST,eventListenerRequestHandler);
         bridge.removeEventListener(EventListenerRequest.REMOVE_EVENT_LISTENER_REQUEST,eventListenerRequestHandler);
         bridge.removeEventListener(SWFBridgeRequest.CAN_ACTIVATE_POP_UP_REQUEST,canActivateHandler);
         bridge.removeEventListener(SWFBridgeEvent.BRIDGE_APPLICATION_UNLOADING,beforeUnloadHandler);
      }
      
      override public function get parent() : DisplayObjectContainer
      {
         try
         {
            return super.parent;
         }
         catch(e:SecurityError)
         {
         }
         return null;
      }
      
      private function eventListenerRequestHandler(event:Event) : void
      {
         var actualType:String = null;
         if(event is EventListenerRequest)
         {
            return;
         }
         var request:EventListenerRequest = EventListenerRequest.marshal(event);
         if(event.type == EventListenerRequest.ADD_EVENT_LISTENER_REQUEST)
         {
            if(!eventProxy)
            {
               eventProxy = new EventProxy(this);
            }
            actualType = EventUtil.sandboxMouseEventMap[request.eventType];
            if(actualType)
            {
               if(isTopLevelRoot())
               {
                  stage.addEventListener(MouseEvent.MOUSE_MOVE,resetMouseCursorTracking,true,EventPriority.CURSOR_MANAGEMENT + 1,true);
               }
               else
               {
                  super.addEventListener(MouseEvent.MOUSE_MOVE,resetMouseCursorTracking,true,EventPriority.CURSOR_MANAGEMENT + 1,true);
               }
               addEventListenerToSandboxes(request.eventType,sandboxMouseListener,true,request.priority,request.useWeakReference,event.target as IEventDispatcher);
               addEventListenerToOtherSystemManagers(request.eventType,otherSystemManagerMouseListener,true,request.priority,request.useWeakReference);
               if(getSandboxRoot() == this)
               {
                  if(isTopLevelRoot() && (actualType == MouseEvent.MOUSE_UP || actualType == MouseEvent.MOUSE_MOVE))
                  {
                     stage.addEventListener(actualType,eventProxy.marshalListener,false,request.priority,request.useWeakReference);
                  }
                  super.addEventListener(actualType,eventProxy.marshalListener,true,request.priority,request.useWeakReference);
               }
            }
         }
         else if(event.type == EventListenerRequest.REMOVE_EVENT_LISTENER_REQUEST)
         {
            actualType = EventUtil.sandboxMouseEventMap[request.eventType];
            if(actualType)
            {
               removeEventListenerFromOtherSystemManagers(request.eventType,otherSystemManagerMouseListener,true);
               removeEventListenerFromSandboxes(request.eventType,sandboxMouseListener,true,event.target as IEventDispatcher);
               if(getSandboxRoot() == this)
               {
                  if(isTopLevelRoot() && (actualType == MouseEvent.MOUSE_UP || actualType == MouseEvent.MOUSE_MOVE))
                  {
                     stage.removeEventListener(actualType,eventProxy.marshalListener);
                  }
                  super.removeEventListener(actualType,eventProxy.marshalListener,true);
               }
            }
         }
      }
      
      mx_internal function set applicationIndex(value:int) : void
      {
         _applicationIndex = value;
      }
      
      private function showMouseCursorRequestHandler(event:Event) : void
      {
         var bridge:IEventDispatcher = null;
         if(!isTopLevelRoot() && event is SWFBridgeRequest)
         {
            return;
         }
         var request:SWFBridgeRequest = SWFBridgeRequest.marshal(event);
         if(!isTopLevelRoot())
         {
            bridge = swfBridgeGroup.parentBridge;
            request.requestor = bridge;
            bridge.dispatchEvent(request);
            Object(event).data = request.data;
         }
         else if(eventProxy)
         {
            Object(event).data = SystemManagerGlobals.showMouseCursor;
         }
      }
      
      public function get childAllowsParent() : Boolean
      {
         try
         {
            return loaderInfo.childAllowsParent;
         }
         catch(error:Error)
         {
         }
         return false;
      }
      
      public function dispatchEventFromSWFBridges(event:Event, skip:IEventDispatcher = null, trackClones:Boolean = false, toOtherSystemManagers:Boolean = false) : void
      {
         var clone:Event = null;
         if(toOtherSystemManagers)
         {
            dispatchEventToOtherSystemManagers(event);
         }
         if(!swfBridgeGroup)
         {
            return;
         }
         clone = event.clone();
         if(trackClones)
         {
            currentSandboxEvent = clone;
         }
         var parentBridge:IEventDispatcher = swfBridgeGroup.parentBridge;
         if(parentBridge && parentBridge != skip)
         {
            if(clone is SWFBridgeRequest)
            {
               SWFBridgeRequest(clone).requestor = parentBridge;
            }
            parentBridge.dispatchEvent(clone);
         }
         var children:Array = swfBridgeGroup.getChildBridges();
         for(var i:int = 0; i < children.length; i++)
         {
            if(children[i] != skip)
            {
               clone = event.clone();
               if(trackClones)
               {
                  currentSandboxEvent = clone;
               }
               if(clone is SWFBridgeRequest)
               {
                  SWFBridgeRequest(clone).requestor = IEventDispatcher(children[i]);
               }
               IEventDispatcher(children[i]).dispatchEvent(clone);
            }
         }
         currentSandboxEvent = null;
      }
      
      private function setActualSizeRequestHandler(event:Event) : void
      {
         var eObj:Object = Object(event);
         setActualSize(eObj.data.width,eObj.data.height);
      }
      
      private function executeCallbacks() : void
      {
         var initFunction:Function = null;
         if(!parent && parentAllowsChild)
         {
            return;
         }
         while(initCallbackFunctions.length > 0)
         {
            initFunction = initCallbackFunctions.shift();
            initFunction(this);
         }
      }
      
      private function addPlaceholderId(id:String, previousId:String, bridge:IEventDispatcher, placeholder:Object) : void
      {
         if(!bridge)
         {
            throw new Error();
         }
         if(!idToPlaceholder)
         {
            idToPlaceholder = [];
         }
         idToPlaceholder[id] = new PlaceholderData(previousId,bridge,placeholder);
      }
      
      private function canActivateHandler(event:Event) : void
      {
         var request:SWFBridgeRequest = null;
         var placeholder:PlaceholderData = null;
         var popUp:RemotePopUp = null;
         var smp:SystemManagerProxy = null;
         var f:IFocusManagerContainer = null;
         var bridge:IEventDispatcher = null;
         var eObj:Object = Object(event);
         var child:Object = eObj.data;
         var nextId:String = null;
         if(eObj.data is String)
         {
            placeholder = idToPlaceholder[eObj.data];
            child = placeholder.data;
            nextId = placeholder.id;
            if(nextId == null)
            {
               popUp = findRemotePopUp(child,placeholder.bridge);
               if(popUp)
               {
                  request = new SWFBridgeRequest(SWFBridgeRequest.CAN_ACTIVATE_POP_UP_REQUEST,false,false,IEventDispatcher(popUp.bridge),popUp.window);
                  if(popUp.bridge)
                  {
                     popUp.bridge.dispatchEvent(request);
                     eObj.data = request.data;
                  }
                  return;
               }
            }
         }
         if(child is SystemManagerProxy)
         {
            smp = SystemManagerProxy(child);
            f = findFocusManagerContainer(smp);
            eObj.data = smp && f && canActivateLocalComponent(f);
         }
         else if(child is IFocusManagerContainer)
         {
            eObj.data = canActivateLocalComponent(child);
         }
         else if(child is IEventDispatcher)
         {
            bridge = IEventDispatcher(child);
            request = new SWFBridgeRequest(SWFBridgeRequest.CAN_ACTIVATE_POP_UP_REQUEST,false,false,bridge,nextId);
            if(bridge)
            {
               bridge.dispatchEvent(request);
               eObj.data = request.data;
            }
         }
         else
         {
            throw new Error();
         }
      }
      
      private function docFrameListener(event:Event) : void
      {
         if(currentFrame == 2)
         {
            removeEventListener(Event.ENTER_FRAME,docFrameListener);
            if(totalFrames > 2)
            {
               addEventListener(Event.ENTER_FRAME,extraFrameListener);
            }
            docFrameHandler();
         }
      }
      
      public function get popUpChildren() : IChildList
      {
         if(!topLevel)
         {
            return _topLevelSystemManager.popUpChildren;
         }
         if(!_popUpChildren)
         {
            _popUpChildren = new SystemChildrenList(this,new QName(mx_internal,"noTopMostIndex"),new QName(mx_internal,"topMostIndex"));
         }
         return _popUpChildren;
      }
      
      private function addEventListenerToSandboxes(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false, skip:IEventDispatcher = null) : void
      {
         var i:int = 0;
         var childBridge:IEventDispatcher = null;
         if(!swfBridgeGroup)
         {
            return;
         }
         var request:EventListenerRequest = new EventListenerRequest(EventListenerRequest.ADD_EVENT_LISTENER_REQUEST,false,false,type,useCapture,priority,useWeakReference);
         var parentBridge:IEventDispatcher = swfBridgeGroup.parentBridge;
         if(parentBridge && parentBridge != skip)
         {
            parentBridge.addEventListener(type,listener,false,priority,useWeakReference);
         }
         for(var children:Array = swfBridgeGroup.getChildBridges(); i < children.length; )
         {
            childBridge = IEventDispatcher(children[i]);
            if(childBridge != skip)
            {
               childBridge.addEventListener(type,listener,false,priority,useWeakReference);
            }
            i++;
         }
         dispatchEventFromSWFBridges(request,skip);
      }
      
      private function forwardFormEvent(event:SWFBridgeEvent) : Boolean
      {
         var sbRoot:DisplayObject = null;
         if(isTopLevelRoot())
         {
            return false;
         }
         var bridge:IEventDispatcher = swfBridgeGroup.parentBridge;
         if(bridge)
         {
            sbRoot = getSandboxRoot();
            event.data.notifier = bridge;
            if(sbRoot == this)
            {
               if(!(event.data.window is String))
               {
                  event.data.window = NameUtil.displayObjectToString(DisplayObject(event.data.window));
               }
               else
               {
                  event.data.window = NameUtil.displayObjectToString(DisplayObject(this)) + "." + event.data.window;
               }
               bridge.dispatchEvent(event);
            }
            else
            {
               if(event.data.window is String)
               {
                  event.data.window = NameUtil.displayObjectToString(DisplayObject(this)) + "." + event.data.window;
               }
               sbRoot.dispatchEvent(event);
            }
         }
         return true;
      }
      
      public function set explicitHeight(value:Number) : void
      {
         _explicitHeight = value;
      }
      
      override public function removeChild(child:DisplayObject) : DisplayObject
      {
         noTopMostIndex--;
         return rawChildren_removeChild(child);
      }
      
      mx_internal function rawChildren_removeChild(child:DisplayObject) : DisplayObject
      {
         removingChild(child);
         super.removeChild(child);
         childRemoved(child);
         return child;
      }
      
      mx_internal final function get $numChildren() : int
      {
         return super.numChildren;
      }
      
      public function get toolTipChildren() : IChildList
      {
         if(!topLevel)
         {
            return _topLevelSystemManager.toolTipChildren;
         }
         if(!_toolTipChildren)
         {
            _toolTipChildren = new SystemChildrenList(this,new QName(mx_internal,"topMostIndex"),new QName(mx_internal,"toolTipIndex"));
         }
         return _toolTipChildren;
      }
      
      public function create(... params) : Object
      {
         var url:String = null;
         var dot:int = 0;
         var slash:int = 0;
         var mainClassName:String = info()["mainClassName"];
         if(mainClassName == null)
         {
            url = loaderInfo.loaderURL;
            dot = url.lastIndexOf(".");
            slash = url.lastIndexOf("/");
            mainClassName = url.substring(slash + 1,dot);
         }
         var mainClass:Class = Class(getDefinitionByName(mainClassName));
         return !!mainClass?new mainClass():null;
      }
      
      override public function get stage() : Stage
      {
         var root:DisplayObject = null;
         if(_stage)
         {
            return _stage;
         }
         var s:Stage = super.stage;
         if(s)
         {
            _stage = s;
            return s;
         }
         if(!topLevel && _topLevelSystemManager)
         {
            _stage = _topLevelSystemManager.stage;
            return _stage;
         }
         if(!isStageRoot && topLevel)
         {
            root = getTopLevelRoot();
            if(root)
            {
               _stage = root.stage;
               return _stage;
            }
         }
         return null;
      }
      
      override public function addChild(child:DisplayObject) : DisplayObject
      {
         var addIndex:int = numChildren;
         if(child.parent == this)
         {
            addIndex--;
         }
         return addChildAt(child,addIndex);
      }
      
      private function removeRemotePopUp(form:RemotePopUp) : void
      {
         var n:int = forms.length;
         for(var i:int = 0; i < n; i++)
         {
            if(isRemotePopUp(forms[i]))
            {
               if(forms[i].window == form.window && forms[i].bridge == form.bridge)
               {
                  if(forms[i] == form)
                  {
                     deactivateForm(form);
                  }
                  forms.splice(i,1);
                  break;
               }
            }
         }
      }
      
      private function deactivateRemotePopUp(form:Object) : void
      {
         var request:SWFBridgeRequest = new SWFBridgeRequest(SWFBridgeRequest.DEACTIVATE_POP_UP_REQUEST,false,false,form.bridge,form.window);
         var bridge:Object = form.bridge;
         if(bridge)
         {
            bridge.dispatchEvent(request);
         }
      }
      
      override public function getChildIndex(child:DisplayObject) : int
      {
         return super.getChildIndex(child) - applicationIndex;
      }
      
      mx_internal function rawChildren_getChildIndex(child:DisplayObject) : int
      {
         return super.getChildIndex(child);
      }
      
      public function activate(f:IFocusManagerContainer) : void
      {
         activateForm(f);
      }
      
      public function getSandboxRoot() : DisplayObject
      {
         var parent:DisplayObject = null;
         var lastParent:DisplayObject = null;
         var loader:Loader = null;
         var loaderInfo:LoaderInfo = null;
         var sm:ISystemManager = this;
         try
         {
            if(sm.topLevelSystemManager)
            {
               sm = sm.topLevelSystemManager;
            }
            parent = DisplayObject(sm).parent;
            if(parent is Stage)
            {
               return DisplayObject(sm);
            }
            if(parent && !parent.dispatchEvent(new Event("mx.managers.SystemManager.isBootstrapRoot",false,true)))
            {
               return this;
            }
            lastParent = this;
            while(parent)
            {
               if(parent is Stage)
               {
                  return lastParent;
               }
               if(!parent.dispatchEvent(new Event("mx.managers.SystemManager.isBootstrapRoot",false,true)))
               {
                  return lastParent;
               }
               if(parent is Loader)
               {
                  loader = Loader(parent);
                  loaderInfo = loader.contentLoaderInfo;
                  if(!loaderInfo.childAllowsParent)
                  {
                     return loaderInfo.content;
                  }
               }
               if(parent.hasEventListener(InterManagerRequest.SYSTEM_MANAGER_REQUEST))
               {
                  lastParent = parent;
               }
               parent = parent.parent;
            }
         }
         catch(error:Error)
         {
         }
         return lastParent != null?lastParent:DisplayObject(sm);
      }
      
      private function deferredNextFrame() : void
      {
         if(currentFrame + 1 > totalFrames)
         {
            return;
         }
         if(currentFrame + 1 <= framesLoaded)
         {
            nextFrame();
         }
         else
         {
            nextFrameTimer = new Timer(100);
            nextFrameTimer.addEventListener(TimerEvent.TIMER,nextFrameTimerHandler);
            nextFrameTimer.start();
         }
      }
      
      mx_internal function get cursorIndex() : int
      {
         return _cursorIndex;
      }
      
      mx_internal function rawChildren_contains(child:DisplayObject) : Boolean
      {
         return super.contains(child);
      }
      
      override public function setChildIndex(child:DisplayObject, newIndex:int) : void
      {
         super.setChildIndex(child,applicationIndex + newIndex);
      }
      
      public function get document() : Object
      {
         return _document;
      }
      
      private function resizeMouseCatcher() : void
      {
         var g:Graphics = null;
         var s:Rectangle = null;
         if(mouseCatcher)
         {
            try
            {
               g = mouseCatcher.graphics;
               s = screen;
               g.clear();
               g.beginFill(0,0);
               g.drawRect(0,0,s.width,s.height);
               g.endFill();
            }
            catch(e:SecurityError)
            {
            }
         }
      }
      
      private function extraFrameListener(event:Event) : void
      {
         if(lastFrame == currentFrame)
         {
            return;
         }
         lastFrame = currentFrame;
         if(currentFrame + 1 > totalFrames)
         {
            removeEventListener(Event.ENTER_FRAME,extraFrameListener);
         }
         extraFrameHandler();
      }
      
      private function addPopupRequestHandler(event:Event) : void
      {
         var topMost:* = false;
         var children:IChildList = null;
         var bridgeProvider:ISWFBridgeProvider = null;
         var request:SWFBridgeRequest = null;
         if(event.target != this && event is SWFBridgeRequest)
         {
            return;
         }
         var popUpRequest:SWFBridgeRequest = SWFBridgeRequest.marshal(event);
         if(event.target != this)
         {
            bridgeProvider = swfBridgeGroup.getChildBridgeProvider(IEventDispatcher(event.target));
            if(!SecurityUtil.hasMutualTrustBetweenParentAndChild(bridgeProvider))
            {
               return;
            }
         }
         if(swfBridgeGroup.parentBridge && SecurityUtil.hasMutualTrustBetweenParentAndChild(this))
         {
            popUpRequest.requestor = swfBridgeGroup.parentBridge;
            getSandboxRoot().dispatchEvent(popUpRequest);
            return;
         }
         if(!popUpRequest.data.childList || popUpRequest.data.childList == PopUpManagerChildList.PARENT)
         {
            topMost = Boolean(popUpRequest.data.parent && popUpChildren.contains(popUpRequest.data.parent));
         }
         else
         {
            topMost = popUpRequest.data.childList == PopUpManagerChildList.POPUP;
         }
         children = !!topMost?popUpChildren:this;
         children.addChild(DisplayObject(popUpRequest.data.window));
         if(popUpRequest.data.modal)
         {
            numModalWindows++;
         }
         var remoteForm:RemotePopUp = new RemotePopUp(popUpRequest.data.window,popUpRequest.requestor);
         forms.push(remoteForm);
         if(!isTopLevelRoot() && swfBridgeGroup)
         {
            request = new SWFBridgeRequest(SWFBridgeRequest.ADD_POP_UP_PLACE_HOLDER_REQUEST,false,false,popUpRequest.requestor,{"window":popUpRequest.data.window});
            request.data.placeHolderId = NameUtil.displayObjectToString(DisplayObject(popUpRequest.data.window));
            dispatchEvent(request);
         }
      }
      
      override public function get height() : Number
      {
         return _height;
      }
      
      mx_internal function rawChildren_getChildAt(index:int) : DisplayObject
      {
         return super.getChildAt(index);
      }
      
      private function systemManagerHandler(event:Event) : void
      {
         if(event["name"] == "sameSandbox")
         {
            event["value"] = currentSandboxEvent == event["value"];
            return;
         }
         if(event["name"] == "hasSWFBridges")
         {
            event["value"] = hasSWFBridges();
            return;
         }
         if(event is InterManagerRequest)
         {
            return;
         }
         var name:String = event["name"];
         switch(name)
         {
            case "popUpChildren.addChild":
               popUpChildren.addChild(event["value"]);
               break;
            case "popUpChildren.removeChild":
               popUpChildren.removeChild(event["value"]);
               break;
            case "cursorChildren.addChild":
               cursorChildren.addChild(event["value"]);
               break;
            case "cursorChildren.removeChild":
               cursorChildren.removeChild(event["value"]);
               break;
            case "toolTipChildren.addChild":
               toolTipChildren.addChild(event["value"]);
               break;
            case "toolTipChildren.removeChild":
               toolTipChildren.removeChild(event["value"]);
               break;
            case "screen":
               event["value"] = screen;
               break;
            case "application":
               event["value"] = application;
               break;
            case "isTopLevelRoot":
               event["value"] = isTopLevelRoot();
               break;
            case "getVisibleApplicationRect":
               event["value"] = getVisibleApplicationRect();
               break;
            case "bringToFront":
               if(event["value"].topMost)
               {
                  popUpChildren.setChildIndex(DisplayObject(event["value"].popUp),popUpChildren.numChildren - 1);
               }
               else
               {
                  setChildIndex(DisplayObject(event["value"].popUp),numChildren - 1);
               }
         }
      }
      
      private function activateRemotePopUp(form:Object) : void
      {
         var request:SWFBridgeRequest = new SWFBridgeRequest(SWFBridgeRequest.ACTIVATE_POP_UP_REQUEST,false,false,form.bridge,form.window);
         var bridge:Object = form.bridge;
         if(bridge)
         {
            bridge.dispatchEvent(request);
         }
      }
      
      mx_internal function set noTopMostIndex(value:int) : void
      {
         var delta:int = value - _noTopMostIndex;
         _noTopMostIndex = value;
         topMostIndex = topMostIndex + delta;
      }
      
      override public function getObjectsUnderPoint(point:Point) : Array
      {
         var child:DisplayObject = null;
         var temp:Array = null;
         var children:Array = [];
         var n:int = topMostIndex;
         for(var i:int = 0; i < n; i++)
         {
            child = super.getChildAt(i);
            if(child is DisplayObjectContainer)
            {
               temp = DisplayObjectContainer(child).getObjectsUnderPoint(point);
               if(temp)
               {
                  children = children.concat(temp);
               }
            }
         }
         return children;
      }
      
      mx_internal function get topMostIndex() : int
      {
         return _topMostIndex;
      }
      
      mx_internal function regenerateStyleCache(recursive:Boolean) : void
      {
         var child:IStyleClient = null;
         var foundTopLevelWindow:Boolean = false;
         var n:int = rawChildren.numChildren;
         for(var i:int = 0; i < n; i++)
         {
            child = rawChildren.getChildAt(i) as IStyleClient;
            if(child)
            {
               child.regenerateStyleCache(recursive);
            }
            if(isTopLevelWindow(DisplayObject(child)))
            {
               foundTopLevelWindow = true;
            }
            n = rawChildren.numChildren;
         }
         if(!foundTopLevelWindow && topLevelWindow is IStyleClient)
         {
            IStyleClient(topLevelWindow).regenerateStyleCache(recursive);
         }
      }
      
      public function addFocusManager(f:IFocusManagerContainer) : void
      {
         forms.push(f);
      }
      
      private function deactivateFormSandboxEventHandler(event:Event) : void
      {
         if(event is SWFBridgeRequest)
         {
            return;
         }
         var bridgeEvent:SWFBridgeEvent = SWFBridgeEvent.marshal(event);
         if(!forwardFormEvent(bridgeEvent))
         {
            if(isRemotePopUp(form) && RemotePopUp(form).window == bridgeEvent.data.window && RemotePopUp(form).bridge == bridgeEvent.data.notifier)
            {
               deactivateForm(form);
            }
         }
      }
      
      public function set swfBridgeGroup(bridgeGroup:ISWFBridgeGroup) : void
      {
         if(topLevel)
         {
            _swfBridgeGroup = bridgeGroup;
         }
         else if(topLevelSystemManager)
         {
            SystemManager(topLevelSystemManager).swfBridgeGroup = bridgeGroup;
         }
      }
      
      mx_internal function rawChildren_setChildIndex(child:DisplayObject, newIndex:int) : void
      {
         super.setChildIndex(child,newIndex);
      }
      
      private function mouseUpHandler(event:MouseEvent) : void
      {
         idleCounter = 0;
      }
      
      mx_internal function childAdded(child:DisplayObject) : void
      {
         child.dispatchEvent(new FlexEvent(FlexEvent.ADD));
         if(child is IUIComponent)
         {
            IUIComponent(child).initialize();
         }
      }
      
      public function isFontFaceEmbedded(textFormat:TextFormat) : Boolean
      {
         var font:Font = null;
         var style:String = null;
         var fontName:String = textFormat.font;
         var fl:Array = Font.enumerateFonts();
         for(var f:int = 0; f < fl.length; f++)
         {
            font = Font(fl[f]);
            if(font.fontName == fontName)
            {
               style = "regular";
               if(textFormat.bold && textFormat.italic)
               {
                  style = "boldItalic";
               }
               else if(textFormat.bold)
               {
                  style = "bold";
               }
               else if(textFormat.italic)
               {
                  style = "italic";
               }
               if(font.fontStyle == style)
               {
                  return true;
               }
            }
         }
         if(!fontName || !embeddedFontList || !embeddedFontList[fontName])
         {
            return false;
         }
         var info:Object = embeddedFontList[fontName];
         return !(textFormat.bold && !info.bold || textFormat.italic && !info.italic || !textFormat.bold && !textFormat.italic && !info.regular);
      }
      
      private function forwardPlaceholderRequest(request:SWFBridgeRequest, addPlaceholder:Boolean) : Boolean
      {
         if(isTopLevelRoot())
         {
            return false;
         }
         var refObj:Object = null;
         var oldId:String = null;
         if(request.data.window)
         {
            refObj = request.data.window;
            request.data.window = null;
         }
         else
         {
            refObj = request.requestor;
            oldId = request.data.placeHolderId;
            request.data.placeHolderId = NameUtil.displayObjectToString(this) + "." + request.data.placeHolderId;
         }
         if(addPlaceholder)
         {
            addPlaceholderId(request.data.placeHolderId,oldId,request.requestor,refObj);
         }
         else
         {
            removePlaceholderId(request.data.placeHolderId);
         }
         var sbRoot:DisplayObject = getSandboxRoot();
         var bridge:IEventDispatcher = swfBridgeGroup.parentBridge;
         request.requestor = bridge;
         if(sbRoot == this)
         {
            bridge.dispatchEvent(request);
         }
         else
         {
            sbRoot.dispatchEvent(request);
         }
         return true;
      }
      
      public function getTopLevelRoot() : DisplayObject
      {
         var sm:ISystemManager = null;
         var parent:DisplayObject = null;
         var lastParent:DisplayObject = null;
         try
         {
            sm = this;
            if(sm.topLevelSystemManager)
            {
               sm = sm.topLevelSystemManager;
            }
            parent = DisplayObject(sm).parent;
            lastParent = parent;
            while(parent)
            {
               if(parent is Stage)
               {
                  return lastParent;
               }
               lastParent = parent;
               parent = parent.parent;
            }
         }
         catch(error:SecurityError)
         {
         }
         return null;
      }
      
      override public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         var actualType:String = null;
         if(type == FlexEvent.RENDER || type == FlexEvent.ENTER_FRAME)
         {
            if(type == FlexEvent.RENDER)
            {
               var type:String = Event.RENDER;
            }
            else
            {
               type = Event.ENTER_FRAME;
            }
            try
            {
               if(stage)
               {
                  stage.removeEventListener(type,listener,useCapture);
               }
            }
            catch(error:SecurityError)
            {
            }
            super.removeEventListener(type,listener,useCapture);
            return;
         }
         if(hasSWFBridges() || SystemManagerGlobals.topLevelSystemManagers.length > 1)
         {
            actualType = EventUtil.sandboxMouseEventMap[type];
            if(actualType)
            {
               if(getSandboxRoot() == this && eventProxy)
               {
                  super.removeEventListener(actualType,eventProxy.marshalListener,useCapture);
                  if(actualType == MouseEvent.MOUSE_UP)
                  {
                     try
                     {
                        if(stage)
                        {
                           stage.removeEventListener(Event.MOUSE_LEAVE,eventProxy.marshalListener,useCapture);
                        }
                     }
                     catch(e:SecurityError)
                     {
                     }
                     super.removeEventListener(Event.MOUSE_LEAVE,eventProxy.marshalListener,useCapture);
                  }
               }
               if(!SystemManagerGlobals.changingListenersInOtherSystemManagers)
               {
                  removeEventListenerFromOtherSystemManagers(type,otherSystemManagerMouseListener,useCapture);
               }
               removeEventListenerFromSandboxes(type,sandboxMouseListener,useCapture);
               super.removeEventListener(type,listener,false);
               return;
            }
         }
         if(type == FlexEvent.IDLE)
         {
            super.removeEventListener(type,listener,useCapture);
            if(!hasEventListener(FlexEvent.IDLE) && idleTimer)
            {
               idleTimer.stop();
               idleTimer = null;
               removeEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandler);
               removeEventListener(MouseEvent.MOUSE_UP,mouseUpHandler);
            }
         }
         else
         {
            super.removeEventListener(type,listener,useCapture);
         }
         if(type == MouseEvent.MOUSE_MOVE || type == MouseEvent.MOUSE_UP || type == MouseEvent.MOUSE_DOWN || type == Event.ACTIVATE || type == Event.DEACTIVATE)
         {
            if(!hasEventListener(type))
            {
               try
               {
                  if(stage)
                  {
                     stage.removeEventListener(type,stageEventHandler,false);
                  }
               }
               catch(error:SecurityError)
               {
               }
            }
         }
         if(type == SandboxMouseEvent.MOUSE_UP_SOMEWHERE)
         {
            if(!hasEventListener(SandboxMouseEvent.MOUSE_UP_SOMEWHERE))
            {
               try
               {
                  if(stage)
                  {
                     stage.removeEventListener(Event.MOUSE_LEAVE,mouseLeaveHandler);
                  }
               }
               catch(error:SecurityError)
               {
               }
               super.removeEventListener(Event.MOUSE_LEAVE,mouseLeaveHandler);
            }
         }
      }
      
      private function extraFrameHandler(event:Event = null) : void
      {
         var c:Class = null;
         var frameList:Object = info()["frames"];
         if(frameList && frameList[currentLabel])
         {
            c = Class(getDefinitionByName(frameList[currentLabel]));
            c["frame"](this);
         }
         deferredNextFrame();
      }
      
      public function isTopLevelRoot() : Boolean
      {
         return isStageRoot || isBootstrapRoot;
      }
      
      public function get application() : IUIComponent
      {
         return IUIComponent(_document);
      }
      
      override public function removeChildAt(index:int) : DisplayObject
      {
         noTopMostIndex--;
         return rawChildren_removeChildAt(applicationIndex + index);
      }
      
      mx_internal function rawChildren_removeChildAt(index:int) : DisplayObject
      {
         var child:DisplayObject = super.getChildAt(index);
         removingChild(child);
         super.removeChildAt(index);
         childRemoved(child);
         return child;
      }
      
      private function getSWFBridgeOfDisplayObject(displayObject:DisplayObject) : IEventDispatcher
      {
         var request:SWFBridgeRequest = null;
         var children:Array = null;
         var n:int = 0;
         var i:int = 0;
         var childBridge:IEventDispatcher = null;
         var bp:ISWFBridgeProvider = null;
         if(swfBridgeGroup)
         {
            request = new SWFBridgeRequest(SWFBridgeRequest.IS_BRIDGE_CHILD_REQUEST,false,false,null,displayObject);
            children = swfBridgeGroup.getChildBridges();
            n = children.length;
            for(i = 0; i < n; i++)
            {
               childBridge = IEventDispatcher(children[i]);
               bp = swfBridgeGroup.getChildBridgeProvider(childBridge);
               if(SecurityUtil.hasMutualTrustBetweenParentAndChild(bp))
               {
                  childBridge.dispatchEvent(request);
                  if(request.data == true)
                  {
                     return childBridge;
                  }
                  request.data = displayObject;
               }
            }
         }
         return null;
      }
      
      private function deactivateRequestHandler(event:Event) : void
      {
         var placeholder:PlaceholderData = null;
         var popUp:RemotePopUp = null;
         var smp:SystemManagerProxy = null;
         var f:IFocusManagerContainer = null;
         var request:SWFBridgeRequest = SWFBridgeRequest.marshal(event);
         var child:Object = request.data;
         var nextId:String = null;
         if(request.data is String)
         {
            placeholder = idToPlaceholder[request.data];
            child = placeholder.data;
            nextId = placeholder.id;
            if(nextId == null)
            {
               popUp = findRemotePopUp(child,placeholder.bridge);
               if(popUp)
               {
                  deactivateRemotePopUp(popUp);
                  return;
               }
            }
         }
         if(child is SystemManagerProxy)
         {
            smp = SystemManagerProxy(child);
            f = findFocusManagerContainer(smp);
            if(smp && f)
            {
               smp.deactivateByProxy(f);
            }
         }
         else if(child is IFocusManagerContainer)
         {
            IFocusManagerContainer(child).focusManager.deactivate();
         }
         else
         {
            if(child is IEventDispatcher)
            {
               request.data = nextId;
               request.requestor = IEventDispatcher(child);
               IEventDispatcher(child).dispatchEvent(request);
               return;
            }
            throw new Error();
         }
      }
      
      private function installCompiledResourceBundles() : void
      {
         var info:Object = this.info();
         var applicationDomain:ApplicationDomain = !topLevel && parent is Loader?Loader(parent).contentLoaderInfo.applicationDomain:info["currentDomain"];
         var compiledLocales:Array = info["compiledLocales"];
         var compiledResourceBundleNames:Array = info["compiledResourceBundleNames"];
         var resourceManager:IResourceManager = ResourceManager.getInstance();
         resourceManager.installCompiledResourceBundles(applicationDomain,compiledLocales,compiledResourceBundleNames);
         if(!resourceManager.localeChain)
         {
            resourceManager.initializeLocaleChain(compiledLocales);
         }
      }
      
      private function deactivateForm(f:Object) : void
      {
         if(form)
         {
            if(form == f && forms.length > 1)
            {
               if(isRemotePopUp(form))
               {
                  deactivateRemotePopUp(form);
               }
               else
               {
                  form.focusManager.deactivate();
               }
               form = findLastActiveForm(f);
               if(form)
               {
                  if(isRemotePopUp(form))
                  {
                     activateRemotePopUp(form);
                  }
                  else
                  {
                     form.focusManager.activate();
                  }
               }
            }
         }
      }
      
      private function unloadHandler(event:Event) : void
      {
         dispatchEvent(event);
      }
      
      mx_internal function removingChild(child:DisplayObject) : void
      {
         child.dispatchEvent(new FlexEvent(FlexEvent.REMOVE));
      }
      
      mx_internal function get applicationIndex() : int
      {
         return _applicationIndex;
      }
      
      mx_internal function set toolTipIndex(value:int) : void
      {
         var delta:int = value - _toolTipIndex;
         _toolTipIndex = value;
         cursorIndex = cursorIndex + delta;
      }
      
      private function hasSWFBridges() : Boolean
      {
         if(swfBridgeGroup)
         {
            return true;
         }
         return false;
      }
      
      private function updateLastActiveForm() : void
      {
         var n:int = forms.length;
         if(n < 2)
         {
            return;
         }
         var index:int = -1;
         for(var i:int = 0; i < n; i++)
         {
            if(areFormsEqual(form,forms[i]))
            {
               index = i;
               break;
            }
         }
         if(index >= 0)
         {
            forms.splice(index,1);
            forms.push(form);
         }
      }
      
      mx_internal function set bridgeToFocusManager(bridgeToFMDictionary:Dictionary) : void
      {
         if(topLevel)
         {
            _bridgeToFocusManager = bridgeToFMDictionary;
         }
         else if(topLevelSystemManager)
         {
            SystemManager(topLevelSystemManager).bridgeToFocusManager = bridgeToFMDictionary;
         }
      }
      
      public function get cursorChildren() : IChildList
      {
         if(!topLevel)
         {
            return _topLevelSystemManager.cursorChildren;
         }
         if(!_cursorChildren)
         {
            _cursorChildren = new SystemChildrenList(this,new QName(mx_internal,"toolTipIndex"),new QName(mx_internal,"cursorIndex"));
         }
         return _cursorChildren;
      }
      
      private function sandboxMouseListener(event:Event) : void
      {
         if(event is SandboxMouseEvent)
         {
            return;
         }
         var marshaledEvent:Event = SandboxMouseEvent.marshal(event);
         dispatchEventFromSWFBridges(marshaledEvent,event.target as IEventDispatcher);
         var me:InterManagerRequest = new InterManagerRequest(InterManagerRequest.SYSTEM_MANAGER_REQUEST);
         me.name = "sameSandbox";
         me.value = event;
         getSandboxRoot().dispatchEvent(me);
         if(!me.value)
         {
            dispatchEvent(marshaledEvent);
         }
      }
      
      public function get preloaderBackgroundImage() : Object
      {
         return info()["backgroundImage"];
      }
      
      public function set numModalWindows(value:int) : void
      {
         _numModalWindows = value;
      }
      
      public function get preloaderBackgroundAlpha() : Number
      {
         return info()["backgroundAlpha"];
      }
      
      mx_internal function rawChildren_getChildByName(name:String) : DisplayObject
      {
         return super.getChildByName(name);
      }
      
      private function dispatchInvalidateRequest() : void
      {
         var bridge:IEventDispatcher = swfBridgeGroup.parentBridge;
         var request:SWFBridgeRequest = new SWFBridgeRequest(SWFBridgeRequest.INVALIDATE_REQUEST,false,false,bridge,InvalidateRequestData.SIZE | InvalidateRequestData.DISPLAY_LIST);
         bridge.dispatchEvent(request);
      }
      
      public function allowDomain(... domains) : void
      {
      }
      
      public function get preloaderBackgroundColor() : uint
      {
         var value:* = info()["backgroundColor"];
         if(value == undefined)
         {
            return StyleManager.NOT_A_COLOR;
         }
         return StyleManager.getColorName(value);
      }
      
      public function getVisibleApplicationRect(bounds:Rectangle = null) : Rectangle
      {
         var s:Rectangle = null;
         var pt:Point = null;
         var bridge:IEventDispatcher = null;
         var request:SWFBridgeRequest = null;
         if(!bounds)
         {
            bounds = getBounds(DisplayObject(this));
            s = screen;
            pt = new Point(Math.max(0,bounds.x),Math.max(0,bounds.y));
            pt = localToGlobal(pt);
            bounds.x = pt.x;
            bounds.y = pt.y;
            bounds.width = s.width;
            bounds.height = s.height;
         }
         if(useSWFBridge())
         {
            bridge = swfBridgeGroup.parentBridge;
            request = new SWFBridgeRequest(SWFBridgeRequest.GET_VISIBLE_RECT_REQUEST,false,false,bridge,bounds);
            bridge.dispatchEvent(request);
            bounds = Rectangle(request.data);
         }
         return bounds;
      }
      
      public function get topLevelSystemManager() : ISystemManager
      {
         if(topLevel)
         {
            return this;
         }
         return _topLevelSystemManager;
      }
      
      private function appCreationCompleteHandler(event:FlexEvent) : void
      {
         var obj:DisplayObjectContainer = null;
         if(!topLevel && parent)
         {
            obj = parent.parent;
            while(obj)
            {
               if(obj is IInvalidating)
               {
                  IInvalidating(obj).invalidateSize();
                  IInvalidating(obj).invalidateDisplayList();
                  return;
               }
               obj = obj.parent;
            }
         }
         if(topLevel && useSWFBridge())
         {
            dispatchInvalidateRequest();
         }
      }
      
      public function addChildToSandboxRoot(layer:String, child:DisplayObject) : void
      {
         var me:InterManagerRequest = null;
         if(getSandboxRoot() == this)
         {
            this[layer].addChild(child);
         }
         else
         {
            addingChild(child);
            me = new InterManagerRequest(InterManagerRequest.SYSTEM_MANAGER_REQUEST);
            me.name = layer + ".addChild";
            me.value = child;
            getSandboxRoot().dispatchEvent(me);
            childAdded(child);
         }
      }
      
      private function dispatchDeactivatedWindowEvent(window:DisplayObject) : void
      {
         var sbRoot:DisplayObject = null;
         var sendToSbRoot:* = false;
         var bridgeEvent:SWFBridgeEvent = null;
         var bridge:IEventDispatcher = !!swfBridgeGroup?swfBridgeGroup.parentBridge:null;
         if(bridge)
         {
            sbRoot = getSandboxRoot();
            sendToSbRoot = sbRoot != this;
            bridgeEvent = new SWFBridgeEvent(SWFBridgeEvent.BRIDGE_WINDOW_DEACTIVATE,false,false,{
               "notifier":bridge,
               "window":(!!sendToSbRoot?window:NameUtil.displayObjectToString(window))
            });
            if(sendToSbRoot)
            {
               sbRoot.dispatchEvent(bridgeEvent);
            }
            else
            {
               bridge.dispatchEvent(bridgeEvent);
            }
         }
      }
      
      private function isBridgeChildHandler(event:Event) : void
      {
         if(event is SWFBridgeRequest)
         {
            return;
         }
         var eObj:Object = Object(event);
         eObj.data = eObj.data && rawChildren.contains(eObj.data as DisplayObject);
      }
      
      public function get measuredHeight() : Number
      {
         return !!topLevelWindow?Number(topLevelWindow.getExplicitOrMeasuredHeight()):Number(loaderInfo.height);
      }
      
      private function activateRequestHandler(event:Event) : void
      {
         var placeholder:PlaceholderData = null;
         var popUp:RemotePopUp = null;
         var smp:SystemManagerProxy = null;
         var f:IFocusManagerContainer = null;
         var request:SWFBridgeRequest = SWFBridgeRequest.marshal(event);
         var child:Object = request.data;
         var nextId:String = null;
         if(request.data is String)
         {
            placeholder = idToPlaceholder[request.data];
            child = placeholder.data;
            nextId = placeholder.id;
            if(nextId == null)
            {
               popUp = findRemotePopUp(child,placeholder.bridge);
               if(popUp)
               {
                  activateRemotePopUp(popUp);
                  return;
               }
            }
         }
         if(child is SystemManagerProxy)
         {
            smp = SystemManagerProxy(child);
            f = findFocusManagerContainer(smp);
            if(smp && f)
            {
               smp.activateByProxy(f);
            }
         }
         else if(child is IFocusManagerContainer)
         {
            IFocusManagerContainer(child).focusManager.activate();
         }
         else if(child is IEventDispatcher)
         {
            request.data = nextId;
            request.requestor = IEventDispatcher(child);
            IEventDispatcher(child).dispatchEvent(request);
         }
         else
         {
            throw new Error();
         }
      }
      
      mx_internal function rawChildren_addChildAt(child:DisplayObject, index:int) : DisplayObject
      {
         addingChild(child);
         super.addChildAt(child,index);
         childAdded(child);
         return child;
      }
      
      mx_internal function initialize() : void
      {
         var n:int = 0;
         var i:int = 0;
         var fontRegistry:EmbeddedFontRegistry = null;
         var normalizedURL:String = null;
         var crossDomainRSLItem:Class = null;
         var cdNode:Object = null;
         var node:RSLItem = null;
         if(isStageRoot)
         {
            _width = stage.stageWidth;
            _height = stage.stageHeight;
         }
         else
         {
            _width = loaderInfo.width;
            _height = loaderInfo.height;
         }
         preloader = new Preloader();
         preloader.addEventListener(FlexEvent.INIT_PROGRESS,preloader_initProgressHandler);
         preloader.addEventListener(FlexEvent.PRELOADER_DONE,preloader_preloaderDoneHandler);
         preloader.addEventListener(RSLEvent.RSL_COMPLETE,preloader_rslCompleteHandler);
         if(!_popUpChildren)
         {
            _popUpChildren = new SystemChildrenList(this,new QName(mx_internal,"noTopMostIndex"),new QName(mx_internal,"topMostIndex"));
         }
         _popUpChildren.addChild(preloader);
         var rsls:Array = info()["rsls"];
         var cdRsls:Array = info()["cdRsls"];
         var usePreloader:Boolean = true;
         if(info()["usePreloader"] != undefined)
         {
            usePreloader = info()["usePreloader"];
         }
         var preloaderDisplayClass:Class = info()["preloader"] as Class;
         if(usePreloader && !preloaderDisplayClass)
         {
            preloaderDisplayClass = DownloadProgressBar;
         }
         var rslList:Array = [];
         if(cdRsls && cdRsls.length > 0)
         {
            normalizedURL = LoaderUtil.normalizeURL(this.loaderInfo);
            crossDomainRSLItem = Class(getDefinitionByName("mx.core::CrossDomainRSLItem"));
            n = cdRsls.length;
            for(i = 0; i < n; i++)
            {
               cdNode = new crossDomainRSLItem(cdRsls[i]["rsls"],cdRsls[i]["policyFiles"],cdRsls[i]["digests"],cdRsls[i]["types"],cdRsls[i]["isSigned"],normalizedURL,this);
               rslList.push(cdNode);
            }
         }
         if(rsls != null && rsls.length > 0)
         {
            if(normalizedURL == null)
            {
               normalizedURL = LoaderUtil.normalizeURL(this.loaderInfo);
            }
            n = rsls.length;
            for(i = 0; i < n; i++)
            {
               node = new RSLItem(rsls[i].url,normalizedURL,this);
               rslList.push(node);
            }
         }
         Singleton.registerClass("mx.resources::IResourceManager",Class(getDefinitionByName("mx.resources::ResourceManagerImpl")));
         var resourceManager:IResourceManager = ResourceManager.getInstance();
         Singleton.registerClass("mx.core::IEmbeddedFontRegistry",Class(getDefinitionByName("mx.core::EmbeddedFontRegistry")));
         Singleton.registerClass("mx.styles::IStyleManager",Class(getDefinitionByName("mx.styles::StyleManagerImpl")));
         Singleton.registerClass("mx.styles::IStyleManager2",Class(getDefinitionByName("mx.styles::StyleManagerImpl")));
         var localeChainList:String = loaderInfo.parameters["localeChain"];
         if(localeChainList != null && localeChainList != "")
         {
            resourceManager.localeChain = localeChainList.split(",");
         }
         var resourceModuleURLList:String = loaderInfo.parameters["resourceModuleURLs"];
         var resourceModuleURLs:Array = !!resourceModuleURLList?resourceModuleURLList.split(","):null;
         preloader.initialize(usePreloader,preloaderDisplayClass,preloaderBackgroundColor,preloaderBackgroundAlpha,preloaderBackgroundImage,preloaderBackgroundSize,!!isStageRoot?Number(stage.stageWidth):Number(loaderInfo.width),!!isStageRoot?Number(stage.stageHeight):Number(loaderInfo.height),null,null,rslList,resourceModuleURLs);
      }
      
      public function useSWFBridge() : Boolean
      {
         if(isStageRoot)
         {
            return false;
         }
         if(!topLevel && topLevelSystemManager)
         {
            return topLevelSystemManager.useSWFBridge();
         }
         var sbRoot:DisplayObject = getSandboxRoot();
         if(topLevel && sbRoot != this)
         {
            return true;
         }
         if(sbRoot == this)
         {
            try
            {
               root.loaderInfo.parentAllowsChild;
               if(parentAllowsChild && childAllowsParent)
               {
                  try
                  {
                     if(!parent.dispatchEvent(new Event("mx.managers.SystemManager.isStageRoot",false,true)))
                     {
                        return true;
                     }
                  }
                  catch(e:Error)
                  {
                  }
               }
               else
               {
                  return true;
               }
            }
            catch(e1:Error)
            {
               return false;
            }
         }
         return false;
      }
      
      mx_internal function childRemoved(child:DisplayObject) : void
      {
         if(child is IUIComponent)
         {
            IUIComponent(child).parentChanged(null);
         }
      }
      
      mx_internal final function $removeChildAt(index:int) : DisplayObject
      {
         return super.removeChildAt(index);
      }
      
      private function canActivatePopUp(f:Object) : Boolean
      {
         var remotePopUp:RemotePopUp = null;
         var event:SWFBridgeRequest = null;
         if(isRemotePopUp(f))
         {
            remotePopUp = RemotePopUp(f);
            event = new SWFBridgeRequest(SWFBridgeRequest.CAN_ACTIVATE_POP_UP_REQUEST,false,false,null,remotePopUp.window);
            IEventDispatcher(remotePopUp.bridge).dispatchEvent(event);
            return event.data;
         }
         if(canActivateLocalComponent(f))
         {
            return true;
         }
         return false;
      }
      
      mx_internal function get noTopMostIndex() : int
      {
         return _noTopMostIndex;
      }
      
      override public function get numChildren() : int
      {
         return noTopMostIndex - applicationIndex;
      }
      
      private function canActivateLocalComponent(o:Object) : Boolean
      {
         if(o is Sprite && o is IUIComponent && Sprite(o).visible && IUIComponent(o).enabled)
         {
            return true;
         }
         return false;
      }
      
      private function preloader_preloaderDoneHandler(event:Event) : void
      {
         var app:IUIComponent = topLevelWindow;
         preloader.removeEventListener(FlexEvent.PRELOADER_DONE,preloader_preloaderDoneHandler);
         preloader.removeEventListener(RSLEvent.RSL_COMPLETE,preloader_rslCompleteHandler);
         _popUpChildren.removeChild(preloader);
         preloader = null;
         mouseCatcher = new FlexSprite();
         mouseCatcher.name = "mouseCatcher";
         noTopMostIndex++;
         super.addChildAt(mouseCatcher,0);
         resizeMouseCatcher();
         if(!topLevel)
         {
            mouseCatcher.visible = false;
            mask = mouseCatcher;
         }
         noTopMostIndex++;
         super.addChildAt(DisplayObject(app),1);
         app.dispatchEvent(new FlexEvent(FlexEvent.APPLICATION_COMPLETE));
         dispatchEvent(new FlexEvent(FlexEvent.APPLICATION_COMPLETE));
      }
      
      private function initializeTopLevelWindow(event:Event) : void
      {
         var app:IUIComponent = null;
         var obj:DisplayObjectContainer = null;
         var sm:ISystemManager = null;
         var sandboxRoot:DisplayObject = null;
         initialized = true;
         if(!parent && parentAllowsChild)
         {
            return;
         }
         if(!topLevel)
         {
            if(!parent)
            {
               return;
            }
            obj = parent.parent;
            if(!obj)
            {
               return;
            }
            while(obj)
            {
               if(obj is IUIComponent)
               {
                  sm = IUIComponent(obj).systemManager;
                  if(sm && !sm.isTopLevel())
                  {
                     sm = sm.topLevelSystemManager;
                  }
                  _topLevelSystemManager = sm;
                  break;
               }
               obj = obj.parent;
            }
         }
         if(isTopLevelRoot() || getSandboxRoot() == this)
         {
            addEventListener(MouseEvent.MOUSE_DOWN,mouseDownHandler,true);
         }
         if(isTopLevelRoot() && stage)
         {
            stage.addEventListener(Event.RESIZE,Stage_resizeHandler,false,0,true);
         }
         else if(topLevel && stage)
         {
            sandboxRoot = getSandboxRoot();
            if(sandboxRoot != this)
            {
               sandboxRoot.addEventListener(Event.RESIZE,Stage_resizeHandler,false,0,true);
            }
         }
         document = app = topLevelWindow = IUIComponent(create());
         if(document)
         {
            IEventDispatcher(app).addEventListener(FlexEvent.CREATION_COMPLETE,appCreationCompleteHandler);
            if(!LoaderConfig._url)
            {
               LoaderConfig._url = loaderInfo.url;
               LoaderConfig._parameters = loaderInfo.parameters;
               LoaderConfig._swfVersion = loaderInfo.swfVersion;
            }
            if(isStageRoot && stage)
            {
               _width = stage.stageWidth;
               _height = stage.stageHeight;
               IFlexDisplayObject(app).setActualSize(_width,_height);
            }
            else
            {
               IFlexDisplayObject(app).setActualSize(loaderInfo.width,loaderInfo.height);
            }
            if(preloader)
            {
               preloader.registerApplication(app);
            }
            addingChild(DisplayObject(app));
            childAdded(DisplayObject(app));
         }
         else
         {
            document = this;
         }
      }
      
      mx_internal final function $addChildAt(child:DisplayObject, index:int) : DisplayObject
      {
         return super.addChildAt(child,index);
      }
      
      private function stageEventHandler(event:Event) : void
      {
         if(event.target is Stage && mouseCatcher)
         {
            mouseCatcher.dispatchEvent(event);
         }
      }
      
      private function nextFrameTimerHandler(event:TimerEvent) : void
      {
         if(currentFrame + 1 <= framesLoaded)
         {
            nextFrame();
            nextFrameTimer.removeEventListener(TimerEvent.TIMER,nextFrameTimerHandler);
            nextFrameTimer.reset();
         }
      }
      
      mx_internal function get bridgeToFocusManager() : Dictionary
      {
         if(topLevel)
         {
            return _bridgeToFocusManager;
         }
         if(topLevelSystemManager)
         {
            return SystemManager(topLevelSystemManager).bridgeToFocusManager;
         }
         return null;
      }
      
      public function get numModalWindows() : int
      {
         return _numModalWindows;
      }
      
      private function areFormsEqual(form1:Object, form2:Object) : Boolean
      {
         if(form1 == form2)
         {
            return true;
         }
         if(form1 is RemotePopUp && form2 is RemotePopUp)
         {
            return areRemotePopUpsEqual(form1,form2);
         }
         return false;
      }
      
      public function isTopLevelWindow(object:DisplayObject) : Boolean
      {
         return object is IUIComponent && IUIComponent(object) == topLevelWindow;
      }
      
      private function removePlaceholderId(id:String) : void
      {
         delete idToPlaceholder[id];
      }
      
      mx_internal function dispatchActivatedWindowEvent(window:DisplayObject) : void
      {
         var sbRoot:DisplayObject = null;
         var sendToSbRoot:* = false;
         var bridgeEvent:SWFBridgeEvent = null;
         var bridge:IEventDispatcher = !!swfBridgeGroup?swfBridgeGroup.parentBridge:null;
         if(bridge)
         {
            sbRoot = getSandboxRoot();
            sendToSbRoot = sbRoot != this;
            bridgeEvent = new SWFBridgeEvent(SWFBridgeEvent.BRIDGE_WINDOW_ACTIVATE,false,false,{
               "notifier":bridge,
               "window":(!!sendToSbRoot?window:NameUtil.displayObjectToString(window))
            });
            if(sendToSbRoot)
            {
               sbRoot.dispatchEvent(bridgeEvent);
            }
            else
            {
               bridge.dispatchEvent(bridgeEvent);
            }
         }
      }
      
      override public function get width() : Number
      {
         return _width;
      }
      
      private function dispatchActivatedApplicationEvent() : void
      {
         var bridgeEvent:SWFBridgeEvent = null;
         var bridge:IEventDispatcher = !!swfBridgeGroup?swfBridgeGroup.parentBridge:null;
         if(bridge)
         {
            bridgeEvent = new SWFBridgeEvent(SWFBridgeEvent.BRIDGE_APPLICATION_ACTIVATE,false,false);
            bridge.dispatchEvent(bridgeEvent);
         }
      }
      
      private function otherSystemManagerMouseListener(event:SandboxMouseEvent) : void
      {
         if(SystemManagerGlobals.dispatchingEventToOtherSystemManagers)
         {
            return;
         }
         dispatchEventFromSWFBridges(event);
         var me:InterManagerRequest = new InterManagerRequest(InterManagerRequest.SYSTEM_MANAGER_REQUEST);
         me.name = "sameSandbox";
         me.value = event;
         getSandboxRoot().dispatchEvent(me);
         if(!me.value)
         {
            dispatchEvent(event);
         }
      }
      
      private function hideMouseCursorRequestHandler(event:Event) : void
      {
         var bridge:IEventDispatcher = null;
         if(!isTopLevelRoot() && event is SWFBridgeRequest)
         {
            return;
         }
         var request:SWFBridgeRequest = SWFBridgeRequest.marshal(event);
         if(!isTopLevelRoot())
         {
            bridge = swfBridgeGroup.parentBridge;
            request.requestor = bridge;
            bridge.dispatchEvent(request);
         }
         else if(eventProxy)
         {
            SystemManagerGlobals.showMouseCursor = false;
         }
      }
      
      private function getTopLevelSystemManager(parent:DisplayObject) : ISystemManager
      {
         var sm:ISystemManager = null;
         var localRoot:DisplayObjectContainer = DisplayObjectContainer(parent.root);
         if((!localRoot || localRoot is Stage) && parent is IUIComponent)
         {
            localRoot = DisplayObjectContainer(IUIComponent(parent).systemManager);
         }
         if(localRoot is ISystemManager)
         {
            sm = ISystemManager(localRoot);
            if(!sm.isTopLevel())
            {
               sm = sm.topLevelSystemManager;
            }
         }
         return sm;
      }
      
      public function isDisplayObjectInABridgedApplication(displayObject:DisplayObject) : Boolean
      {
         return getSWFBridgeOfDisplayObject(displayObject) != null;
      }
      
      public function move(x:Number, y:Number) : void
      {
      }
      
      public function set explicitWidth(value:Number) : void
      {
         _explicitWidth = value;
      }
      
      public function get parentAllowsChild() : Boolean
      {
         try
         {
            return loaderInfo.parentAllowsChild;
         }
         catch(error:Error)
         {
         }
         return false;
      }
      
      private function preloader_initProgressHandler(event:Event) : void
      {
         preloader.removeEventListener(FlexEvent.INIT_PROGRESS,preloader_initProgressHandler);
         deferredNextFrame();
      }
      
      private function mouseLeaveHandler(event:Event) : void
      {
         dispatchEvent(new SandboxMouseEvent(SandboxMouseEvent.MOUSE_UP_SOMEWHERE));
      }
      
      public function get explicitWidth() : Number
      {
         return _explicitWidth;
      }
      
      private function activateFormSandboxEventHandler(event:Event) : void
      {
         var bridgeEvent:SWFBridgeEvent = SWFBridgeEvent.marshal(event);
         if(!forwardFormEvent(bridgeEvent))
         {
            activateForm(new RemotePopUp(bridgeEvent.data.window,bridgeEvent.data.notifier));
         }
      }
      
      mx_internal function rawChildren_addChild(child:DisplayObject) : DisplayObject
      {
         addingChild(child);
         super.addChild(child);
         childAdded(child);
         return child;
      }
   }
}
