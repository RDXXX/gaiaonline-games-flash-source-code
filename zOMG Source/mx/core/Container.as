package mx.core
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.InteractiveObject;
   import flash.display.Loader;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextLineMetrics;
   import flash.ui.Keyboard;
   import flash.utils.getDefinitionByName;
   import mx.binding.BindingManager;
   import mx.controls.HScrollBar;
   import mx.controls.VScrollBar;
   import mx.controls.listClasses.IListItemRenderer;
   import mx.controls.scrollClasses.ScrollBar;
   import mx.events.ChildExistenceChangedEvent;
   import mx.events.FlexEvent;
   import mx.events.IndexChangedEvent;
   import mx.events.ScrollEvent;
   import mx.events.ScrollEventDetail;
   import mx.events.ScrollEventDirection;
   import mx.graphics.RoundedRectangle;
   import mx.managers.IFocusManager;
   import mx.managers.IFocusManagerContainer;
   import mx.managers.ILayoutManagerClient;
   import mx.managers.ISystemManager;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.ISimpleStyleClient;
   import mx.styles.IStyleClient;
   import mx.styles.StyleManager;
   import mx.styles.StyleProtoChain;
   
   use namespace mx_internal;
   
   public class Container extends UIComponent implements IContainer, IDataRenderer, IFocusManagerContainer, IListItemRenderer, IRawChildrenContainer
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      private static const MULTIPLE_PROPERTIES:String = "<MULTIPLE>";
       
      
      private var forceLayout:Boolean = false;
      
      private var _numChildrenCreated:int = -1;
      
      private var _horizontalLineScrollSize:Number = 5;
      
      mx_internal var border:IFlexDisplayObject;
      
      protected var actualCreationPolicy:String;
      
      private var _viewMetricsAndPadding:EdgeMetrics;
      
      private var _creatingContentPane:Boolean = false;
      
      private var _childRepeaters:Array;
      
      private var scrollableWidth:Number = 0;
      
      private var _childDescriptors:Array;
      
      private var _rawChildren:ContainerRawChildrenList;
      
      private var _data:Object;
      
      private var _verticalPageScrollSize:Number = 0;
      
      private var _viewMetrics:EdgeMetrics;
      
      private var _verticalScrollBar:ScrollBar;
      
      private var scrollPropertiesChanged:Boolean = false;
      
      private var changedStyles:String = null;
      
      private var scrollPositionChanged:Boolean = true;
      
      private var _defaultButton:IFlexDisplayObject;
      
      private var mouseEventReferenceCount:int = 0;
      
      private var _focusPane:Sprite;
      
      protected var whiteBox:Shape;
      
      private var _forceClippingCount:int;
      
      private var _horizontalPageScrollSize:Number = 0;
      
      private var _creationPolicy:String;
      
      private var _creationIndex:int = -1;
      
      private var _clipContent:Boolean = true;
      
      private var _verticalScrollPosition:Number = 0;
      
      private var _autoLayout:Boolean = true;
      
      private var _icon:Class = null;
      
      mx_internal var doingLayout:Boolean = false;
      
      private var _horizontalScrollBar:ScrollBar;
      
      private var numChildrenBefore:int;
      
      private var viewableHeight:Number = 0;
      
      private var viewableWidth:Number = 0;
      
      mx_internal var contentPane:Sprite = null;
      
      private var _createdComponents:Array;
      
      private var _firstChildIndex:int = 0;
      
      private var scrollableHeight:Number = 0;
      
      private var _verticalLineScrollSize:Number = 5;
      
      private var _horizontalScrollPosition:Number = 0;
      
      mx_internal var _horizontalScrollPolicy:String = "auto";
      
      private var verticalScrollPositionPending:Number;
      
      mx_internal var _verticalScrollPolicy:String = "auto";
      
      private var horizontalScrollPositionPending:Number;
      
      mx_internal var _numChildren:int = 0;
      
      private var recursionFlag:Boolean = true;
      
      private var _label:String = "";
      
      mx_internal var blocker:Sprite;
      
      public function Container()
      {
         super();
         tabChildren = true;
         tabEnabled = false;
         showInAutomationHierarchy = false;
      }
      
      public function set verticalScrollPolicy(value:String) : void
      {
         if(_verticalScrollPolicy != value)
         {
            _verticalScrollPolicy = value;
            invalidateDisplayList();
            dispatchEvent(new Event("verticalScrollPolicyChanged"));
         }
      }
      
      private function createContentPaneAndScrollbarsIfNeeded() : Boolean
      {
         var bounds:Rectangle = null;
         var changed:Boolean = false;
         if(_clipContent)
         {
            bounds = getScrollableRect();
            changed = createScrollbarsIfNeeded(bounds);
            if(border)
            {
               updateBackgroundImageRect();
            }
            return changed;
         }
         changed = createOrDestroyScrollbars(false,false,false);
         bounds = getScrollableRect();
         scrollableWidth = bounds.right;
         scrollableHeight = bounds.bottom;
         if(changed && border)
         {
            updateBackgroundImageRect();
         }
         return changed;
      }
      
      override protected function initializationComplete() : void
      {
      }
      
      mx_internal function rawChildren_getObjectsUnderPoint(pt:Point) : Array
      {
         return super.getObjectsUnderPoint(pt);
      }
      
      public function set creatingContentPane(value:Boolean) : void
      {
         _creatingContentPane = value;
      }
      
      public function set clipContent(value:Boolean) : void
      {
         if(_clipContent != value)
         {
            _clipContent = value;
            invalidateDisplayList();
         }
      }
      
      protected function scrollChildren() : void
      {
         if(!contentPane)
         {
            return;
         }
         var vm:EdgeMetrics = viewMetrics;
         var x:Number = 0;
         var y:Number = 0;
         var w:Number = unscaledWidth - vm.left - vm.right;
         var h:Number = unscaledHeight - vm.top - vm.bottom;
         if(_clipContent)
         {
            x = x + _horizontalScrollPosition;
            if(horizontalScrollBar)
            {
               w = viewableWidth;
            }
            y = y + _verticalScrollPosition;
            if(verticalScrollBar)
            {
               h = viewableHeight;
            }
         }
         else
         {
            w = scrollableWidth;
            h = scrollableHeight;
         }
         var sr:Rectangle = getScrollableRect();
         if(x == 0 && y == 0 && w >= sr.right && h >= sr.bottom && sr.left >= 0 && sr.top >= 0 && _forceClippingCount <= 0)
         {
            contentPane.scrollRect = null;
            contentPane.opaqueBackground = null;
            contentPane.cacheAsBitmap = false;
         }
         else
         {
            contentPane.scrollRect = new Rectangle(x,y,w,h);
         }
         if(focusPane)
         {
            focusPane.scrollRect = contentPane.scrollRect;
         }
         if(border && border is IRectangularBorder && IRectangularBorder(border).hasBackgroundImage)
         {
            IRectangularBorder(border).layoutBackgroundImage();
         }
      }
      
      override public function set doubleClickEnabled(value:Boolean) : void
      {
         var n:int = 0;
         var i:int = 0;
         var child:InteractiveObject = null;
         super.doubleClickEnabled = value;
         if(contentPane)
         {
            n = contentPane.numChildren;
            for(i = 0; i < n; i++)
            {
               child = contentPane.getChildAt(i) as InteractiveObject;
               if(child)
               {
                  child.doubleClickEnabled = value;
               }
            }
         }
      }
      
      override public function notifyStyleChangeInChildren(styleProp:String, recursive:Boolean) : void
      {
         var child:ISimpleStyleClient = null;
         var n:int = super.numChildren;
         for(var i:int = 0; i < n; i++)
         {
            if(contentPane || i < _firstChildIndex || i >= _firstChildIndex + _numChildren)
            {
               child = super.getChildAt(i) as ISimpleStyleClient;
               if(child)
               {
                  child.styleChanged(styleProp);
                  if(child is IStyleClient)
                  {
                     IStyleClient(child).notifyStyleChangeInChildren(styleProp,recursive);
                  }
               }
            }
         }
         if(recursive)
         {
            changedStyles = changedStyles != null || styleProp == null?MULTIPLE_PROPERTIES:styleProp;
            invalidateProperties();
         }
      }
      
      mx_internal function get createdComponents() : Array
      {
         return _createdComponents;
      }
      
      public function get childDescriptors() : Array
      {
         return _childDescriptors;
      }
      
      override public function get contentMouseY() : Number
      {
         if(contentPane)
         {
            return contentPane.mouseY;
         }
         return super.contentMouseY;
      }
      
      mx_internal function get childRepeaters() : Array
      {
         return _childRepeaters;
      }
      
      override public function contains(child:DisplayObject) : Boolean
      {
         if(contentPane)
         {
            return contentPane.contains(child);
         }
         return super.contains(child);
      }
      
      override public function get contentMouseX() : Number
      {
         if(contentPane)
         {
            return contentPane.mouseX;
         }
         return super.contentMouseX;
      }
      
      mx_internal function set createdComponents(value:Array) : void
      {
         _createdComponents = value;
      }
      
      public function get horizontalScrollBar() : ScrollBar
      {
         return _horizontalScrollBar;
      }
      
      override public function validateSize(recursive:Boolean = false) : void
      {
         var n:int = 0;
         var i:int = 0;
         var child:DisplayObject = null;
         if(autoLayout == false && forceLayout == false)
         {
            if(recursive)
            {
               n = super.numChildren;
               for(i = 0; i < n; i++)
               {
                  child = super.getChildAt(i);
                  if(child is ILayoutManagerClient)
                  {
                     ILayoutManagerClient(child).validateSize(true);
                  }
               }
            }
            adjustSizesForScaleChanges();
         }
         else
         {
            super.validateSize(recursive);
         }
      }
      
      public function get rawChildren() : IChildList
      {
         if(!_rawChildren)
         {
            _rawChildren = new ContainerRawChildrenList(this);
         }
         return _rawChildren;
      }
      
      override public function getChildAt(index:int) : DisplayObject
      {
         if(contentPane)
         {
            return contentPane.getChildAt(index);
         }
         return super.getChildAt(_firstChildIndex + index);
      }
      
      override protected function attachOverlay() : void
      {
         rawChildren_addChild(overlay);
      }
      
      override public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false) : void
      {
         super.addEventListener(type,listener,useCapture,priority,useWeakReference);
         if(type == MouseEvent.CLICK || type == MouseEvent.DOUBLE_CLICK || type == MouseEvent.MOUSE_DOWN || type == MouseEvent.MOUSE_MOVE || type == MouseEvent.MOUSE_OVER || type == MouseEvent.MOUSE_OUT || type == MouseEvent.MOUSE_UP || type == MouseEvent.MOUSE_WHEEL)
         {
            if(mouseEventReferenceCount < 2147483647 && mouseEventReferenceCount++ == 0)
            {
               setStyle("mouseShield",true);
               setStyle("mouseShieldChildren",true);
            }
         }
      }
      
      override public function localToContent(point:Point) : Point
      {
         if(!contentPane)
         {
            return point;
         }
         point = localToGlobal(point);
         return globalToContent(point);
      }
      
      public function executeChildBindings(recurse:Boolean) : void
      {
         var child:IUIComponent = null;
         var n:int = numChildren;
         for(var i:int = 0; i < n; i++)
         {
            child = IUIComponent(getChildAt(i));
            if(child is IDeferredInstantiationUIComponent)
            {
               IDeferredInstantiationUIComponent(child).executeBindings(recurse);
            }
         }
      }
      
      protected function createBorder() : void
      {
         var borderClass:Class = null;
         if(!border && isBorderNeeded())
         {
            borderClass = getStyle("borderSkin");
            if(borderClass != null)
            {
               border = new borderClass();
               border.name = "border";
               if(border is IUIComponent)
               {
                  IUIComponent(border).enabled = enabled;
               }
               if(border is ISimpleStyleClient)
               {
                  ISimpleStyleClient(border).styleName = this;
               }
               rawChildren.addChildAt(DisplayObject(border),0);
               invalidateDisplayList();
            }
         }
      }
      
      [Bindable("viewChanged")]
      [Bindable("scroll")]
      public function get verticalScrollPosition() : Number
      {
         if(!isNaN(verticalScrollPositionPending))
         {
            return verticalScrollPositionPending;
         }
         return _verticalScrollPosition;
      }
      
      [Bindable("viewChanged")]
      [Bindable("scroll")]
      public function get horizontalScrollPosition() : Number
      {
         if(!isNaN(horizontalScrollPositionPending))
         {
            return horizontalScrollPositionPending;
         }
         return _horizontalScrollPosition;
      }
      
      protected function layoutChrome(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         if(border)
         {
            updateBackgroundImageRect();
            border.move(0,0);
            border.setActualSize(unscaledWidth,unscaledHeight);
         }
      }
      
      mx_internal function set childRepeaters(value:Array) : void
      {
         _childRepeaters = value;
      }
      
      override public function get focusPane() : Sprite
      {
         return _focusPane;
      }
      
      public function set creationIndex(value:int) : void
      {
         _creationIndex = value;
      }
      
      public function get viewMetrics() : EdgeMetrics
      {
         var bm:EdgeMetrics = borderMetrics;
         var verticalScrollBarIncluded:Boolean = verticalScrollBar != null && (doingLayout || verticalScrollPolicy == ScrollPolicy.ON);
         var horizontalScrollBarIncluded:Boolean = horizontalScrollBar != null && (doingLayout || horizontalScrollPolicy == ScrollPolicy.ON);
         if(!verticalScrollBarIncluded && !horizontalScrollBarIncluded)
         {
            return bm;
         }
         if(!_viewMetrics)
         {
            _viewMetrics = bm.clone();
         }
         else
         {
            _viewMetrics.left = bm.left;
            _viewMetrics.right = bm.right;
            _viewMetrics.top = bm.top;
            _viewMetrics.bottom = bm.bottom;
         }
         if(verticalScrollBarIncluded)
         {
            _viewMetrics.right = _viewMetrics.right + verticalScrollBar.minWidth;
         }
         if(horizontalScrollBarIncluded)
         {
            _viewMetrics.bottom = _viewMetrics.bottom + horizontalScrollBar.minHeight;
         }
         return _viewMetrics;
      }
      
      public function set verticalScrollBar(value:ScrollBar) : void
      {
         _verticalScrollBar = value;
      }
      
      public function set verticalScrollPosition(value:Number) : void
      {
         if(_verticalScrollPosition == value)
         {
            return;
         }
         _verticalScrollPosition = value;
         scrollPositionChanged = true;
         if(!initialized)
         {
            verticalScrollPositionPending = value;
         }
         invalidateDisplayList();
         dispatchEvent(new Event("viewChanged"));
      }
      
      mx_internal function $addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false) : void
      {
         super.addEventListener(type,listener,useCapture,priority,useWeakReference);
      }
      
      private function createOrDestroyScrollbars(needHorizontal:Boolean, needVertical:Boolean, needContentPane:Boolean) : Boolean
      {
         var fm:IFocusManager = null;
         var horizontalScrollBarStyleName:String = null;
         var verticalScrollBarStyleName:String = null;
         var g:Graphics = null;
         var changed:Boolean = false;
         if(needHorizontal || needVertical || needContentPane)
         {
            createContentPane();
         }
         if(needHorizontal)
         {
            if(!horizontalScrollBar)
            {
               horizontalScrollBar = new HScrollBar();
               horizontalScrollBar.name = "horizontalScrollBar";
               horizontalScrollBarStyleName = getStyle("horizontalScrollBarStyleName");
               if(horizontalScrollBarStyleName && horizontalScrollBar is ISimpleStyleClient)
               {
                  ISimpleStyleClient(horizontalScrollBar).styleName = horizontalScrollBarStyleName;
               }
               rawChildren.addChild(DisplayObject(horizontalScrollBar));
               horizontalScrollBar.lineScrollSize = horizontalLineScrollSize;
               horizontalScrollBar.pageScrollSize = horizontalPageScrollSize;
               horizontalScrollBar.addEventListener(ScrollEvent.SCROLL,horizontalScrollBar_scrollHandler);
               horizontalScrollBar.enabled = enabled;
               if(horizontalScrollBar is IInvalidating)
               {
                  IInvalidating(horizontalScrollBar).validateNow();
               }
               invalidateDisplayList();
               invalidateViewMetricsAndPadding();
               changed = true;
               if(!verticalScrollBar)
               {
                  addEventListener(KeyboardEvent.KEY_DOWN,keyDownHandler);
               }
            }
         }
         else if(horizontalScrollBar)
         {
            horizontalScrollBar.removeEventListener(ScrollEvent.SCROLL,horizontalScrollBar_scrollHandler);
            rawChildren.removeChild(DisplayObject(horizontalScrollBar));
            horizontalScrollBar = null;
            viewableWidth = scrollableWidth = 0;
            if(_horizontalScrollPosition != 0)
            {
               _horizontalScrollPosition = 0;
               scrollPositionChanged = true;
            }
            invalidateDisplayList();
            invalidateViewMetricsAndPadding();
            changed = true;
            fm = focusManager;
            if(!verticalScrollBar && (!fm || fm.getFocus() != this))
            {
               removeEventListener(KeyboardEvent.KEY_DOWN,keyDownHandler);
            }
         }
         if(needVertical)
         {
            if(!verticalScrollBar)
            {
               verticalScrollBar = new VScrollBar();
               verticalScrollBar.name = "verticalScrollBar";
               verticalScrollBarStyleName = getStyle("verticalScrollBarStyleName");
               if(verticalScrollBarStyleName && verticalScrollBar is ISimpleStyleClient)
               {
                  ISimpleStyleClient(verticalScrollBar).styleName = verticalScrollBarStyleName;
               }
               rawChildren.addChild(DisplayObject(verticalScrollBar));
               verticalScrollBar.lineScrollSize = verticalLineScrollSize;
               verticalScrollBar.pageScrollSize = verticalPageScrollSize;
               verticalScrollBar.addEventListener(ScrollEvent.SCROLL,verticalScrollBar_scrollHandler);
               verticalScrollBar.enabled = enabled;
               if(verticalScrollBar is IInvalidating)
               {
                  IInvalidating(verticalScrollBar).validateNow();
               }
               invalidateDisplayList();
               invalidateViewMetricsAndPadding();
               changed = true;
               if(!horizontalScrollBar)
               {
                  addEventListener(KeyboardEvent.KEY_DOWN,keyDownHandler);
               }
               addEventListener(MouseEvent.MOUSE_WHEEL,mouseWheelHandler);
            }
         }
         else if(verticalScrollBar)
         {
            verticalScrollBar.removeEventListener(ScrollEvent.SCROLL,verticalScrollBar_scrollHandler);
            rawChildren.removeChild(DisplayObject(verticalScrollBar));
            verticalScrollBar = null;
            viewableHeight = scrollableHeight = 0;
            if(_verticalScrollPosition != 0)
            {
               _verticalScrollPosition = 0;
               scrollPositionChanged = true;
            }
            invalidateDisplayList();
            invalidateViewMetricsAndPadding();
            changed = true;
            fm = focusManager;
            if(!horizontalScrollBar && (!fm || fm.getFocus() != this))
            {
               removeEventListener(KeyboardEvent.KEY_DOWN,keyDownHandler);
            }
            removeEventListener(MouseEvent.MOUSE_WHEEL,mouseWheelHandler);
         }
         if(horizontalScrollBar && verticalScrollBar)
         {
            if(!whiteBox)
            {
               whiteBox = new FlexShape();
               whiteBox.name = "whiteBox";
               g = whiteBox.graphics;
               g.beginFill(16777215);
               g.drawRect(0,0,verticalScrollBar.minWidth,horizontalScrollBar.minHeight);
               g.endFill();
               rawChildren.addChild(whiteBox);
            }
         }
         else if(whiteBox)
         {
            rawChildren.removeChild(whiteBox);
            whiteBox = null;
         }
         return changed;
      }
      
      override protected function keyDownHandler(event:KeyboardEvent) : void
      {
         var direction:String = null;
         var oldPos:Number = NaN;
         var focusObj:Object = getFocus();
         if(focusObj is TextField)
         {
            return;
         }
         if(verticalScrollBar)
         {
            direction = ScrollEventDirection.VERTICAL;
            oldPos = verticalScrollPosition;
            switch(event.keyCode)
            {
               case Keyboard.DOWN:
                  verticalScrollPosition = verticalScrollPosition + verticalLineScrollSize;
                  dispatchScrollEvent(direction,oldPos,verticalScrollPosition,ScrollEventDetail.LINE_DOWN);
                  event.stopPropagation();
                  break;
               case Keyboard.UP:
                  verticalScrollPosition = verticalScrollPosition - verticalLineScrollSize;
                  dispatchScrollEvent(direction,oldPos,verticalScrollPosition,ScrollEventDetail.LINE_UP);
                  event.stopPropagation();
                  break;
               case Keyboard.PAGE_UP:
                  verticalScrollPosition = verticalScrollPosition - verticalPageScrollSize;
                  dispatchScrollEvent(direction,oldPos,verticalScrollPosition,ScrollEventDetail.PAGE_UP);
                  event.stopPropagation();
                  break;
               case Keyboard.PAGE_DOWN:
                  verticalScrollPosition = verticalScrollPosition + verticalPageScrollSize;
                  dispatchScrollEvent(direction,oldPos,verticalScrollPosition,ScrollEventDetail.PAGE_DOWN);
                  event.stopPropagation();
                  break;
               case Keyboard.HOME:
                  verticalScrollPosition = verticalScrollBar.minScrollPosition;
                  dispatchScrollEvent(direction,oldPos,verticalScrollPosition,ScrollEventDetail.AT_TOP);
                  event.stopPropagation();
                  break;
               case Keyboard.END:
                  verticalScrollPosition = verticalScrollBar.maxScrollPosition;
                  dispatchScrollEvent(direction,oldPos,verticalScrollPosition,ScrollEventDetail.AT_BOTTOM);
                  event.stopPropagation();
            }
         }
         if(horizontalScrollBar)
         {
            direction = ScrollEventDirection.HORIZONTAL;
            oldPos = horizontalScrollPosition;
            switch(event.keyCode)
            {
               case Keyboard.LEFT:
                  horizontalScrollPosition = horizontalScrollPosition - horizontalLineScrollSize;
                  dispatchScrollEvent(direction,oldPos,horizontalScrollPosition,ScrollEventDetail.LINE_LEFT);
                  event.stopPropagation();
                  break;
               case Keyboard.RIGHT:
                  horizontalScrollPosition = horizontalScrollPosition + horizontalLineScrollSize;
                  dispatchScrollEvent(direction,oldPos,horizontalScrollPosition,ScrollEventDetail.LINE_RIGHT);
                  event.stopPropagation();
            }
         }
      }
      
      [Bindable("iconChanged")]
      public function get icon() : Class
      {
         return _icon;
      }
      
      private function createOrDestroyBlocker() : void
      {
         var o:DisplayObject = null;
         var sm:ISystemManager = null;
         if(enabled)
         {
            if(blocker)
            {
               rawChildren.removeChild(blocker);
               blocker = null;
            }
         }
         else if(!blocker)
         {
            blocker = new FlexSprite();
            blocker.name = "blocker";
            blocker.mouseEnabled = true;
            rawChildren.addChild(blocker);
            blocker.addEventListener(MouseEvent.CLICK,blocker_clickHandler);
            o = !!focusManager?DisplayObject(focusManager.getFocus()):null;
            while(o)
            {
               if(o == this)
               {
                  sm = systemManager;
                  if(sm && sm.stage)
                  {
                     sm.stage.focus = null;
                  }
                  break;
               }
               o = o.parent;
            }
         }
      }
      
      private function horizontalScrollBar_scrollHandler(event:Event) : void
      {
         var oldPos:Number = NaN;
         if(event is ScrollEvent)
         {
            oldPos = horizontalScrollPosition;
            horizontalScrollPosition = horizontalScrollBar.scrollPosition;
            dispatchScrollEvent(ScrollEventDirection.HORIZONTAL,oldPos,horizontalScrollPosition,ScrollEvent(event).detail);
         }
      }
      
      public function createComponentFromDescriptor(descriptor:ComponentDescriptor, recurse:Boolean) : IFlexDisplayObject
      {
         var p:* = null;
         var rChild:IRepeaterClient = null;
         var scChild:IStyleClient = null;
         var eventName:* = null;
         var eventHandler:String = null;
         var childDescriptor:UIComponentDescriptor = UIComponentDescriptor(descriptor);
         var childProperties:Object = childDescriptor.properties;
         if((numChildrenBefore != 0 || numChildrenCreated != -1) && childDescriptor.instanceIndices == null && hasChildMatchingDescriptor(childDescriptor))
         {
            return null;
         }
         UIComponentGlobals.layoutManager.usePhasedInstantiation = true;
         var childType:Class = childDescriptor.type;
         var child:IDeferredInstantiationUIComponent = new childType();
         child.id = childDescriptor.id;
         if(child.id && child.id != "")
         {
            child.name = child.id;
         }
         child.descriptor = childDescriptor;
         if(childProperties.childDescriptors && child is Container)
         {
            Container(child)._childDescriptors = childProperties.childDescriptors;
            delete childProperties.childDescriptors;
         }
         for(p in childProperties)
         {
            child[p] = childProperties[p];
         }
         if(child is Container)
         {
            Container(child).recursionFlag = recurse;
         }
         if(childDescriptor.instanceIndices)
         {
            if(child is IRepeaterClient)
            {
               rChild = IRepeaterClient(child);
               rChild.instanceIndices = childDescriptor.instanceIndices;
               rChild.repeaters = childDescriptor.repeaters;
               rChild.repeaterIndices = childDescriptor.repeaterIndices;
            }
         }
         if(child is IStyleClient)
         {
            scChild = IStyleClient(child);
            if(childDescriptor.stylesFactory != null)
            {
               if(!scChild.styleDeclaration)
               {
                  scChild.styleDeclaration = new CSSStyleDeclaration();
               }
               scChild.styleDeclaration.factory = childDescriptor.stylesFactory;
            }
         }
         var childEvents:Object = childDescriptor.events;
         if(childEvents)
         {
            for(eventName in childEvents)
            {
               eventHandler = childEvents[eventName];
               child.addEventListener(eventName,childDescriptor.document[eventHandler]);
            }
         }
         var childEffects:Array = childDescriptor.effects;
         if(childEffects)
         {
            child.registerEffects(childEffects);
         }
         if(child is IRepeaterClient)
         {
            IRepeaterClient(child).initializeRepeaterArrays(this);
         }
         child.createReferenceOnParentDocument(IFlexDisplayObject(childDescriptor.document));
         if(!child.document)
         {
            child.document = childDescriptor.document;
         }
         if(child is IRepeater)
         {
            if(!childRepeaters)
            {
               childRepeaters = [];
            }
            childRepeaters.push(child);
            child.executeBindings();
            IRepeater(child).initializeRepeater(this,recurse);
         }
         else
         {
            addChild(DisplayObject(child));
            child.executeBindings();
            if(creationPolicy == ContainerCreationPolicy.QUEUED || creationPolicy == ContainerCreationPolicy.NONE)
            {
               child.addEventListener(FlexEvent.CREATION_COMPLETE,creationCompleteHandler);
            }
         }
         return child;
      }
      
      override public function set enabled(value:Boolean) : void
      {
         super.enabled = value;
         if(horizontalScrollBar)
         {
            horizontalScrollBar.enabled = value;
         }
         if(verticalScrollBar)
         {
            verticalScrollBar.enabled = value;
         }
         invalidateProperties();
      }
      
      public function set horizontalScrollBar(value:ScrollBar) : void
      {
         _horizontalScrollBar = value;
      }
      
      mx_internal function get usePadding() : Boolean
      {
         return true;
      }
      
      override public function get baselinePosition() : Number
      {
         var child:IUIComponent = null;
         if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
         {
            if(getStyle("verticalAlign") == "top" && numChildren > 0)
            {
               child = getChildAt(0) as IUIComponent;
               if(child)
               {
                  return child.y + child.baselinePosition;
               }
            }
            return super.baselinePosition;
         }
         if(!validateBaselinePosition())
         {
            return NaN;
         }
         var lineMetrics:TextLineMetrics = measureText("Wj");
         if(height < 2 * viewMetrics.top + 4 + lineMetrics.ascent)
         {
            return int(height + (lineMetrics.ascent - height) / 2);
         }
         return viewMetrics.top + 2 + lineMetrics.ascent;
      }
      
      override public function getChildByName(name:String) : DisplayObject
      {
         var child:DisplayObject = null;
         var index:int = 0;
         if(contentPane)
         {
            return contentPane.getChildByName(name);
         }
         child = super.getChildByName(name);
         if(!child)
         {
            return null;
         }
         index = super.getChildIndex(child) - _firstChildIndex;
         if(index < 0 || index >= _numChildren)
         {
            return null;
         }
         return child;
      }
      
      [Bindable("verticalLineScrollSizeChanged")]
      public function get verticalLineScrollSize() : Number
      {
         return _verticalLineScrollSize;
      }
      
      [Bindable("horizontalScrollPolicyChanged")]
      public function get horizontalScrollPolicy() : String
      {
         return _horizontalScrollPolicy;
      }
      
      mx_internal function $removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         super.removeEventListener(type,listener,useCapture);
      }
      
      public function get maxVerticalScrollPosition() : Number
      {
         return !!verticalScrollBar?Number(verticalScrollBar.maxScrollPosition):Number(Math.max(scrollableHeight - viewableHeight,0));
      }
      
      public function set horizontalScrollPosition(value:Number) : void
      {
         if(_horizontalScrollPosition == value)
         {
            return;
         }
         _horizontalScrollPosition = value;
         scrollPositionChanged = true;
         if(!initialized)
         {
            horizontalScrollPositionPending = value;
         }
         invalidateDisplayList();
         dispatchEvent(new Event("viewChanged"));
      }
      
      mx_internal function invalidateViewMetricsAndPadding() : void
      {
         _viewMetricsAndPadding = null;
      }
      
      [Bindable("horizontalLineScrollSizeChanged")]
      public function get horizontalLineScrollSize() : Number
      {
         return _horizontalLineScrollSize;
      }
      
      override public function set focusPane(o:Sprite) : void
      {
         var oldInvalidateSizeFlag:Boolean = invalidateSizeFlag;
         var oldInvalidateDisplayListFlag:Boolean = invalidateDisplayListFlag;
         invalidateSizeFlag = true;
         invalidateDisplayListFlag = true;
         if(o)
         {
            rawChildren.addChild(o);
            o.x = 0;
            o.y = 0;
            o.scrollRect = null;
            _focusPane = o;
         }
         else
         {
            rawChildren.removeChild(_focusPane);
            _focusPane = null;
         }
         if(o && contentPane)
         {
            o.x = contentPane.x;
            o.y = contentPane.y;
            o.scrollRect = contentPane.scrollRect;
         }
         invalidateSizeFlag = oldInvalidateSizeFlag;
         invalidateDisplayListFlag = oldInvalidateDisplayListFlag;
      }
      
      private function updateBackgroundImageRect() : void
      {
         var rectBorder:IRectangularBorder = border as IRectangularBorder;
         if(!rectBorder)
         {
            return;
         }
         if(viewableWidth == 0 && viewableHeight == 0)
         {
            rectBorder.backgroundImageBounds = null;
            return;
         }
         var vm:EdgeMetrics = viewMetrics;
         var bkWidth:Number = !!viewableWidth?Number(viewableWidth):Number(unscaledWidth - vm.left - vm.right);
         var bkHeight:Number = !!viewableHeight?Number(viewableHeight):Number(unscaledHeight - vm.top - vm.bottom);
         if(getStyle("backgroundAttachment") == "fixed")
         {
            rectBorder.backgroundImageBounds = new Rectangle(vm.left,vm.top,bkWidth,bkHeight);
         }
         else
         {
            rectBorder.backgroundImageBounds = new Rectangle(vm.left,vm.top,Math.max(scrollableWidth,bkWidth),Math.max(scrollableHeight,bkHeight));
         }
      }
      
      private function blocker_clickHandler(event:Event) : void
      {
         event.stopPropagation();
      }
      
      private function mouseWheelHandler(event:MouseEvent) : void
      {
         var scrollDirection:int = 0;
         var lineScrollSize:int = 0;
         var scrollAmount:Number = NaN;
         var oldPosition:Number = NaN;
         if(verticalScrollBar)
         {
            event.stopPropagation();
            scrollDirection = event.delta <= 0?1:-1;
            lineScrollSize = !!verticalScrollBar?int(verticalScrollBar.lineScrollSize):1;
            scrollAmount = Math.max(Math.abs(event.delta),lineScrollSize);
            oldPosition = verticalScrollPosition;
            verticalScrollPosition = verticalScrollPosition + 3 * scrollAmount * scrollDirection;
            dispatchScrollEvent(ScrollEventDirection.VERTICAL,oldPosition,verticalScrollPosition,event.delta <= 0?ScrollEventDetail.LINE_UP:ScrollEventDetail.LINE_DOWN);
         }
      }
      
      public function get defaultButton() : IFlexDisplayObject
      {
         return _defaultButton;
      }
      
      mx_internal function createContentPane() : void
      {
         var childIndex:int = 0;
         var child:IUIComponent = null;
         if(contentPane)
         {
            return;
         }
         creatingContentPane = true;
         var n:int = numChildren;
         var newPane:Sprite = new FlexSprite();
         newPane.name = "contentPane";
         newPane.tabChildren = true;
         if(border)
         {
            childIndex = rawChildren.getChildIndex(DisplayObject(border)) + 1;
            if(border is IRectangularBorder && IRectangularBorder(border).hasBackgroundImage)
            {
               childIndex++;
            }
         }
         else
         {
            childIndex = 0;
         }
         rawChildren.addChildAt(newPane,childIndex);
         for(var i:int = 0; i < n; i++)
         {
            child = IUIComponent(super.getChildAt(_firstChildIndex));
            newPane.addChild(DisplayObject(child));
            child.parentChanged(newPane);
            _numChildren--;
         }
         contentPane = newPane;
         creatingContentPane = false;
         contentPane.visible = true;
      }
      
      public function set verticalPageScrollSize(value:Number) : void
      {
         scrollPropertiesChanged = true;
         _verticalPageScrollSize = value;
         invalidateDisplayList();
         dispatchEvent(new Event("verticalPageScrollSizeChanged"));
      }
      
      mx_internal function setDocumentDescriptor(desc:UIComponentDescriptor) : void
      {
         var message:String = null;
         if(processedDescriptors)
         {
            return;
         }
         if(_documentDescriptor && _documentDescriptor.properties.childDescriptors)
         {
            if(desc.properties.childDescriptors)
            {
               message = resourceManager.getString("core","multipleChildSets_ClassAndSubclass");
               throw new Error(message);
            }
         }
         else
         {
            _documentDescriptor = desc;
            _documentDescriptor.document = this;
         }
      }
      
      private function verticalScrollBar_scrollHandler(event:Event) : void
      {
         var oldPos:Number = NaN;
         if(event is ScrollEvent)
         {
            oldPos = verticalScrollPosition;
            verticalScrollPosition = verticalScrollBar.scrollPosition;
            dispatchScrollEvent(ScrollEventDirection.VERTICAL,oldPos,verticalScrollPosition,ScrollEvent(event).detail);
         }
      }
      
      public function get creationPolicy() : String
      {
         return _creationPolicy;
      }
      
      public function set icon(value:Class) : void
      {
         _icon = value;
         dispatchEvent(new Event("iconChanged"));
      }
      
      private function dispatchScrollEvent(direction:String, oldPosition:Number, newPosition:Number, detail:String) : void
      {
         var event:ScrollEvent = new ScrollEvent(ScrollEvent.SCROLL);
         event.direction = direction;
         event.position = newPosition;
         event.delta = newPosition - oldPosition;
         event.detail = detail;
         dispatchEvent(event);
      }
      
      [Bindable("labelChanged")]
      public function get label() : String
      {
         return _label;
      }
      
      [Bindable("verticalScrollPolicyChanged")]
      public function get verticalScrollPolicy() : String
      {
         return _verticalScrollPolicy;
      }
      
      public function get borderMetrics() : EdgeMetrics
      {
         return border && border is IRectangularBorder?IRectangularBorder(border).borderMetrics:EdgeMetrics.EMPTY;
      }
      
      private function creationCompleteHandler(event:FlexEvent) : void
      {
         numChildrenCreated--;
         if(numChildrenCreated <= 0)
         {
            dispatchEvent(new FlexEvent("childrenCreationComplete"));
         }
      }
      
      override public function contentToLocal(point:Point) : Point
      {
         if(!contentPane)
         {
            return point;
         }
         point = contentToGlobal(point);
         return globalToLocal(point);
      }
      
      override public function removeChild(child:DisplayObject) : DisplayObject
      {
         var n:int = 0;
         var i:int = 0;
         if(child is IDeferredInstantiationUIComponent && IDeferredInstantiationUIComponent(child).descriptor)
         {
            if(createdComponents)
            {
               n = createdComponents.length;
               for(i = 0; i < n; i++)
               {
                  if(createdComponents[i] === child)
                  {
                     createdComponents.splice(i,1);
                  }
               }
            }
         }
         removingChild(child);
         if(child is UIComponent && UIComponent(child).isDocument)
         {
            BindingManager.setEnabled(child,false);
         }
         if(contentPane)
         {
            contentPane.removeChild(child);
         }
         else
         {
            $removeChild(child);
         }
         childRemoved(child);
         return child;
      }
      
      mx_internal final function get $numChildren() : int
      {
         return super.numChildren;
      }
      
      mx_internal function get numRepeaters() : int
      {
         return !!childRepeaters?int(childRepeaters.length):0;
      }
      
      mx_internal function set numChildrenCreated(value:int) : void
      {
         _numChildrenCreated = value;
      }
      
      public function get creatingContentPane() : Boolean
      {
         return _creatingContentPane;
      }
      
      public function get clipContent() : Boolean
      {
         return _clipContent;
      }
      
      mx_internal function rawChildren_getChildIndex(child:DisplayObject) : int
      {
         return super.getChildIndex(child);
      }
      
      override public function regenerateStyleCache(recursive:Boolean) : void
      {
         var n:int = 0;
         var i:int = 0;
         var child:DisplayObject = null;
         super.regenerateStyleCache(recursive);
         if(contentPane)
         {
            n = contentPane.numChildren;
            for(i = 0; i < n; i++)
            {
               child = getChildAt(i);
               if(recursive && child is UIComponent)
               {
                  if(UIComponent(child).inheritingStyles != UIComponent.STYLE_UNINITIALIZED)
                  {
                     UIComponent(child).regenerateStyleCache(recursive);
                  }
               }
               else if(child is IUITextField && IUITextField(child).inheritingStyles)
               {
                  StyleProtoChain.initTextField(IUITextField(child));
               }
            }
         }
      }
      
      override public function getChildIndex(child:DisplayObject) : int
      {
         var index:int = 0;
         if(contentPane)
         {
            return contentPane.getChildIndex(child);
         }
         index = super.getChildIndex(child) - _firstChildIndex;
         return index;
      }
      
      mx_internal function rawChildren_contains(child:DisplayObject) : Boolean
      {
         return super.contains(child);
      }
      
      mx_internal function getScrollableRect() : Rectangle
      {
         var child:DisplayObject = null;
         var left:Number = 0;
         var top:Number = 0;
         var right:Number = 0;
         var bottom:Number = 0;
         var n:int = numChildren;
         for(var i:int = 0; i < n; i++)
         {
            child = getChildAt(i);
            if(!(child is IUIComponent && !IUIComponent(child).includeInLayout))
            {
               left = Math.min(left,child.x);
               top = Math.min(top,child.y);
               if(!isNaN(child.width))
               {
                  right = Math.max(right,child.x + child.width);
               }
               if(!isNaN(child.height))
               {
                  bottom = Math.max(bottom,child.y + child.height);
               }
            }
         }
         var vm:EdgeMetrics = viewMetrics;
         var bounds:Rectangle = new Rectangle();
         bounds.left = left;
         bounds.top = top;
         bounds.right = right;
         bounds.bottom = bottom;
         if(usePadding)
         {
            bounds.right = bounds.right + getStyle("paddingRight");
            bounds.bottom = bounds.bottom + getStyle("paddingBottom");
         }
         return bounds;
      }
      
      override protected function createChildren() : void
      {
         var mainApp:Application = null;
         super.createChildren();
         createBorder();
         createOrDestroyScrollbars(horizontalScrollPolicy == ScrollPolicy.ON,verticalScrollPolicy == ScrollPolicy.ON,horizontalScrollPolicy == ScrollPolicy.ON || verticalScrollPolicy == ScrollPolicy.ON);
         if(creationPolicy != null)
         {
            actualCreationPolicy = creationPolicy;
         }
         else if(parent is Container)
         {
            if(Container(parent).actualCreationPolicy == ContainerCreationPolicy.QUEUED)
            {
               actualCreationPolicy = ContainerCreationPolicy.AUTO;
            }
            else
            {
               actualCreationPolicy = Container(parent).actualCreationPolicy;
            }
         }
         if(actualCreationPolicy == ContainerCreationPolicy.NONE)
         {
            actualCreationPolicy = ContainerCreationPolicy.AUTO;
         }
         else if(actualCreationPolicy == ContainerCreationPolicy.QUEUED)
         {
            mainApp = !!parentApplication?Application(parentApplication):Application(Application.application);
            mainApp.addToCreationQueue(this,creationIndex,null,this);
         }
         else if(recursionFlag)
         {
            createComponentsFromDescriptors();
         }
         if(autoLayout == false)
         {
            forceLayout = true;
         }
         UIComponentGlobals.layoutManager.addEventListener(FlexEvent.UPDATE_COMPLETE,layoutCompleteHandler,false,0,true);
      }
      
      override public function executeBindings(recurse:Boolean = false) : void
      {
         var bindingsHost:Object = descriptor && descriptor.document?descriptor.document:parentDocument;
         BindingManager.executeBindings(bindingsHost,id,this);
         if(recurse)
         {
            executeChildBindings(recurse);
         }
      }
      
      override public function setChildIndex(child:DisplayObject, newIndex:int) : void
      {
         var oldIndex:int = 0;
         var eventOldIndex:int = oldIndex;
         var eventNewIndex:int = newIndex;
         if(contentPane)
         {
            contentPane.setChildIndex(child,newIndex);
            if(_autoLayout || forceLayout)
            {
               invalidateDisplayList();
            }
         }
         else
         {
            oldIndex = super.getChildIndex(child);
            newIndex = newIndex + _firstChildIndex;
            if(newIndex == oldIndex)
            {
               return;
            }
            super.setChildIndex(child,newIndex);
            invalidateDisplayList();
            eventOldIndex = oldIndex - _firstChildIndex;
            eventNewIndex = newIndex - _firstChildIndex;
         }
         var event:IndexChangedEvent = new IndexChangedEvent(IndexChangedEvent.CHILD_INDEX_CHANGE);
         event.relatedObject = child;
         event.oldIndex = eventOldIndex;
         event.newIndex = eventNewIndex;
         dispatchEvent(event);
         dispatchEvent(new Event("childrenChanged"));
      }
      
      override public function globalToContent(point:Point) : Point
      {
         if(contentPane)
         {
            return contentPane.globalToLocal(point);
         }
         return globalToLocal(point);
      }
      
      mx_internal function rawChildren_removeChild(child:DisplayObject) : DisplayObject
      {
         var index:int = rawChildren_getChildIndex(child);
         return rawChildren_removeChildAt(index);
      }
      
      mx_internal function rawChildren_setChildIndex(child:DisplayObject, newIndex:int) : void
      {
         var oldIndex:int = super.getChildIndex(child);
         super.setChildIndex(child,newIndex);
         if(oldIndex < _firstChildIndex && newIndex >= _firstChildIndex)
         {
            _firstChildIndex--;
         }
         else if(oldIndex >= _firstChildIndex && newIndex <= _firstChildIndex)
         {
            _firstChildIndex++;
         }
         dispatchEvent(new Event("childrenChanged"));
      }
      
      public function set verticalLineScrollSize(value:Number) : void
      {
         scrollPropertiesChanged = true;
         _verticalLineScrollSize = value;
         invalidateDisplayList();
         dispatchEvent(new Event("verticalLineScrollSizeChanged"));
      }
      
      mx_internal function rawChildren_getChildAt(index:int) : DisplayObject
      {
         return super.getChildAt(index);
      }
      
      public function get creationIndex() : int
      {
         return _creationIndex;
      }
      
      public function get verticalScrollBar() : ScrollBar
      {
         return _verticalScrollBar;
      }
      
      public function get viewMetricsAndPadding() : EdgeMetrics
      {
         if(_viewMetricsAndPadding && (!horizontalScrollBar || horizontalScrollPolicy == ScrollPolicy.ON) && (!verticalScrollBar || verticalScrollPolicy == ScrollPolicy.ON))
         {
            return _viewMetricsAndPadding;
         }
         if(!_viewMetricsAndPadding)
         {
            _viewMetricsAndPadding = new EdgeMetrics();
         }
         var o:EdgeMetrics = _viewMetricsAndPadding;
         var vm:EdgeMetrics = viewMetrics;
         o.left = vm.left + getStyle("paddingLeft");
         o.right = vm.right + getStyle("paddingRight");
         o.top = vm.top + getStyle("paddingTop");
         o.bottom = vm.bottom + getStyle("paddingBottom");
         return o;
      }
      
      override public function addChild(child:DisplayObject) : DisplayObject
      {
         return addChildAt(child,numChildren);
      }
      
      public function set horizontalPageScrollSize(value:Number) : void
      {
         scrollPropertiesChanged = true;
         _horizontalPageScrollSize = value;
         invalidateDisplayList();
         dispatchEvent(new Event("horizontalPageScrollSizeChanged"));
      }
      
      override mx_internal function childAdded(child:DisplayObject) : void
      {
         dispatchEvent(new Event("childrenChanged"));
         var event:ChildExistenceChangedEvent = new ChildExistenceChangedEvent(ChildExistenceChangedEvent.CHILD_ADD);
         event.relatedObject = child;
         dispatchEvent(event);
         child.dispatchEvent(new FlexEvent(FlexEvent.ADD));
         super.childAdded(child);
      }
      
      public function set horizontalScrollPolicy(value:String) : void
      {
         if(_horizontalScrollPolicy != value)
         {
            _horizontalScrollPolicy = value;
            invalidateDisplayList();
            dispatchEvent(new Event("horizontalScrollPolicyChanged"));
         }
      }
      
      private function layoutCompleteHandler(event:FlexEvent) : void
      {
         UIComponentGlobals.layoutManager.removeEventListener(FlexEvent.UPDATE_COMPLETE,layoutCompleteHandler);
         forceLayout = false;
         var needToScrollChildren:Boolean = false;
         if(!isNaN(horizontalScrollPositionPending))
         {
            if(horizontalScrollPositionPending < 0)
            {
               horizontalScrollPositionPending = 0;
            }
            else if(horizontalScrollPositionPending > maxHorizontalScrollPosition)
            {
               horizontalScrollPositionPending = maxHorizontalScrollPosition;
            }
            if(horizontalScrollBar && horizontalScrollBar.scrollPosition != horizontalScrollPositionPending)
            {
               _horizontalScrollPosition = horizontalScrollPositionPending;
               horizontalScrollBar.scrollPosition = horizontalScrollPositionPending;
               needToScrollChildren = true;
            }
            horizontalScrollPositionPending = NaN;
         }
         if(!isNaN(verticalScrollPositionPending))
         {
            if(verticalScrollPositionPending < 0)
            {
               verticalScrollPositionPending = 0;
            }
            else if(verticalScrollPositionPending > maxVerticalScrollPosition)
            {
               verticalScrollPositionPending = maxVerticalScrollPosition;
            }
            if(verticalScrollBar && verticalScrollBar.scrollPosition != verticalScrollPositionPending)
            {
               _verticalScrollPosition = verticalScrollPositionPending;
               verticalScrollBar.scrollPosition = verticalScrollPositionPending;
               needToScrollChildren = true;
            }
            verticalScrollPositionPending = NaN;
         }
         if(needToScrollChildren)
         {
            scrollChildren();
         }
      }
      
      public function createComponentsFromDescriptors(recurse:Boolean = true) : void
      {
         var component:IFlexDisplayObject = null;
         numChildrenBefore = numChildren;
         createdComponents = [];
         var n:int = !!childDescriptors?int(childDescriptors.length):0;
         for(var i:int = 0; i < n; i++)
         {
            component = createComponentFromDescriptor(childDescriptors[i],recurse);
            createdComponents.push(component);
         }
         if(creationPolicy == ContainerCreationPolicy.QUEUED || creationPolicy == ContainerCreationPolicy.NONE)
         {
            UIComponentGlobals.layoutManager.usePhasedInstantiation = false;
         }
         numChildrenCreated = numChildren - numChildrenBefore;
         processedDescriptors = true;
      }
      
      override mx_internal function fillOverlay(overlay:UIComponent, color:uint, targetArea:RoundedRectangle = null) : void
      {
         var vm:EdgeMetrics = viewMetrics;
         var cornerRadius:Number = 0;
         if(!targetArea)
         {
            targetArea = new RoundedRectangle(vm.left,vm.top,unscaledWidth - vm.right - vm.left,unscaledHeight - vm.bottom - vm.top,cornerRadius);
         }
         if(isNaN(targetArea.x) || isNaN(targetArea.y) || isNaN(targetArea.width) || isNaN(targetArea.height) || isNaN(targetArea.cornerRadius))
         {
            return;
         }
         var g:Graphics = overlay.graphics;
         g.clear();
         g.beginFill(color);
         g.drawRoundRect(targetArea.x,targetArea.y,targetArea.width,targetArea.height,targetArea.cornerRadius * 2,targetArea.cornerRadius * 2);
         g.endFill();
      }
      
      override public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         super.removeEventListener(type,listener,useCapture);
         if(type == MouseEvent.CLICK || type == MouseEvent.DOUBLE_CLICK || type == MouseEvent.MOUSE_DOWN || type == MouseEvent.MOUSE_MOVE || type == MouseEvent.MOUSE_OVER || type == MouseEvent.MOUSE_OUT || type == MouseEvent.MOUSE_UP || type == MouseEvent.MOUSE_WHEEL)
         {
            if(mouseEventReferenceCount > 0 && --mouseEventReferenceCount == 0)
            {
               setStyle("mouseShield",false);
               setStyle("mouseShieldChildren",false);
            }
         }
      }
      
      mx_internal function rawChildren_removeChildAt(index:int) : DisplayObject
      {
         var child:DisplayObject = super.getChildAt(index);
         super.removingChild(child);
         $removeChildAt(index);
         super.childRemoved(child);
         if(_firstChildIndex < index && index < _firstChildIndex + _numChildren)
         {
            _numChildren--;
         }
         else if(_numChildren == 0 || index < _firstChildIndex)
         {
            _firstChildIndex--;
         }
         invalidateSize();
         invalidateDisplayList();
         dispatchEvent(new Event("childrenChanged"));
         return child;
      }
      
      public function set data(value:Object) : void
      {
         _data = value;
         dispatchEvent(new FlexEvent(FlexEvent.DATA_CHANGE));
         invalidateDisplayList();
      }
      
      override public function removeChildAt(index:int) : DisplayObject
      {
         return removeChild(getChildAt(index));
      }
      
      private function isBorderNeeded() : Boolean
      {
         var c:Class = getStyle("borderSkin");
         try
         {
            if(c != getDefinitionByName("mx.skins.halo::HaloBorder"))
            {
               return true;
            }
         }
         catch(e:Error)
         {
            return true;
         }
         var v:Object = getStyle("borderStyle");
         if(v)
         {
            if(v != "none" || v == "none" && getStyle("mouseShield"))
            {
               return true;
            }
         }
         v = getStyle("backgroundColor");
         if(v !== null && v !== "")
         {
            return true;
         }
         v = getStyle("backgroundImage");
         return v != null && v != "";
      }
      
      public function set autoLayout(value:Boolean) : void
      {
         var p:IInvalidating = null;
         _autoLayout = value;
         if(value)
         {
            invalidateSize();
            invalidateDisplayList();
            p = parent as IInvalidating;
            if(p)
            {
               p.invalidateSize();
               p.invalidateDisplayList();
            }
         }
      }
      
      [Bindable("verticalPageScrollSizeChanged")]
      public function get verticalPageScrollSize() : Number
      {
         return _verticalPageScrollSize;
      }
      
      [Bindable("childrenChanged")]
      public function getChildren() : Array
      {
         var results:Array = [];
         var n:int = numChildren;
         for(var i:int = 0; i < n; i++)
         {
            results.push(getChildAt(i));
         }
         return results;
      }
      
      override public function addChildAt(child:DisplayObject, index:int) : DisplayObject
      {
         var formerParent:DisplayObjectContainer = child.parent;
         if(formerParent && !(formerParent is Loader))
         {
            if(formerParent == this)
            {
               index = index == numChildren?int(index - 1):int(index);
            }
            formerParent.removeChild(child);
         }
         addingChild(child);
         if(contentPane)
         {
            contentPane.addChildAt(child,index);
         }
         else
         {
            $addChildAt(child,_firstChildIndex + index);
         }
         childAdded(child);
         if(child is UIComponent && UIComponent(child).isDocument)
         {
            BindingManager.setEnabled(child,true);
         }
         return child;
      }
      
      private function createScrollbarsIfNeeded(bounds:Rectangle) : Boolean
      {
         var newScrollableWidth:Number = bounds.right;
         var newScrollableHeight:Number = bounds.bottom;
         var newViewableWidth:Number = unscaledWidth;
         var newViewableHeight:Number = unscaledHeight;
         var hasNegativeCoords:Boolean = bounds.left < 0 || bounds.top < 0;
         var vm:EdgeMetrics = viewMetrics;
         if(scaleX != 1)
         {
            newViewableWidth = newViewableWidth + 1 / Math.abs(scaleX);
         }
         if(scaleY != 1)
         {
            newViewableHeight = newViewableHeight + 1 / Math.abs(scaleY);
         }
         newViewableWidth = Math.floor(newViewableWidth);
         newViewableHeight = Math.floor(newViewableHeight);
         newScrollableWidth = Math.floor(newScrollableWidth);
         newScrollableHeight = Math.floor(newScrollableHeight);
         if(horizontalScrollBar && horizontalScrollPolicy != ScrollPolicy.ON)
         {
            newViewableHeight = newViewableHeight - horizontalScrollBar.minHeight;
         }
         if(verticalScrollBar && verticalScrollPolicy != ScrollPolicy.ON)
         {
            newViewableWidth = newViewableWidth - verticalScrollBar.minWidth;
         }
         newViewableWidth = newViewableWidth - (vm.left + vm.right);
         newViewableHeight = newViewableHeight - (vm.top + vm.bottom);
         var needHorizontal:* = horizontalScrollPolicy == ScrollPolicy.ON;
         var needVertical:* = verticalScrollPolicy == ScrollPolicy.ON;
         var needContentPane:Boolean = needHorizontal || needVertical || hasNegativeCoords || overlay != null || vm.left > 0 || vm.top > 0;
         if(newViewableWidth < newScrollableWidth)
         {
            needContentPane = true;
            if(horizontalScrollPolicy == ScrollPolicy.AUTO && unscaledHeight - vm.top - vm.bottom >= 18 && unscaledWidth - vm.left - vm.right >= 32)
            {
               needHorizontal = true;
            }
         }
         if(newViewableHeight < newScrollableHeight)
         {
            needContentPane = true;
            if(verticalScrollPolicy == ScrollPolicy.AUTO && unscaledWidth - vm.left - vm.right >= 18 && unscaledHeight - vm.top - vm.bottom >= 32)
            {
               needVertical = true;
            }
         }
         if(needHorizontal && needVertical && horizontalScrollPolicy == ScrollPolicy.AUTO && verticalScrollPolicy == ScrollPolicy.AUTO && horizontalScrollBar && verticalScrollBar && newViewableWidth + verticalScrollBar.minWidth >= newScrollableWidth && newViewableHeight + horizontalScrollBar.minHeight >= newScrollableHeight)
         {
            needHorizontal = Boolean(needVertical = Boolean(false));
         }
         else if(needHorizontal && !needVertical && verticalScrollBar && horizontalScrollPolicy == ScrollPolicy.AUTO && newViewableWidth + verticalScrollBar.minWidth >= newScrollableWidth)
         {
            needHorizontal = false;
         }
         var changed:Boolean = createOrDestroyScrollbars(needHorizontal,needVertical,needContentPane);
         if(scrollableWidth != newScrollableWidth || viewableWidth != newViewableWidth || changed)
         {
            if(horizontalScrollBar)
            {
               horizontalScrollBar.setScrollProperties(newViewableWidth,0,newScrollableWidth - newViewableWidth,horizontalPageScrollSize);
               scrollPositionChanged = true;
            }
            viewableWidth = newViewableWidth;
            scrollableWidth = newScrollableWidth;
         }
         if(scrollableHeight != newScrollableHeight || viewableHeight != newViewableHeight || changed)
         {
            if(verticalScrollBar)
            {
               verticalScrollBar.setScrollProperties(newViewableHeight,0,newScrollableHeight - newViewableHeight,verticalPageScrollSize);
               scrollPositionChanged = true;
            }
            viewableHeight = newViewableHeight;
            scrollableHeight = newScrollableHeight;
         }
         return changed;
      }
      
      override mx_internal function removingChild(child:DisplayObject) : void
      {
         super.removingChild(child);
         child.dispatchEvent(new FlexEvent(FlexEvent.REMOVE));
         var event:ChildExistenceChangedEvent = new ChildExistenceChangedEvent(ChildExistenceChangedEvent.CHILD_REMOVE);
         event.relatedObject = child;
         dispatchEvent(event);
      }
      
      mx_internal function get numChildrenCreated() : int
      {
         return _numChildrenCreated;
      }
      
      private function hasChildMatchingDescriptor(descriptor:UIComponentDescriptor) : Boolean
      {
         var i:int = 0;
         var child:IUIComponent = null;
         var id:String = descriptor.id;
         if(id != null && id in document && document[id] == null)
         {
            return false;
         }
         var n:int = numChildren;
         for(i = 0; i < n; i++)
         {
            child = IUIComponent(getChildAt(i));
            if(child is IDeferredInstantiationUIComponent && IDeferredInstantiationUIComponent(child).descriptor == descriptor)
            {
               return true;
            }
         }
         if(childRepeaters)
         {
            n = childRepeaters.length;
            for(i = 0; i < n; i++)
            {
               if(IDeferredInstantiationUIComponent(childRepeaters[i]).descriptor == descriptor)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      mx_internal function rawChildren_getChildByName(name:String) : DisplayObject
      {
         return super.getChildByName(name);
      }
      
      override public function validateDisplayList() : void
      {
         var vm:EdgeMetrics = null;
         var w:Number = NaN;
         var h:Number = NaN;
         var bgColor:Object = null;
         var blockerAlpha:Number = NaN;
         var widthToBlock:Number = NaN;
         var heightToBlock:Number = NaN;
         if(_autoLayout || forceLayout)
         {
            doingLayout = true;
            super.validateDisplayList();
            doingLayout = false;
         }
         else
         {
            layoutChrome(unscaledWidth,unscaledHeight);
         }
         invalidateDisplayListFlag = true;
         if(createContentPaneAndScrollbarsIfNeeded())
         {
            if(_autoLayout || forceLayout)
            {
               doingLayout = true;
               super.validateDisplayList();
               doingLayout = false;
            }
            createContentPaneAndScrollbarsIfNeeded();
         }
         if(clampScrollPositions())
         {
            scrollChildren();
         }
         if(contentPane)
         {
            vm = viewMetrics;
            if(overlay)
            {
               overlay.x = 0;
               overlay.y = 0;
               overlay.width = unscaledWidth;
               overlay.height = unscaledHeight;
            }
            if(horizontalScrollBar || verticalScrollBar)
            {
               if(verticalScrollBar && verticalScrollPolicy == ScrollPolicy.ON)
               {
                  vm.right = vm.right - verticalScrollBar.minWidth;
               }
               if(horizontalScrollBar && horizontalScrollPolicy == ScrollPolicy.ON)
               {
                  vm.bottom = vm.bottom - horizontalScrollBar.minHeight;
               }
               if(horizontalScrollBar)
               {
                  w = unscaledWidth - vm.left - vm.right;
                  if(verticalScrollBar)
                  {
                     w = w - verticalScrollBar.minWidth;
                  }
                  horizontalScrollBar.setActualSize(w,horizontalScrollBar.minHeight);
                  horizontalScrollBar.move(vm.left,unscaledHeight - vm.bottom - horizontalScrollBar.minHeight);
               }
               if(verticalScrollBar)
               {
                  h = unscaledHeight - vm.top - vm.bottom;
                  if(horizontalScrollBar)
                  {
                     h = h - horizontalScrollBar.minHeight;
                  }
                  verticalScrollBar.setActualSize(verticalScrollBar.minWidth,h);
                  verticalScrollBar.move(unscaledWidth - vm.right - verticalScrollBar.minWidth,vm.top);
               }
               if(whiteBox)
               {
                  whiteBox.x = verticalScrollBar.x;
                  whiteBox.y = horizontalScrollBar.y;
               }
            }
            contentPane.x = vm.left;
            contentPane.y = vm.top;
            if(focusPane)
            {
               focusPane.x = vm.left;
               focusPane.y = vm.top;
            }
            scrollChildren();
         }
         invalidateDisplayListFlag = false;
         if(blocker)
         {
            vm = viewMetrics;
            bgColor = !!enabled?null:getStyle("backgroundDisabledColor");
            if(bgColor === null || isNaN(Number(bgColor)))
            {
               bgColor = getStyle("backgroundColor");
            }
            if(bgColor === null || isNaN(Number(bgColor)))
            {
               bgColor = 16777215;
            }
            blockerAlpha = getStyle("disabledOverlayAlpha");
            if(isNaN(blockerAlpha))
            {
               blockerAlpha = 0.6;
            }
            blocker.x = vm.left;
            blocker.y = vm.top;
            widthToBlock = unscaledWidth - (vm.left + vm.right);
            heightToBlock = unscaledHeight - (vm.top + vm.bottom);
            blocker.graphics.clear();
            blocker.graphics.beginFill(uint(bgColor),blockerAlpha);
            blocker.graphics.drawRect(0,0,widthToBlock,heightToBlock);
            blocker.graphics.endFill();
            rawChildren.setChildIndex(blocker,rawChildren.numChildren - 1);
         }
      }
      
      public function set horizontalLineScrollSize(value:Number) : void
      {
         scrollPropertiesChanged = true;
         _horizontalLineScrollSize = value;
         invalidateDisplayList();
         dispatchEvent(new Event("horizontalLineScrollSizeChanged"));
      }
      
      mx_internal function rawChildren_addChildAt(child:DisplayObject, index:int) : DisplayObject
      {
         if(_firstChildIndex < index && index < _firstChildIndex + _numChildren + 1)
         {
            _numChildren++;
         }
         else if(index <= _firstChildIndex)
         {
            _firstChildIndex++;
         }
         super.addingChild(child);
         $addChildAt(child,index);
         super.childAdded(child);
         dispatchEvent(new Event("childrenChanged"));
         return child;
      }
      
      override public function initialize() : void
      {
         var props:* = undefined;
         var message:String = null;
         if(isDocument && documentDescriptor && !processedDescriptors)
         {
            props = documentDescriptor.properties;
            if(props && props.childDescriptors)
            {
               if(_childDescriptors)
               {
                  message = resourceManager.getString("core","multipleChildSets_ClassAndInstance");
                  throw new Error(message);
               }
               _childDescriptors = props.childDescriptors;
            }
         }
         super.initialize();
      }
      
      mx_internal function set forceClipping(value:Boolean) : void
      {
         if(_clipContent)
         {
            if(value)
            {
               _forceClippingCount++;
            }
            else
            {
               _forceClippingCount--;
            }
            createContentPane();
            scrollChildren();
         }
      }
      
      public function removeAllChildren() : void
      {
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      override public function contentToGlobal(point:Point) : Point
      {
         if(contentPane)
         {
            return contentPane.localToGlobal(point);
         }
         return localToGlobal(point);
      }
      
      [Bindable("horizontalPageScrollSizeChanged")]
      public function get horizontalPageScrollSize() : Number
      {
         return _horizontalPageScrollSize;
      }
      
      override mx_internal function childRemoved(child:DisplayObject) : void
      {
         super.childRemoved(child);
         invalidateSize();
         invalidateDisplayList();
         if(!contentPane)
         {
            _numChildren--;
            if(_numChildren == 0)
            {
               _firstChildIndex = super.numChildren;
            }
         }
         if(contentPane && !autoLayout)
         {
            forceLayout = true;
            UIComponentGlobals.layoutManager.addEventListener(FlexEvent.UPDATE_COMPLETE,layoutCompleteHandler,false,0,true);
         }
         dispatchEvent(new Event("childrenChanged"));
      }
      
      public function set defaultButton(value:IFlexDisplayObject) : void
      {
         _defaultButton = value;
         ContainerGlobals.focusedContainer = null;
      }
      
      [Bindable("dataChange")]
      public function get data() : Object
      {
         return _data;
      }
      
      override public function get numChildren() : int
      {
         return !!contentPane?int(contentPane.numChildren):int(_numChildren);
      }
      
      public function get autoLayout() : Boolean
      {
         return _autoLayout;
      }
      
      override public function styleChanged(styleProp:String) : void
      {
         var horizontalScrollBarStyleName:String = null;
         var verticalScrollBarStyleName:String = null;
         var allStyles:Boolean = styleProp == null || styleProp == "styleName";
         if(allStyles || StyleManager.isSizeInvalidatingStyle(styleProp))
         {
            invalidateDisplayList();
         }
         if(allStyles || styleProp == "borderSkin")
         {
            if(border)
            {
               rawChildren.removeChild(DisplayObject(border));
               border = null;
               createBorder();
            }
         }
         if(allStyles || styleProp == "borderStyle" || styleProp == "backgroundColor" || styleProp == "backgroundImage" || styleProp == "mouseShield" || styleProp == "mouseShieldChildren")
         {
            createBorder();
         }
         super.styleChanged(styleProp);
         if(allStyles || StyleManager.isSizeInvalidatingStyle(styleProp))
         {
            invalidateViewMetricsAndPadding();
         }
         if(allStyles || styleProp == "horizontalScrollBarStyleName")
         {
            if(horizontalScrollBar && horizontalScrollBar is ISimpleStyleClient)
            {
               horizontalScrollBarStyleName = getStyle("horizontalScrollBarStyleName");
               ISimpleStyleClient(horizontalScrollBar).styleName = horizontalScrollBarStyleName;
            }
         }
         if(allStyles || styleProp == "verticalScrollBarStyleName")
         {
            if(verticalScrollBar && verticalScrollBar is ISimpleStyleClient)
            {
               verticalScrollBarStyleName = getStyle("verticalScrollBarStyleName");
               ISimpleStyleClient(verticalScrollBar).styleName = verticalScrollBarStyleName;
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         var styleProp:String = null;
         super.commitProperties();
         if(changedStyles)
         {
            styleProp = changedStyles == MULTIPLE_PROPERTIES?null:changedStyles;
            super.notifyStyleChangeInChildren(styleProp,true);
            changedStyles = null;
         }
         createOrDestroyBlocker();
      }
      
      override public function finishPrint(obj:Object, target:IFlexDisplayObject) : void
      {
         if(obj)
         {
            contentPane.scrollRect = Rectangle(obj);
         }
         super.finishPrint(obj,target);
      }
      
      public function get maxHorizontalScrollPosition() : Number
      {
         return !!horizontalScrollBar?Number(horizontalScrollBar.maxScrollPosition):Number(Math.max(scrollableWidth - viewableWidth,0));
      }
      
      public function set creationPolicy(value:String) : void
      {
         _creationPolicy = value;
         setActualCreationPolicies(value);
      }
      
      public function set label(value:String) : void
      {
         _label = value;
         dispatchEvent(new Event("labelChanged"));
      }
      
      private function clampScrollPositions() : Boolean
      {
         var changed:Boolean = false;
         if(_horizontalScrollPosition < 0)
         {
            _horizontalScrollPosition = 0;
            changed = true;
         }
         else if(_horizontalScrollPosition > maxHorizontalScrollPosition)
         {
            _horizontalScrollPosition = maxHorizontalScrollPosition;
            changed = true;
         }
         if(horizontalScrollBar && horizontalScrollBar.scrollPosition != _horizontalScrollPosition)
         {
            horizontalScrollBar.scrollPosition = _horizontalScrollPosition;
         }
         if(_verticalScrollPosition < 0)
         {
            _verticalScrollPosition = 0;
            changed = true;
         }
         else if(_verticalScrollPosition > maxVerticalScrollPosition)
         {
            _verticalScrollPosition = maxVerticalScrollPosition;
            changed = true;
         }
         if(verticalScrollBar && verticalScrollBar.scrollPosition != _verticalScrollPosition)
         {
            verticalScrollBar.scrollPosition = _verticalScrollPosition;
         }
         return changed;
      }
      
      override public function prepareToPrint(target:IFlexDisplayObject) : Object
      {
         var rect:Rectangle = contentPane && contentPane.scrollRect?contentPane.scrollRect:null;
         if(rect)
         {
            contentPane.scrollRect = null;
         }
         super.prepareToPrint(target);
         return rect;
      }
      
      mx_internal function get firstChildIndex() : int
      {
         return _firstChildIndex;
      }
      
      mx_internal function rawChildren_addChild(child:DisplayObject) : DisplayObject
      {
         if(_numChildren == 0)
         {
            _firstChildIndex++;
         }
         super.addingChild(child);
         $addChild(child);
         super.childAdded(child);
         dispatchEvent(new Event("childrenChanged"));
         return child;
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         var backgroundColor:Object = null;
         var backgroundAlpha:Number = NaN;
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         layoutChrome(unscaledWidth,unscaledHeight);
         if(scrollPositionChanged)
         {
            clampScrollPositions();
            scrollChildren();
            scrollPositionChanged = false;
         }
         if(scrollPropertiesChanged)
         {
            if(horizontalScrollBar)
            {
               horizontalScrollBar.lineScrollSize = horizontalLineScrollSize;
               horizontalScrollBar.pageScrollSize = horizontalPageScrollSize;
            }
            if(verticalScrollBar)
            {
               verticalScrollBar.lineScrollSize = verticalLineScrollSize;
               verticalScrollBar.pageScrollSize = verticalPageScrollSize;
            }
            scrollPropertiesChanged = false;
         }
         if(contentPane && contentPane.scrollRect)
         {
            backgroundColor = !!enabled?null:getStyle("backgroundDisabledColor");
            if(backgroundColor === null || isNaN(Number(backgroundColor)))
            {
               backgroundColor = getStyle("backgroundColor");
            }
            backgroundAlpha = getStyle("backgroundAlpha");
            if(!_clipContent || isNaN(Number(backgroundColor)) || backgroundColor === "" || !(horizontalScrollBar || verticalScrollBar) && !cacheAsBitmap)
            {
               backgroundColor = null;
            }
            else if(getStyle("backgroundImage") || getStyle("background"))
            {
               backgroundColor = null;
            }
            else if(backgroundAlpha != 1)
            {
               backgroundColor = null;
            }
            contentPane.opaqueBackground = backgroundColor;
            contentPane.cacheAsBitmap = backgroundColor != null;
         }
      }
      
      override mx_internal function addingChild(child:DisplayObject) : void
      {
         var uiChild:IUIComponent = IUIComponent(child);
         super.addingChild(child);
         invalidateSize();
         invalidateDisplayList();
         if(!contentPane)
         {
            if(_numChildren == 0)
            {
               _firstChildIndex = super.numChildren;
            }
            _numChildren++;
         }
         if(contentPane && !autoLayout)
         {
            forceLayout = true;
            UIComponentGlobals.layoutManager.addEventListener(FlexEvent.UPDATE_COMPLETE,layoutCompleteHandler,false,0,true);
         }
      }
      
      mx_internal function setActualCreationPolicies(policy:String) : void
      {
         var child:IFlexDisplayObject = null;
         var childContainer:Container = null;
         actualCreationPolicy = policy;
         var childPolicy:String = policy;
         if(policy == ContainerCreationPolicy.QUEUED)
         {
            childPolicy = ContainerCreationPolicy.AUTO;
         }
         var n:int = numChildren;
         for(var i:int = 0; i < n; i++)
         {
            child = IFlexDisplayObject(getChildAt(i));
            if(child is Container)
            {
               childContainer = Container(child);
               if(childContainer.creationPolicy == null)
               {
                  childContainer.setActualCreationPolicies(childPolicy);
               }
            }
         }
      }
   }
}
