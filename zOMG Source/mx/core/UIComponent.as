package mx.core
{
   import flash.accessibility.Accessibility;
   import flash.accessibility.AccessibilityProperties;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.GradientType;
   import flash.display.Graphics;
   import flash.display.InteractiveObject;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventPhase;
   import flash.events.FocusEvent;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.system.ApplicationDomain;
   import flash.system.Capabilities;
   import flash.text.TextLineMetrics;
   import flash.utils.getQualifiedClassName;
   import flash.utils.getQualifiedSuperclassName;
   import mx.automation.IAutomationObject;
   import mx.binding.BindingManager;
   import mx.controls.IFlexContextMenu;
   import mx.effects.EffectManager;
   import mx.effects.IEffect;
   import mx.effects.IEffectInstance;
   import mx.events.ChildExistenceChangedEvent;
   import mx.events.DynamicEvent;
   import mx.events.EffectEvent;
   import mx.events.FlexEvent;
   import mx.events.MoveEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.ResizeEvent;
   import mx.events.StateChangeEvent;
   import mx.events.ValidationResultEvent;
   import mx.graphics.RoundedRectangle;
   import mx.managers.CursorManager;
   import mx.managers.ICursorManager;
   import mx.managers.IFocusManager;
   import mx.managers.IFocusManagerComponent;
   import mx.managers.IFocusManagerContainer;
   import mx.managers.ILayoutManagerClient;
   import mx.managers.ISystemManager;
   import mx.managers.IToolTipManagerClient;
   import mx.managers.SystemManager;
   import mx.managers.SystemManagerGlobals;
   import mx.managers.SystemManagerProxy;
   import mx.managers.ToolTipManager;
   import mx.modules.ModuleManager;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   import mx.states.State#13;
   import mx.states.Transition;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.ISimpleStyleClient;
   import mx.styles.IStyleClient;
   import mx.styles.StyleManager;
   import mx.styles.StyleProtoChain;
   import mx.utils.ColorUtil;
   import mx.utils.GraphicsUtil;
   import mx.utils.StringUtil;
   import mx.validators.IValidatorListener;
   import mx.validators.ValidationResult;
   
   use namespace mx_internal;
   
   public class UIComponent extends FlexSprite implements IAutomationObject, IChildList, IDeferredInstantiationUIComponent, IFlexDisplayObject, IFlexModule, IInvalidating, ILayoutManagerClient, IPropertyChangeNotifier, IRepeaterClient, ISimpleStyleClient, IStyleClient, IToolTipManagerClient, IUIComponent, IValidatorListener, IStateClient, IConstraintClient
   {
      
      mx_internal static var dispatchEventHook:Function;
      
      private static var fakeMouseY:QName = new QName(mx_internal,"_mouseY");
      
      public static const DEFAULT_MEASURED_WIDTH:Number = 160;
      
      public static const DEFAULT_MAX_WIDTH:Number = 10000;
      
      public static const DEFAULT_MEASURED_MIN_HEIGHT:Number = 22;
      
      mx_internal static var createAccessibilityImplementation:Function;
      
      mx_internal static var STYLE_UNINITIALIZED:Object = {};
      
      private static var fakeMouseX:QName = new QName(mx_internal,"_mouseX");
      
      public static const DEFAULT_MAX_HEIGHT:Number = 10000;
      
      public static const DEFAULT_MEASURED_HEIGHT:Number = 22;
      
      private static var _embeddedFontRegistry:IEmbeddedFontRegistry;
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      public static const DEFAULT_MEASURED_MIN_WIDTH:Number = 40;
       
      
      private var cachedEmbeddedFont:EmbeddedFont = null;
      
      private var errorStringChanged:Boolean = false;
      
      mx_internal var overlay:UIComponent;
      
      mx_internal var automaticRadioButtonGroups:Object;
      
      private var _currentState:String;
      
      private var _isPopUp:Boolean;
      
      private var _repeaters:Array;
      
      private var _systemManager:ISystemManager;
      
      private var _measuredWidth:Number = 0;
      
      private var methodQueue:Array;
      
      mx_internal var _width:Number;
      
      private var _tweeningProperties:Array;
      
      private var _validationSubField:String;
      
      private var _endingEffectInstances:Array;
      
      mx_internal var saveBorderColor:Boolean = true;
      
      mx_internal var overlayColor:uint;
      
      mx_internal var overlayReferenceCount:int = 0;
      
      private var hasFontContextBeenSaved:Boolean = false;
      
      private var _repeaterIndices:Array;
      
      private var oldExplicitWidth:Number;
      
      mx_internal var _descriptor:UIComponentDescriptor;
      
      private var _initialized:Boolean = false;
      
      private var _focusEnabled:Boolean = true;
      
      private var cacheAsBitmapCount:int = 0;
      
      private var errorArray:Array;
      
      private var requestedCurrentState:String;
      
      private var listeningForRender:Boolean = false;
      
      mx_internal var invalidateDisplayListFlag:Boolean = false;
      
      private var oldScaleX:Number = 1.0;
      
      private var oldScaleY:Number = 1.0;
      
      mx_internal var _explicitMaxHeight:Number;
      
      mx_internal var invalidatePropertiesFlag:Boolean = false;
      
      private var hasFocusRect:Boolean = false;
      
      mx_internal var invalidateSizeFlag:Boolean = false;
      
      private var _scaleX:Number = 1.0;
      
      private var _scaleY:Number = 1.0;
      
      private var _styleDeclaration:CSSStyleDeclaration;
      
      private var _resourceManager:IResourceManager;
      
      mx_internal var _affectedProperties:Object;
      
      mx_internal var _documentDescriptor:UIComponentDescriptor;
      
      private var _processedDescriptors:Boolean = false;
      
      mx_internal var origBorderColor:Number;
      
      private var _focusManager:IFocusManager;
      
      private var _cachePolicy:String = "auto";
      
      private var _measuredHeight:Number = 0;
      
      private var _id:String;
      
      private var _owner:DisplayObjectContainer;
      
      public var transitions:Array;
      
      mx_internal var _parent:DisplayObjectContainer;
      
      private var _measuredMinWidth:Number = 0;
      
      private var oldMinWidth:Number;
      
      private var _explicitWidth:Number;
      
      private var _enabled:Boolean = false;
      
      public var states:Array;
      
      private var _mouseFocusEnabled:Boolean = true;
      
      private var oldHeight:Number = 0;
      
      private var _currentStateChanged:Boolean;
      
      private var cachedTextFormat:UITextFormat;
      
      mx_internal var _height:Number;
      
      private var _automationDelegate:IAutomationObject;
      
      private var _percentWidth:Number;
      
      private var _automationName:String = null;
      
      private var _isEffectStarted:Boolean = false;
      
      private var _styleName:Object;
      
      private var lastUnscaledWidth:Number;
      
      mx_internal var _document:Object;
      
      mx_internal var _errorString:String = "";
      
      private var oldExplicitHeight:Number;
      
      private var _nestLevel:int = 0;
      
      private var _systemManagerDirty:Boolean = false;
      
      private var _explicitHeight:Number;
      
      mx_internal var _toolTip:String;
      
      private var _filters:Array;
      
      private var _focusPane:Sprite;
      
      private var playStateTransition:Boolean = true;
      
      private var _nonInheritingStyles:Object;
      
      private var _showInAutomationHierarchy:Boolean = true;
      
      private var _moduleFactory:IFlexModuleFactory;
      
      private var preventDrawFocus:Boolean = false;
      
      private var oldX:Number = 0;
      
      private var oldY:Number = 0;
      
      private var _instanceIndices:Array;
      
      private var errorObjectArray:Array;
      
      private var _visible:Boolean = true;
      
      private var _inheritingStyles:Object;
      
      private var _includeInLayout:Boolean = true;
      
      mx_internal var _effectsStarted:Array;
      
      mx_internal var _explicitMinWidth:Number;
      
      private var lastUnscaledHeight:Number;
      
      mx_internal var _explicitMaxWidth:Number;
      
      private var _measuredMinHeight:Number = 0;
      
      private var _uid:String;
      
      private var _currentTransitionEffect:IEffect;
      
      private var _updateCompletePendingFlag:Boolean = false;
      
      private var oldMinHeight:Number;
      
      private var _flexContextMenu:IFlexContextMenu;
      
      mx_internal var _explicitMinHeight:Number;
      
      private var _percentHeight:Number;
      
      private var oldEmbeddedFontContext:IFlexModuleFactory = null;
      
      private var oldWidth:Number = 0;
      
      public function UIComponent()
      {
         methodQueue = [];
         _resourceManager = ResourceManager.getInstance();
         _inheritingStyles = UIComponent.STYLE_UNINITIALIZED;
         _nonInheritingStyles = UIComponent.STYLE_UNINITIALIZED;
         states = [];
         transitions = [];
         _effectsStarted = [];
         _affectedProperties = {};
         _endingEffectInstances = [];
         super();
         focusRect = false;
         tabEnabled = this is IFocusManagerComponent;
         tabChildren = false;
         enabled = true;
         $visible = false;
         addEventListener(Event.ADDED,addedHandler);
         addEventListener(Event.REMOVED,removedHandler);
         if(this is IFocusManagerComponent)
         {
            addEventListener(FocusEvent.FOCUS_IN,focusInHandler);
            addEventListener(FocusEvent.FOCUS_OUT,focusOutHandler);
            addEventListener(KeyboardEvent.KEY_DOWN,keyDownHandler);
            addEventListener(KeyboardEvent.KEY_UP,keyUpHandler);
         }
         resourcesChanged();
         resourceManager.addEventListener(Event.CHANGE,resourceManager_changeHandler,false,0,true);
         _width = super.width;
         _height = super.height;
      }
      
      private static function get embeddedFontRegistry() : IEmbeddedFontRegistry
      {
         if(!_embeddedFontRegistry)
         {
            _embeddedFontRegistry = IEmbeddedFontRegistry(Singleton.getInstance("mx.core::IEmbeddedFontRegistry"));
         }
         return _embeddedFontRegistry;
      }
      
      public static function resumeBackgroundProcessing() : void
      {
         var sm:ISystemManager = null;
         if(UIComponentGlobals.callLaterSuspendCount > 0)
         {
            UIComponentGlobals.callLaterSuspendCount--;
            if(UIComponentGlobals.callLaterSuspendCount == 0)
            {
               sm = SystemManagerGlobals.topLevelSystemManagers[0];
               if(sm && sm.stage)
               {
                  sm.stage.invalidate();
               }
            }
         }
      }
      
      public static function suspendBackgroundProcessing() : void
      {
         UIComponentGlobals.callLaterSuspendCount++;
      }
      
      override public function get filters() : Array
      {
         return !!_filters?_filters:super.filters;
      }
      
      [Bindable("toolTipChanged")]
      public function get toolTip() : String
      {
         return _toolTip;
      }
      
      private function transition_effectEndHandler(event:EffectEvent) : void
      {
         _currentTransitionEffect = null;
      }
      
      public function get nestLevel() : int
      {
         return _nestLevel;
      }
      
      protected function adjustFocusRect(obj:DisplayObject = null) : void
      {
         var rectCol:Number = NaN;
         var thickness:Number = NaN;
         var pt:Point = null;
         var rotRad:Number = NaN;
         if(!obj)
         {
            obj = this;
         }
         if(isNaN(obj.width) || isNaN(obj.height))
         {
            return;
         }
         var fm:IFocusManager = focusManager;
         if(!fm)
         {
            return;
         }
         var focusObj:IFlexDisplayObject = IFlexDisplayObject(getFocusObject());
         if(focusObj)
         {
            if(errorString && errorString != "")
            {
               rectCol = getStyle("errorColor");
            }
            else
            {
               rectCol = getStyle("themeColor");
            }
            thickness = getStyle("focusThickness");
            if(focusObj is IStyleClient)
            {
               IStyleClient(focusObj).setStyle("focusColor",rectCol);
            }
            focusObj.setActualSize(obj.width + 2 * thickness,obj.height + 2 * thickness);
            if(rotation)
            {
               rotRad = rotation * Math.PI / 180;
               pt = new Point(obj.x - thickness * (Math.cos(rotRad) - Math.sin(rotRad)),obj.y - thickness * (Math.cos(rotRad) + Math.sin(rotRad)));
               DisplayObject(focusObj).rotation = rotation;
            }
            else
            {
               pt = new Point(obj.x - thickness,obj.y - thickness);
            }
            if(obj.parent == this)
            {
               pt.x = pt.x + x;
               pt.y = pt.y + y;
            }
            pt = parent.localToGlobal(pt);
            pt = parent.globalToLocal(pt);
            focusObj.move(pt.x,pt.y);
            if(focusObj is IInvalidating)
            {
               IInvalidating(focusObj).validateNow();
            }
            else if(focusObj is IProgrammaticSkin)
            {
               IProgrammaticSkin(focusObj).validateNow();
            }
         }
      }
      
      mx_internal function setUnscaledWidth(value:Number) : void
      {
         var scaledValue:Number = value * Math.abs(oldScaleX);
         if(_explicitWidth == scaledValue)
         {
            return;
         }
         if(!isNaN(scaledValue))
         {
            _percentWidth = NaN;
         }
         _explicitWidth = scaledValue;
         invalidateSize();
         var p:IInvalidating = parent as IInvalidating;
         if(p && includeInLayout)
         {
            p.invalidateSize();
            p.invalidateDisplayList();
         }
      }
      
      private function isOnDisplayList() : Boolean
      {
         var p:DisplayObjectContainer = null;
         try
         {
            p = !!_parent?_parent:super.parent;
         }
         catch(e:SecurityError)
         {
            return true;
         }
         return !!p?true:false;
      }
      
      public function set nestLevel(value:int) : void
      {
         var childList:IChildList = null;
         var n:int = 0;
         var i:int = 0;
         var ui:ILayoutManagerClient = null;
         var textField:IUITextField = null;
         if(value > 1 && _nestLevel != value)
         {
            _nestLevel = value;
            updateCallbacks();
            childList = this is IRawChildrenContainer?IRawChildrenContainer(this).rawChildren:IChildList(this);
            n = childList.numChildren;
            for(i = 0; i < n; i++)
            {
               ui = childList.getChildAt(i) as ILayoutManagerClient;
               if(ui)
               {
                  ui.nestLevel = value + 1;
               }
               else
               {
                  textField = childList.getChildAt(i) as IUITextField;
                  if(textField)
                  {
                     textField.nestLevel = value + 1;
                  }
               }
            }
         }
      }
      
      public function getExplicitOrMeasuredHeight() : Number
      {
         return !isNaN(explicitHeight)?Number(explicitHeight):Number(measuredHeight);
      }
      
      private function callLaterDispatcher(event:Event) : void
      {
         var callLaterErrorEvent:DynamicEvent = null;
         UIComponentGlobals.callLaterDispatcherCount++;
         if(!UIComponentGlobals.catchCallLaterExceptions)
         {
            callLaterDispatcher2(event);
         }
         else
         {
            try
            {
               callLaterDispatcher2(event);
            }
            catch(e:Error)
            {
               callLaterErrorEvent = new DynamicEvent("callLaterError");
               callLaterErrorEvent.error = e;
               systemManager.dispatchEvent(callLaterErrorEvent);
            }
         }
         UIComponentGlobals.callLaterDispatcherCount--;
      }
      
      public function getStyle(styleProp:String) : *
      {
         return !!StyleManager.inheritingStyles[styleProp]?_inheritingStyles[styleProp]:_nonInheritingStyles[styleProp];
      }
      
      mx_internal final function get $width() : Number
      {
         return super.width;
      }
      
      public function get className() : String
      {
         var name:String = getQualifiedClassName(this);
         var index:int = name.indexOf("::");
         if(index != -1)
         {
            name = name.substr(index + 2);
         }
         return name;
      }
      
      public function set accessibilityEnabled(value:Boolean) : void
      {
         if(!Capabilities.hasAccessibility)
         {
            return;
         }
         if(!accessibilityProperties)
         {
            accessibilityProperties = new AccessibilityProperties();
         }
         accessibilityProperties.silent = !value;
         Accessibility.updateProperties();
      }
      
      public function verticalGradientMatrix(x:Number, y:Number, width:Number, height:Number) : Matrix
      {
         UIComponentGlobals.tempMatrix.createGradientBox(width,height,Math.PI / 2,x,y);
         return UIComponentGlobals.tempMatrix;
      }
      
      public function setCurrentState(stateName:String, playTransition:Boolean = true) : void
      {
         if(stateName != currentState && !(isBaseState(stateName) && isBaseState(currentState)))
         {
            requestedCurrentState = stateName;
            playStateTransition = playTransition;
            if(initialized)
            {
               commitCurrentState();
            }
            else
            {
               _currentStateChanged = true;
               addEventListener(FlexEvent.CREATION_COMPLETE,creationCompleteHandler);
            }
         }
      }
      
      private function getBaseStates(state:State#13) : Array
      {
         var baseStates:Array = [];
         while(state && state.basedOn)
         {
            baseStates.push(state.basedOn);
            state = getState(state.basedOn);
         }
         return baseStates;
      }
      
      public function set minHeight(value:Number) : void
      {
         if(explicitMinHeight == value)
         {
            return;
         }
         explicitMinHeight = value;
      }
      
      protected function isOurFocus(target:DisplayObject) : Boolean
      {
         return target == this;
      }
      
      [Bindable("errorStringChanged")]
      public function get errorString() : String
      {
         return _errorString;
      }
      
      mx_internal function setUnscaledHeight(value:Number) : void
      {
         var scaledValue:Number = value * Math.abs(oldScaleY);
         if(_explicitHeight == scaledValue)
         {
            return;
         }
         if(!isNaN(scaledValue))
         {
            _percentHeight = NaN;
         }
         _explicitHeight = scaledValue;
         invalidateSize();
         var p:IInvalidating = parent as IInvalidating;
         if(p && includeInLayout)
         {
            p.invalidateSize();
            p.invalidateDisplayList();
         }
      }
      
      public function get automationName() : String
      {
         if(_automationName)
         {
            return _automationName;
         }
         if(automationDelegate)
         {
            return automationDelegate.automationName;
         }
         return "";
      }
      
      mx_internal final function set $width(value:Number) : void
      {
         super.width = value;
      }
      
      public function getVisibleRect(targetParent:DisplayObject = null) : Rectangle
      {
         if(!targetParent)
         {
            targetParent = DisplayObject(systemManager);
         }
         var thisParent:DisplayObject = !!$parent?$parent:parent;
         if(!thisParent)
         {
            return new Rectangle();
         }
         var pt:Point = new Point(x,y);
         pt = thisParent.localToGlobal(pt);
         var bounds:Rectangle = new Rectangle(pt.x,pt.y,width,height);
         var current:DisplayObject = this;
         var currentRect:Rectangle = new Rectangle();
         do
         {
            if(current is UIComponent)
            {
               if(UIComponent(current).$parent)
               {
                  current = UIComponent(current).$parent;
               }
               else
               {
                  current = UIComponent(current).parent;
               }
            }
            else
            {
               current = current.parent;
            }
            if(current && current.scrollRect)
            {
               currentRect = current.scrollRect.clone();
               pt = current.localToGlobal(currentRect.topLeft);
               currentRect.x = pt.x;
               currentRect.y = pt.y;
               bounds = bounds.intersection(currentRect);
            }
         }
         while(current && current != targetParent);
         
         return bounds;
      }
      
      public function invalidateDisplayList() : void
      {
         if(!invalidateDisplayListFlag)
         {
            invalidateDisplayListFlag = true;
            if(isOnDisplayList() && UIComponentGlobals.layoutManager)
            {
               UIComponentGlobals.layoutManager.invalidateDisplayList(this);
            }
         }
      }
      
      mx_internal function initThemeColor() : Boolean
      {
         var tc:Object = null;
         var rc:Number = NaN;
         var sc:Number = NaN;
         var classSelector:Object = null;
         var typeSelectors:Array = null;
         var i:int = 0;
         var typeSelector:CSSStyleDeclaration = null;
         var styleName:Object = _styleName;
         if(_styleDeclaration)
         {
            tc = _styleDeclaration.getStyle("themeColor");
            rc = _styleDeclaration.getStyle("rollOverColor");
            sc = _styleDeclaration.getStyle("selectionColor");
         }
         if((tc === null || !StyleManager.isValidStyleValue(tc)) && (styleName && !(styleName is ISimpleStyleClient)))
         {
            classSelector = styleName is String?StyleManager.getStyleDeclaration("." + styleName):styleName;
            if(classSelector)
            {
               tc = classSelector.getStyle("themeColor");
               rc = classSelector.getStyle("rollOverColor");
               sc = classSelector.getStyle("selectionColor");
            }
         }
         if(tc === null || !StyleManager.isValidStyleValue(tc))
         {
            typeSelectors = getClassStyleDeclarations();
            for(i = 0; i < typeSelectors.length; i++)
            {
               typeSelector = typeSelectors[i];
               if(typeSelector)
               {
                  tc = typeSelector.getStyle("themeColor");
                  rc = typeSelector.getStyle("rollOverColor");
                  sc = typeSelector.getStyle("selectionColor");
               }
               if(tc !== null && StyleManager.isValidStyleValue(tc))
               {
                  break;
               }
            }
         }
         if(tc !== null && StyleManager.isValidStyleValue(tc) && isNaN(rc) && isNaN(sc))
         {
            setThemeColor(tc);
            return true;
         }
         return tc !== null && StyleManager.isValidStyleValue(tc) && !isNaN(rc) && !isNaN(sc);
      }
      
      [Bindable("scaleXChanged")]
      override public function get scaleX() : Number
      {
         return _scaleX;
      }
      
      public function get uid() : String
      {
         if(!_uid)
         {
            _uid = toString();
         }
         return _uid;
      }
      
      override public function get mouseX() : Number
      {
         if(!root || root is Stage || root[fakeMouseX] === undefined)
         {
            return super.mouseX;
         }
         return globalToLocal(new Point(root[fakeMouseX],0)).x;
      }
      
      public function set tweeningProperties(value:Array) : void
      {
         _tweeningProperties = value;
      }
      
      override public function stopDrag() : void
      {
         super.stopDrag();
         invalidateProperties();
         dispatchEvent(new Event("xChanged"));
         dispatchEvent(new Event("yChanged"));
      }
      
      public function get focusPane() : Sprite
      {
         return _focusPane;
      }
      
      public function horizontalGradientMatrix(x:Number, y:Number, width:Number, height:Number) : Matrix
      {
         UIComponentGlobals.tempMatrix.createGradientBox(width,height,0,x,y);
         return UIComponentGlobals.tempMatrix;
      }
      
      public function get isDocument() : Boolean
      {
         return document == this;
      }
      
      public function set validationSubField(value:String) : void
      {
         _validationSubField = value;
      }
      
      [Bindable("scaleYChanged")]
      override public function get scaleY() : Number
      {
         return _scaleY;
      }
      
      protected function keyDownHandler(event:KeyboardEvent) : void
      {
      }
      
      protected function createInFontContext(classObj:Class) : Object
      {
         hasFontContextBeenSaved = true;
         var fontName:String = StringUtil.trimArrayElements(getStyle("fontFamily"),",");
         var fontWeight:String = getStyle("fontWeight");
         var fontStyle:String = getStyle("fontStyle");
         var bold:* = fontWeight == "bold";
         var italic:* = fontStyle == "italic";
         oldEmbeddedFontContext = getFontContext(fontName,bold,italic);
         var obj:Object = createInModuleContext(!!oldEmbeddedFontContext?oldEmbeddedFontContext:moduleFactory,getQualifiedClassName(classObj));
         if(obj == null)
         {
            obj = new classObj();
         }
         return obj;
      }
      
      public function get screen() : Rectangle
      {
         var sm:ISystemManager = systemManager;
         return !!sm?sm.screen:null;
      }
      
      protected function focusInHandler(event:FocusEvent) : void
      {
         var fm:IFocusManager = null;
         if(isOurFocus(DisplayObject(event.target)))
         {
            fm = focusManager;
            if(fm && fm.showFocusIndicator)
            {
               drawFocus(true);
            }
            ContainerGlobals.checkFocus(event.relatedObject,this);
         }
      }
      
      public function hasFontContextChanged() : Boolean
      {
         if(!hasFontContextBeenSaved)
         {
            return false;
         }
         var fontName:String = StringUtil.trimArrayElements(getStyle("fontFamily"),",");
         var fontWeight:String = getStyle("fontWeight");
         var fontStyle:String = getStyle("fontStyle");
         var bold:* = fontWeight == "bold";
         var italic:* = fontStyle == "italic";
         var embeddedFont:EmbeddedFont = getEmbeddedFont(fontName,bold,italic);
         var fontContext:IFlexModuleFactory = embeddedFontRegistry.getAssociatedModuleFactory(embeddedFont,moduleFactory);
         return fontContext != oldEmbeddedFontContext;
      }
      
      [Bindable("explicitHeightChanged")]
      public function get explicitHeight() : Number
      {
         return _explicitHeight;
      }
      
      [Bindable("xChanged")]
      override public function get x() : Number
      {
         return super.x;
      }
      
      [Bindable("yChanged")]
      override public function get y() : Number
      {
         return super.y;
      }
      
      [Bindable("show")]
      [Bindable("hide")]
      override public function get visible() : Boolean
      {
         return _visible;
      }
      
      mx_internal function addOverlay(color:uint, targetArea:RoundedRectangle = null) : void
      {
         if(!overlay)
         {
            overlayColor = color;
            overlay = new UIComponent();
            overlay.name = "overlay";
            overlay.$visible = true;
            fillOverlay(overlay,color,targetArea);
            attachOverlay();
            if(!targetArea)
            {
               addEventListener(ResizeEvent.RESIZE,overlay_resizeHandler);
            }
            overlay.x = 0;
            overlay.y = 0;
            invalidateDisplayList();
            overlayReferenceCount = 1;
         }
         else
         {
            overlayReferenceCount++;
         }
         dispatchEvent(new ChildExistenceChangedEvent(ChildExistenceChangedEvent.OVERLAY_CREATED,true,false,overlay));
      }
      
      [Bindable("resize")]
      public function get percentWidth() : Number
      {
         return _percentWidth;
      }
      
      public function set explicitMinHeight(value:Number) : void
      {
         if(_explicitMinHeight == value)
         {
            return;
         }
         _explicitMinHeight = value;
         invalidateSize();
         var p:IInvalidating = parent as IInvalidating;
         if(p)
         {
            p.invalidateSize();
            p.invalidateDisplayList();
         }
         dispatchEvent(new Event("explicitMinHeightChanged"));
      }
      
      public function set automationName(value:String) : void
      {
         _automationName = value;
      }
      
      public function get mouseFocusEnabled() : Boolean
      {
         return _mouseFocusEnabled;
      }
      
      mx_internal function getEmbeddedFont(fontName:String, bold:Boolean, italic:Boolean) : EmbeddedFont
      {
         if(cachedEmbeddedFont)
         {
            if(cachedEmbeddedFont.fontName == fontName && cachedEmbeddedFont.fontStyle == EmbeddedFontRegistry.getFontStyle(bold,italic))
            {
               return cachedEmbeddedFont;
            }
         }
         cachedEmbeddedFont = new EmbeddedFont(fontName,bold,italic);
         return cachedEmbeddedFont;
      }
      
      public function stylesInitialized() : void
      {
      }
      
      public function set errorString(value:String) : void
      {
         var oldValue:String = _errorString;
         _errorString = value;
         ToolTipManager.registerErrorString(this,oldValue,value);
         errorStringChanged = true;
         invalidateProperties();
         dispatchEvent(new Event("errorStringChanged"));
      }
      
      public function getExplicitOrMeasuredWidth() : Number
      {
         return !isNaN(explicitWidth)?Number(explicitWidth):Number(measuredWidth);
      }
      
      mx_internal final function set $height(value:Number) : void
      {
         super.height = value;
      }
      
      protected function keyUpHandler(event:KeyboardEvent) : void
      {
      }
      
      mx_internal final function $removeChild(child:DisplayObject) : DisplayObject
      {
         return super.removeChild(child);
      }
      
      override public function set scaleX(value:Number) : void
      {
         if(_scaleX == value)
         {
            return;
         }
         _scaleX = value;
         invalidateProperties();
         invalidateSize();
         dispatchEvent(new Event("scaleXChanged"));
      }
      
      override public function set scaleY(value:Number) : void
      {
         if(_scaleY == value)
         {
            return;
         }
         _scaleY = value;
         invalidateProperties();
         invalidateSize();
         dispatchEvent(new Event("scaleYChanged"));
      }
      
      public function set uid(uid:String) : void
      {
         this._uid = uid;
      }
      
      public function createAutomationIDPart(child:IAutomationObject) : Object
      {
         if(automationDelegate)
         {
            return automationDelegate.createAutomationIDPart(child);
         }
         return null;
      }
      
      public function getAutomationChildAt(index:int) : IAutomationObject
      {
         if(automationDelegate)
         {
            return automationDelegate.getAutomationChildAt(index);
         }
         return null;
      }
      
      mx_internal function get isEffectStarted() : Boolean
      {
         return _isEffectStarted;
      }
      
      override public function get parent() : DisplayObjectContainer
      {
         try
         {
            return !!_parent?_parent:super.parent;
         }
         catch(e:SecurityError)
         {
         }
         return null;
      }
      
      override public function get mouseY() : Number
      {
         if(!root || root is Stage || root[fakeMouseY] === undefined)
         {
            return super.mouseY;
         }
         return globalToLocal(new Point(0,root[fakeMouseY])).y;
      }
      
      public function setActualSize(w:Number, h:Number) : void
      {
         var changed:Boolean = false;
         if(_width != w)
         {
            _width = w;
            dispatchEvent(new Event("widthChanged"));
            changed = true;
         }
         if(_height != h)
         {
            _height = h;
            dispatchEvent(new Event("heightChanged"));
            changed = true;
         }
         if(changed)
         {
            invalidateDisplayList();
            dispatchResizeEvent();
         }
      }
      
      private function focusObj_resizeHandler(event:ResizeEvent) : void
      {
         adjustFocusRect();
      }
      
      mx_internal function adjustSizesForScaleChanges() : void
      {
         var scalingFactor:Number = NaN;
         var xScale:Number = scaleX;
         var yScale:Number = scaleY;
         if(xScale != oldScaleX)
         {
            scalingFactor = Math.abs(xScale / oldScaleX);
            if(explicitMinWidth)
            {
               explicitMinWidth = explicitMinWidth * scalingFactor;
            }
            if(!isNaN(explicitWidth))
            {
               explicitWidth = explicitWidth * scalingFactor;
            }
            if(explicitMaxWidth)
            {
               explicitMaxWidth = explicitMaxWidth * scalingFactor;
            }
            oldScaleX = xScale;
         }
         if(yScale != oldScaleY)
         {
            scalingFactor = Math.abs(yScale / oldScaleY);
            if(explicitMinHeight)
            {
               explicitMinHeight = explicitMinHeight * scalingFactor;
            }
            if(explicitHeight)
            {
               explicitHeight = explicitHeight * scalingFactor;
            }
            if(explicitMaxHeight)
            {
               explicitMaxHeight = explicitMaxHeight * scalingFactor;
            }
            oldScaleY = yScale;
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
            _focusPane.mask = null;
            _focusPane = null;
         }
      }
      
      public function determineTextFormatFromStyles() : UITextFormat
      {
         var font:String = null;
         var textFormat:UITextFormat = cachedTextFormat;
         if(!textFormat)
         {
            font = StringUtil.trimArrayElements(_inheritingStyles.fontFamily,",");
            textFormat = new UITextFormat(getNonNullSystemManager(),font);
            textFormat.moduleFactory = moduleFactory;
            textFormat.align = _inheritingStyles.textAlign;
            textFormat.bold = _inheritingStyles.fontWeight == "bold";
            textFormat.color = !!enabled?_inheritingStyles.color:_inheritingStyles.disabledColor;
            textFormat.font = font;
            textFormat.indent = _inheritingStyles.textIndent;
            textFormat.italic = _inheritingStyles.fontStyle == "italic";
            textFormat.kerning = _inheritingStyles.kerning;
            textFormat.leading = _nonInheritingStyles.leading;
            textFormat.leftMargin = _nonInheritingStyles.paddingLeft;
            textFormat.letterSpacing = _inheritingStyles.letterSpacing;
            textFormat.rightMargin = _nonInheritingStyles.paddingRight;
            textFormat.size = _inheritingStyles.fontSize;
            textFormat.underline = _nonInheritingStyles.textDecoration == "underline";
            textFormat.antiAliasType = _inheritingStyles.fontAntiAliasType;
            textFormat.gridFitType = _inheritingStyles.fontGridFitType;
            textFormat.sharpness = _inheritingStyles.fontSharpness;
            textFormat.thickness = _inheritingStyles.fontThickness;
            cachedTextFormat = textFormat;
         }
         return textFormat;
      }
      
      public function validationResultHandler(event:ValidationResultEvent) : void
      {
         var msg:String = null;
         var result:ValidationResult = null;
         var i:int = 0;
         if(errorObjectArray === null)
         {
            errorObjectArray = new Array();
            errorArray = new Array();
         }
         var validatorIndex:int = errorObjectArray.indexOf(event.target);
         if(event.type == ValidationResultEvent.VALID)
         {
            if(validatorIndex != -1)
            {
               errorObjectArray.splice(validatorIndex,1);
               errorArray.splice(validatorIndex,1);
               errorString = errorArray.join("\n");
               if(errorArray.length == 0)
               {
                  dispatchEvent(new FlexEvent(FlexEvent.VALID));
               }
            }
         }
         else
         {
            if(validationSubField != null && validationSubField != "" && event.results)
            {
               for(i = 0; i < event.results.length; i++)
               {
                  result = event.results[i];
                  if(result.subField == validationSubField)
                  {
                     if(result.isError)
                     {
                        msg = result.errorMessage;
                     }
                     else if(validatorIndex != -1)
                     {
                        errorObjectArray.splice(validatorIndex,1);
                        errorArray.splice(validatorIndex,1);
                        errorString = errorArray.join("\n");
                        if(errorArray.length == 0)
                        {
                           dispatchEvent(new FlexEvent(FlexEvent.VALID));
                        }
                     }
                     break;
                  }
               }
            }
            else if(event.results && event.results.length > 0)
            {
               msg = event.results[0].errorMessage;
            }
            if(msg && validatorIndex != -1)
            {
               errorArray[validatorIndex] = msg;
               errorString = errorArray.join("\n");
               dispatchEvent(new FlexEvent(FlexEvent.INVALID));
            }
            else if(msg && validatorIndex == -1)
            {
               errorObjectArray.push(event.target);
               errorArray.push(msg);
               errorString = errorArray.join("\n");
               dispatchEvent(new FlexEvent(FlexEvent.INVALID));
            }
         }
      }
      
      public function invalidateProperties() : void
      {
         if(!invalidatePropertiesFlag)
         {
            invalidatePropertiesFlag = true;
            if(parent && UIComponentGlobals.layoutManager)
            {
               UIComponentGlobals.layoutManager.invalidateProperties(this);
            }
         }
      }
      
      public function get inheritingStyles() : Object
      {
         return _inheritingStyles;
      }
      
      private function focusObj_scrollHandler(event:Event) : void
      {
         adjustFocusRect();
      }
      
      mx_internal final function get $x() : Number
      {
         return super.x;
      }
      
      mx_internal final function get $y() : Number
      {
         return super.y;
      }
      
      public function setConstraintValue(constraintName:String, value:*) : void
      {
         setStyle(constraintName,value);
      }
      
      protected function resourcesChanged() : void
      {
      }
      
      public function registerEffects(effects:Array) : void
      {
         var event:String = null;
         var n:int = effects.length;
         for(var i:int = 0; i < n; i++)
         {
            event = EffectManager.getEventForEffectTrigger(effects[i]);
            if(event != null && event != "")
            {
               addEventListener(event,EffectManager.eventHandler,false,EventPriority.EFFECT);
            }
         }
      }
      
      [Bindable("explicitMinWidthChanged")]
      public function get explicitMinWidth() : Number
      {
         return _explicitMinWidth;
      }
      
      private function filterChangeHandler(event:Event) : void
      {
         super.filters = _filters;
      }
      
      override public function set visible(value:Boolean) : void
      {
         setVisible(value);
      }
      
      override public function set y(value:Number) : void
      {
         if(super.y == value)
         {
            return;
         }
         super.y = value;
         invalidateProperties();
         dispatchEvent(new Event("yChanged"));
      }
      
      public function set explicitHeight(value:Number) : void
      {
         if(_explicitHeight == value)
         {
            return;
         }
         if(!isNaN(value))
         {
            _percentHeight = NaN;
         }
         _explicitHeight = value;
         invalidateSize();
         var p:IInvalidating = parent as IInvalidating;
         if(p && includeInLayout)
         {
            p.invalidateSize();
            p.invalidateDisplayList();
         }
         dispatchEvent(new Event("explicitHeightChanged"));
      }
      
      override public function set x(value:Number) : void
      {
         if(super.x == value)
         {
            return;
         }
         super.x = value;
         invalidateProperties();
         dispatchEvent(new Event("xChanged"));
      }
      
      public function set showInAutomationHierarchy(value:Boolean) : void
      {
         _showInAutomationHierarchy = value;
      }
      
      private function resourceManager_changeHandler(event:Event) : void
      {
         resourcesChanged();
      }
      
      public function set systemManager(value:ISystemManager) : void
      {
         _systemManager = value;
         _systemManagerDirty = false;
      }
      
      public function get accessibilityName() : String
      {
         return !!accessibilityProperties?accessibilityProperties.name:"";
      }
      
      mx_internal function getFocusObject() : DisplayObject
      {
         var fm:IFocusManager = focusManager;
         if(!fm || !fm.focusPane)
         {
            return null;
         }
         return fm.focusPane.numChildren == 0?null:fm.focusPane.getChildAt(0);
      }
      
      public function set percentWidth(value:Number) : void
      {
         if(_percentWidth == value)
         {
            return;
         }
         if(!isNaN(value))
         {
            _explicitWidth = NaN;
         }
         _percentWidth = value;
         var p:IInvalidating = parent as IInvalidating;
         if(p)
         {
            p.invalidateSize();
            p.invalidateDisplayList();
         }
      }
      
      public function get moduleFactory() : IFlexModuleFactory
      {
         return _moduleFactory;
      }
      
      override public function addChild(child:DisplayObject) : DisplayObject
      {
         var formerParent:DisplayObjectContainer = child.parent;
         if(formerParent && !(formerParent is Loader))
         {
            formerParent.removeChild(child);
         }
         var index:int = overlayReferenceCount && child != overlay?int(Math.max(0,super.numChildren - 1)):int(super.numChildren);
         addingChild(child);
         $addChildAt(child,index);
         childAdded(child);
         return child;
      }
      
      public function get document() : Object
      {
         return _document;
      }
      
      public function set mouseFocusEnabled(value:Boolean) : void
      {
         _mouseFocusEnabled = value;
      }
      
      mx_internal final function $addChild(child:DisplayObject) : DisplayObject
      {
         return super.addChild(child);
      }
      
      mx_internal function setThemeColor(value:Object) : void
      {
         var newValue:Number = NaN;
         if(newValue is String)
         {
            newValue = parseInt(String(value));
         }
         else
         {
            newValue = Number(value);
         }
         if(isNaN(newValue))
         {
            newValue = StyleManager.getColorName(value);
         }
         var newValueS:Number = ColorUtil.adjustBrightness2(newValue,50);
         var newValueR:Number = ColorUtil.adjustBrightness2(newValue,70);
         setStyle("selectionColor",newValueS);
         setStyle("rollOverColor",newValueR);
      }
      
      [Bindable("explicitMaxWidthChanged")]
      public function get explicitMaxWidth() : Number
      {
         return _explicitMaxWidth;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      [Bindable("heightChanged")]
      override public function get height() : Number
      {
         return _height;
      }
      
      public function set minWidth(value:Number) : void
      {
         if(explicitMinWidth == value)
         {
            return;
         }
         explicitMinWidth = value;
      }
      
      public function set currentState(value:String) : void
      {
         setCurrentState(value,true);
      }
      
      public function executeBindings(recurse:Boolean = false) : void
      {
         var bindingsHost:Object = descriptor && descriptor.document?descriptor.document:parentDocument;
         BindingManager.executeBindings(bindingsHost,id,this);
      }
      
      public function replayAutomatableEvent(event:Event) : Boolean
      {
         if(automationDelegate)
         {
            return automationDelegate.replayAutomatableEvent(event);
         }
         return false;
      }
      
      mx_internal function getFontContext(fontName:String, bold:Boolean, italic:Boolean) : IFlexModuleFactory
      {
         return embeddedFontRegistry.getAssociatedModuleFactory(getEmbeddedFont(fontName,bold,italic),moduleFactory);
      }
      
      public function get instanceIndex() : int
      {
         return !!_instanceIndices?int(_instanceIndices[_instanceIndices.length - 1]):-1;
      }
      
      public function set measuredWidth(value:Number) : void
      {
         _measuredWidth = value;
      }
      
      public function effectFinished(effectInst:IEffectInstance) : void
      {
         _endingEffectInstances.push(effectInst);
         invalidateProperties();
         UIComponentGlobals.layoutManager.addEventListener(FlexEvent.UPDATE_COMPLETE,updateCompleteHandler,false,0,true);
      }
      
      public function getRepeaterItem(whichRepeater:int = -1) : Object
      {
         var repeaterArray:Array = repeaters;
         if(repeaterArray.length == 0)
         {
            return null;
         }
         if(whichRepeater == -1)
         {
            whichRepeater = repeaterArray.length - 1;
         }
         return repeaterArray[whichRepeater].getItemAt(repeaterIndices[whichRepeater]);
      }
      
      mx_internal function set isEffectStarted(value:Boolean) : void
      {
         _isEffectStarted = value;
      }
      
      mx_internal function fillOverlay(overlay:UIComponent, color:uint, targetArea:RoundedRectangle = null) : void
      {
         if(!targetArea)
         {
            targetArea = new RoundedRectangle(0,0,unscaledWidth,unscaledHeight,0);
         }
         var g:Graphics = overlay.graphics;
         g.clear();
         g.beginFill(color);
         g.drawRoundRect(targetArea.x,targetArea.y,targetArea.width,targetArea.height,targetArea.cornerRadius * 2,targetArea.cornerRadius * 2);
         g.endFill();
      }
      
      public function get instanceIndices() : Array
      {
         return !!_instanceIndices?_instanceIndices.slice(0):null;
      }
      
      mx_internal function childAdded(child:DisplayObject) : void
      {
         if(child is UIComponent)
         {
            if(!UIComponent(child).initialized)
            {
               UIComponent(child).initialize();
            }
         }
         else if(child is IUIComponent)
         {
            IUIComponent(child).initialize();
         }
      }
      
      public function globalToContent(point:Point) : Point
      {
         return globalToLocal(point);
      }
      
      mx_internal function removingChild(child:DisplayObject) : void
      {
      }
      
      mx_internal function getEffectsForProperty(propertyName:String) : Array
      {
         return _affectedProperties[propertyName] != undefined?_affectedProperties[propertyName]:[];
      }
      
      override public function removeChildAt(index:int) : DisplayObject
      {
         var child:DisplayObject = getChildAt(index);
         removingChild(child);
         $removeChild(child);
         childRemoved(child);
         return child;
      }
      
      protected function measure() : void
      {
         measuredMinWidth = 0;
         measuredMinHeight = 0;
         measuredWidth = 0;
         measuredHeight = 0;
      }
      
      public function set owner(value:DisplayObjectContainer) : void
      {
         _owner = value;
      }
      
      mx_internal function getNonNullSystemManager() : ISystemManager
      {
         var sm:ISystemManager = systemManager;
         if(!sm)
         {
            sm = ISystemManager(SystemManager.getSWFRoot(this));
         }
         if(!sm)
         {
            return SystemManagerGlobals.topLevelSystemManagers[0];
         }
         return sm;
      }
      
      protected function get unscaledWidth() : Number
      {
         return width / Math.abs(scaleX);
      }
      
      public function set processedDescriptors(value:Boolean) : void
      {
         _processedDescriptors = value;
         if(value)
         {
            dispatchEvent(new FlexEvent(FlexEvent.INITIALIZE));
         }
      }
      
      private function processEffectFinished(effectInsts:Array) : void
      {
         var j:int = 0;
         var effectInst:IEffectInstance = null;
         var removedInst:IEffectInstance = null;
         var aProps:Array = null;
         var k:int = 0;
         var propName:String = null;
         var l:int = 0;
         for(var i:int = _effectsStarted.length - 1; i >= 0; i--)
         {
            for(j = 0; j < effectInsts.length; j++)
            {
               effectInst = effectInsts[j];
               if(effectInst == _effectsStarted[i])
               {
                  removedInst = _effectsStarted[i];
                  _effectsStarted.splice(i,1);
                  aProps = removedInst.effect.getAffectedProperties();
                  for(k = 0; k < aProps.length; k++)
                  {
                     propName = aProps[k];
                     if(_affectedProperties[propName] != undefined)
                     {
                        for(l = 0; l < _affectedProperties[propName].length; l++)
                        {
                           if(_affectedProperties[propName][l] == effectInst)
                           {
                              _affectedProperties[propName].splice(l,1);
                              break;
                           }
                        }
                        if(_affectedProperties[propName].length == 0)
                        {
                           delete _affectedProperties[propName];
                        }
                     }
                  }
                  break;
               }
            }
         }
         isEffectStarted = _effectsStarted.length > 0?true:false;
         if(effectInst && effectInst.hideFocusRing)
         {
            preventDrawFocus = false;
         }
      }
      
      private function commitCurrentState() : void
      {
         var event:StateChangeEvent = null;
         var transition:IEffect = !!playStateTransition?getTransition(_currentState,requestedCurrentState):null;
         var commonBaseState:String = findCommonBaseState(_currentState,requestedCurrentState);
         var oldState:String = !!_currentState?_currentState:"";
         var destination:State = getState(requestedCurrentState);
         if(_currentTransitionEffect)
         {
            _currentTransitionEffect.end();
         }
         initializeState(requestedCurrentState);
         if(transition)
         {
            transition.captureStartValues();
         }
         event = new StateChangeEvent(StateChangeEvent.CURRENT_STATE_CHANGING);
         event.oldState = oldState;
         event.newState = !!requestedCurrentState?requestedCurrentState:"";
         dispatchEvent(event);
         if(isBaseState(_currentState))
         {
            dispatchEvent(new FlexEvent(FlexEvent.EXIT_STATE));
         }
         removeState(_currentState,commonBaseState);
         _currentState = requestedCurrentState;
         if(isBaseState(currentState))
         {
            dispatchEvent(new FlexEvent(FlexEvent.ENTER_STATE));
         }
         else
         {
            applyState(_currentState,commonBaseState);
         }
         event = new StateChangeEvent(StateChangeEvent.CURRENT_STATE_CHANGE);
         event.oldState = oldState;
         event.newState = !!_currentState?_currentState:"";
         dispatchEvent(event);
         if(transition)
         {
            UIComponentGlobals.layoutManager.validateNow();
            _currentTransitionEffect = transition;
            transition.addEventListener(EffectEvent.EFFECT_END,transition_effectEndHandler);
            transition.play();
         }
      }
      
      [Bindable("includeInLayoutChanged")]
      public function get includeInLayout() : Boolean
      {
         return _includeInLayout;
      }
      
      private function dispatchResizeEvent() : void
      {
         var resizeEvent:ResizeEvent = new ResizeEvent(ResizeEvent.RESIZE);
         resizeEvent.oldWidth = oldWidth;
         resizeEvent.oldHeight = oldHeight;
         dispatchEvent(resizeEvent);
         oldWidth = width;
         oldHeight = height;
      }
      
      public function set maxWidth(value:Number) : void
      {
         if(explicitMaxWidth == value)
         {
            return;
         }
         explicitMaxWidth = value;
      }
      
      public function validateDisplayList() : void
      {
         var sm:ISystemManager = null;
         var unscaledWidth:Number = NaN;
         var unscaledHeight:Number = NaN;
         if(invalidateDisplayListFlag)
         {
            sm = parent as ISystemManager;
            if(sm)
            {
               if(sm is SystemManagerProxy || sm == systemManager.topLevelSystemManager && sm.document != this)
               {
                  setActualSize(getExplicitOrMeasuredWidth(),getExplicitOrMeasuredHeight());
               }
            }
            unscaledWidth = scaleX == 0?Number(0):Number(width / scaleX);
            unscaledHeight = scaleY == 0?Number(0):Number(height / scaleY);
            if(Math.abs(unscaledWidth - lastUnscaledWidth) < 0.00001)
            {
               unscaledWidth = lastUnscaledWidth;
            }
            if(Math.abs(unscaledHeight - lastUnscaledHeight) < 0.00001)
            {
               unscaledHeight = lastUnscaledHeight;
            }
            updateDisplayList(unscaledWidth,unscaledHeight);
            lastUnscaledWidth = unscaledWidth;
            lastUnscaledHeight = unscaledHeight;
            invalidateDisplayListFlag = false;
         }
      }
      
      public function contentToGlobal(point:Point) : Point
      {
         return localToGlobal(point);
      }
      
      public function resolveAutomationIDPart(criteria:Object) : Array
      {
         if(automationDelegate)
         {
            return automationDelegate.resolveAutomationIDPart(criteria);
         }
         return [];
      }
      
      public function set inheritingStyles(value:Object) : void
      {
         _inheritingStyles = value;
      }
      
      public function setFocus() : void
      {
         var sm:ISystemManager = systemManager;
         if(sm && (sm.stage || sm.useSWFBridge()))
         {
            if(UIComponentGlobals.callLaterDispatcherCount == 0)
            {
               sm.stage.focus = this;
               UIComponentGlobals.nextFocusObject = null;
            }
            else
            {
               UIComponentGlobals.nextFocusObject = this;
               sm.addEventListener(FlexEvent.ENTER_FRAME,setFocusLater);
            }
         }
         else
         {
            UIComponentGlobals.nextFocusObject = this;
            callLater(setFocusLater);
         }
      }
      
      private function getTransition(oldState:String, newState:String) : IEffect
      {
         var t:Transition = null;
         var result:IEffect = null;
         var priority:int = 0;
         if(!transitions)
         {
            return null;
         }
         if(!oldState)
         {
            oldState = "";
         }
         if(!newState)
         {
            newState = "";
         }
         for(var i:int = 0; i < transitions.length; i++)
         {
            t = transitions[i];
            if(t.fromState == "*" && t.toState == "*" && priority < 1)
            {
               result = t.effect;
               priority = 1;
            }
            else if(t.fromState == oldState && t.toState == "*" && priority < 2)
            {
               result = t.effect;
               priority = 2;
            }
            else if(t.fromState == "*" && t.toState == newState && priority < 3)
            {
               result = t.effect;
               priority = 3;
            }
            else if(t.fromState == oldState && t.toState == newState && priority < 4)
            {
               result = t.effect;
               priority = 4;
               break;
            }
         }
         return result;
      }
      
      public function set initialized(value:Boolean) : void
      {
         _initialized = value;
         if(value)
         {
            setVisible(_visible,true);
            dispatchEvent(new FlexEvent(FlexEvent.CREATION_COMPLETE));
         }
      }
      
      mx_internal final function set $y(value:Number) : void
      {
         super.y = value;
      }
      
      public function owns(child:DisplayObject) : Boolean
      {
         var childList:IChildList = this is IRawChildrenContainer?IRawChildrenContainer(this).rawChildren:IChildList(this);
         if(childList.contains(child))
         {
            return true;
         }
         try
         {
            while(child && child != this)
            {
               if(child is IUIComponent)
               {
                  var child:DisplayObject = IUIComponent(child).owner;
               }
               else
               {
                  child = child.parent;
               }
            }
         }
         catch(e:SecurityError)
         {
            return false;
         }
         return child == this;
      }
      
      public function setVisible(value:Boolean, noEvent:Boolean = false) : void
      {
         _visible = value;
         if(!initialized)
         {
            return;
         }
         if($visible == value)
         {
            return;
         }
         $visible = value;
         if(!noEvent)
         {
            dispatchEvent(new FlexEvent(!!value?FlexEvent.SHOW:FlexEvent.HIDE));
         }
      }
      
      mx_internal final function $addChildAt(child:DisplayObject, index:int) : DisplayObject
      {
         return super.addChildAt(child,index);
      }
      
      public function deleteReferenceOnParentDocument(parentDocument:IFlexDisplayObject) : void
      {
         var indices:Array = null;
         var r:Object = null;
         var stack:Array = null;
         var n:int = 0;
         var i:int = 0;
         var j:int = 0;
         var s:Object = null;
         var event:PropertyChangeEvent = null;
         if(id && id != "")
         {
            indices = _instanceIndices;
            if(!indices)
            {
               parentDocument[id] = null;
            }
            else
            {
               r = parentDocument[id];
               if(!r)
               {
                  return;
               }
               stack = [];
               stack.push(r);
               n = indices.length;
               for(i = 0; i < n - 1; i++)
               {
                  s = r[indices[i]];
                  if(!s)
                  {
                     return;
                  }
                  r = s;
                  stack.push(r);
               }
               r.splice(indices[n - 1],1);
               for(j = stack.length - 1; j > 0; j--)
               {
                  if(stack[j].length == 0)
                  {
                     stack[j - 1].splice(indices[j],1);
                  }
               }
               if(stack.length > 0 && stack[0].length == 0)
               {
                  parentDocument[id] = null;
               }
               else
               {
                  event = PropertyChangeEvent.createUpdateEvent(parentDocument,id,parentDocument[id],parentDocument[id]);
                  parentDocument.dispatchEvent(event);
               }
            }
         }
      }
      
      public function get nonInheritingStyles() : Object
      {
         return _nonInheritingStyles;
      }
      
      public function effectStarted(effectInst:IEffectInstance) : void
      {
         var propName:String = null;
         _effectsStarted.push(effectInst);
         var aProps:Array = effectInst.effect.getAffectedProperties();
         for(var j:int = 0; j < aProps.length; j++)
         {
            propName = aProps[j];
            if(_affectedProperties[propName] == undefined)
            {
               _affectedProperties[propName] = [];
            }
            _affectedProperties[propName].push(effectInst);
         }
         isEffectStarted = true;
         if(effectInst.hideFocusRing)
         {
            preventDrawFocus = true;
            drawFocus(false);
         }
      }
      
      mx_internal final function set $x(value:Number) : void
      {
         super.x = value;
      }
      
      private function applyState(stateName:String, lastState:String) : void
      {
         var overrides:Array = null;
         var i:int = 0;
         var state:State = getState(stateName);
         if(stateName == lastState)
         {
            return;
         }
         if(state)
         {
            if(state.basedOn != lastState)
            {
               applyState(state.basedOn,lastState);
            }
            overrides = state.overrides;
            for(i = 0; i < overrides.length; i++)
            {
               overrides[i].apply(this);
            }
            state.dispatchEnterState();
         }
      }
      
      protected function commitProperties() : void
      {
         var scalingFactorX:Number = NaN;
         var scalingFactorY:Number = NaN;
         if(_scaleX != oldScaleX)
         {
            scalingFactorX = Math.abs(_scaleX / oldScaleX);
            if(!isNaN(explicitMinWidth))
            {
               explicitMinWidth = explicitMinWidth * scalingFactorX;
            }
            if(!isNaN(explicitWidth))
            {
               explicitWidth = explicitWidth * scalingFactorX;
            }
            if(!isNaN(explicitMaxWidth))
            {
               explicitMaxWidth = explicitMaxWidth * scalingFactorX;
            }
            _width = _width * scalingFactorX;
            super.scaleX = oldScaleX = _scaleX;
         }
         if(_scaleY != oldScaleY)
         {
            scalingFactorY = Math.abs(_scaleY / oldScaleY);
            if(!isNaN(explicitMinHeight))
            {
               explicitMinHeight = explicitMinHeight * scalingFactorY;
            }
            if(!isNaN(explicitHeight))
            {
               explicitHeight = explicitHeight * scalingFactorY;
            }
            if(!isNaN(explicitMaxHeight))
            {
               explicitMaxHeight = explicitMaxHeight * scalingFactorY;
            }
            _height = _height * scalingFactorY;
            super.scaleY = oldScaleY = _scaleY;
         }
         if(x != oldX || y != oldY)
         {
            dispatchMoveEvent();
         }
         if(width != oldWidth || height != oldHeight)
         {
            dispatchResizeEvent();
         }
         if(errorStringChanged)
         {
            errorStringChanged = false;
            setBorderColorForErrorString();
         }
      }
      
      [Bindable("resize")]
      public function get percentHeight() : Number
      {
         return _percentHeight;
      }
      
      [Bindable("widthChanged")]
      override public function get width() : Number
      {
         return _width;
      }
      
      public function get accessibilityDescription() : String
      {
         return !!accessibilityProperties?accessibilityProperties.description:"";
      }
      
      public function set explicitMinWidth(value:Number) : void
      {
         if(_explicitMinWidth == value)
         {
            return;
         }
         _explicitMinWidth = value;
         invalidateSize();
         var p:IInvalidating = parent as IInvalidating;
         if(p)
         {
            p.invalidateSize();
            p.invalidateDisplayList();
         }
         dispatchEvent(new Event("explicitMinWidthChanged"));
      }
      
      public function get isPopUp() : Boolean
      {
         return _isPopUp;
      }
      
      private function measureSizes() : Boolean
      {
         var scalingFactor:Number = NaN;
         var newValue:Number = NaN;
         var xScale:Number = NaN;
         var yScale:Number = NaN;
         var changed:Boolean = false;
         if(!invalidateSizeFlag)
         {
            return changed;
         }
         if(isNaN(explicitWidth) || isNaN(explicitHeight))
         {
            xScale = Math.abs(scaleX);
            yScale = Math.abs(scaleY);
            if(xScale != 1)
            {
               _measuredMinWidth = _measuredMinWidth / xScale;
               _measuredWidth = _measuredWidth / xScale;
            }
            if(yScale != 1)
            {
               _measuredMinHeight = _measuredMinHeight / yScale;
               _measuredHeight = _measuredHeight / yScale;
            }
            measure();
            invalidateSizeFlag = false;
            if(!isNaN(explicitMinWidth) && measuredWidth < explicitMinWidth)
            {
               measuredWidth = explicitMinWidth;
            }
            if(!isNaN(explicitMaxWidth) && measuredWidth > explicitMaxWidth)
            {
               measuredWidth = explicitMaxWidth;
            }
            if(!isNaN(explicitMinHeight) && measuredHeight < explicitMinHeight)
            {
               measuredHeight = explicitMinHeight;
            }
            if(!isNaN(explicitMaxHeight) && measuredHeight > explicitMaxHeight)
            {
               measuredHeight = explicitMaxHeight;
            }
            if(xScale != 1)
            {
               _measuredMinWidth = _measuredMinWidth * xScale;
               _measuredWidth = _measuredWidth * xScale;
            }
            if(yScale != 1)
            {
               _measuredMinHeight = _measuredMinHeight * yScale;
               _measuredHeight = _measuredHeight * yScale;
            }
         }
         else
         {
            invalidateSizeFlag = false;
            _measuredMinWidth = 0;
            _measuredMinHeight = 0;
         }
         adjustSizesForScaleChanges();
         if(isNaN(oldMinWidth))
         {
            oldMinWidth = !isNaN(explicitMinWidth)?Number(explicitMinWidth):Number(measuredMinWidth);
            oldMinHeight = !isNaN(explicitMinHeight)?Number(explicitMinHeight):Number(measuredMinHeight);
            oldExplicitWidth = !isNaN(explicitWidth)?Number(explicitWidth):Number(measuredWidth);
            oldExplicitHeight = !isNaN(explicitHeight)?Number(explicitHeight):Number(measuredHeight);
            changed = true;
         }
         else
         {
            newValue = !isNaN(explicitMinWidth)?Number(explicitMinWidth):Number(measuredMinWidth);
            if(newValue != oldMinWidth)
            {
               oldMinWidth = newValue;
               changed = true;
            }
            newValue = !isNaN(explicitMinHeight)?Number(explicitMinHeight):Number(measuredMinHeight);
            if(newValue != oldMinHeight)
            {
               oldMinHeight = newValue;
               changed = true;
            }
            newValue = !isNaN(explicitWidth)?Number(explicitWidth):Number(measuredWidth);
            if(newValue != oldExplicitWidth)
            {
               oldExplicitWidth = newValue;
               changed = true;
            }
            newValue = !isNaN(explicitHeight)?Number(explicitHeight):Number(measuredHeight);
            if(newValue != oldExplicitHeight)
            {
               oldExplicitHeight = newValue;
               changed = true;
            }
         }
         return changed;
      }
      
      mx_internal final function get $parent() : DisplayObjectContainer
      {
         return super.parent;
      }
      
      public function get automationTabularData() : Object
      {
         if(automationDelegate)
         {
            return automationDelegate.automationTabularData;
         }
         return null;
      }
      
      public function validateNow() : void
      {
         UIComponentGlobals.layoutManager.validateClient(this);
      }
      
      public function finishPrint(obj:Object, target:IFlexDisplayObject) : void
      {
      }
      
      public function get repeaters() : Array
      {
         return !!_repeaters?_repeaters.slice(0):[];
      }
      
      private function dispatchMoveEvent() : void
      {
         var moveEvent:MoveEvent = new MoveEvent(MoveEvent.MOVE);
         moveEvent.oldX = oldX;
         moveEvent.oldY = oldY;
         dispatchEvent(moveEvent);
         oldX = x;
         oldY = y;
      }
      
      public function drawFocus(isFocused:Boolean) : void
      {
         var focusOwner:DisplayObjectContainer = null;
         var focusClass:Class = null;
         if(!parent)
         {
            return;
         }
         var focusObj:DisplayObject = getFocusObject();
         var focusPane:Sprite = !!focusManager?focusManager.focusPane:null;
         if(isFocused && !preventDrawFocus)
         {
            focusOwner = focusPane.parent;
            if(focusOwner != parent)
            {
               if(focusOwner)
               {
                  if(focusOwner is ISystemManager)
                  {
                     ISystemManager(focusOwner).focusPane = null;
                  }
                  else
                  {
                     IUIComponent(focusOwner).focusPane = null;
                  }
               }
               if(parent is ISystemManager)
               {
                  ISystemManager(parent).focusPane = focusPane;
               }
               else
               {
                  IUIComponent(parent).focusPane = focusPane;
               }
            }
            focusClass = getStyle("focusSkin");
            if(focusObj && !(focusObj is focusClass))
            {
               focusPane.removeChild(focusObj);
               focusObj = null;
            }
            if(!focusObj)
            {
               focusObj = new focusClass();
               focusObj.name = "focus";
               focusPane.addChild(focusObj);
            }
            if(focusObj is ILayoutManagerClient)
            {
               ILayoutManagerClient(focusObj).nestLevel = nestLevel;
            }
            if(focusObj is ISimpleStyleClient)
            {
               ISimpleStyleClient(focusObj).styleName = this;
            }
            addEventListener(MoveEvent.MOVE,focusObj_moveHandler,true);
            addEventListener(MoveEvent.MOVE,focusObj_moveHandler);
            addEventListener(ResizeEvent.RESIZE,focusObj_resizeHandler,true);
            addEventListener(ResizeEvent.RESIZE,focusObj_resizeHandler);
            addEventListener(Event.REMOVED,focusObj_removedHandler,true);
            focusObj.visible = true;
            hasFocusRect = true;
            adjustFocusRect();
         }
         else if(hasFocusRect)
         {
            hasFocusRect = false;
            if(focusObj)
            {
               focusObj.visible = false;
               if(focusObj is ISimpleStyleClient)
               {
                  ISimpleStyleClient(focusObj).styleName = null;
               }
            }
            removeEventListener(MoveEvent.MOVE,focusObj_moveHandler);
            removeEventListener(MoveEvent.MOVE,focusObj_moveHandler,true);
            removeEventListener(ResizeEvent.RESIZE,focusObj_resizeHandler,true);
            removeEventListener(ResizeEvent.RESIZE,focusObj_resizeHandler);
            removeEventListener(Event.REMOVED,focusObj_removedHandler,true);
         }
      }
      
      public function get flexContextMenu() : IFlexContextMenu
      {
         return _flexContextMenu;
      }
      
      public function set accessibilityName(value:String) : void
      {
         if(!Capabilities.hasAccessibility)
         {
            return;
         }
         if(!accessibilityProperties)
         {
            accessibilityProperties = new AccessibilityProperties();
         }
         accessibilityProperties.name = value;
         Accessibility.updateProperties();
      }
      
      public function get measuredMinHeight() : Number
      {
         return _measuredMinHeight;
      }
      
      mx_internal function addingChild(child:DisplayObject) : void
      {
         if(child is IUIComponent && !IUIComponent(child).document)
         {
            IUIComponent(child).document = !!document?document:ApplicationGlobals.application;
         }
         if(child is UIComponent && UIComponent(child).moduleFactory == null)
         {
            if(moduleFactory != null)
            {
               UIComponent(child).moduleFactory = moduleFactory;
            }
            else if(document is IFlexModule && document.moduleFactory != null)
            {
               UIComponent(child).moduleFactory = document.moduleFactory;
            }
            else if(parent is UIComponent && UIComponent(parent).moduleFactory != null)
            {
               UIComponent(child).moduleFactory = UIComponent(parent).moduleFactory;
            }
         }
         if(child is IFontContextComponent && !child is UIComponent && IFontContextComponent(child).fontContext == null)
         {
            IFontContextComponent(child).fontContext = moduleFactory;
         }
         if(child is IUIComponent)
         {
            IUIComponent(child).parentChanged(this);
         }
         if(child is ILayoutManagerClient)
         {
            ILayoutManagerClient(child).nestLevel = nestLevel + 1;
         }
         else if(child is IUITextField)
         {
            IUITextField(child).nestLevel = nestLevel + 1;
         }
         if(child is InteractiveObject)
         {
            if(doubleClickEnabled)
            {
               InteractiveObject(child).doubleClickEnabled = true;
            }
         }
         if(child is IStyleClient)
         {
            IStyleClient(child).regenerateStyleCache(true);
         }
         else if(child is IUITextField && IUITextField(child).inheritingStyles)
         {
            StyleProtoChain.initTextField(IUITextField(child));
         }
         if(child is ISimpleStyleClient)
         {
            ISimpleStyleClient(child).styleChanged(null);
         }
         if(child is IStyleClient)
         {
            IStyleClient(child).notifyStyleChangeInChildren(null,true);
         }
         if(child is UIComponent)
         {
            UIComponent(child).initThemeColor();
         }
         if(child is UIComponent)
         {
            UIComponent(child).stylesInitialized();
         }
      }
      
      public function set repeaterIndices(value:Array) : void
      {
         _repeaterIndices = value;
      }
      
      protected function initializationComplete() : void
      {
         processedDescriptors = true;
      }
      
      public function set moduleFactory(factory:IFlexModuleFactory) : void
      {
         var child:UIComponent = null;
         var n:int = numChildren;
         for(var i:int = 0; i < n; i++)
         {
            child = getChildAt(i) as UIComponent;
            if(child)
            {
               if(child.moduleFactory == null || child.moduleFactory == _moduleFactory)
               {
                  child.moduleFactory = factory;
               }
            }
         }
         _moduleFactory = factory;
      }
      
      private function focusObj_removedHandler(event:Event) : void
      {
         if(event.target != this)
         {
            return;
         }
         var focusObject:DisplayObject = getFocusObject();
         if(focusObject)
         {
            focusObject.visible = false;
         }
      }
      
      mx_internal function updateCallbacks() : void
      {
         if(invalidateDisplayListFlag)
         {
            UIComponentGlobals.layoutManager.invalidateDisplayList(this);
         }
         if(invalidateSizeFlag)
         {
            UIComponentGlobals.layoutManager.invalidateSize(this);
         }
         if(invalidatePropertiesFlag)
         {
            UIComponentGlobals.layoutManager.invalidateProperties(this);
         }
         if(systemManager && (_systemManager.stage || _systemManager.useSWFBridge()))
         {
            if(methodQueue.length > 0 && !listeningForRender)
            {
               _systemManager.addEventListener(FlexEvent.RENDER,callLaterDispatcher);
               _systemManager.addEventListener(FlexEvent.ENTER_FRAME,callLaterDispatcher);
               listeningForRender = true;
            }
            if(_systemManager.stage)
            {
               _systemManager.stage.invalidate();
            }
         }
      }
      
      public function set styleDeclaration(value:CSSStyleDeclaration) : void
      {
         _styleDeclaration = value;
      }
      
      public function get accessibilityEnabled() : Boolean
      {
         return !!accessibilityProperties?!accessibilityProperties.silent:true;
      }
      
      override public function set doubleClickEnabled(value:Boolean) : void
      {
         var childList:IChildList = null;
         var child:InteractiveObject = null;
         super.doubleClickEnabled = value;
         if(this is IRawChildrenContainer)
         {
            childList = IRawChildrenContainer(this).rawChildren;
         }
         else
         {
            childList = IChildList(this);
         }
         for(var i:int = 0; i < childList.numChildren; i++)
         {
            child = childList.getChildAt(i) as InteractiveObject;
            if(child)
            {
               child.doubleClickEnabled = value;
            }
         }
      }
      
      public function prepareToPrint(target:IFlexDisplayObject) : Object
      {
         return null;
      }
      
      [Bindable("explicitMinHeightChanged")]
      public function get minHeight() : Number
      {
         if(!isNaN(explicitMinHeight))
         {
            return explicitMinHeight;
         }
         return measuredMinHeight;
      }
      
      public function notifyStyleChangeInChildren(styleProp:String, recursive:Boolean) : void
      {
         var child:ISimpleStyleClient = null;
         cachedTextFormat = null;
         var n:int = numChildren;
         for(var i:int = 0; i < n; i++)
         {
            child = getChildAt(i) as ISimpleStyleClient;
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
      
      public function get contentMouseX() : Number
      {
         return mouseX;
      }
      
      public function get contentMouseY() : Number
      {
         return mouseY;
      }
      
      private function get indexedID() : String
      {
         var s:String = id;
         var indices:Array = instanceIndices;
         if(indices)
         {
            s = s + ("[" + indices.join("][") + "]");
         }
         return s;
      }
      
      public function get tweeningProperties() : Array
      {
         return _tweeningProperties;
      }
      
      public function set explicitMaxWidth(value:Number) : void
      {
         if(_explicitMaxWidth == value)
         {
            return;
         }
         _explicitMaxWidth = value;
         invalidateSize();
         var p:IInvalidating = parent as IInvalidating;
         if(p)
         {
            p.invalidateSize();
            p.invalidateDisplayList();
         }
         dispatchEvent(new Event("explicitMaxWidthChanged"));
      }
      
      public function set document(value:Object) : void
      {
         var child:IUIComponent = null;
         var n:int = numChildren;
         for(var i:int = 0; i < n; i++)
         {
            child = getChildAt(i) as IUIComponent;
            if(child)
            {
               if(child.document == _document || child.document == ApplicationGlobals.application)
               {
                  child.document = value;
               }
            }
         }
         _document = value;
      }
      
      public function validateSize(recursive:Boolean = false) : void
      {
         var i:int = 0;
         var child:DisplayObject = null;
         var sizeChanging:Boolean = false;
         var p:IInvalidating = null;
         if(recursive)
         {
            for(i = 0; i < numChildren; i++)
            {
               child = getChildAt(i);
               if(child is ILayoutManagerClient)
               {
                  (child as ILayoutManagerClient).validateSize(true);
               }
            }
         }
         if(invalidateSizeFlag)
         {
            sizeChanging = measureSizes();
            if(sizeChanging && includeInLayout)
            {
               invalidateDisplayList();
               p = parent as IInvalidating;
               if(p)
               {
                  p.invalidateSize();
                  p.invalidateDisplayList();
               }
            }
         }
      }
      
      public function get validationSubField() : String
      {
         return _validationSubField;
      }
      
      override public function dispatchEvent(event:Event) : Boolean
      {
         if(dispatchEventHook != null)
         {
            dispatchEventHook(event,this);
         }
         return super.dispatchEvent(event);
      }
      
      public function set id(value:String) : void
      {
         _id = value;
      }
      
      private function overlay_resizeHandler(event:Event) : void
      {
         fillOverlay(overlay,overlayColor,null);
      }
      
      public function set updateCompletePendingFlag(value:Boolean) : void
      {
         _updateCompletePendingFlag = value;
      }
      
      mx_internal final function get $height() : Number
      {
         return super.height;
      }
      
      protected function attachOverlay() : void
      {
         addChild(overlay);
      }
      
      [Bindable("explictMinHeightChanged")]
      public function get explicitMinHeight() : Number
      {
         return _explicitMinHeight;
      }
      
      override public function set height(value:Number) : void
      {
         var p:IInvalidating = null;
         if(explicitHeight != value)
         {
            explicitHeight = value;
            invalidateSize();
         }
         if(_height != value)
         {
            invalidateProperties();
            invalidateDisplayList();
            p = parent as IInvalidating;
            if(p && includeInLayout)
            {
               p.invalidateSize();
               p.invalidateDisplayList();
            }
            _height = value;
            dispatchEvent(new Event("heightChanged"));
         }
      }
      
      public function get numAutomationChildren() : int
      {
         if(automationDelegate)
         {
            return automationDelegate.numAutomationChildren;
         }
         return 0;
      }
      
      [Bindable("initialize")]
      public function get parentApplication() : Object
      {
         var p:UIComponent = null;
         var o:Object = systemManager.document;
         if(o == this)
         {
            p = o.systemManager.parent as UIComponent;
            o = !!p?p.systemManager.document:null;
         }
         return o;
      }
      
      public function get repeaterIndex() : int
      {
         return !!_repeaterIndices?int(_repeaterIndices[_repeaterIndices.length - 1]):-1;
      }
      
      private function removeState(stateName:String, lastState:String) : void
      {
         var overrides:Array = null;
         var i:int = 0;
         var state:State = getState(stateName);
         if(stateName == lastState)
         {
            return;
         }
         if(state)
         {
            state.dispatchExitState();
            overrides = state.overrides;
            i = overrides.length;
            while(i)
            {
               overrides[i - 1].remove(this);
               i--;
            }
            if(state.basedOn != lastState)
            {
               removeState(state.basedOn,lastState);
            }
         }
      }
      
      public function setStyle(styleProp:String, newValue:*) : void
      {
         if(styleProp == "styleName")
         {
            styleName = newValue;
            return;
         }
         if(EffectManager.getEventForEffectTrigger(styleProp) != "")
         {
            EffectManager.setStyle(styleProp,this);
         }
         var isInheritingStyle:Boolean = StyleManager.isInheritingStyle(styleProp);
         var isProtoChainInitialized:* = inheritingStyles != UIComponent.STYLE_UNINITIALIZED;
         var valueChanged:* = getStyle(styleProp) != newValue;
         if(!_styleDeclaration)
         {
            _styleDeclaration = new CSSStyleDeclaration();
            _styleDeclaration.setStyle(styleProp,newValue);
            if(isProtoChainInitialized)
            {
               regenerateStyleCache(isInheritingStyle);
            }
         }
         else
         {
            _styleDeclaration.setStyle(styleProp,newValue);
         }
         if(isProtoChainInitialized && valueChanged)
         {
            styleChanged(styleProp);
            notifyStyleChangeInChildren(styleProp,isInheritingStyle);
         }
      }
      
      public function get showInAutomationHierarchy() : Boolean
      {
         return _showInAutomationHierarchy;
      }
      
      public function get systemManager() : ISystemManager
      {
         var r:DisplayObject = null;
         var o:DisplayObjectContainer = null;
         var ui:IUIComponent = null;
         if(!_systemManager || _systemManagerDirty)
         {
            r = root;
            if(!(_systemManager is SystemManagerProxy))
            {
               if(r && !(r is Stage))
               {
                  _systemManager = r as ISystemManager;
               }
               else if(r)
               {
                  _systemManager = Stage(r).getChildAt(0) as ISystemManager;
               }
               else
               {
                  o = parent;
                  while(o)
                  {
                     ui = o as IUIComponent;
                     if(ui)
                     {
                        _systemManager = ui.systemManager;
                        break;
                     }
                     if(o is ISystemManager)
                     {
                        _systemManager = o as ISystemManager;
                        break;
                     }
                     o = o.parent;
                  }
               }
            }
            _systemManagerDirty = false;
         }
         return _systemManager;
      }
      
      public function localToContent(point:Point) : Point
      {
         return point;
      }
      
      private function isBaseState(stateName:String) : Boolean
      {
         return !stateName || stateName == "";
      }
      
      public function set enabled(value:Boolean) : void
      {
         _enabled = value;
         cachedTextFormat = null;
         invalidateDisplayList();
         dispatchEvent(new Event("enabledChanged"));
      }
      
      public function set focusEnabled(value:Boolean) : void
      {
         _focusEnabled = value;
      }
      
      [Bindable("explicitMinWidthChanged")]
      public function get minWidth() : Number
      {
         if(!isNaN(explicitMinWidth))
         {
            return explicitMinWidth;
         }
         return measuredMinWidth;
      }
      
      private function setFocusLater(event:Event = null) : void
      {
         var sm:ISystemManager = systemManager;
         if(sm && sm.stage)
         {
            sm.stage.removeEventListener(Event.ENTER_FRAME,setFocusLater);
            if(UIComponentGlobals.nextFocusObject)
            {
               sm.stage.focus = UIComponentGlobals.nextFocusObject;
            }
            UIComponentGlobals.nextFocusObject = null;
         }
      }
      
      [Bindable("currentStateChange")]
      public function get currentState() : String
      {
         return !!_currentStateChanged?requestedCurrentState:_currentState;
      }
      
      public function initializeRepeaterArrays(parent:IRepeaterClient) : void
      {
         if(parent && parent.instanceIndices && (!parent.isDocument || parent != descriptor.document) && !_instanceIndices)
         {
            _instanceIndices = parent.instanceIndices;
            _repeaters = parent.repeaters;
            _repeaterIndices = parent.repeaterIndices;
         }
      }
      
      public function get baselinePosition() : Number
      {
         if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
         {
            return NaN;
         }
         if(!validateBaselinePosition())
         {
            return NaN;
         }
         var lineMetrics:TextLineMetrics = measureText("Wj");
         if(height < 2 + lineMetrics.ascent + 2)
         {
            return int(height + (lineMetrics.ascent - height) / 2);
         }
         return 2 + lineMetrics.ascent;
      }
      
      public function get measuredWidth() : Number
      {
         return _measuredWidth;
      }
      
      public function set instanceIndices(value:Array) : void
      {
         _instanceIndices = value;
      }
      
      public function set cachePolicy(value:String) : void
      {
         if(_cachePolicy != value)
         {
            _cachePolicy = value;
            if(value == UIComponentCachePolicy.OFF)
            {
               cacheAsBitmap = false;
            }
            else if(value == UIComponentCachePolicy.ON)
            {
               cacheAsBitmap = true;
            }
            else
            {
               cacheAsBitmap = cacheAsBitmapCount > 0;
            }
         }
      }
      
      public function get automationValue() : Array
      {
         if(automationDelegate)
         {
            return automationDelegate.automationValue;
         }
         return [];
      }
      
      private function addedHandler(event:Event) : void
      {
         if(event.eventPhase != EventPhase.AT_TARGET)
         {
            return;
         }
         try
         {
            if(parent is IContainer && IContainer(parent).creatingContentPane)
            {
               event.stopImmediatePropagation();
               return;
            }
         }
         catch(error:SecurityError)
         {
         }
      }
      
      public function parentChanged(p:DisplayObjectContainer) : void
      {
         if(!p)
         {
            _parent = null;
            _nestLevel = 0;
         }
         else if(p is IStyleClient)
         {
            _parent = p;
         }
         else if(p is ISystemManager)
         {
            _parent = p;
         }
         else
         {
            _parent = p.parent;
         }
      }
      
      public function get owner() : DisplayObjectContainer
      {
         return !!_owner?_owner:parent;
      }
      
      public function get processedDescriptors() : Boolean
      {
         return _processedDescriptors;
      }
      
      override public function addChildAt(child:DisplayObject, index:int) : DisplayObject
      {
         var formerParent:DisplayObjectContainer = child.parent;
         if(formerParent && !(formerParent is Loader))
         {
            formerParent.removeChild(child);
         }
         if(overlayReferenceCount && child != overlay)
         {
            index = Math.min(index,Math.max(0,super.numChildren - 1));
         }
         addingChild(child);
         $addChildAt(child,index);
         childAdded(child);
         return child;
      }
      
      [Bindable("explicitMaxWidthChanged")]
      public function get maxWidth() : Number
      {
         return !isNaN(explicitMaxWidth)?Number(explicitMaxWidth):Number(DEFAULT_MAX_WIDTH);
      }
      
      [Bindable("alphaChanged")]
      override public function set alpha(value:Number) : void
      {
         super.alpha = value;
         dispatchEvent(new Event("alphaChanged"));
      }
      
      private function removedHandler(event:Event) : void
      {
         if(event.eventPhase != EventPhase.AT_TARGET)
         {
            return;
         }
         try
         {
            if(parent is IContainer && IContainer(parent).creatingContentPane)
            {
               event.stopImmediatePropagation();
               return;
            }
         }
         catch(error:SecurityError)
         {
         }
         _systemManagerDirty = true;
      }
      
      public function callLater(method:Function, args:Array = null) : void
      {
         methodQueue.push(new MethodQueueElement(method,args));
         var sm:ISystemManager = systemManager;
         if(sm && (sm.stage || sm.useSWFBridge()))
         {
            if(!listeningForRender)
            {
               sm.addEventListener(FlexEvent.RENDER,callLaterDispatcher);
               sm.addEventListener(FlexEvent.ENTER_FRAME,callLaterDispatcher);
               listeningForRender = true;
            }
            if(sm.stage)
            {
               sm.stage.invalidate();
            }
         }
      }
      
      public function get initialized() : Boolean
      {
         return _initialized;
      }
      
      private function callLaterDispatcher2(event:Event) : void
      {
         var mqe:MethodQueueElement = null;
         if(UIComponentGlobals.callLaterSuspendCount > 0)
         {
            return;
         }
         var sm:ISystemManager = systemManager;
         if(sm && (sm.stage || sm.useSWFBridge()) && listeningForRender)
         {
            sm.removeEventListener(FlexEvent.RENDER,callLaterDispatcher);
            sm.removeEventListener(FlexEvent.ENTER_FRAME,callLaterDispatcher);
            listeningForRender = false;
         }
         var queue:Array = methodQueue;
         methodQueue = [];
         var n:int = queue.length;
         for(var i:int = 0; i < n; i++)
         {
            mqe = MethodQueueElement(queue[i]);
            mqe.method.apply(null,mqe.args);
         }
      }
      
      public function measureHTMLText(htmlText:String) : TextLineMetrics
      {
         return determineTextFormatFromStyles().measureHTMLText(htmlText);
      }
      
      public function set descriptor(value:UIComponentDescriptor) : void
      {
         _descriptor = value;
      }
      
      private function getState(stateName:String) : State#13
      {
         if(!states || isBaseState(stateName))
         {
            return null;
         }
         for(var i:int = 0; i < states.length; i++)
         {
            if(states[i].name == stateName)
            {
               return states[i];
            }
         }
         var message:String = resourceManager.getString("core","stateUndefined",[stateName]);
         throw new ArgumentError(message);
      }
      
      public function validateProperties() : void
      {
         if(invalidatePropertiesFlag)
         {
            commitProperties();
            invalidatePropertiesFlag = false;
         }
      }
      
      mx_internal function get documentDescriptor() : UIComponentDescriptor
      {
         return _documentDescriptor;
      }
      
      public function set includeInLayout(value:Boolean) : void
      {
         var p:IInvalidating = null;
         if(_includeInLayout != value)
         {
            _includeInLayout = value;
            p = parent as IInvalidating;
            if(p)
            {
               p.invalidateSize();
               p.invalidateDisplayList();
            }
            dispatchEvent(new Event("includeInLayoutChanged"));
         }
      }
      
      public function getClassStyleDeclarations() : Array
      {
         var myApplicationDomain:ApplicationDomain = null;
         var cache:Array = null;
         var myRoot:DisplayObject = null;
         var s:CSSStyleDeclaration = null;
         var factory:IFlexModuleFactory = ModuleManager.getAssociatedFactory(this);
         if(factory != null)
         {
            myApplicationDomain = ApplicationDomain(factory.info()["currentDomain"]);
         }
         else
         {
            myRoot = SystemManager.getSWFRoot(this);
            if(!myRoot)
            {
               return [];
            }
            myApplicationDomain = myRoot.loaderInfo.applicationDomain;
         }
         var className:String = getQualifiedClassName(this);
         className = className.replace("::",".");
         cache = StyleManager.typeSelectorCache[className];
         if(cache)
         {
            return cache;
         }
         var decls:Array = [];
         var classNames:Array = [];
         var caches:Array = [];
         var declcache:Array = [];
         while(className != null && className != "mx.core.UIComponent" && className != "mx.core.UITextField")
         {
            cache = StyleManager.typeSelectorCache[className];
            if(cache)
            {
               decls = decls.concat(cache);
               break;
            }
            s = StyleManager.getStyleDeclaration(className);
            if(s)
            {
               decls.unshift(s);
               classNames.push(className);
               caches.push(classNames);
               declcache.push(decls);
               decls = [];
               classNames = [];
            }
            else
            {
               classNames.push(className);
            }
            try
            {
               className = getQualifiedSuperclassName(myApplicationDomain.getDefinition(className));
               className = className.replace("::",".");
            }
            catch(e:ReferenceError)
            {
               className = null;
               continue;
            }
         }
         caches.push(classNames);
         declcache.push(decls);
         decls = [];
         while(caches.length)
         {
            classNames = caches.pop();
            decls = decls.concat(declcache.pop());
            while(classNames.length)
            {
               StyleManager.typeSelectorCache[classNames.pop()] = decls;
            }
         }
         return decls;
      }
      
      public function set measuredMinWidth(value:Number) : void
      {
         _measuredMinWidth = value;
      }
      
      private function initializeState(stateName:String) : void
      {
         var state:State = getState(stateName);
         while(state)
         {
            state.initialize();
            state = getState(state.basedOn);
         }
      }
      
      mx_internal function initProtoChain() : void
      {
         var classSelector:CSSStyleDeclaration = null;
         var inheritChain:Object = null;
         var typeSelector:CSSStyleDeclaration = null;
         if(styleName)
         {
            if(styleName is CSSStyleDeclaration)
            {
               classSelector = CSSStyleDeclaration(styleName);
            }
            else
            {
               if(styleName is IFlexDisplayObject || styleName is IStyleClient)
               {
                  StyleProtoChain.initProtoChainForUIComponentStyleName(this);
                  return;
               }
               if(styleName is String)
               {
                  classSelector = StyleManager.getStyleDeclaration("." + styleName);
               }
            }
         }
         var nonInheritChain:Object = StyleManager.stylesRoot;
         if(nonInheritChain && nonInheritChain.effects)
         {
            registerEffects(nonInheritChain.effects);
         }
         var p:IStyleClient = parent as IStyleClient;
         if(p)
         {
            inheritChain = p.inheritingStyles;
            if(inheritChain == UIComponent.STYLE_UNINITIALIZED)
            {
               inheritChain = nonInheritChain;
            }
         }
         else if(isPopUp)
         {
            if(FlexVersion.compatibilityVersion >= FlexVersion.VERSION_3_0 && _owner && _owner is IStyleClient)
            {
               inheritChain = IStyleClient(_owner).inheritingStyles;
            }
            else
            {
               inheritChain = ApplicationGlobals.application.inheritingStyles;
            }
         }
         else
         {
            inheritChain = StyleManager.stylesRoot;
         }
         var typeSelectors:Array = getClassStyleDeclarations();
         var n:int = typeSelectors.length;
         for(var i:int = 0; i < n; i++)
         {
            typeSelector = typeSelectors[i];
            inheritChain = typeSelector.addStyleToProtoChain(inheritChain,this);
            nonInheritChain = typeSelector.addStyleToProtoChain(nonInheritChain,this);
            if(typeSelector.effects)
            {
               registerEffects(typeSelector.effects);
            }
         }
         if(classSelector)
         {
            inheritChain = classSelector.addStyleToProtoChain(inheritChain,this);
            nonInheritChain = classSelector.addStyleToProtoChain(nonInheritChain,this);
            if(classSelector.effects)
            {
               registerEffects(classSelector.effects);
            }
         }
         inheritingStyles = !!_styleDeclaration?_styleDeclaration.addStyleToProtoChain(inheritChain,this):inheritChain;
         nonInheritingStyles = !!_styleDeclaration?_styleDeclaration.addStyleToProtoChain(nonInheritChain,this):nonInheritChain;
      }
      
      public function get repeaterIndices() : Array
      {
         return !!_repeaterIndices?_repeaterIndices.slice():[];
      }
      
      override public function removeChild(child:DisplayObject) : DisplayObject
      {
         removingChild(child);
         $removeChild(child);
         childRemoved(child);
         return child;
      }
      
      private function focusObj_moveHandler(event:MoveEvent) : void
      {
         adjustFocusRect();
      }
      
      public function get styleDeclaration() : CSSStyleDeclaration
      {
         return _styleDeclaration;
      }
      
      override public function get doubleClickEnabled() : Boolean
      {
         return super.doubleClickEnabled;
      }
      
      public function contentToLocal(point:Point) : Point
      {
         return point;
      }
      
      private function creationCompleteHandler(event:FlexEvent) : void
      {
         if(_currentStateChanged)
         {
            _currentStateChanged = false;
            commitCurrentState();
            validateNow();
         }
         removeEventListener(FlexEvent.CREATION_COMPLETE,creationCompleteHandler);
      }
      
      public function set measuredHeight(value:Number) : void
      {
         _measuredHeight = value;
      }
      
      protected function createChildren() : void
      {
      }
      
      public function get activeEffects() : Array
      {
         return _effectsStarted;
      }
      
      override public function setChildIndex(child:DisplayObject, newIndex:int) : void
      {
         if(overlayReferenceCount && child != overlay)
         {
            newIndex = Math.min(newIndex,Math.max(0,super.numChildren - 2));
         }
         super.setChildIndex(child,newIndex);
      }
      
      public function regenerateStyleCache(recursive:Boolean) : void
      {
         var child:DisplayObject = null;
         initProtoChain();
         var childList:IChildList = this is IRawChildrenContainer?IRawChildrenContainer(this).rawChildren:IChildList(this);
         var n:int = childList.numChildren;
         for(var i:int = 0; i < n; i++)
         {
            child = childList.getChildAt(i);
            if(child is IStyleClient)
            {
               if(IStyleClient(child).inheritingStyles != UIComponent.STYLE_UNINITIALIZED)
               {
                  IStyleClient(child).regenerateStyleCache(recursive);
               }
            }
            else if(child is IUITextField)
            {
               if(IUITextField(child).inheritingStyles)
               {
                  StyleProtoChain.initTextField(IUITextField(child));
               }
            }
         }
      }
      
      public function get updateCompletePendingFlag() : Boolean
      {
         return _updateCompletePendingFlag;
      }
      
      protected function focusOutHandler(event:FocusEvent) : void
      {
         if(isOurFocus(DisplayObject(event.target)))
         {
            drawFocus(false);
         }
      }
      
      public function getFocus() : InteractiveObject
      {
         var sm:ISystemManager = systemManager;
         if(!sm)
         {
            return null;
         }
         if(UIComponentGlobals.nextFocusObject)
         {
            return UIComponentGlobals.nextFocusObject;
         }
         return sm.stage.focus;
      }
      
      public function endEffectsStarted() : void
      {
         var len:int = _effectsStarted.length;
         for(var i:int = 0; i < len; i++)
         {
            _effectsStarted[i].end();
         }
      }
      
      protected function get unscaledHeight() : Number
      {
         return height / Math.abs(scaleY);
      }
      
      [Bindable("enabledChanged")]
      public function get enabled() : Boolean
      {
         return _enabled;
      }
      
      public function get focusEnabled() : Boolean
      {
         return _focusEnabled;
      }
      
      override public function set cacheAsBitmap(value:Boolean) : void
      {
         super.cacheAsBitmap = value;
         cacheAsBitmapCount = !!value?1:0;
      }
      
      mx_internal function removeOverlay() : void
      {
         if(overlayReferenceCount > 0 && --overlayReferenceCount == 0 && overlay)
         {
            removeEventListener("resize",overlay_resizeHandler);
            if(super.getChildByName("overlay"))
            {
               $removeChild(overlay);
            }
            overlay = null;
         }
      }
      
      public function set cacheHeuristic(value:Boolean) : void
      {
         if(_cachePolicy == UIComponentCachePolicy.AUTO)
         {
            if(value)
            {
               cacheAsBitmapCount++;
            }
            else if(cacheAsBitmapCount != 0)
            {
               cacheAsBitmapCount--;
            }
            super.cacheAsBitmap = cacheAsBitmapCount != 0;
         }
      }
      
      public function get cachePolicy() : String
      {
         return _cachePolicy;
      }
      
      public function set maxHeight(value:Number) : void
      {
         if(explicitMaxHeight == value)
         {
            return;
         }
         explicitMaxHeight = value;
      }
      
      public function getConstraintValue(constraintName:String) : *
      {
         return getStyle(constraintName);
      }
      
      public function set accessibilityShortcut(value:String) : void
      {
         if(!Capabilities.hasAccessibility)
         {
            return;
         }
         if(!accessibilityProperties)
         {
            accessibilityProperties = new AccessibilityProperties();
         }
         accessibilityProperties.shortcut = value;
         Accessibility.updateProperties();
      }
      
      public function set focusManager(value:IFocusManager) : void
      {
         _focusManager = value;
      }
      
      public function clearStyle(styleProp:String) : void
      {
         setStyle(styleProp,undefined);
      }
      
      public function get descriptor() : UIComponentDescriptor
      {
         return _descriptor;
      }
      
      public function set nonInheritingStyles(value:Object) : void
      {
         _nonInheritingStyles = value;
      }
      
      public function set automationDelegate(value:Object) : void
      {
         _automationDelegate = value as IAutomationObject;
      }
      
      public function get measuredMinWidth() : Number
      {
         return _measuredMinWidth;
      }
      
      public function createReferenceOnParentDocument(parentDocument:IFlexDisplayObject) : void
      {
         var indices:Array = null;
         var r:Object = null;
         var n:int = 0;
         var i:int = 0;
         var event:PropertyChangeEvent = null;
         var s:Object = null;
         if(id && id != "")
         {
            indices = _instanceIndices;
            if(!indices)
            {
               parentDocument[id] = this;
            }
            else
            {
               r = parentDocument[id];
               if(!(r is Array))
               {
                  r = parentDocument[id] = [];
               }
               n = indices.length;
               for(i = 0; i < n - 1; i++)
               {
                  s = r[indices[i]];
                  if(!(s is Array))
                  {
                     s = r[indices[i]] = [];
                  }
                  r = s;
               }
               r[indices[n - 1]] = this;
               event = PropertyChangeEvent.createUpdateEvent(parentDocument,id,parentDocument[id],parentDocument[id]);
               parentDocument.dispatchEvent(event);
            }
         }
      }
      
      public function get cursorManager() : ICursorManager
      {
         var cm:ICursorManager = null;
         var o:DisplayObject = parent;
         while(o)
         {
            if(o is IUIComponent && "cursorManager" in o)
            {
               cm = o["cursorManager"];
               return cm;
            }
            o = o.parent;
         }
         return CursorManager.getInstance();
      }
      
      public function get repeater() : IRepeater
      {
         return !!_repeaters?_repeaters[_repeaters.length - 1]:null;
      }
      
      public function set isPopUp(value:Boolean) : void
      {
         _isPopUp = value;
      }
      
      public function get measuredHeight() : Number
      {
         return _measuredHeight;
      }
      
      public function initialize() : void
      {
         if(initialized)
         {
            return;
         }
         dispatchEvent(new FlexEvent(FlexEvent.PREINITIALIZE));
         createChildren();
         childrenCreated();
         initializeAccessibility();
         initializationComplete();
      }
      
      override public function set width(value:Number) : void
      {
         var p:IInvalidating = null;
         if(explicitWidth != value)
         {
            explicitWidth = value;
            invalidateSize();
         }
         if(_width != value)
         {
            invalidateProperties();
            invalidateDisplayList();
            p = parent as IInvalidating;
            if(p && includeInLayout)
            {
               p.invalidateSize();
               p.invalidateDisplayList();
            }
            _width = value;
            dispatchEvent(new Event("widthChanged"));
         }
      }
      
      public function set percentHeight(value:Number) : void
      {
         if(_percentHeight == value)
         {
            return;
         }
         if(!isNaN(value))
         {
            _explicitHeight = NaN;
         }
         _percentHeight = value;
         var p:IInvalidating = parent as IInvalidating;
         if(p)
         {
            p.invalidateSize();
            p.invalidateDisplayList();
         }
      }
      
      public function set accessibilityDescription(value:String) : void
      {
         if(!Capabilities.hasAccessibility)
         {
            return;
         }
         if(!accessibilityProperties)
         {
            accessibilityProperties = new AccessibilityProperties();
         }
         accessibilityProperties.description = value;
         Accessibility.updateProperties();
      }
      
      mx_internal final function set $visible(value:Boolean) : void
      {
         super.visible = value;
      }
      
      mx_internal function childRemoved(child:DisplayObject) : void
      {
         if(child is IUIComponent)
         {
            if(IUIComponent(child).document != child)
            {
               IUIComponent(child).document = null;
            }
            IUIComponent(child).parentChanged(null);
         }
      }
      
      mx_internal final function $removeChildAt(index:int) : DisplayObject
      {
         return super.removeChildAt(index);
      }
      
      [Bindable("explicitMaxHeightChanged")]
      public function get maxHeight() : Number
      {
         return !isNaN(explicitMaxHeight)?Number(explicitMaxHeight):Number(DEFAULT_MAX_HEIGHT);
      }
      
      protected function initializeAccessibility() : void
      {
         if(UIComponent.createAccessibilityImplementation != null)
         {
            UIComponent.createAccessibilityImplementation(this);
         }
      }
      
      public function set explicitMaxHeight(value:Number) : void
      {
         if(_explicitMaxHeight == value)
         {
            return;
         }
         _explicitMaxHeight = value;
         invalidateSize();
         var p:IInvalidating = parent as IInvalidating;
         if(p)
         {
            p.invalidateSize();
            p.invalidateDisplayList();
         }
         dispatchEvent(new Event("explicitMaxHeightChanged"));
      }
      
      public function get accessibilityShortcut() : String
      {
         return !!accessibilityProperties?accessibilityProperties.shortcut:"";
      }
      
      public function get focusManager() : IFocusManager
      {
         if(_focusManager)
         {
            return _focusManager;
         }
         var o:DisplayObject = parent;
         while(o)
         {
            if(o is IFocusManagerContainer)
            {
               return IFocusManagerContainer(o).focusManager;
            }
            o = o.parent;
         }
         return null;
      }
      
      public function set styleName(value:Object) : void
      {
         if(_styleName === value)
         {
            return;
         }
         _styleName = value;
         if(inheritingStyles == UIComponent.STYLE_UNINITIALIZED)
         {
            return;
         }
         regenerateStyleCache(true);
         initThemeColor();
         styleChanged("styleName");
         notifyStyleChangeInChildren("styleName",true);
      }
      
      public function get automationDelegate() : Object
      {
         return _automationDelegate;
      }
      
      [Bindable("unused")]
      protected function get resourceManager() : IResourceManager
      {
         return _resourceManager;
      }
      
      mx_internal function validateBaselinePosition() : Boolean
      {
         var w:Number = NaN;
         var h:Number = NaN;
         if(!parent)
         {
            return false;
         }
         if(width == 0 && height == 0)
         {
            validateNow();
            w = getExplicitOrMeasuredWidth();
            h = getExplicitOrMeasuredHeight();
            setActualSize(w,h);
         }
         validateNow();
         return true;
      }
      
      mx_internal function cancelAllCallLaters() : void
      {
         var sm:ISystemManager = systemManager;
         if(sm && (sm.stage || sm.useSWFBridge()))
         {
            if(listeningForRender)
            {
               sm.removeEventListener(FlexEvent.RENDER,callLaterDispatcher);
               sm.removeEventListener(FlexEvent.ENTER_FRAME,callLaterDispatcher);
               listeningForRender = false;
            }
         }
         methodQueue.splice(0);
      }
      
      private function updateCompleteHandler(event:FlexEvent) : void
      {
         UIComponentGlobals.layoutManager.removeEventListener(FlexEvent.UPDATE_COMPLETE,updateCompleteHandler);
         processEffectFinished(_endingEffectInstances);
         _endingEffectInstances = [];
      }
      
      private function findCommonBaseState(state1:String, state2:String) : String
      {
         var firstState:State = getState(state1);
         var secondState:State = getState(state2);
         if(!firstState || !secondState)
         {
            return "";
         }
         if(isBaseState(firstState.basedOn) && isBaseState(secondState.basedOn))
         {
            return "";
         }
         var firstBaseStates:Array = getBaseStates(firstState);
         var secondBaseStates:Array = getBaseStates(secondState);
         var commonBase:String = "";
         while(firstBaseStates[firstBaseStates.length - 1] == secondBaseStates[secondBaseStates.length - 1])
         {
            commonBase = firstBaseStates.pop();
            secondBaseStates.pop();
            if(!firstBaseStates.length || !secondBaseStates.length)
            {
               break;
            }
         }
         if(firstBaseStates.length && firstBaseStates[firstBaseStates.length - 1] == secondState.name)
         {
            commonBase = secondState.name;
         }
         else if(secondBaseStates.length && secondBaseStates[secondBaseStates.length - 1] == firstState.name)
         {
            commonBase = firstState.name;
         }
         return commonBase;
      }
      
      public function styleChanged(styleProp:String) : void
      {
         if(this is IFontContextComponent && hasFontContextChanged())
         {
            invalidateProperties();
         }
         if(!styleProp || styleProp == "styleName" || StyleManager.isSizeInvalidatingStyle(styleProp))
         {
            invalidateSize();
         }
         if(!styleProp || styleProp == "styleName" || styleProp == "themeColor")
         {
            initThemeColor();
         }
         invalidateDisplayList();
         if(parent is IInvalidating)
         {
            if(StyleManager.isParentSizeInvalidatingStyle(styleProp))
            {
               IInvalidating(parent).invalidateSize();
            }
            if(StyleManager.isParentDisplayListInvalidatingStyle(styleProp))
            {
               IInvalidating(parent).invalidateDisplayList();
            }
         }
      }
      
      mx_internal final function get $visible() : Boolean
      {
         return super.visible;
      }
      
      public function drawRoundRect(x:Number, y:Number, w:Number, h:Number, r:Object = null, c:Object = null, alpha:Object = null, rot:Object = null, gradient:String = null, ratios:Array = null, hole:Object = null) : void
      {
         var ellipseSize:Number = NaN;
         var alphas:Array = null;
         var matrix:Matrix = null;
         var holeR:Object = null;
         var g:Graphics = graphics;
         if(!w || !h)
         {
            return;
         }
         if(c !== null)
         {
            if(c is Array)
            {
               if(alpha is Array)
               {
                  alphas = alpha as Array;
               }
               else
               {
                  alphas = [alpha,alpha];
               }
               if(!ratios)
               {
                  ratios = [0,255];
               }
               matrix = null;
               if(rot)
               {
                  if(rot is Matrix)
                  {
                     matrix = Matrix(rot);
                  }
                  else
                  {
                     matrix = new Matrix();
                     if(rot is Number)
                     {
                        matrix.createGradientBox(w,h,Number(rot) * Math.PI / 180,x,y);
                     }
                     else
                     {
                        matrix.createGradientBox(rot.w,rot.h,rot.r,rot.x,rot.y);
                     }
                  }
               }
               if(gradient == GradientType.RADIAL)
               {
                  g.beginGradientFill(GradientType.RADIAL,c as Array,alphas,ratios,matrix);
               }
               else
               {
                  g.beginGradientFill(GradientType.LINEAR,c as Array,alphas,ratios,matrix);
               }
            }
            else
            {
               g.beginFill(Number(c),Number(alpha));
            }
         }
         if(!r)
         {
            g.drawRect(x,y,w,h);
         }
         else if(r is Number)
         {
            ellipseSize = Number(r) * 2;
            g.drawRoundRect(x,y,w,h,ellipseSize,ellipseSize);
         }
         else
         {
            GraphicsUtil.drawRoundRectComplex(g,x,y,w,h,r.tl,r.tr,r.bl,r.br);
         }
         if(hole)
         {
            holeR = hole.r;
            if(holeR is Number)
            {
               ellipseSize = Number(holeR) * 2;
               g.drawRoundRect(hole.x,hole.y,hole.w,hole.h,ellipseSize,ellipseSize);
            }
            else
            {
               GraphicsUtil.drawRoundRectComplex(g,hole.x,hole.y,hole.w,hole.h,holeR.tl,holeR.tr,holeR.bl,holeR.br);
            }
         }
         if(c !== null)
         {
            g.endFill();
         }
      }
      
      public function move(x:Number, y:Number) : void
      {
         var changed:Boolean = false;
         if(x != super.x)
         {
            super.x = x;
            dispatchEvent(new Event("xChanged"));
            changed = true;
         }
         if(y != super.y)
         {
            super.y = y;
            dispatchEvent(new Event("yChanged"));
            changed = true;
         }
         if(changed)
         {
            dispatchMoveEvent();
         }
      }
      
      public function set toolTip(value:String) : void
      {
         var oldValue:String = _toolTip;
         _toolTip = value;
         ToolTipManager.registerToolTip(this,oldValue,value);
         dispatchEvent(new Event("toolTipChanged"));
      }
      
      public function set repeaters(value:Array) : void
      {
         _repeaters = value;
      }
      
      [Bindable("explicitMaxHeightChanged")]
      public function get explicitMaxHeight() : Number
      {
         return _explicitMaxHeight;
      }
      
      public function measureText(text:String) : TextLineMetrics
      {
         return determineTextFormatFromStyles().measureText(text);
      }
      
      public function get styleName() : Object
      {
         return _styleName;
      }
      
      protected function createInModuleContext(moduleFactory:IFlexModuleFactory, className:String) : Object
      {
         var newObject:Object = null;
         if(moduleFactory)
         {
            newObject = moduleFactory.create(className);
         }
         return newObject;
      }
      
      [Bindable("initialize")]
      public function get parentDocument() : Object
      {
         var p:IUIComponent = null;
         var sm:ISystemManager = null;
         if(document == this)
         {
            p = parent as IUIComponent;
            if(p)
            {
               return p.document;
            }
            sm = parent as ISystemManager;
            if(sm)
            {
               return sm.document;
            }
            return null;
         }
         return document;
      }
      
      protected function childrenCreated() : void
      {
         invalidateProperties();
         invalidateSize();
         invalidateDisplayList();
      }
      
      public function set flexContextMenu(value:IFlexContextMenu) : void
      {
         if(_flexContextMenu)
         {
            _flexContextMenu.unsetContextMenu(this);
         }
         _flexContextMenu = value;
         if(value != null)
         {
            _flexContextMenu.setContextMenu(this);
         }
      }
      
      public function set explicitWidth(value:Number) : void
      {
         if(_explicitWidth == value)
         {
            return;
         }
         if(!isNaN(value))
         {
            _percentWidth = NaN;
         }
         _explicitWidth = value;
         invalidateSize();
         var p:IInvalidating = parent as IInvalidating;
         if(p && includeInLayout)
         {
            p.invalidateSize();
            p.invalidateDisplayList();
         }
         dispatchEvent(new Event("explicitWidthChanged"));
      }
      
      private function setBorderColorForErrorString() : void
      {
         if(!_errorString || _errorString.length == 0)
         {
            if(!isNaN(origBorderColor))
            {
               setStyle("borderColor",origBorderColor);
               saveBorderColor = true;
            }
         }
         else
         {
            if(saveBorderColor)
            {
               saveBorderColor = false;
               origBorderColor = getStyle("borderColor");
            }
            setStyle("borderColor",getStyle("errorColor"));
         }
         styleChanged("themeColor");
         var focusManager:IFocusManager = focusManager;
         var focusObj:DisplayObject = !!focusManager?DisplayObject(focusManager.getFocus()):null;
         if(focusManager && focusManager.showFocusIndicator && focusObj == this)
         {
            drawFocus(true);
         }
      }
      
      public function invalidateSize() : void
      {
         if(!invalidateSizeFlag)
         {
            invalidateSizeFlag = true;
            if(parent && UIComponentGlobals.layoutManager)
            {
               UIComponentGlobals.layoutManager.invalidateSize(this);
            }
         }
      }
      
      public function set measuredMinHeight(value:Number) : void
      {
         _measuredMinHeight = value;
      }
      
      protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
      }
      
      [Bindable("explicitWidthChanged")]
      public function get explicitWidth() : Number
      {
         return _explicitWidth;
      }
      
      override public function set filters(value:Array) : void
      {
         var n:int = 0;
         var i:int = 0;
         var e:IEventDispatcher = null;
         if(_filters)
         {
            n = _filters.length;
            for(i = 0; i < n; i++)
            {
               e = _filters[i] as IEventDispatcher;
               if(e)
               {
                  e.removeEventListener("change",filterChangeHandler);
               }
            }
         }
         _filters = value;
         if(_filters)
         {
            n = _filters.length;
            for(i = 0; i < n; i++)
            {
               e = _filters[i] as IEventDispatcher;
               if(e)
               {
                  e.addEventListener("change",filterChangeHandler);
               }
            }
         }
         super.filters = _filters;
      }
   }
}

class MethodQueueElement
{
    
   
   public var method:Function;
   
   public var args:Array;
   
   function MethodQueueElement(method:Function, args:Array = null)
   {
      super();
      this.method = method;
      this.args = args;
   }
}
