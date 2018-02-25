package mx.containers
{
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextLineMetrics;
   import flash.utils.getQualifiedClassName;
   import mx.automation.IAutomationObject;
   import mx.containers.utilityClasses.BoxLayout;
   import mx.containers.utilityClasses.CanvasLayout;
   import mx.containers.utilityClasses.ConstraintColumn;
   import mx.containers.utilityClasses.ConstraintRow;
   import mx.containers.utilityClasses.IConstraintLayout;
   import mx.containers.utilityClasses.Layout;
   import mx.controls.Button;
   import mx.core.Container;
   import mx.core.ContainerLayout;
   import mx.core.EdgeMetrics;
   import mx.core.EventPriority;
   import mx.core.FlexVersion;
   import mx.core.IFlexDisplayObject;
   import mx.core.IFlexModuleFactory;
   import mx.core.IFontContextComponent;
   import mx.core.IUIComponent;
   import mx.core.IUITextField;
   import mx.core.UIComponent;
   import mx.core.UIComponentCachePolicy;
   import mx.core.UITextField;
   import mx.core.UITextFormat;
   import mx.core.mx_internal;
   import mx.effects.EffectManager;
   import mx.events.CloseEvent;
   import mx.events.SandboxMouseEvent;
   import mx.styles.ISimpleStyleClient;
   import mx.styles.IStyleClient;
   import mx.styles.StyleProxy;
   
   use namespace mx_internal;
   
   public class Panel extends Container implements IConstraintLayout, IFontContextComponent
   {
      
      mx_internal static var createAccessibilityImplementation:Function;
      
      private static var _closeButtonStyleFilters:Object = {
         "closeButtonUpSkin":"closeButtonUpSkin",
         "closeButtonOverSkin":"closeButtonOverSkin",
         "closeButtonDownSkin":"closeButtonDownSkin",
         "closeButtonDisabledSkin":"closeButtonDisabledSkin",
         "closeButtonSkin":"closeButtonSkin",
         "repeatDelay":"repeatDelay",
         "repeatInterval":"repeatInterval"
      };
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      private static const HEADER_PADDING:Number = 14;
       
      
      private var layoutObject:Layout;
      
      private var _status:String = "";
      
      private var _titleChanged:Boolean = false;
      
      mx_internal var titleBarBackground:IFlexDisplayObject;
      
      private var regX:Number;
      
      private var regY:Number;
      
      private var _layout:String = "vertical";
      
      mx_internal var closeButton:Button;
      
      private var initializing:Boolean = true;
      
      private var _title:String = "";
      
      protected var titleTextField:IUITextField;
      
      private var _statusChanged:Boolean = false;
      
      private var autoSetRoundedCorners:Boolean;
      
      private var _titleIcon:Class;
      
      private var _constraintRows:Array;
      
      protected var controlBar:IUIComponent;
      
      mx_internal var titleIconObject:Object = null;
      
      protected var titleBar:UIComponent;
      
      private var panelViewMetrics:EdgeMetrics;
      
      private var _constraintColumns:Array;
      
      mx_internal var _showCloseButton:Boolean = false;
      
      private var checkedForAutoSetRoundedCorners:Boolean;
      
      private var _titleIconChanged:Boolean = false;
      
      protected var statusTextField:IUITextField;
      
      public function Panel()
      {
         _constraintColumns = [];
         _constraintRows = [];
         super();
         addEventListener("resizeStart",EffectManager.eventHandler,false,EventPriority.EFFECT);
         addEventListener("resizeEnd",EffectManager.eventHandler,false,EventPriority.EFFECT);
         layoutObject = new BoxLayout();
         layoutObject.target = this;
         showInAutomationHierarchy = true;
      }
      
      private function systemManager_mouseUpHandler(event:MouseEvent) : void
      {
         if(!isNaN(regX))
         {
            stopDragging();
         }
      }
      
      mx_internal function getHeaderHeightProxy() : Number
      {
         return getHeaderHeight();
      }
      
      override public function getChildIndex(child:DisplayObject) : int
      {
         if(controlBar && child == controlBar)
         {
            return numChildren;
         }
         return super.getChildIndex(child);
      }
      
      mx_internal function get _controlBar() : IUIComponent
      {
         return controlBar;
      }
      
      mx_internal function getTitleBar() : UIComponent
      {
         return titleBar;
      }
      
      [Bindable("layoutChanged")]
      public function get layout() : String
      {
         return _layout;
      }
      
      override protected function createChildren() : void
      {
         var titleBarBackgroundClass:Class = null;
         var backgroundUIComponent:IStyleClient = null;
         var backgroundStyleable:ISimpleStyleClient = null;
         super.createChildren();
         if(!titleBar)
         {
            titleBar = new UIComponent();
            titleBar.visible = false;
            titleBar.addEventListener(MouseEvent.MOUSE_DOWN,titleBar_mouseDownHandler);
            rawChildren.addChild(titleBar);
         }
         if(!titleBarBackground)
         {
            titleBarBackgroundClass = getStyle("titleBackgroundSkin");
            if(titleBarBackgroundClass)
            {
               titleBarBackground = new titleBarBackgroundClass();
               backgroundUIComponent = titleBarBackground as IStyleClient;
               if(backgroundUIComponent)
               {
                  backgroundUIComponent.setStyle("backgroundImage",undefined);
               }
               backgroundStyleable = titleBarBackground as ISimpleStyleClient;
               if(backgroundStyleable)
               {
                  backgroundStyleable.styleName = this;
               }
               titleBar.addChild(DisplayObject(titleBarBackground));
            }
         }
         createTitleTextField(-1);
         createStatusTextField(-1);
         if(!closeButton)
         {
            closeButton = new Button();
            closeButton.styleName = new StyleProxy(this,closeButtonStyleFilters);
            closeButton.upSkinName = "closeButtonUpSkin";
            closeButton.overSkinName = "closeButtonOverSkin";
            closeButton.downSkinName = "closeButtonDownSkin";
            closeButton.disabledSkinName = "closeButtonDisabledSkin";
            closeButton.skinName = "closeButtonSkin";
            closeButton.explicitWidth = closeButton.explicitHeight = 16;
            closeButton.focusEnabled = false;
            closeButton.visible = false;
            closeButton.enabled = enabled;
            closeButton.addEventListener(MouseEvent.CLICK,closeButton_clickHandler);
            titleBar.addChild(closeButton);
            closeButton.owner = this;
         }
      }
      
      public function get constraintColumns() : Array
      {
         return _constraintColumns;
      }
      
      override public function set cacheAsBitmap(value:Boolean) : void
      {
         super.cacheAsBitmap = value;
         if(cacheAsBitmap && !contentPane && cachePolicy != UIComponentCachePolicy.OFF && getStyle("backgroundColor"))
         {
            createContentPane();
            invalidateDisplayList();
         }
      }
      
      override public function createComponentsFromDescriptors(recurse:Boolean = true) : void
      {
         var oldChildDocument:Object = null;
         super.createComponentsFromDescriptors();
         if(numChildren == 0)
         {
            setControlBar(null);
            return;
         }
         var lastChild:IUIComponent = IUIComponent(getChildAt(numChildren - 1));
         if(lastChild is ControlBar)
         {
            oldChildDocument = lastChild.document;
            if(contentPane)
            {
               contentPane.removeChild(DisplayObject(lastChild));
            }
            else
            {
               removeChild(DisplayObject(lastChild));
            }
            lastChild.document = oldChildDocument;
            rawChildren.addChild(DisplayObject(lastChild));
            setControlBar(lastChild);
         }
         else
         {
            setControlBar(null);
         }
      }
      
      override protected function layoutChrome(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         var titleBarWidth:Number = NaN;
         var g:Graphics = null;
         var leftOffset:Number = NaN;
         var rightOffset:Number = NaN;
         var h:Number = NaN;
         var offset:Number = NaN;
         var borderWidth:Number = NaN;
         var statusX:Number = NaN;
         var minX:Number = NaN;
         var cx:Number = NaN;
         var cy:Number = NaN;
         var cw:Number = NaN;
         var ch:Number = NaN;
         super.layoutChrome(unscaledWidth,unscaledHeight);
         var em:EdgeMetrics = EdgeMetrics.EMPTY;
         var bt:Number = getStyle("borderThickness");
         if(getQualifiedClassName(border) == "mx.skins.halo::PanelSkin" && getStyle("borderStyle") != "default" && bt)
         {
            em = new EdgeMetrics(bt,bt,bt,bt);
         }
         var bm:EdgeMetrics = FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0?borderMetrics:em;
         var x:Number = bm.left;
         var y:Number = bm.top;
         var headerHeight:Number = getHeaderHeight();
         if(headerHeight > 0 && height >= headerHeight)
         {
            titleBarWidth = unscaledWidth - bm.left - bm.right;
            showTitleBar(true);
            titleBar.mouseChildren = true;
            titleBar.mouseEnabled = true;
            g = titleBar.graphics;
            g.clear();
            g.beginFill(16777215,0);
            g.drawRect(0,0,titleBarWidth,headerHeight);
            g.endFill();
            g.lineStyle(0,0,0);
            g.drawRect(0,0,titleBarWidth,unscaledHeight);
            titleBar.move(x,y);
            titleBar.setActualSize(titleBarWidth,headerHeight);
            titleBarBackground.move(0,0);
            IFlexDisplayObject(titleBarBackground).setActualSize(titleBarWidth,headerHeight);
            closeButton.visible = _showCloseButton;
            if(_showCloseButton)
            {
               closeButton.setActualSize(closeButton.getExplicitOrMeasuredWidth(),closeButton.getExplicitOrMeasuredHeight());
               closeButton.move(unscaledWidth - x - bm.right - 10 - closeButton.getExplicitOrMeasuredWidth(),(headerHeight - closeButton.getExplicitOrMeasuredHeight()) / 2);
            }
            leftOffset = 10;
            rightOffset = 10;
            if(titleIconObject)
            {
               h = titleIconObject.height;
               offset = (headerHeight - h) / 2;
               titleIconObject.move(leftOffset,offset);
               leftOffset = leftOffset + (titleIconObject.width + 4);
            }
            if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
            {
               h = titleTextField.nonZeroTextHeight;
            }
            else
            {
               h = titleTextField.getUITextFormat().measureText(titleTextField.text).height;
            }
            offset = (headerHeight - h) / 2;
            borderWidth = bm.left + bm.right;
            titleTextField.move(leftOffset,offset - 1);
            titleTextField.setActualSize(Math.max(0,unscaledWidth - leftOffset - rightOffset - borderWidth),h + UITextField.TEXT_HEIGHT_PADDING);
            if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
            {
               h = statusTextField.textHeight;
            }
            else
            {
               h = statusTextField.text != ""?Number(statusTextField.getUITextFormat().measureText(statusTextField.text).height):Number(0);
            }
            offset = (headerHeight - h) / 2;
            statusX = unscaledWidth - rightOffset - 4 - borderWidth - statusTextField.textWidth;
            if(_showCloseButton)
            {
               statusX = statusX - (closeButton.getExplicitOrMeasuredWidth() + 4);
            }
            statusTextField.move(statusX,offset - 1);
            statusTextField.setActualSize(statusTextField.textWidth + 8,statusTextField.textHeight + UITextField.TEXT_HEIGHT_PADDING);
            minX = titleTextField.x + titleTextField.textWidth + 8;
            if(statusTextField.x < minX)
            {
               statusTextField.width = Math.max(statusTextField.width - (minX - statusTextField.x),0);
               statusTextField.x = minX;
            }
         }
         else if(titleBar)
         {
            showTitleBar(false);
            titleBar.mouseChildren = false;
            titleBar.mouseEnabled = false;
         }
         if(controlBar)
         {
            cx = controlBar.x;
            cy = controlBar.y;
            cw = controlBar.width;
            ch = controlBar.height;
            controlBar.setActualSize(unscaledWidth - (bm.left + bm.right),controlBar.getExplicitOrMeasuredHeight());
            controlBar.move(bm.left,unscaledHeight - bm.bottom - controlBar.getExplicitOrMeasuredHeight());
            if(controlBar.includeInLayout)
            {
               controlBar.visible = controlBar.y >= bm.top;
            }
            if(cx != controlBar.x || cy != controlBar.y || cw != controlBar.width || ch != controlBar.height)
            {
               invalidateDisplayList();
            }
         }
      }
      
      public function set layout(value:String) : void
      {
         if(_layout != value)
         {
            _layout = value;
            if(layoutObject)
            {
               layoutObject.target = null;
            }
            if(_layout == ContainerLayout.ABSOLUTE)
            {
               layoutObject = new CanvasLayout();
            }
            else
            {
               layoutObject = new BoxLayout();
               if(_layout == ContainerLayout.VERTICAL)
               {
                  BoxLayout(layoutObject).direction = BoxDirection.VERTICAL;
               }
               else
               {
                  BoxLayout(layoutObject).direction = BoxDirection.HORIZONTAL;
               }
            }
            if(layoutObject)
            {
               layoutObject.target = this;
            }
            invalidateSize();
            invalidateDisplayList();
            dispatchEvent(new Event("layoutChanged"));
         }
      }
      
      public function get constraintRows() : Array
      {
         return _constraintRows;
      }
      
      [Bindable("titleChanged")]
      public function get title() : String
      {
         return _title;
      }
      
      mx_internal function getTitleTextField() : IUITextField
      {
         return titleTextField;
      }
      
      mx_internal function createStatusTextField(childIndex:int) : void
      {
         var statusStyleName:String = null;
         if(titleBar && !statusTextField)
         {
            statusTextField = IUITextField(createInFontContext(UITextField));
            statusTextField.selectable = false;
            if(childIndex == -1)
            {
               titleBar.addChild(DisplayObject(statusTextField));
            }
            else
            {
               titleBar.addChildAt(DisplayObject(statusTextField),childIndex);
            }
            statusStyleName = getStyle("statusStyleName");
            statusTextField.styleName = statusStyleName;
            statusTextField.text = status;
            statusTextField.enabled = enabled;
         }
      }
      
      public function get fontContext() : IFlexModuleFactory
      {
         return moduleFactory;
      }
      
      override protected function measure() : void
      {
         var controlWidth:Number = NaN;
         super.measure();
         layoutObject.measure();
         var textSize:Rectangle = measureHeaderText();
         var textWidth:Number = textSize.width;
         var textHeight:Number = textSize.height;
         var bm:EdgeMetrics = FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0?borderMetrics:EdgeMetrics.EMPTY;
         textWidth = textWidth + (bm.left + bm.right);
         var offset:Number = 5;
         textWidth = textWidth + offset * 2;
         if(titleIconObject)
         {
            textWidth = textWidth + titleIconObject.width;
         }
         if(closeButton)
         {
            textWidth = textWidth + (closeButton.getExplicitOrMeasuredWidth() + 6);
         }
         measuredMinWidth = Math.max(textWidth,measuredMinWidth);
         measuredWidth = Math.max(textWidth,measuredWidth);
         if(controlBar && controlBar.includeInLayout)
         {
            controlWidth = controlBar.getExplicitOrMeasuredWidth() + bm.left + bm.right;
            measuredWidth = Math.max(measuredWidth,controlWidth);
         }
      }
      
      mx_internal function getControlBar() : IUIComponent
      {
         return controlBar;
      }
      
      override public function get viewMetrics() : EdgeMetrics
      {
         var o:EdgeMetrics = null;
         var bt:Number = NaN;
         var btl:Number = NaN;
         var btt:Number = NaN;
         var btr:Number = NaN;
         var btb:Number = NaN;
         var hHeight:Number = NaN;
         var vm:EdgeMetrics = super.viewMetrics;
         if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
         {
            if(!panelViewMetrics)
            {
               panelViewMetrics = new EdgeMetrics(0,0,0,0);
            }
            vm = panelViewMetrics;
            o = super.viewMetrics;
            bt = getStyle("borderThickness");
            btl = getStyle("borderThicknessLeft");
            btt = getStyle("borderThicknessTop");
            btr = getStyle("borderThicknessRight");
            btb = getStyle("borderThicknessBottom");
            vm.left = o.left + (!!isNaN(btl)?bt:btl);
            vm.top = o.top + (!!isNaN(btt)?bt:btt);
            vm.right = o.right + (!!isNaN(btr)?bt:btr);
            vm.bottom = o.bottom + (!!isNaN(btb)?controlBar && !isNaN(btt)?btt:!!isNaN(btl)?bt:btl:btb);
            hHeight = getHeaderHeight();
            if(!isNaN(hHeight))
            {
               vm.top = vm.top + hHeight;
            }
            if(controlBar && controlBar.includeInLayout)
            {
               vm.bottom = vm.bottom + controlBar.getExplicitOrMeasuredHeight();
            }
         }
         return vm;
      }
      
      private function measureHeaderText() : Rectangle
      {
         var textFormat:UITextFormat = null;
         var metrics:TextLineMetrics = null;
         var textWidth:Number = 20;
         var textHeight:Number = 14;
         if(titleTextField && titleTextField.text)
         {
            titleTextField.validateNow();
            textFormat = titleTextField.getUITextFormat();
            metrics = textFormat.measureText(titleTextField.text,false);
            textWidth = metrics.width;
            textHeight = metrics.height;
         }
         if(statusTextField && statusTextField.text)
         {
            statusTextField.validateNow();
            textFormat = statusTextField.getUITextFormat();
            metrics = textFormat.measureText(statusTextField.text,false);
            textWidth = Math.max(textWidth,metrics.width);
            textHeight = Math.max(textHeight,metrics.height);
         }
         return new Rectangle(0,0,Math.round(textWidth),Math.round(textHeight));
      }
      
      mx_internal function createTitleTextField(childIndex:int) : void
      {
         var titleStyleName:String = null;
         if(!titleTextField)
         {
            titleTextField = IUITextField(createInFontContext(UITextField));
            titleTextField.selectable = false;
            if(childIndex == -1)
            {
               titleBar.addChild(DisplayObject(titleTextField));
            }
            else
            {
               titleBar.addChildAt(DisplayObject(titleTextField),childIndex);
            }
            titleStyleName = getStyle("titleStyleName");
            titleTextField.styleName = titleStyleName;
            titleTextField.text = title;
            titleTextField.enabled = enabled;
         }
      }
      
      private function closeButton_clickHandler(event:MouseEvent) : void
      {
         dispatchEvent(new CloseEvent(CloseEvent.CLOSE));
      }
      
      private function setControlBar(newControlBar:IUIComponent) : void
      {
         if(newControlBar == controlBar)
         {
            return;
         }
         controlBar = newControlBar;
         if(!checkedForAutoSetRoundedCorners)
         {
            checkedForAutoSetRoundedCorners = true;
            autoSetRoundedCorners = !!styleDeclaration?styleDeclaration.getStyle("roundedBottomCorners") === undefined:true;
         }
         if(autoSetRoundedCorners)
         {
            setStyle("roundedBottomCorners",controlBar != null);
         }
         var controlBarStyleName:String = getStyle("controlBarStyleName");
         if(controlBarStyleName && controlBar is ISimpleStyleClient)
         {
            ISimpleStyleClient(controlBar).styleName = controlBarStyleName;
         }
         if(controlBar)
         {
            controlBar.enabled = enabled;
         }
         if(controlBar is IAutomationObject)
         {
            IAutomationObject(controlBar).showInAutomationHierarchy = false;
         }
         invalidateViewMetricsAndPadding();
         invalidateSize();
         invalidateDisplayList();
      }
      
      protected function get closeButtonStyleFilters() : Object
      {
         return _closeButtonStyleFilters;
      }
      
      public function set constraintColumns(value:Array) : void
      {
         var n:int = 0;
         var i:int = 0;
         if(value != _constraintColumns)
         {
            n = value.length;
            for(i = 0; i < n; i++)
            {
               ConstraintColumn(value[i]).container = this;
            }
            _constraintColumns = value;
            invalidateSize();
            invalidateDisplayList();
         }
      }
      
      override public function set enabled(value:Boolean) : void
      {
         super.enabled = value;
         if(titleTextField)
         {
            titleTextField.enabled = value;
         }
         if(statusTextField)
         {
            statusTextField.enabled = value;
         }
         if(controlBar)
         {
            controlBar.enabled = value;
         }
         if(closeButton)
         {
            closeButton.enabled = value;
         }
      }
      
      override public function get baselinePosition() : Number
      {
         if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
         {
            return super.baselinePosition;
         }
         if(!validateBaselinePosition())
         {
            return NaN;
         }
         return titleBar.y + titleTextField.y + titleTextField.baselinePosition;
      }
      
      protected function stopDragging() : void
      {
         var sbRoot:DisplayObject = systemManager.getSandboxRoot();
         sbRoot.removeEventListener(MouseEvent.MOUSE_MOVE,systemManager_mouseMoveHandler,true);
         sbRoot.removeEventListener(MouseEvent.MOUSE_UP,systemManager_mouseUpHandler,true);
         sbRoot.removeEventListener(SandboxMouseEvent.MOUSE_UP_SOMEWHERE,stage_mouseLeaveHandler);
         regX = NaN;
         regY = NaN;
         systemManager.deployMouseShields(false);
      }
      
      private function titleBar_mouseDownHandler(event:MouseEvent) : void
      {
         if(event.target == closeButton)
         {
            return;
         }
         if(enabled && isPopUp && isNaN(regX))
         {
            startDragging(event);
         }
      }
      
      override mx_internal function get usePadding() : Boolean
      {
         return layout != ContainerLayout.ABSOLUTE;
      }
      
      override protected function initializeAccessibility() : void
      {
         if(Panel.createAccessibilityImplementation != null)
         {
            Panel.createAccessibilityImplementation(this);
         }
      }
      
      protected function getHeaderHeight() : Number
      {
         var headerHeight:Number = getStyle("headerHeight");
         if(isNaN(headerHeight))
         {
            headerHeight = measureHeaderText().height + HEADER_PADDING;
         }
         return headerHeight;
      }
      
      public function set constraintRows(value:Array) : void
      {
         var n:int = 0;
         var i:int = 0;
         if(value != _constraintRows)
         {
            n = value.length;
            for(i = 0; i < n; i++)
            {
               ConstraintRow(value[i]).container = this;
            }
            _constraintRows = value;
            invalidateSize();
            invalidateDisplayList();
         }
      }
      
      public function set title(value:String) : void
      {
         _title = value;
         _titleChanged = true;
         invalidateProperties();
         invalidateSize();
         invalidateViewMetricsAndPadding();
         dispatchEvent(new Event("titleChanged"));
      }
      
      private function showTitleBar(show:Boolean) : void
      {
         var child:DisplayObject = null;
         titleBar.visible = show;
         var n:int = titleBar.numChildren;
         for(var i:int = 0; i < n; i++)
         {
            child = titleBar.getChildAt(i);
            child.visible = show;
         }
      }
      
      override public function styleChanged(styleProp:String) : void
      {
         var titleStyleName:String = null;
         var statusStyleName:String = null;
         var controlBarStyleName:String = null;
         var titleBackgroundSkinClass:Class = null;
         var backgroundUIComponent:IStyleClient = null;
         var backgroundStyleable:ISimpleStyleClient = null;
         var allStyles:Boolean = !styleProp || styleProp == "styleName";
         super.styleChanged(styleProp);
         if(allStyles || styleProp == "titleStyleName")
         {
            if(titleTextField)
            {
               titleStyleName = getStyle("titleStyleName");
               titleTextField.styleName = titleStyleName;
            }
         }
         if(allStyles || styleProp == "statusStyleName")
         {
            if(statusTextField)
            {
               statusStyleName = getStyle("statusStyleName");
               statusTextField.styleName = statusStyleName;
            }
         }
         if(allStyles || styleProp == "controlBarStyleName")
         {
            if(controlBar && controlBar is ISimpleStyleClient)
            {
               controlBarStyleName = getStyle("controlBarStyleName");
               ISimpleStyleClient(controlBar).styleName = controlBarStyleName;
            }
         }
         if(allStyles || styleProp == "titleBackgroundSkin")
         {
            if(titleBar)
            {
               titleBackgroundSkinClass = getStyle("titleBackgroundSkin");
               if(titleBackgroundSkinClass)
               {
                  if(titleBarBackground)
                  {
                     titleBar.removeChild(DisplayObject(titleBarBackground));
                     titleBarBackground = null;
                  }
                  titleBarBackground = new titleBackgroundSkinClass();
                  backgroundUIComponent = titleBarBackground as IStyleClient;
                  if(backgroundUIComponent)
                  {
                     backgroundUIComponent.setStyle("backgroundImage",undefined);
                  }
                  backgroundStyleable = titleBarBackground as ISimpleStyleClient;
                  if(backgroundStyleable)
                  {
                     backgroundStyleable.styleName = this;
                  }
                  titleBar.addChildAt(DisplayObject(titleBarBackground),0);
               }
            }
         }
      }
      
      mx_internal function getStatusTextField() : IUITextField
      {
         return statusTextField;
      }
      
      public function set fontContext(moduleFactory:IFlexModuleFactory) : void
      {
         this.moduleFactory = moduleFactory;
      }
      
      override protected function commitProperties() : void
      {
         var childIndex:int = 0;
         super.commitProperties();
         if(hasFontContextChanged())
         {
            if(titleTextField)
            {
               childIndex = titleBar.getChildIndex(DisplayObject(titleTextField));
               removeTitleTextField();
               createTitleTextField(childIndex);
               _titleChanged = true;
            }
            if(statusTextField)
            {
               childIndex = titleBar.getChildIndex(DisplayObject(statusTextField));
               removeStatusTextField();
               createStatusTextField(childIndex);
               _statusChanged = true;
            }
         }
         if(_titleChanged)
         {
            _titleChanged = false;
            titleTextField.text = _title;
            if(initialized)
            {
               layoutChrome(unscaledWidth,unscaledHeight);
            }
         }
         if(_titleIconChanged)
         {
            _titleIconChanged = false;
            if(titleIconObject)
            {
               titleBar.removeChild(DisplayObject(titleIconObject));
               titleIconObject = null;
            }
            if(_titleIcon)
            {
               titleIconObject = new _titleIcon();
               titleBar.addChild(DisplayObject(titleIconObject));
            }
            if(initialized)
            {
               layoutChrome(unscaledWidth,unscaledHeight);
            }
         }
         if(_statusChanged)
         {
            _statusChanged = false;
            statusTextField.text = _status;
            if(initialized)
            {
               layoutChrome(unscaledWidth,unscaledHeight);
            }
         }
      }
      
      protected function startDragging(event:MouseEvent) : void
      {
         regX = event.stageX - x;
         regY = event.stageY - y;
         var sbRoot:DisplayObject = systemManager.getSandboxRoot();
         sbRoot.addEventListener(MouseEvent.MOUSE_MOVE,systemManager_mouseMoveHandler,true);
         sbRoot.addEventListener(MouseEvent.MOUSE_UP,systemManager_mouseUpHandler,true);
         sbRoot.addEventListener(SandboxMouseEvent.MOUSE_UP_SOMEWHERE,stage_mouseLeaveHandler);
         systemManager.deployMouseShields(true);
      }
      
      mx_internal function removeStatusTextField() : void
      {
         if(titleBar && statusTextField)
         {
            titleBar.removeChild(DisplayObject(statusTextField));
            statusTextField = null;
         }
      }
      
      private function stage_mouseLeaveHandler(event:Event) : void
      {
         if(!isNaN(regX))
         {
            stopDragging();
         }
      }
      
      public function set status(value:String) : void
      {
         _status = value;
         _statusChanged = true;
         invalidateProperties();
         dispatchEvent(new Event("statusChanged"));
      }
      
      [Bindable("titleIconChanged")]
      public function get titleIcon() : Class
      {
         return _titleIcon;
      }
      
      [Bindable("statusChanged")]
      public function get status() : String
      {
         return _status;
      }
      
      private function systemManager_mouseMoveHandler(event:MouseEvent) : void
      {
         event.stopImmediatePropagation();
         if(isNaN(regX) || isNaN(regY))
         {
            return;
         }
         move(event.stageX - regX,event.stageY - regY);
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         layoutObject.updateDisplayList(unscaledWidth,unscaledHeight);
         if(border)
         {
            border.visible = true;
         }
         titleBar.visible = true;
      }
      
      mx_internal function removeTitleTextField() : void
      {
         if(titleBar && titleTextField)
         {
            titleBar.removeChild(DisplayObject(titleTextField));
            titleTextField = null;
         }
      }
      
      public function set titleIcon(value:Class) : void
      {
         _titleIcon = value;
         _titleIconChanged = true;
         invalidateProperties();
         invalidateSize();
         dispatchEvent(new Event("titleIconChanged"));
      }
   }
}
