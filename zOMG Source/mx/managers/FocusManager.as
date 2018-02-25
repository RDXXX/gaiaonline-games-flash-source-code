package mx.managers
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.system.Capabilities;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import mx.core.FlexSprite;
   import mx.core.IButton;
   import mx.core.IChildList;
   import mx.core.IRawChildrenContainer;
   import mx.core.ISWFBridgeProvider;
   import mx.core.ISWFLoader;
   import mx.core.IToggleButton;
   import mx.core.IUIComponent;
   import mx.core.SWFBridgeGroup;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.FocusRequestDirection;
   import mx.events.SWFBridgeEvent;
   import mx.events.SWFBridgeRequest;
   
   use namespace mx_internal;
   
   public class FocusManager implements IFocusManager
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      private static const FROM_INDEX_UNSPECIFIED:int = -2;
       
      
      private var lastActiveFocusManager:FocusManager;
      
      private var _showFocusIndicator:Boolean = false;
      
      private var focusableCandidates:Array;
      
      private var LARGE_TAB_INDEX:int = 99999;
      
      private var browserFocusComponent:InteractiveObject;
      
      private var calculateCandidates:Boolean = true;
      
      private var _lastFocus:IFocusManagerComponent;
      
      private var lastAction:String;
      
      private var focusSetLocally:Boolean;
      
      private var focusableObjects:Array;
      
      private var swfBridgeGroup:SWFBridgeGroup;
      
      private var defButton:IButton;
      
      private var _form:IFocusManagerContainer;
      
      private var popup:Boolean;
      
      private var focusChanged:Boolean;
      
      private var _defaultButtonEnabled:Boolean = true;
      
      private var activated:Boolean = false;
      
      private var _defaultButton:IButton;
      
      private var fauxFocus:DisplayObject;
      
      private var _focusPane:Sprite;
      
      private var skipBridge:IEventDispatcher;
      
      public var browserMode:Boolean;
      
      public function FocusManager(container:IFocusManagerContainer, popup:Boolean = false)
      {
         var sm:ISystemManager = null;
         var bridge:IEventDispatcher = null;
         super();
         this.popup = popup;
         browserMode = Capabilities.playerType == "ActiveX" && !popup;
         container.focusManager = this;
         _form = container;
         focusableObjects = [];
         focusPane = new FlexSprite();
         focusPane.name = "focusPane";
         addFocusables(DisplayObject(container));
         container.addEventListener(Event.ADDED,addedHandler);
         container.addEventListener(Event.REMOVED,removedHandler);
         container.addEventListener(FlexEvent.SHOW,showHandler);
         container.addEventListener(FlexEvent.HIDE,hideHandler);
         if(container.systemManager is SystemManager)
         {
            if(container != SystemManager(container.systemManager).application)
            {
               container.addEventListener(FlexEvent.CREATION_COMPLETE,creationCompleteHandler);
            }
         }
         try
         {
            container.systemManager.addFocusManager(container);
            sm = form.systemManager;
            swfBridgeGroup = new SWFBridgeGroup(sm);
            if(!popup)
            {
               swfBridgeGroup.parentBridge = sm.swfBridgeGroup.parentBridge;
            }
            if(sm.useSWFBridge())
            {
               sm.addEventListener(SWFBridgeEvent.BRIDGE_APPLICATION_UNLOADING,removeFromParentBridge);
               bridge = swfBridgeGroup.parentBridge;
               if(bridge)
               {
                  bridge.addEventListener(SWFBridgeRequest.MOVE_FOCUS_REQUEST,focusRequestMoveHandler);
                  bridge.addEventListener(SWFBridgeRequest.SET_SHOW_FOCUS_INDICATOR_REQUEST,setShowFocusIndicatorRequestHandler);
               }
               if(bridge && !(form.systemManager is SystemManagerProxy))
               {
                  bridge.addEventListener(SWFBridgeRequest.ACTIVATE_FOCUS_REQUEST,focusRequestActivateHandler);
                  bridge.addEventListener(SWFBridgeRequest.DEACTIVATE_FOCUS_REQUEST,focusRequestDeactivateHandler);
                  bridge.addEventListener(SWFBridgeEvent.BRIDGE_FOCUS_MANAGER_ACTIVATE,bridgeEventActivateHandler);
               }
               container.addEventListener(Event.ADDED_TO_STAGE,addedToStageHandler);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function dispatchSetShowFocusIndicatorRequest(value:Boolean, skip:IEventDispatcher) : void
      {
         var request:SWFBridgeRequest = new SWFBridgeRequest(SWFBridgeRequest.SET_SHOW_FOCUS_INDICATOR_REQUEST,false,false,null,value);
         dispatchEventFromSWFBridges(request,skip);
      }
      
      private function creationCompleteHandler(event:FlexEvent) : void
      {
         var o:DisplayObject = DisplayObject(form);
         if(o.parent && o.visible && !activated)
         {
            form.systemManager.activate(form);
         }
      }
      
      private function addFocusables(o:DisplayObject, skipTopLevel:Boolean = false) : void
      {
         var addToFocusables:Boolean = false;
         var focusable:IFocusManagerComponent = null;
         var doc:DisplayObjectContainer = null;
         var rawChildren:IChildList = null;
         var i:int = 0;
         if(o is IFocusManagerComponent && !skipTopLevel)
         {
            addToFocusables = false;
            if(o is IFocusManagerComponent)
            {
               focusable = IFocusManagerComponent(o);
               if(focusable.focusEnabled)
               {
                  if(focusable.tabEnabled && isTabVisible(o))
                  {
                     addToFocusables = true;
                  }
               }
            }
            if(addToFocusables)
            {
               if(focusableObjects.indexOf(o) == -1)
               {
                  focusableObjects.push(o);
                  calculateCandidates = true;
               }
               o.addEventListener("tabEnabledChange",tabEnabledChangeHandler);
               o.addEventListener("tabIndexChange",tabIndexChangeHandler);
            }
         }
         if(o is DisplayObjectContainer)
         {
            doc = DisplayObjectContainer(o);
            o.addEventListener("tabChildrenChange",tabChildrenChangeHandler);
            if(doc.tabChildren)
            {
               if(o is IRawChildrenContainer)
               {
                  rawChildren = IRawChildrenContainer(o).rawChildren;
                  for(i = 0; i < rawChildren.numChildren; i++)
                  {
                     try
                     {
                        addFocusables(rawChildren.getChildAt(i));
                     }
                     catch(error:SecurityError)
                     {
                     }
                  }
               }
               else
               {
                  for(i = 0; i < doc.numChildren; i++)
                  {
                     try
                     {
                        addFocusables(doc.getChildAt(i));
                     }
                     catch(error:SecurityError)
                     {
                     }
                  }
               }
            }
         }
      }
      
      private function tabEnabledChangeHandler(event:Event) : void
      {
         calculateCandidates = true;
         var o:InteractiveObject = InteractiveObject(event.target);
         var n:int = focusableObjects.length;
         for(var i:int = 0; i < n; i++)
         {
            if(focusableObjects[i] == o)
            {
               break;
            }
         }
         if(o.tabEnabled)
         {
            if(i == n && isTabVisible(o))
            {
               if(focusableObjects.indexOf(o) == -1)
               {
                  focusableObjects.push(o);
               }
            }
         }
         else if(i < n)
         {
            focusableObjects.splice(i,1);
         }
      }
      
      private function mouseFocusChangeHandler(event:FocusEvent) : void
      {
         var tf:TextField = null;
         if(event.relatedObject == null && "isRelatedObjectInaccessible" in event && event["isRelatedObjectInaccessible"] == true)
         {
            return;
         }
         if(event.relatedObject is TextField)
         {
            tf = event.relatedObject as TextField;
            if(tf.type == "input" || tf.selectable)
            {
               return;
            }
         }
         event.preventDefault();
      }
      
      public function addSWFBridge(bridge:IEventDispatcher, owner:DisplayObject) : void
      {
         if(!owner)
         {
            return;
         }
         var sm:ISystemManager = _form.systemManager;
         if(focusableObjects.indexOf(owner) == -1)
         {
            focusableObjects.push(owner);
            calculateCandidates = true;
         }
         swfBridgeGroup.addChildBridge(bridge,ISWFBridgeProvider(owner));
         bridge.addEventListener(SWFBridgeRequest.MOVE_FOCUS_REQUEST,focusRequestMoveHandler);
         bridge.addEventListener(SWFBridgeRequest.SET_SHOW_FOCUS_INDICATOR_REQUEST,setShowFocusIndicatorRequestHandler);
         bridge.addEventListener(SWFBridgeEvent.BRIDGE_FOCUS_MANAGER_ACTIVATE,bridgeEventActivateHandler);
      }
      
      private function getChildIndex(parent:DisplayObjectContainer, child:DisplayObject) : int
      {
         try
         {
            return parent.getChildIndex(child);
         }
         catch(e:Error)
         {
            if(parent is IRawChildrenContainer)
            {
               return IRawChildrenContainer(parent).rawChildren.getChildIndex(child);
            }
            throw e;
         }
         throw new Error("FocusManager.getChildIndex failed");
      }
      
      private function bridgeEventActivateHandler(event:Event) : void
      {
         if(event is SWFBridgeEvent)
         {
            return;
         }
         lastActiveFocusManager = null;
         _lastFocus = null;
         dispatchActivatedFocusManagerEvent(IEventDispatcher(event.target));
      }
      
      private function focusOutHandler(event:FocusEvent) : void
      {
         var target:InteractiveObject = InteractiveObject(event.target);
      }
      
      private function isValidFocusCandidate(o:DisplayObject, g:String) : Boolean
      {
         var tg:IFocusManagerGroup = null;
         if(!isEnabledAndVisible(o))
         {
            return false;
         }
         if(o is IFocusManagerGroup)
         {
            tg = IFocusManagerGroup(o);
            if(g == tg.groupName)
            {
               return false;
            }
         }
         return true;
      }
      
      private function defaultButtonKeyHandler(event:KeyboardEvent) : void
      {
         var sm:ISystemManager = form.systemManager;
         if(sm.isDisplayObjectInABridgedApplication(DisplayObject(event.target)))
         {
            return;
         }
         if(defaultButtonEnabled && event.keyCode == Keyboard.ENTER && defaultButton && defButton.enabled)
         {
            sendDefaultButtonEvent();
         }
      }
      
      private function removeFocusables(o:DisplayObject, dontRemoveTabChildrenHandler:Boolean) : void
      {
         var i:int = 0;
         if(o is DisplayObjectContainer)
         {
            if(!dontRemoveTabChildrenHandler)
            {
               o.removeEventListener("tabChildrenChange",tabChildrenChangeHandler);
            }
            for(i = 0; i < focusableObjects.length; i++)
            {
               if(isParent(DisplayObjectContainer(o),focusableObjects[i]))
               {
                  if(focusableObjects[i] == _lastFocus)
                  {
                     _lastFocus.drawFocus(false);
                     _lastFocus = null;
                  }
                  focusableObjects[i].removeEventListener("tabEnabledChange",tabEnabledChangeHandler);
                  focusableObjects[i].removeEventListener("tabIndexChange",tabIndexChangeHandler);
                  focusableObjects.splice(i,1);
                  i--;
                  focusableCandidates = [];
                  calculateCandidates = true;
               }
            }
         }
      }
      
      private function addedHandler(event:Event) : void
      {
         var target:DisplayObject = DisplayObject(event.target);
         if(target.stage)
         {
            addFocusables(DisplayObject(event.target));
         }
      }
      
      private function tabChildrenChangeHandler(event:Event) : void
      {
         if(event.target != event.currentTarget)
         {
            return;
         }
         calculateCandidates = true;
         var o:DisplayObjectContainer = DisplayObjectContainer(event.target);
         if(o.tabChildren)
         {
            addFocusables(o,true);
         }
         else
         {
            removeFocusables(o,true);
         }
      }
      
      private function sortByDepth(aa:DisplayObject, bb:DisplayObject) : Number
      {
         var index:int = 0;
         var tmp:String = null;
         var tmp2:String = null;
         var val1:String = "";
         var val2:String = "";
         var zeros:String = "0000";
         var a:DisplayObject = DisplayObject(aa);
         var b:DisplayObject = DisplayObject(bb);
         while(a != DisplayObject(form) && a.parent)
         {
            index = getChildIndex(a.parent,a);
            tmp = index.toString(16);
            if(tmp.length < 4)
            {
               tmp2 = zeros.substring(0,4 - tmp.length) + tmp;
            }
            val1 = tmp2 + val1;
            a = a.parent;
         }
         while(b != DisplayObject(form) && b.parent)
         {
            index = getChildIndex(b.parent,b);
            tmp = index.toString(16);
            if(tmp.length < 4)
            {
               tmp2 = zeros.substring(0,4 - tmp.length) + tmp;
            }
            val2 = tmp2 + val2;
            b = b.parent;
         }
         return val1 > val2?Number(1):val1 < val2?Number(-1):Number(0);
      }
      
      mx_internal function sendDefaultButtonEvent() : void
      {
         defButton.dispatchEvent(new MouseEvent("click"));
      }
      
      public function getFocus() : IFocusManagerComponent
      {
         var o:InteractiveObject = form.systemManager.stage.focus;
         return findFocusManagerComponent(o);
      }
      
      private function deactivateHandler(event:Event) : void
      {
      }
      
      private function setFocusToBottom() : void
      {
         setFocusToNextIndex(focusableObjects.length,true);
      }
      
      private function tabIndexChangeHandler(event:Event) : void
      {
         calculateCandidates = true;
      }
      
      private function sortFocusableObjects() : void
      {
         var c:InteractiveObject = null;
         focusableCandidates = [];
         var n:int = focusableObjects.length;
         for(var i:int = 0; i < n; i++)
         {
            c = focusableObjects[i];
            if(c.tabIndex && !isNaN(Number(c.tabIndex)) && c.tabIndex > 0)
            {
               sortFocusableObjectsTabIndex();
               return;
            }
            focusableCandidates.push(c);
         }
         focusableCandidates.sort(sortByDepth);
      }
      
      private function keyFocusChangeHandler(event:FocusEvent) : void
      {
         var sm:ISystemManager = form.systemManager;
         if(sm.isDisplayObjectInABridgedApplication(DisplayObject(event.target)))
         {
            return;
         }
         showFocusIndicator = true;
         focusChanged = false;
         if(event.keyCode == Keyboard.TAB && !event.isDefaultPrevented())
         {
            if(browserFocusComponent)
            {
               if(browserFocusComponent.tabIndex == LARGE_TAB_INDEX)
               {
                  browserFocusComponent.tabIndex = -1;
               }
               browserFocusComponent = null;
               if(SystemManager(form.systemManager).useSWFBridge())
               {
                  moveFocusToParent(event.shiftKey);
                  if(focusChanged)
                  {
                     event.preventDefault();
                  }
               }
               return;
            }
            setFocusToNextObject(event);
            if(focusChanged)
            {
               event.preventDefault();
            }
         }
      }
      
      private function getNextFocusManagerComponent2(backward:Boolean = false, fromObject:DisplayObject = null, fromIndex:int = -2) : FocusInfo
      {
         var o:DisplayObject = null;
         var g:String = null;
         var tg:IFocusManagerGroup = null;
         if(focusableObjects.length == 0)
         {
            return null;
         }
         if(calculateCandidates)
         {
            sortFocusableObjects();
            calculateCandidates = false;
         }
         var i:int = fromIndex;
         if(fromIndex == FROM_INDEX_UNSPECIFIED)
         {
            o = fromObject;
            if(!o)
            {
               o = form.systemManager.stage.focus;
            }
            o = DisplayObject(findFocusManagerComponent2(InteractiveObject(o)));
            g = "";
            if(o is IFocusManagerGroup)
            {
               tg = IFocusManagerGroup(o);
               g = tg.groupName;
            }
            i = getIndexOfFocusedObject(o);
         }
         var bSearchAll:Boolean = false;
         var start:int = i;
         if(i == -1)
         {
            if(backward)
            {
               i = focusableCandidates.length;
            }
            bSearchAll = true;
         }
         var j:int = getIndexOfNextObject(i,backward,bSearchAll,g);
         var wrapped:Boolean = false;
         if(backward)
         {
            if(j >= i)
            {
               wrapped = true;
            }
         }
         else if(j <= i)
         {
            wrapped = true;
         }
         var focusInfo:FocusInfo = new FocusInfo();
         focusInfo.displayObject = findFocusManagerComponent2(focusableCandidates[j]);
         focusInfo.wrapped = wrapped;
         return focusInfo;
      }
      
      private function getIndexOfFocusedObject(o:DisplayObject) : int
      {
         var iui:IUIComponent = null;
         if(!o)
         {
            return -1;
         }
         var n:int = focusableCandidates.length;
         var i:int = 0;
         for(i = 0; i < n; i++)
         {
            if(focusableCandidates[i] == o)
            {
               return i;
            }
         }
         for(i = 0; i < n; i++)
         {
            iui = focusableCandidates[i] as IUIComponent;
            if(iui && iui.owns(o))
            {
               return i;
            }
         }
         return -1;
      }
      
      private function focusRequestActivateHandler(event:Event) : void
      {
         skipBridge = IEventDispatcher(event.target);
         activate();
         skipBridge = null;
      }
      
      private function removeFromParentBridge(event:Event) : void
      {
         var bridge:IEventDispatcher = null;
         var sm:ISystemManager = form.systemManager;
         if(sm.useSWFBridge())
         {
            sm.removeEventListener(SWFBridgeEvent.BRIDGE_APPLICATION_UNLOADING,removeFromParentBridge);
            bridge = swfBridgeGroup.parentBridge;
            if(bridge)
            {
               bridge.removeEventListener(SWFBridgeRequest.MOVE_FOCUS_REQUEST,focusRequestMoveHandler);
               bridge.removeEventListener(SWFBridgeRequest.SET_SHOW_FOCUS_INDICATOR_REQUEST,setShowFocusIndicatorRequestHandler);
            }
            if(bridge && !(form.systemManager is SystemManagerProxy))
            {
               bridge.removeEventListener(SWFBridgeRequest.ACTIVATE_FOCUS_REQUEST,focusRequestActivateHandler);
               bridge.removeEventListener(SWFBridgeRequest.DEACTIVATE_FOCUS_REQUEST,focusRequestDeactivateHandler);
               bridge.removeEventListener(SWFBridgeEvent.BRIDGE_FOCUS_MANAGER_ACTIVATE,bridgeEventActivateHandler);
            }
         }
      }
      
      private function getParentBridge() : IEventDispatcher
      {
         if(swfBridgeGroup)
         {
            return swfBridgeGroup.parentBridge;
         }
         return null;
      }
      
      private function setFocusToComponent(o:Object, shiftKey:Boolean) : void
      {
         var request:SWFBridgeRequest = null;
         var sandboxBridge:IEventDispatcher = null;
         focusChanged = false;
         if(o)
         {
            if(o is ISWFLoader && ISWFLoader(o).swfBridge)
            {
               request = new SWFBridgeRequest(SWFBridgeRequest.MOVE_FOCUS_REQUEST,false,true,null,!!shiftKey?FocusRequestDirection.BOTTOM:FocusRequestDirection.TOP);
               sandboxBridge = ISWFLoader(o).swfBridge;
               if(sandboxBridge)
               {
                  sandboxBridge.dispatchEvent(request);
                  focusChanged = request.data;
               }
            }
            else if(o is IFocusManagerComplexComponent)
            {
               IFocusManagerComplexComponent(o).assignFocus(!!shiftKey?"bottom":"top");
               focusChanged = true;
            }
            else if(o is IFocusManagerComponent)
            {
               setFocus(IFocusManagerComponent(o));
               focusChanged = true;
            }
         }
      }
      
      private function focusRequestMoveHandler(event:Event) : void
      {
         var startingPosition:DisplayObject = null;
         if(event is SWFBridgeRequest)
         {
            return;
         }
         focusSetLocally = false;
         var request:SWFBridgeRequest = SWFBridgeRequest.marshal(event);
         if(request.data == FocusRequestDirection.TOP || request.data == FocusRequestDirection.BOTTOM)
         {
            if(focusableObjects.length == 0)
            {
               moveFocusToParent(request.data == FocusRequestDirection.TOP?false:true);
               event["data"] = focusChanged;
               return;
            }
            if(request.data == FocusRequestDirection.TOP)
            {
               setFocusToTop();
            }
            else
            {
               setFocusToBottom();
            }
            event["data"] = focusChanged;
         }
         else
         {
            startingPosition = DisplayObject(_form.systemManager.swfBridgeGroup.getChildBridgeProvider(IEventDispatcher(event.target)));
            moveFocus(request.data as String,startingPosition);
            event["data"] = focusChanged;
         }
         if(focusSetLocally)
         {
            dispatchActivatedFocusManagerEvent(null);
            lastActiveFocusManager = this;
         }
      }
      
      public function get nextTabIndex() : int
      {
         return getMaxTabIndex() + 1;
      }
      
      private function dispatchActivatedFocusManagerEvent(skip:IEventDispatcher = null) : void
      {
         if(lastActiveFocusManager == this)
         {
            return;
         }
         var event:SWFBridgeEvent = new SWFBridgeEvent(SWFBridgeEvent.BRIDGE_FOCUS_MANAGER_ACTIVATE);
         dispatchEventFromSWFBridges(event,skip);
      }
      
      private function focusRequestDeactivateHandler(event:Event) : void
      {
         skipBridge = IEventDispatcher(event.target);
         deactivate();
         skipBridge = null;
      }
      
      public function get focusPane() : Sprite
      {
         return _focusPane;
      }
      
      private function keyDownHandler(event:KeyboardEvent) : void
      {
         var o:DisplayObject = null;
         var g:String = null;
         var i:int = 0;
         var j:int = 0;
         var tg:IFocusManagerGroup = null;
         var sm:ISystemManager = form.systemManager;
         if(sm.isDisplayObjectInABridgedApplication(DisplayObject(event.target)))
         {
            return;
         }
         if(sm is SystemManager)
         {
            SystemManager(sm).idleCounter = 0;
         }
         if(event.keyCode == Keyboard.TAB)
         {
            lastAction = "KEY";
            if(calculateCandidates)
            {
               sortFocusableObjects();
               calculateCandidates = false;
            }
         }
         if(browserMode)
         {
            if(event.keyCode == Keyboard.TAB && focusableCandidates.length > 0)
            {
               o = fauxFocus;
               if(!o)
               {
                  o = form.systemManager.stage.focus;
               }
               o = DisplayObject(findFocusManagerComponent2(InteractiveObject(o)));
               g = "";
               if(o is IFocusManagerGroup)
               {
                  tg = IFocusManagerGroup(o);
                  g = tg.groupName;
               }
               i = getIndexOfFocusedObject(o);
               j = getIndexOfNextObject(i,event.shiftKey,false,g);
               if(event.shiftKey)
               {
                  if(j >= i)
                  {
                     browserFocusComponent = getBrowserFocusComponent(event.shiftKey);
                     if(browserFocusComponent.tabIndex == -1)
                     {
                        browserFocusComponent.tabIndex = 0;
                     }
                  }
               }
               else if(j <= i)
               {
                  browserFocusComponent = getBrowserFocusComponent(event.shiftKey);
                  if(browserFocusComponent.tabIndex == -1)
                  {
                     browserFocusComponent.tabIndex = LARGE_TAB_INDEX;
                  }
               }
            }
         }
      }
      
      private function mouseDownHandler(event:MouseEvent) : void
      {
         if(event.isDefaultPrevented())
         {
            return;
         }
         var sm:ISystemManager = form.systemManager;
         var o:DisplayObject = getTopLevelFocusTarget(InteractiveObject(event.target));
         if(!o)
         {
            return;
         }
         showFocusIndicator = false;
         if((o != _lastFocus || lastAction == "ACTIVATE") && !(o is TextField))
         {
            setFocus(IFocusManagerComponent(o));
         }
         else if(_lastFocus)
         {
            if(!_lastFocus && o is IEventDispatcher && SystemManager(form.systemManager).useSWFBridge())
            {
               IEventDispatcher(o).dispatchEvent(new FocusEvent(FocusEvent.FOCUS_IN));
            }
         }
         lastAction = "MOUSEDOWN";
         dispatchActivatedFocusManagerEvent(null);
         lastActiveFocusManager = this;
      }
      
      private function focusInHandler(event:FocusEvent) : void
      {
         var x:IButton = null;
         var target:InteractiveObject = InteractiveObject(event.target);
         var sm:ISystemManager = form.systemManager;
         if(sm.isDisplayObjectInABridgedApplication(DisplayObject(event.target)))
         {
            return;
         }
         if(isParent(DisplayObjectContainer(form),target))
         {
            _lastFocus = findFocusManagerComponent(InteractiveObject(target));
            if(_lastFocus is IButton && !(_lastFocus is IToggleButton))
            {
               x = _lastFocus as IButton;
               if(defButton)
               {
                  defButton.emphasized = false;
                  defButton = x;
                  x.emphasized = true;
               }
            }
            else if(defButton && defButton != _defaultButton)
            {
               defButton.emphasized = false;
               defButton = _defaultButton;
               if(_defaultButton)
               {
                  _defaultButton.emphasized = true;
               }
            }
         }
      }
      
      public function toString() : String
      {
         return Object(form).toString() + ".focusManager";
      }
      
      public function deactivate() : void
      {
         var sm:ISystemManager = form.systemManager;
         if(sm)
         {
            if(sm.isTopLevelRoot())
            {
               sm.stage.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,mouseFocusChangeHandler);
               sm.stage.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,keyFocusChangeHandler);
               sm.stage.removeEventListener(Event.ACTIVATE,activateHandler);
               sm.stage.removeEventListener(Event.DEACTIVATE,deactivateHandler);
            }
            else
            {
               sm.removeEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,mouseFocusChangeHandler);
               sm.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,keyFocusChangeHandler);
               sm.removeEventListener(Event.ACTIVATE,activateHandler);
               sm.removeEventListener(Event.DEACTIVATE,deactivateHandler);
            }
         }
         form.removeEventListener(FocusEvent.FOCUS_IN,focusInHandler,true);
         form.removeEventListener(FocusEvent.FOCUS_OUT,focusOutHandler,true);
         form.removeEventListener(MouseEvent.MOUSE_DOWN,mouseDownHandler);
         form.removeEventListener(KeyboardEvent.KEY_DOWN,defaultButtonKeyHandler);
         form.removeEventListener(KeyboardEvent.KEY_DOWN,keyDownHandler,true);
         activated = false;
         dispatchEventFromSWFBridges(new SWFBridgeRequest(SWFBridgeRequest.DEACTIVATE_FOCUS_REQUEST),skipBridge);
      }
      
      private function findFocusManagerComponent2(o:InteractiveObject) : DisplayObject
      {
         try
         {
            while(o)
            {
               if(o is IFocusManagerComponent && IFocusManagerComponent(o).focusEnabled || o is ISWFLoader)
               {
                  return o;
               }
               var o:InteractiveObject = o.parent;
            }
         }
         catch(error:SecurityError)
         {
         }
         return null;
      }
      
      private function getIndexOfNextObject(i:int, shiftKey:Boolean, bSearchAll:Boolean, groupName:String) : int
      {
         var o:DisplayObject = null;
         var tg1:IFocusManagerGroup = null;
         var j:int = 0;
         var obj:DisplayObject = null;
         var tg2:IFocusManagerGroup = null;
         var n:int = focusableCandidates.length;
         var start:int = i;
         while(true)
         {
            if(shiftKey)
            {
               i--;
            }
            else
            {
               i++;
            }
            if(bSearchAll)
            {
               if(shiftKey && i < 0)
               {
                  break;
               }
               if(!shiftKey && i == n)
               {
                  break;
               }
            }
            else
            {
               i = (i + n) % n;
               if(start == i)
               {
                  break;
               }
               if(start == -1)
               {
                  start = i;
               }
            }
            if(isValidFocusCandidate(focusableCandidates[i],groupName))
            {
               o = DisplayObject(findFocusManagerComponent2(focusableCandidates[i]));
               if(o is IFocusManagerGroup)
               {
                  tg1 = IFocusManagerGroup(o);
                  for(j = 0; j < focusableCandidates.length; j++)
                  {
                     obj = focusableCandidates[j];
                     if(obj is IFocusManagerGroup)
                     {
                        tg2 = IFocusManagerGroup(obj);
                        if(tg2.groupName == tg1.groupName && tg2.selected)
                        {
                           if(InteractiveObject(obj).tabIndex != InteractiveObject(o).tabIndex && !tg1.selected)
                           {
                              return getIndexOfNextObject(i,shiftKey,bSearchAll,groupName);
                           }
                           i = j;
                           break;
                        }
                     }
                  }
               }
               return i;
            }
         }
         return i;
      }
      
      public function moveFocus(direction:String, fromDisplayObject:DisplayObject = null) : void
      {
         if(direction == FocusRequestDirection.TOP)
         {
            setFocusToTop();
            return;
         }
         if(direction == FocusRequestDirection.BOTTOM)
         {
            setFocusToBottom();
            return;
         }
         var keyboardEvent:KeyboardEvent = new KeyboardEvent(KeyboardEvent.KEY_DOWN);
         keyboardEvent.keyCode = Keyboard.TAB;
         keyboardEvent.shiftKey = direction == FocusRequestDirection.FORWARD?false:true;
         fauxFocus = fromDisplayObject;
         keyDownHandler(keyboardEvent);
         var focusEvent:FocusEvent = new FocusEvent(FocusEvent.KEY_FOCUS_CHANGE);
         focusEvent.keyCode = Keyboard.TAB;
         focusEvent.shiftKey = direction == FocusRequestDirection.FORWARD?false:true;
         keyFocusChangeHandler(focusEvent);
         fauxFocus = null;
      }
      
      private function getMaxTabIndex() : int
      {
         var t:Number = NaN;
         var z:Number = 0;
         var n:int = focusableObjects.length;
         for(var i:int = 0; i < n; i++)
         {
            t = focusableObjects[i].tabIndex;
            if(!isNaN(t))
            {
               z = Math.max(z,t);
            }
         }
         return z;
      }
      
      private function isParent(p:DisplayObjectContainer, o:DisplayObject) : Boolean
      {
         if(p is IRawChildrenContainer)
         {
            return IRawChildrenContainer(p).rawChildren.contains(o);
         }
         return p.contains(o);
      }
      
      private function showHandler(event:Event) : void
      {
         form.systemManager.activate(form);
      }
      
      mx_internal function set form(value:IFocusManagerContainer) : void
      {
         _form = value;
      }
      
      public function setFocus(o:IFocusManagerComponent) : void
      {
         o.setFocus();
         focusSetLocally = true;
      }
      
      public function findFocusManagerComponent(o:InteractiveObject) : IFocusManagerComponent
      {
         return findFocusManagerComponent2(o) as IFocusManagerComponent;
      }
      
      public function removeSWFBridge(bridge:IEventDispatcher) : void
      {
         var index:int = 0;
         var sm:ISystemManager = _form.systemManager;
         var displayObject:DisplayObject = DisplayObject(swfBridgeGroup.getChildBridgeProvider(bridge));
         if(displayObject)
         {
            index = focusableObjects.indexOf(displayObject);
            if(index != -1)
            {
               focusableObjects.splice(index,1);
               calculateCandidates = true;
            }
            bridge.removeEventListener(SWFBridgeRequest.MOVE_FOCUS_REQUEST,focusRequestMoveHandler);
            bridge.removeEventListener(SWFBridgeRequest.SET_SHOW_FOCUS_INDICATOR_REQUEST,setShowFocusIndicatorRequestHandler);
            bridge.removeEventListener(SWFBridgeEvent.BRIDGE_FOCUS_MANAGER_ACTIVATE,bridgeEventActivateHandler);
            swfBridgeGroup.removeChildBridge(bridge);
            return;
         }
         throw new Error();
      }
      
      private function sortFocusableObjectsTabIndex() : void
      {
         var c:IFocusManagerComponent = null;
         focusableCandidates = [];
         var n:int = focusableObjects.length;
         for(var i:int = 0; i < n; i++)
         {
            c = focusableObjects[i] as IFocusManagerComponent;
            if(c && c.tabIndex && !isNaN(Number(c.tabIndex)) || focusableObjects[i] is ISWFLoader)
            {
               focusableCandidates.push(focusableObjects[i]);
            }
         }
         focusableCandidates.sort(sortByTabIndex);
      }
      
      public function set defaultButton(value:IButton) : void
      {
         var button:IButton = !!value?IButton(value):null;
         if(button != _defaultButton)
         {
            if(_defaultButton)
            {
               _defaultButton.emphasized = false;
            }
            if(defButton)
            {
               defButton.emphasized = false;
            }
            _defaultButton = button;
            if(_lastFocus && _lastFocus is IButton && !(_lastFocus is IToggleButton))
            {
               defButton = _lastFocus as IButton;
               defButton.emphasized = true;
            }
            else
            {
               defButton = button;
               if(button)
               {
                  button.emphasized = true;
               }
            }
         }
      }
      
      private function setFocusToNextObject(event:FocusEvent) : void
      {
         focusChanged = false;
         if(focusableObjects.length == 0)
         {
            return;
         }
         var focusInfo:FocusInfo = getNextFocusManagerComponent2(event.shiftKey,fauxFocus);
         if(!popup && (focusInfo.wrapped || !focusInfo.displayObject))
         {
            if(getParentBridge())
            {
               moveFocusToParent(event.shiftKey);
               return;
            }
         }
         if(!focusInfo.displayObject)
         {
            event.preventDefault();
            return;
         }
         setFocusToComponent(focusInfo.displayObject,event.shiftKey);
      }
      
      private function getTopLevelFocusTarget(o:InteractiveObject) : InteractiveObject
      {
         while(true)
         {
            if(o != InteractiveObject(form))
            {
               if(o is IFocusManagerComponent && IFocusManagerComponent(o).focusEnabled && IFocusManagerComponent(o).mouseFocusEnabled && (o is IUIComponent?Boolean(IUIComponent(o).enabled):Boolean(true)))
               {
                  break;
               }
               if(o.parent is ISWFLoader)
               {
                  if(ISWFLoader(o.parent).swfBridge)
                  {
                     return null;
                  }
               }
               o = o.parent;
               if(o != null)
               {
                  continue;
               }
            }
            return null;
         }
         return o;
      }
      
      private function addedToStageHandler(event:Event) : void
      {
         _form.removeEventListener(Event.ADDED_TO_STAGE,addedToStageHandler);
         if(focusableObjects.length == 0)
         {
            addFocusables(DisplayObject(_form));
            calculateCandidates = true;
         }
      }
      
      private function hideHandler(event:Event) : void
      {
         form.systemManager.deactivate(form);
      }
      
      private function isEnabledAndVisible(o:DisplayObject) : Boolean
      {
         var formParent:DisplayObjectContainer = DisplayObject(form).parent;
         while(o != formParent)
         {
            if(o is IUIComponent)
            {
               if(!IUIComponent(o).enabled)
               {
                  return false;
               }
            }
            if(!o.visible)
            {
               return false;
            }
            o = o.parent;
         }
         return true;
      }
      
      public function hideFocus() : void
      {
         if(showFocusIndicator)
         {
            showFocusIndicator = false;
            if(_lastFocus)
            {
               _lastFocus.drawFocus(false);
            }
         }
      }
      
      private function getBrowserFocusComponent(shiftKey:Boolean) : InteractiveObject
      {
         var index:int = 0;
         var focusComponent:InteractiveObject = form.systemManager.stage.focus;
         if(!focusComponent)
         {
            index = !!shiftKey?0:int(focusableCandidates.length - 1);
            focusComponent = focusableCandidates[index];
         }
         return focusComponent;
      }
      
      public function get showFocusIndicator() : Boolean
      {
         return _showFocusIndicator;
      }
      
      private function moveFocusToParent(shiftKey:Boolean) : Boolean
      {
         var request:SWFBridgeRequest = new SWFBridgeRequest(SWFBridgeRequest.MOVE_FOCUS_REQUEST,false,true,null,!!shiftKey?FocusRequestDirection.BACKWARD:FocusRequestDirection.FORWARD);
         var sandboxBridge:IEventDispatcher = _form.systemManager.swfBridgeGroup.parentBridge;
         sandboxBridge.dispatchEvent(request);
         focusChanged = request.data;
         return focusChanged;
      }
      
      public function set focusPane(value:Sprite) : void
      {
         _focusPane = value;
      }
      
      mx_internal function get form() : IFocusManagerContainer
      {
         return _form;
      }
      
      private function removedHandler(event:Event) : void
      {
         var i:int = 0;
         var o:DisplayObject = DisplayObject(event.target);
         var focusPaneParent:DisplayObject = !!focusPane?focusPane.parent:null;
         if(focusPaneParent && o != focusPane)
         {
            if(o is DisplayObjectContainer && isParent(DisplayObjectContainer(o),focusPane))
            {
               if(focusPaneParent is ISystemManager)
               {
                  ISystemManager(focusPaneParent).focusPane = null;
               }
               else
               {
                  IUIComponent(focusPaneParent).focusPane = null;
               }
            }
         }
         if(o is IFocusManagerComponent)
         {
            for(i = 0; i < focusableObjects.length; i++)
            {
               if(o == focusableObjects[i])
               {
                  if(o == _lastFocus)
                  {
                     _lastFocus.drawFocus(false);
                     _lastFocus = null;
                  }
                  o.removeEventListener("tabEnabledChange",tabEnabledChangeHandler);
                  o.removeEventListener("tabIndexChange",tabIndexChangeHandler);
                  focusableObjects.splice(i,1);
                  focusableCandidates = [];
                  calculateCandidates = true;
                  break;
               }
            }
         }
         removeFocusables(o,false);
      }
      
      private function dispatchEventFromSWFBridges(event:Event, skip:IEventDispatcher = null) : void
      {
         var clone:Event = null;
         var parentBridge:IEventDispatcher = null;
         var sm:ISystemManager = form.systemManager;
         if(!popup)
         {
            parentBridge = swfBridgeGroup.parentBridge;
            if(parentBridge && parentBridge != skip)
            {
               clone = event.clone();
               if(clone is SWFBridgeRequest)
               {
                  SWFBridgeRequest(clone).requestor = parentBridge;
               }
               parentBridge.dispatchEvent(clone);
            }
         }
         var children:Array = swfBridgeGroup.getChildBridges();
         for(var i:int = 0; i < children.length; i++)
         {
            if(children[i] != skip)
            {
               clone = event.clone();
               if(clone is SWFBridgeRequest)
               {
                  SWFBridgeRequest(clone).requestor = IEventDispatcher(children[i]);
               }
               IEventDispatcher(children[i]).dispatchEvent(clone);
            }
         }
      }
      
      public function get defaultButton() : IButton
      {
         return _defaultButton;
      }
      
      private function activateHandler(event:Event) : void
      {
         if(_lastFocus && !browserMode)
         {
            _lastFocus.setFocus();
         }
         lastAction = "ACTIVATE";
      }
      
      public function showFocus() : void
      {
         if(!showFocusIndicator)
         {
            showFocusIndicator = true;
            if(_lastFocus)
            {
               _lastFocus.drawFocus(true);
            }
         }
      }
      
      public function getNextFocusManagerComponent(backward:Boolean = false) : IFocusManagerComponent
      {
         return getNextFocusManagerComponent2(backward,fauxFocus).displayObject as IFocusManagerComponent;
      }
      
      private function setShowFocusIndicatorRequestHandler(event:Event) : void
      {
         if(event is SWFBridgeRequest)
         {
            return;
         }
         var request:SWFBridgeRequest = SWFBridgeRequest.marshal(event);
         _showFocusIndicator = request.data;
         dispatchSetShowFocusIndicatorRequest(_showFocusIndicator,IEventDispatcher(event.target));
      }
      
      private function setFocusToTop() : void
      {
         setFocusToNextIndex(-1,false);
      }
      
      private function isTabVisible(o:DisplayObject) : Boolean
      {
         var s:DisplayObject = DisplayObject(form.systemManager);
         if(!s)
         {
            return false;
         }
         var p:DisplayObjectContainer = o.parent;
         while(p && p != s)
         {
            if(!p.tabChildren)
            {
               return false;
            }
            p = p.parent;
         }
         return true;
      }
      
      mx_internal function get lastFocus() : IFocusManagerComponent
      {
         return _lastFocus;
      }
      
      public function set defaultButtonEnabled(value:Boolean) : void
      {
         _defaultButtonEnabled = value;
      }
      
      public function get defaultButtonEnabled() : Boolean
      {
         return _defaultButtonEnabled;
      }
      
      public function set showFocusIndicator(value:Boolean) : void
      {
         var changed:* = _showFocusIndicator != value;
         _showFocusIndicator = value;
         if(changed && !popup && form.systemManager.swfBridgeGroup)
         {
            dispatchSetShowFocusIndicatorRequest(value,null);
         }
      }
      
      private function sortByTabIndex(a:InteractiveObject, b:InteractiveObject) : int
      {
         var aa:int = a.tabIndex;
         var bb:int = b.tabIndex;
         if(aa == -1)
         {
            aa = int.MAX_VALUE;
         }
         if(bb == -1)
         {
            bb = int.MAX_VALUE;
         }
         return aa > bb?1:aa < bb?-1:int(sortByDepth(DisplayObject(a),DisplayObject(b)));
      }
      
      public function activate() : void
      {
         if(activated)
         {
            return;
         }
         var sm:ISystemManager = form.systemManager;
         if(sm)
         {
            if(sm.isTopLevelRoot())
            {
               sm.stage.addEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,mouseFocusChangeHandler,false,0,true);
               sm.stage.addEventListener(FocusEvent.KEY_FOCUS_CHANGE,keyFocusChangeHandler,false,0,true);
               sm.stage.addEventListener(Event.ACTIVATE,activateHandler,false,0,true);
               sm.stage.addEventListener(Event.DEACTIVATE,deactivateHandler,false,0,true);
            }
            else
            {
               sm.addEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,mouseFocusChangeHandler,false,0,true);
               sm.addEventListener(FocusEvent.KEY_FOCUS_CHANGE,keyFocusChangeHandler,false,0,true);
               sm.addEventListener(Event.ACTIVATE,activateHandler,false,0,true);
               sm.addEventListener(Event.DEACTIVATE,deactivateHandler,false,0,true);
            }
         }
         form.addEventListener(FocusEvent.FOCUS_IN,focusInHandler,true);
         form.addEventListener(FocusEvent.FOCUS_OUT,focusOutHandler,true);
         form.addEventListener(MouseEvent.MOUSE_DOWN,mouseDownHandler);
         form.addEventListener(KeyboardEvent.KEY_DOWN,defaultButtonKeyHandler);
         form.addEventListener(KeyboardEvent.KEY_DOWN,keyDownHandler,true);
         activated = true;
         if(_lastFocus)
         {
            setFocus(_lastFocus);
         }
         dispatchEventFromSWFBridges(new SWFBridgeRequest(SWFBridgeRequest.ACTIVATE_FOCUS_REQUEST),skipBridge);
      }
      
      private function setFocusToNextIndex(index:int, shiftKey:Boolean) : void
      {
         if(focusableObjects.length == 0)
         {
            return;
         }
         if(calculateCandidates)
         {
            sortFocusableObjects();
            calculateCandidates = false;
         }
         var focusInfo:FocusInfo = getNextFocusManagerComponent2(shiftKey,null,index);
         if(!popup && focusInfo.wrapped)
         {
            if(getParentBridge())
            {
               moveFocusToParent(shiftKey);
               return;
            }
         }
         setFocusToComponent(focusInfo.displayObject,shiftKey);
      }
   }
}

import flash.display.DisplayObject;

class FocusInfo
{
    
   
   public var displayObject:DisplayObject;
   
   public var wrapped:Boolean;
   
   function FocusInfo()
   {
      super();
   }
}
