package mx.controls
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextLineMetrics;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   import mx.controls.dataGridClasses.DataGridListData;
   import mx.controls.listClasses.BaseListData;
   import mx.controls.listClasses.IDropInListItemRenderer;
   import mx.controls.listClasses.IListItemRenderer;
   import mx.core.EdgeMetrics;
   import mx.core.FlexVersion;
   import mx.core.IBorder;
   import mx.core.IButton;
   import mx.core.IDataRenderer;
   import mx.core.IFlexAsset;
   import mx.core.IFlexDisplayObject;
   import mx.core.IFlexModuleFactory;
   import mx.core.IFontContextComponent;
   import mx.core.IInvalidating;
   import mx.core.IProgrammaticSkin;
   import mx.core.IRectangularBorder;
   import mx.core.IStateClient;
   import mx.core.IUIComponent;
   import mx.core.IUITextField;
   import mx.core.UIComponent;
   import mx.core.UITextField;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.MoveEvent;
   import mx.events.SandboxMouseEvent;
   import mx.managers.IFocusManagerComponent;
   import mx.styles.ISimpleStyleClient;
   
   use namespace mx_internal;
   
   public class Button extends UIComponent implements IDataRenderer, IDropInListItemRenderer, IFocusManagerComponent, IListItemRenderer, IFontContextComponent, IButton
   {
      
      mx_internal static var createAccessibilityImplementation:Function;
      
      mx_internal static var TEXT_WIDTH_PADDING:Number = UITextField.TEXT_WIDTH_PADDING + 1;
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      mx_internal var _emphasized:Boolean = false;
      
      mx_internal var extraSpacing:Number = 20.0;
      
      private var icons:Array;
      
      public var selectedField:String = null;
      
      private var labelChanged:Boolean = false;
      
      private var skinMeasuredWidth:Number;
      
      mx_internal var checkedDefaultSkin:Boolean = false;
      
      private var autoRepeatTimer:Timer;
      
      mx_internal var disabledIconName:String = "disabledIcon";
      
      mx_internal var disabledSkinName:String = "disabledSkin";
      
      mx_internal var checkedDefaultIcon:Boolean = false;
      
      public var stickyHighlighting:Boolean = false;
      
      private var enabledChanged:Boolean = false;
      
      mx_internal var selectedUpIconName:String = "selectedUpIcon";
      
      mx_internal var selectedUpSkinName:String = "selectedUpSkin";
      
      mx_internal var upIconName:String = "upIcon";
      
      mx_internal var upSkinName:String = "upSkin";
      
      mx_internal var centerContent:Boolean = true;
      
      mx_internal var buttonOffset:Number = 0;
      
      private var skinMeasuredHeight:Number;
      
      private var oldUnscaledWidth:Number;
      
      mx_internal var downIconName:String = "downIcon";
      
      mx_internal var _labelPlacement:String = "right";
      
      mx_internal var downSkinName:String = "downSkin";
      
      mx_internal var _toggle:Boolean = false;
      
      private var _phase:String = "up";
      
      private var toolTipSet:Boolean = false;
      
      private var _data:Object;
      
      mx_internal var currentIcon:IFlexDisplayObject;
      
      mx_internal var currentSkin:IFlexDisplayObject;
      
      mx_internal var overIconName:String = "overIcon";
      
      mx_internal var selectedDownIconName:String = "selectedDownIcon";
      
      mx_internal var overSkinName:String = "overSkin";
      
      mx_internal var iconName:String = "icon";
      
      mx_internal var skinName:String = "skin";
      
      mx_internal var selectedDownSkinName:String = "selectedDownSkin";
      
      private var skins:Array;
      
      private var selectedSet:Boolean;
      
      private var _autoRepeat:Boolean = false;
      
      private var styleChangedFlag:Boolean = true;
      
      mx_internal var selectedOverIconName:String = "selectedOverIcon";
      
      private var _listData:BaseListData;
      
      mx_internal var selectedOverSkinName:String = "selectedOverSkin";
      
      protected var textField:IUITextField;
      
      private var labelSet:Boolean;
      
      mx_internal var defaultIconUsesStates:Boolean = false;
      
      mx_internal var defaultSkinUsesStates:Boolean = false;
      
      mx_internal var toggleChanged:Boolean = false;
      
      private var emphasizedChanged:Boolean = false;
      
      private var _label:String = "";
      
      mx_internal var _selected:Boolean = false;
      
      mx_internal var selectedDisabledIconName:String = "selectedDisabledIcon";
      
      mx_internal var selectedDisabledSkinName:String = "selectedDisabledSkin";
      
      public function Button()
      {
         skins = [];
         icons = [];
         super();
         mouseChildren = false;
         addEventListener(MouseEvent.ROLL_OVER,rollOverHandler);
         addEventListener(MouseEvent.ROLL_OUT,rollOutHandler);
         addEventListener(MouseEvent.MOUSE_DOWN,mouseDownHandler);
         addEventListener(MouseEvent.MOUSE_UP,mouseUpHandler);
         addEventListener(MouseEvent.CLICK,clickHandler);
      }
      
      private function previousVersion_measure() : void
      {
         var bm:EdgeMetrics = null;
         var lineMetrics:TextLineMetrics = null;
         var paddingLeft:Number = NaN;
         var paddingRight:Number = NaN;
         var paddingTop:Number = NaN;
         var paddingBottom:Number = NaN;
         var horizontalGap:Number = NaN;
         super.measure();
         var textWidth:Number = 0;
         var textHeight:Number = 0;
         if(label)
         {
            lineMetrics = measureText(label);
            textWidth = lineMetrics.width;
            textHeight = lineMetrics.height;
            paddingLeft = getStyle("paddingLeft");
            paddingRight = getStyle("paddingRight");
            paddingTop = getStyle("paddingTop");
            paddingBottom = getStyle("paddingBottom");
            textWidth = textWidth + (paddingLeft + paddingRight + getStyle("textIndent"));
            textHeight = textHeight + (paddingTop + paddingBottom);
         }
         try
         {
            bm = currentSkin["borderMetrics"];
         }
         catch(e:Error)
         {
            bm = new EdgeMetrics(3,3,3,3);
         }
         var tempCurrentIcon:IFlexDisplayObject = getCurrentIcon();
         var iconWidth:Number = !!tempCurrentIcon?Number(tempCurrentIcon.width):Number(0);
         var iconHeight:Number = !!tempCurrentIcon?Number(tempCurrentIcon.height):Number(0);
         var w:Number = 0;
         var h:Number = 0;
         if(labelPlacement == ButtonLabelPlacement.LEFT || labelPlacement == ButtonLabelPlacement.RIGHT)
         {
            w = textWidth + iconWidth;
            if(iconWidth != 0)
            {
               horizontalGap = getStyle("horizontalGap");
               w = w + (horizontalGap - 2);
            }
            h = Math.max(textHeight,iconHeight + 6);
         }
         else
         {
            w = Math.max(textWidth,iconWidth);
            h = textHeight + iconHeight;
            if(iconHeight != 0)
            {
               h = h + getStyle("verticalGap");
            }
         }
         if(bm)
         {
            w = w + (bm.left + bm.right);
            h = h + (bm.top + bm.bottom);
         }
         if(label && label.length != 0)
         {
            w = w + extraSpacing;
         }
         else
         {
            w = w + 6;
         }
         if(currentSkin && (isNaN(skinMeasuredWidth) || isNaN(skinMeasuredHeight)))
         {
            skinMeasuredWidth = currentSkin.measuredWidth;
            skinMeasuredHeight = currentSkin.measuredHeight;
         }
         if(!isNaN(skinMeasuredWidth))
         {
            w = Math.max(skinMeasuredWidth,w);
         }
         if(!isNaN(skinMeasuredHeight))
         {
            h = Math.max(skinMeasuredHeight,h);
         }
         measuredMinWidth = measuredWidth = w;
         measuredMinHeight = measuredHeight = h;
      }
      
      [Bindable("labelChanged")]
      public function get label() : String
      {
         return _label;
      }
      
      mx_internal function getCurrentIconName() : String
      {
         var tempIconName:String = null;
         if(!enabled)
         {
            tempIconName = !!selected?selectedDisabledIconName:disabledIconName;
         }
         else if(phase == ButtonPhase.UP)
         {
            tempIconName = !!selected?selectedUpIconName:upIconName;
         }
         else if(phase == ButtonPhase.OVER)
         {
            tempIconName = !!selected?selectedOverIconName:overIconName;
         }
         else if(phase == ButtonPhase.DOWN)
         {
            tempIconName = !!selected?selectedDownIconName:downIconName;
         }
         return tempIconName;
      }
      
      protected function mouseUpHandler(event:MouseEvent) : void
      {
         if(!enabled)
         {
            return;
         }
         phase = ButtonPhase.OVER;
         buttonReleased();
         if(!toggle)
         {
            event.updateAfterEvent();
         }
      }
      
      override protected function adjustFocusRect(object:DisplayObject = null) : void
      {
         super.adjustFocusRect(!currentSkin?DisplayObject(currentIcon):this);
      }
      
      mx_internal function set phase(value:String) : void
      {
         _phase = value;
         invalidateSize();
         invalidateDisplayList();
      }
      
      mx_internal function viewIconForPhase(tempIconName:String) : IFlexDisplayObject
      {
         var newIcon:IFlexDisplayObject = null;
         var sizeIcon:Boolean = false;
         var stateName:String = null;
         var newIconClass:Class = Class(getStyle(tempIconName));
         if(!newIconClass)
         {
            newIconClass = Class(getStyle(iconName));
            if(defaultIconUsesStates)
            {
               tempIconName = iconName;
            }
            if(!checkedDefaultIcon && newIconClass)
            {
               newIcon = IFlexDisplayObject(new newIconClass());
               if(!(newIcon is IProgrammaticSkin) && newIcon is IStateClient)
               {
                  defaultIconUsesStates = true;
                  tempIconName = iconName;
               }
               if(newIcon)
               {
                  checkedDefaultIcon = true;
               }
            }
         }
         newIcon = IFlexDisplayObject(getChildByName(tempIconName));
         if(newIcon == null)
         {
            if(newIconClass != null)
            {
               newIcon = IFlexDisplayObject(new newIconClass());
               newIcon.name = tempIconName;
               if(newIcon is ISimpleStyleClient)
               {
                  ISimpleStyleClient(newIcon).styleName = this;
               }
               addChild(DisplayObject(newIcon));
               sizeIcon = false;
               if(newIcon is IInvalidating)
               {
                  IInvalidating(newIcon).validateNow();
                  sizeIcon = true;
               }
               else if(newIcon is IProgrammaticSkin)
               {
                  IProgrammaticSkin(newIcon).validateDisplayList();
                  sizeIcon = true;
               }
               if(newIcon && newIcon is IUIComponent)
               {
                  IUIComponent(newIcon).enabled = enabled;
               }
               if(sizeIcon)
               {
                  newIcon.setActualSize(newIcon.measuredWidth,newIcon.measuredHeight);
               }
               icons.push(newIcon);
            }
         }
         if(currentIcon != null)
         {
            currentIcon.visible = false;
         }
         currentIcon = newIcon;
         if(defaultIconUsesStates && currentIcon is IStateClient)
         {
            stateName = "";
            if(!enabled)
            {
               stateName = !!selected?"selectedDisabled":"disabled";
            }
            else if(phase == ButtonPhase.UP)
            {
               stateName = !!selected?"selectedUp":"up";
            }
            else if(phase == ButtonPhase.OVER)
            {
               stateName = !!selected?"selectedOver":"over";
            }
            else if(phase == ButtonPhase.DOWN)
            {
               stateName = !!selected?"selectedDown":"down";
            }
            IStateClient(currentIcon).currentState = stateName;
         }
         if(currentIcon != null)
         {
            currentIcon.visible = true;
         }
         return newIcon;
      }
      
      mx_internal function viewSkinForPhase(tempSkinName:String, stateName:String) : void
      {
         var newSkin:IFlexDisplayObject = null;
         var labelColor:Number = NaN;
         var styleableSkin:ISimpleStyleClient = null;
         var newSkinClass:Class = Class(getStyle(tempSkinName));
         if(!newSkinClass)
         {
            newSkinClass = Class(getStyle(skinName));
            if(defaultSkinUsesStates)
            {
               tempSkinName = skinName;
            }
            if(!checkedDefaultSkin && newSkinClass)
            {
               newSkin = IFlexDisplayObject(new newSkinClass());
               if(!(newSkin is IProgrammaticSkin) && newSkin is IStateClient)
               {
                  defaultSkinUsesStates = true;
                  tempSkinName = skinName;
               }
               if(newSkin)
               {
                  checkedDefaultSkin = true;
               }
            }
         }
         newSkin = IFlexDisplayObject(getChildByName(tempSkinName));
         if(!newSkin)
         {
            if(newSkinClass)
            {
               newSkin = IFlexDisplayObject(new newSkinClass());
               newSkin.name = tempSkinName;
               styleableSkin = newSkin as ISimpleStyleClient;
               if(styleableSkin)
               {
                  styleableSkin.styleName = this;
               }
               addChild(DisplayObject(newSkin));
               newSkin.setActualSize(unscaledWidth,unscaledHeight);
               if(newSkin is IInvalidating && initialized)
               {
                  IInvalidating(newSkin).validateNow();
               }
               else if(newSkin is IProgrammaticSkin && initialized)
               {
                  IProgrammaticSkin(newSkin).validateDisplayList();
               }
               skins.push(newSkin);
            }
         }
         if(currentSkin)
         {
            currentSkin.visible = false;
         }
         currentSkin = newSkin;
         if(defaultSkinUsesStates && currentSkin is IStateClient)
         {
            IStateClient(currentSkin).currentState = stateName;
         }
         if(currentSkin)
         {
            currentSkin.visible = true;
         }
         if(enabled)
         {
            if(phase == ButtonPhase.OVER)
            {
               labelColor = textField.getStyle("textRollOverColor");
            }
            else if(phase == ButtonPhase.DOWN)
            {
               labelColor = textField.getStyle("textSelectedColor");
            }
            else
            {
               labelColor = textField.getStyle("color");
            }
            textField.setColor(labelColor);
         }
      }
      
      mx_internal function getTextField() : IUITextField
      {
         return textField;
      }
      
      protected function rollOverHandler(event:MouseEvent) : void
      {
         if(phase == ButtonPhase.UP)
         {
            if(event.buttonDown)
            {
               return;
            }
            phase = ButtonPhase.OVER;
            event.updateAfterEvent();
         }
         else if(phase == ButtonPhase.OVER)
         {
            phase = ButtonPhase.DOWN;
            event.updateAfterEvent();
            if(autoRepeatTimer)
            {
               autoRepeatTimer.start();
            }
         }
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         if(!textField)
         {
            textField = IUITextField(createInFontContext(UITextField));
            textField.styleName = this;
            addChild(DisplayObject(textField));
         }
      }
      
      mx_internal function setSelected(value:Boolean, isProgrammatic:Boolean = false) : void
      {
         if(_selected != value)
         {
            _selected = value;
            invalidateDisplayList();
            if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
            {
               if(toggle)
               {
                  dispatchEvent(new Event(Event.CHANGE));
               }
            }
            else if(toggle && !isProgrammatic)
            {
               dispatchEvent(new Event(Event.CHANGE));
            }
            dispatchEvent(new FlexEvent(FlexEvent.VALUE_COMMIT));
         }
      }
      
      private function autoRepeatTimer_timerDelayHandler(event:Event) : void
      {
         if(!enabled)
         {
            return;
         }
         dispatchEvent(new FlexEvent(FlexEvent.BUTTON_DOWN));
         if(autoRepeat)
         {
            autoRepeatTimer.reset();
            autoRepeatTimer.removeEventListener(TimerEvent.TIMER,autoRepeatTimer_timerDelayHandler);
            autoRepeatTimer.delay = getStyle("repeatInterval");
            autoRepeatTimer.addEventListener(TimerEvent.TIMER,autoRepeatTimer_timerHandler);
            autoRepeatTimer.start();
         }
      }
      
      public function get autoRepeat() : Boolean
      {
         return _autoRepeat;
      }
      
      public function set selected(value:Boolean) : void
      {
         selectedSet = true;
         setSelected(value,true);
      }
      
      override protected function focusOutHandler(event:FocusEvent) : void
      {
         super.focusOutHandler(event);
         if(phase != ButtonPhase.UP)
         {
            phase = ButtonPhase.UP;
         }
      }
      
      [Bindable("labelPlacementChanged")]
      public function get labelPlacement() : String
      {
         return _labelPlacement;
      }
      
      public function set autoRepeat(value:Boolean) : void
      {
         _autoRepeat = value;
         if(value)
         {
            autoRepeatTimer = new Timer(1);
         }
         else
         {
            autoRepeatTimer = null;
         }
      }
      
      mx_internal function changeIcons() : void
      {
         var n:int = icons.length;
         for(var i:int = 0; i < n; i++)
         {
            removeChild(icons[i]);
         }
         icons = [];
         checkedDefaultIcon = false;
         defaultIconUsesStates = false;
      }
      
      public function set data(value:Object) : void
      {
         var newSelected:* = undefined;
         var newLabel:* = undefined;
         _data = value;
         if(_listData && _listData is DataGridListData && DataGridListData(_listData).dataField != null)
         {
            newSelected = _data[DataGridListData(_listData).dataField];
            newLabel = "";
         }
         else if(_listData)
         {
            if(selectedField)
            {
               newSelected = _data[selectedField];
            }
            newLabel = _listData.label;
         }
         else
         {
            newSelected = _data;
         }
         if(newSelected !== undefined && !selectedSet)
         {
            selected = newSelected as Boolean;
            selectedSet = false;
         }
         if(newLabel !== undefined && !labelSet)
         {
            label = newLabel;
            labelSet = false;
         }
         dispatchEvent(new FlexEvent(FlexEvent.DATA_CHANGE));
      }
      
      mx_internal function getCurrentIcon() : IFlexDisplayObject
      {
         var tempIconName:String = getCurrentIconName();
         if(!tempIconName)
         {
            return null;
         }
         return viewIconForPhase(tempIconName);
      }
      
      public function get fontContext() : IFlexModuleFactory
      {
         return moduleFactory;
      }
      
      public function get emphasized() : Boolean
      {
         return _emphasized;
      }
      
      [Bindable("dataChange")]
      public function get listData() : BaseListData
      {
         return _listData;
      }
      
      mx_internal function layoutContents(unscaledWidth:Number, unscaledHeight:Number, offset:Boolean) : void
      {
         var lineMetrics:TextLineMetrics = null;
         var moveEvent:MoveEvent = null;
         if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
         {
            previousVersion_layoutContents(unscaledWidth,unscaledHeight,offset);
            return;
         }
         var labelWidth:Number = 0;
         var labelHeight:Number = 0;
         var labelX:Number = 0;
         var labelY:Number = 0;
         var iconWidth:Number = 0;
         var iconHeight:Number = 0;
         var iconX:Number = 0;
         var iconY:Number = 0;
         var horizontalGap:Number = 0;
         var verticalGap:Number = 0;
         var paddingLeft:Number = getStyle("paddingLeft");
         var paddingRight:Number = getStyle("paddingRight");
         var paddingTop:Number = getStyle("paddingTop");
         var paddingBottom:Number = getStyle("paddingBottom");
         var textWidth:Number = 0;
         var textHeight:Number = 0;
         if(label)
         {
            lineMetrics = measureText(label);
            textWidth = lineMetrics.width + TEXT_WIDTH_PADDING;
            textHeight = lineMetrics.height + UITextField.TEXT_HEIGHT_PADDING;
         }
         else
         {
            lineMetrics = measureText("Wj");
            textHeight = lineMetrics.height + UITextField.TEXT_HEIGHT_PADDING;
         }
         var n:Number = !!offset?Number(buttonOffset):Number(0);
         var textAlign:String = getStyle("textAlign");
         var viewWidth:Number = unscaledWidth;
         var viewHeight:Number = unscaledHeight;
         var bm:EdgeMetrics = currentSkin && currentSkin is IBorder && !(currentSkin is IFlexAsset)?IBorder(currentSkin).borderMetrics:null;
         if(bm)
         {
            viewWidth = viewWidth - (bm.left + bm.right);
            viewHeight = viewHeight - (bm.top + bm.bottom);
         }
         if(currentIcon)
         {
            iconWidth = currentIcon.width;
            iconHeight = currentIcon.height;
         }
         if(labelPlacement == ButtonLabelPlacement.LEFT || labelPlacement == ButtonLabelPlacement.RIGHT)
         {
            horizontalGap = getStyle("horizontalGap");
            if(iconWidth == 0 || textWidth == 0)
            {
               horizontalGap = 0;
            }
            if(textWidth > 0)
            {
               textField.width = labelWidth = Math.max(Math.min(viewWidth - iconWidth - horizontalGap - paddingLeft - paddingRight,textWidth),0);
            }
            else
            {
               textField.width = labelWidth = 0;
            }
            textField.height = labelHeight = Math.min(viewHeight,textHeight);
            if(textAlign == "left")
            {
               labelX = labelX + paddingLeft;
            }
            else if(textAlign == "right")
            {
               labelX = labelX + (viewWidth - labelWidth - iconWidth - horizontalGap - paddingRight);
            }
            else
            {
               labelX = labelX + ((viewWidth - labelWidth - iconWidth - horizontalGap - paddingLeft - paddingRight) / 2 + paddingLeft);
            }
            if(labelPlacement == ButtonLabelPlacement.RIGHT)
            {
               labelX = labelX + (iconWidth + horizontalGap);
               iconX = labelX - (iconWidth + horizontalGap);
            }
            else
            {
               iconX = labelX + labelWidth + horizontalGap;
            }
            iconY = (viewHeight - iconHeight - paddingTop - paddingBottom) / 2 + paddingTop;
            labelY = (viewHeight - labelHeight - paddingTop - paddingBottom) / 2 + paddingTop;
         }
         else
         {
            verticalGap = getStyle("verticalGap");
            if(iconHeight == 0 || label == "")
            {
               verticalGap = 0;
            }
            if(textWidth > 0)
            {
               textField.width = labelWidth = Math.max(viewWidth - paddingLeft - paddingRight,0);
               textField.height = labelHeight = Math.min(viewHeight - iconHeight - paddingTop - paddingBottom - verticalGap,textHeight);
            }
            else
            {
               textField.width = labelWidth = 0;
               textField.height = labelHeight = 0;
            }
            labelX = paddingLeft;
            if(textAlign == "left")
            {
               iconX = iconX + paddingLeft;
            }
            else if(textAlign == "right")
            {
               iconX = iconX + Math.max(viewWidth - iconWidth - paddingRight,paddingLeft);
            }
            else
            {
               iconX = iconX + ((viewWidth - iconWidth - paddingLeft - paddingRight) / 2 + paddingLeft);
            }
            if(labelPlacement == ButtonLabelPlacement.TOP)
            {
               labelY = labelY + ((viewHeight - labelHeight - iconHeight - paddingTop - paddingBottom - verticalGap) / 2 + paddingTop);
               iconY = iconY + (labelY + labelHeight + verticalGap);
            }
            else
            {
               iconY = iconY + ((viewHeight - labelHeight - iconHeight - paddingTop - paddingBottom - verticalGap) / 2 + paddingTop);
               labelY = labelY + (iconY + iconHeight + verticalGap);
            }
         }
         var buffX:Number = n;
         var buffY:Number = n;
         if(bm)
         {
            buffX = buffX + bm.left;
            buffY = buffY + bm.top;
         }
         textField.x = Math.round(labelX + buffX);
         textField.y = Math.round(labelY + buffY);
         if(currentIcon)
         {
            iconX = iconX + buffX;
            iconY = iconY + buffY;
            moveEvent = new MoveEvent(MoveEvent.MOVE);
            moveEvent.oldX = currentIcon.x;
            moveEvent.oldY = currentIcon.y;
            currentIcon.x = Math.round(iconX);
            currentIcon.y = Math.round(iconY);
            currentIcon.dispatchEvent(moveEvent);
         }
         if(currentSkin)
         {
            setChildIndex(DisplayObject(currentSkin),numChildren - 1);
         }
         if(currentIcon)
         {
            setChildIndex(DisplayObject(currentIcon),numChildren - 1);
         }
         if(textField)
         {
            setChildIndex(DisplayObject(textField),numChildren - 1);
         }
      }
      
      protected function mouseDownHandler(event:MouseEvent) : void
      {
         if(!enabled)
         {
            return;
         }
         systemManager.getSandboxRoot().addEventListener(MouseEvent.MOUSE_UP,systemManager_mouseUpHandler,true);
         systemManager.getSandboxRoot().addEventListener(SandboxMouseEvent.MOUSE_UP_SOMEWHERE,stage_mouseLeaveHandler);
         buttonPressed();
         event.updateAfterEvent();
      }
      
      override protected function keyDownHandler(event:KeyboardEvent) : void
      {
         if(!enabled)
         {
            return;
         }
         if(event.keyCode == Keyboard.SPACE)
         {
            buttonPressed();
         }
      }
      
      protected function rollOutHandler(event:MouseEvent) : void
      {
         if(phase == ButtonPhase.OVER)
         {
            phase = ButtonPhase.UP;
            event.updateAfterEvent();
         }
         else if(phase == ButtonPhase.DOWN && !stickyHighlighting)
         {
            phase = ButtonPhase.OVER;
            event.updateAfterEvent();
            if(autoRepeatTimer)
            {
               autoRepeatTimer.stop();
            }
         }
      }
      
      mx_internal function get phase() : String
      {
         return _phase;
      }
      
      override public function set enabled(value:Boolean) : void
      {
         if(super.enabled == value)
         {
            return;
         }
         super.enabled = value;
         enabledChanged = true;
         invalidateProperties();
         invalidateDisplayList();
      }
      
      override protected function measure() : void
      {
         var lineMetrics:TextLineMetrics = null;
         if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
         {
            previousVersion_measure();
            return;
         }
         super.measure();
         var textWidth:Number = 0;
         var textHeight:Number = 0;
         if(label)
         {
            lineMetrics = measureText(label);
            textWidth = lineMetrics.width + TEXT_WIDTH_PADDING;
            textHeight = lineMetrics.height + UITextField.TEXT_HEIGHT_PADDING;
         }
         var tempCurrentIcon:IFlexDisplayObject = getCurrentIcon();
         var iconWidth:Number = !!tempCurrentIcon?Number(tempCurrentIcon.width):Number(0);
         var iconHeight:Number = !!tempCurrentIcon?Number(tempCurrentIcon.height):Number(0);
         var w:Number = 0;
         var h:Number = 0;
         if(labelPlacement == ButtonLabelPlacement.LEFT || labelPlacement == ButtonLabelPlacement.RIGHT)
         {
            w = textWidth + iconWidth;
            if(textWidth && iconWidth)
            {
               w = w + getStyle("horizontalGap");
            }
            h = Math.max(textHeight,iconHeight);
         }
         else
         {
            w = Math.max(textWidth,iconWidth);
            h = textHeight + iconHeight;
            if(textHeight && iconHeight)
            {
               h = h + getStyle("verticalGap");
            }
         }
         if(textWidth || iconWidth)
         {
            w = w + (getStyle("paddingLeft") + getStyle("paddingRight"));
            h = h + (getStyle("paddingTop") + getStyle("paddingBottom"));
         }
         var bm:EdgeMetrics = currentSkin && currentSkin is IBorder && !(currentSkin is IFlexAsset)?IBorder(currentSkin).borderMetrics:null;
         if(bm)
         {
            w = w + (bm.left + bm.right);
            h = h + (bm.top + bm.bottom);
         }
         if(currentSkin && (isNaN(skinMeasuredWidth) || isNaN(skinMeasuredHeight)))
         {
            skinMeasuredWidth = currentSkin.measuredWidth;
            skinMeasuredHeight = currentSkin.measuredHeight;
         }
         if(!isNaN(skinMeasuredWidth))
         {
            w = Math.max(skinMeasuredWidth,w);
         }
         if(!isNaN(skinMeasuredHeight))
         {
            h = Math.max(skinMeasuredHeight,h);
         }
         measuredMinWidth = measuredWidth = w;
         measuredMinHeight = measuredHeight = h;
      }
      
      [Bindable("toggleChanged")]
      public function get toggle() : Boolean
      {
         return _toggle;
      }
      
      mx_internal function buttonReleased() : void
      {
         systemManager.getSandboxRoot().removeEventListener(MouseEvent.MOUSE_UP,systemManager_mouseUpHandler,true);
         systemManager.getSandboxRoot().removeEventListener(SandboxMouseEvent.MOUSE_UP_SOMEWHERE,stage_mouseLeaveHandler);
         if(autoRepeatTimer)
         {
            autoRepeatTimer.removeEventListener(TimerEvent.TIMER,autoRepeatTimer_timerDelayHandler);
            autoRepeatTimer.removeEventListener(TimerEvent.TIMER,autoRepeatTimer_timerHandler);
            autoRepeatTimer.reset();
         }
      }
      
      mx_internal function buttonPressed() : void
      {
         phase = ButtonPhase.DOWN;
         dispatchEvent(new FlexEvent(FlexEvent.BUTTON_DOWN));
         if(autoRepeat)
         {
            autoRepeatTimer.delay = getStyle("repeatDelay");
            autoRepeatTimer.addEventListener(TimerEvent.TIMER,autoRepeatTimer_timerDelayHandler);
            autoRepeatTimer.start();
         }
      }
      
      override protected function keyUpHandler(event:KeyboardEvent) : void
      {
         if(!enabled)
         {
            return;
         }
         if(event.keyCode == Keyboard.SPACE)
         {
            buttonReleased();
            if(phase == ButtonPhase.DOWN)
            {
               dispatchEvent(new MouseEvent(MouseEvent.CLICK));
            }
            phase = ButtonPhase.UP;
         }
      }
      
      [Bindable("valueCommit")]
      [Bindable("click")]
      public function get selected() : Boolean
      {
         return _selected;
      }
      
      public function set labelPlacement(value:String) : void
      {
         _labelPlacement = value;
         invalidateSize();
         invalidateDisplayList();
         dispatchEvent(new Event("labelPlacementChanged"));
      }
      
      protected function clickHandler(event:MouseEvent) : void
      {
         if(!enabled)
         {
            event.stopImmediatePropagation();
            return;
         }
         if(toggle)
         {
            setSelected(!selected);
            event.updateAfterEvent();
         }
      }
      
      override protected function initializeAccessibility() : void
      {
         if(Button.createAccessibilityImplementation != null)
         {
            Button.createAccessibilityImplementation(this);
         }
      }
      
      public function set toggle(value:Boolean) : void
      {
         _toggle = value;
         toggleChanged = true;
         invalidateProperties();
         invalidateDisplayList();
         dispatchEvent(new Event("toggleChanged"));
      }
      
      override public function get baselinePosition() : Number
      {
         var t:String = null;
         var lineMetrics:TextLineMetrics = null;
         if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
         {
            t = label;
            if(!t)
            {
               t = "Wj";
            }
            validateNow();
            if(!label && (labelPlacement == ButtonLabelPlacement.TOP || labelPlacement == ButtonLabelPlacement.BOTTOM))
            {
               lineMetrics = measureText(t);
               return (measuredHeight - lineMetrics.height) / 2 + lineMetrics.ascent;
            }
            return textField.y + measureText(t).ascent;
         }
         if(!validateBaselinePosition())
         {
            return NaN;
         }
         return textField.y + textField.baselinePosition;
      }
      
      [Bindable("dataChange")]
      public function get data() : Object
      {
         return _data;
      }
      
      public function set fontContext(moduleFactory:IFlexModuleFactory) : void
      {
         this.moduleFactory = moduleFactory;
      }
      
      mx_internal function viewSkin() : void
      {
         var tempSkinName:String = null;
         var stateName:String = null;
         if(!enabled)
         {
            tempSkinName = !!selected?selectedDisabledSkinName:disabledSkinName;
            stateName = !!selected?"selectedDisabled":"disabled";
         }
         else if(phase == ButtonPhase.UP)
         {
            tempSkinName = !!selected?selectedUpSkinName:upSkinName;
            stateName = !!selected?"selectedUp":"up";
         }
         else if(phase == ButtonPhase.OVER)
         {
            tempSkinName = !!selected?selectedOverSkinName:overSkinName;
            stateName = !!selected?"selectedOver":"over";
         }
         else if(phase == ButtonPhase.DOWN)
         {
            tempSkinName = !!selected?selectedDownSkinName:downSkinName;
            stateName = !!selected?"selectedDown":"down";
         }
         viewSkinForPhase(tempSkinName,stateName);
      }
      
      override public function styleChanged(styleProp:String) : void
      {
         styleChangedFlag = true;
         super.styleChanged(styleProp);
         if(!styleProp || styleProp == "styleName")
         {
            changeSkins();
            changeIcons();
            if(initialized)
            {
               viewSkin();
               viewIcon();
            }
         }
         else if(styleProp.toLowerCase().indexOf("skin") != -1)
         {
            changeSkins();
         }
         else if(styleProp.toLowerCase().indexOf("icon") != -1)
         {
            changeIcons();
            invalidateSize();
         }
      }
      
      public function set emphasized(value:Boolean) : void
      {
         _emphasized = value;
         emphasizedChanged = true;
         invalidateDisplayList();
      }
      
      mx_internal function viewIcon() : void
      {
         var tempIconName:String = getCurrentIconName();
         viewIconForPhase(tempIconName);
      }
      
      override public function set toolTip(value:String) : void
      {
         super.toolTip = value;
         if(value)
         {
            toolTipSet = true;
         }
         else
         {
            toolTipSet = false;
            invalidateDisplayList();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(hasFontContextChanged() && textField != null)
         {
            removeChild(DisplayObject(textField));
            textField = null;
         }
         if(!textField)
         {
            textField = IUITextField(createInFontContext(UITextField));
            textField.styleName = this;
            addChild(DisplayObject(textField));
            enabledChanged = true;
            toggleChanged = true;
         }
         if(!initialized)
         {
            viewSkin();
            viewIcon();
         }
         if(enabledChanged)
         {
            textField.enabled = enabled;
            if(currentIcon && currentIcon is IUIComponent)
            {
               IUIComponent(currentIcon).enabled = enabled;
            }
            enabledChanged = false;
         }
         if(toggleChanged)
         {
            if(!toggle)
            {
               selected = false;
            }
            toggleChanged = false;
         }
      }
      
      mx_internal function changeSkins() : void
      {
         var n:int = skins.length;
         for(var i:int = 0; i < n; i++)
         {
            removeChild(skins[i]);
         }
         skins = [];
         skinMeasuredWidth = NaN;
         skinMeasuredHeight = NaN;
         checkedDefaultSkin = false;
         defaultSkinUsesStates = false;
         if(initialized && FlexVersion.compatibilityVersion >= FlexVersion.VERSION_3_0)
         {
            viewSkin();
            invalidateSize();
         }
      }
      
      private function autoRepeatTimer_timerHandler(event:Event) : void
      {
         if(!enabled)
         {
            return;
         }
         dispatchEvent(new FlexEvent(FlexEvent.BUTTON_DOWN));
      }
      
      private function previousVersion_layoutContents(unscaledWidth:Number, unscaledHeight:Number, offset:Boolean) : void
      {
         var lineMetrics:TextLineMetrics = null;
         var disp:Number = NaN;
         var moveEvent:MoveEvent = null;
         var labelWidth:Number = 0;
         var labelHeight:Number = 0;
         var labelX:Number = 0;
         var labelY:Number = 0;
         var iconWidth:Number = 0;
         var iconHeight:Number = 0;
         var iconX:Number = 0;
         var iconY:Number = 0;
         var horizontalGap:Number = 2;
         var verticalGap:Number = 2;
         var paddingLeft:Number = getStyle("paddingLeft");
         var paddingRight:Number = getStyle("paddingRight");
         var paddingTop:Number = getStyle("paddingTop");
         var paddingBottom:Number = getStyle("paddingBottom");
         var textWidth:Number = 0;
         var textHeight:Number = 0;
         if(label)
         {
            lineMetrics = measureText(label);
            if(lineMetrics.width > 0)
            {
               textWidth = paddingLeft + paddingRight + getStyle("textIndent") + lineMetrics.width;
            }
            textHeight = lineMetrics.height;
         }
         else
         {
            lineMetrics = measureText("Wj");
            textHeight = lineMetrics.height;
         }
         var n:Number = !!offset?Number(buttonOffset):Number(0);
         var textAlign:String = getStyle("textAlign");
         var bm:EdgeMetrics = currentSkin && currentSkin is IRectangularBorder?IRectangularBorder(currentSkin).borderMetrics:null;
         var viewWidth:Number = unscaledWidth;
         var viewHeight:Number = unscaledHeight - paddingTop - paddingBottom;
         if(bm)
         {
            viewWidth = viewWidth - (bm.left + bm.right);
            viewHeight = viewHeight - (bm.top + bm.bottom);
         }
         if(currentIcon)
         {
            iconWidth = currentIcon.width;
            iconHeight = currentIcon.height;
         }
         if(labelPlacement == ButtonLabelPlacement.LEFT || labelPlacement == ButtonLabelPlacement.RIGHT)
         {
            horizontalGap = getStyle("horizontalGap");
            if(iconWidth == 0 || textWidth == 0)
            {
               horizontalGap = 0;
            }
            if(textWidth > 0)
            {
               textField.width = labelWidth = Math.max(viewWidth - iconWidth - horizontalGap - paddingLeft - paddingRight,0);
            }
            else
            {
               textField.width = labelWidth = 0;
            }
            textField.height = labelHeight = Math.min(viewHeight + 2,textHeight + UITextField.TEXT_HEIGHT_PADDING);
            if(labelPlacement == ButtonLabelPlacement.RIGHT)
            {
               labelX = iconWidth + horizontalGap;
               if(centerContent)
               {
                  if(textAlign == "left")
                  {
                     labelX = labelX + paddingLeft;
                  }
                  else if(textAlign == "right")
                  {
                     labelX = labelX + (viewWidth - labelWidth - iconWidth - horizontalGap - paddingLeft);
                  }
                  else
                  {
                     disp = (viewWidth - labelWidth - iconWidth - horizontalGap) / 2;
                     labelX = labelX + Math.max(disp,paddingLeft);
                  }
               }
               iconX = labelX - (iconWidth + horizontalGap);
               if(!centerContent)
               {
                  labelX = labelX + paddingLeft;
               }
            }
            else
            {
               labelX = viewWidth - labelWidth - iconWidth - horizontalGap - paddingRight;
               if(centerContent)
               {
                  if(textAlign == "left")
                  {
                     labelX = 2;
                  }
                  else if(textAlign == "right")
                  {
                     labelX--;
                  }
                  else if(labelX > 0)
                  {
                     labelX = labelX / 2;
                  }
               }
               iconX = labelX + labelWidth + horizontalGap;
            }
            iconY = labelY = 0;
            if(centerContent)
            {
               iconY = Math.round((viewHeight - iconHeight) / 2) + paddingTop;
               labelY = Math.round((viewHeight - labelHeight) / 2) + paddingTop;
            }
            else
            {
               labelY = labelY + (Math.max(0,(viewHeight - labelHeight) / 2) + paddingTop);
               iconY = iconY + (Math.max(0,(viewHeight - iconHeight) / 2 - 1) + paddingTop);
            }
         }
         else
         {
            verticalGap = getStyle("verticalGap");
            if(iconHeight == 0 || textHeight == 0)
            {
               verticalGap = 0;
            }
            if(textWidth > 0)
            {
               textField.width = labelWidth = Math.min(viewWidth,textWidth + UITextField.TEXT_WIDTH_PADDING);
               textField.height = labelHeight = Math.min(viewHeight - iconHeight + 1,textHeight + 5);
            }
            else
            {
               textField.width = labelWidth = 0;
               textField.height = labelHeight = 0;
            }
            labelX = (viewWidth - labelWidth) / 2;
            iconX = (viewWidth - iconWidth) / 2;
            if(labelPlacement == ButtonLabelPlacement.TOP)
            {
               labelY = viewHeight - labelHeight - iconHeight - verticalGap;
               if(centerContent && labelY > 0)
               {
                  labelY = labelY / 2;
               }
               labelY = labelY + paddingTop;
               iconY = labelY + labelHeight + verticalGap - 3;
            }
            else
            {
               labelY = iconHeight + verticalGap + paddingTop;
               if(centerContent)
               {
                  labelY = labelY + ((viewHeight - labelHeight - iconHeight - verticalGap) / 2 + 1);
               }
               iconY = labelY - iconHeight - verticalGap + 3;
            }
         }
         var buffX:Number = n;
         var buffY:Number = n;
         if(bm)
         {
            buffX = buffX + bm.left;
            buffY = buffY + bm.top;
         }
         textField.x = labelX + buffX;
         textField.y = labelY + buffY;
         if(currentIcon)
         {
            iconX = iconX + buffX;
            iconY = iconY + buffY;
            moveEvent = new MoveEvent(MoveEvent.MOVE);
            moveEvent.oldX = currentIcon.x;
            moveEvent.oldY = currentIcon.y;
            currentIcon.x = Math.round(iconX);
            currentIcon.y = Math.round(iconY);
            currentIcon.dispatchEvent(moveEvent);
         }
         if(currentSkin)
         {
            setChildIndex(DisplayObject(currentSkin),numChildren - 1);
         }
         if(currentIcon)
         {
            setChildIndex(DisplayObject(currentIcon),numChildren - 1);
         }
         if(textField)
         {
            setChildIndex(DisplayObject(textField),numChildren - 1);
         }
      }
      
      private function systemManager_mouseUpHandler(event:MouseEvent) : void
      {
         if(contains(DisplayObject(event.target)))
         {
            return;
         }
         phase = ButtonPhase.UP;
         buttonReleased();
         event.updateAfterEvent();
      }
      
      public function set label(value:String) : void
      {
         labelSet = true;
         if(_label != value)
         {
            _label = value;
            labelChanged = true;
            invalidateSize();
            invalidateDisplayList();
            dispatchEvent(new Event("labelChanged"));
         }
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         var skin:IFlexDisplayObject = null;
         var truncated:Boolean = false;
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         if(emphasizedChanged)
         {
            changeSkins();
            emphasizedChanged = false;
         }
         var n:int = skins.length;
         for(var i:int = 0; i < n; i++)
         {
            skin = IFlexDisplayObject(skins[i]);
            skin.setActualSize(unscaledWidth,unscaledHeight);
         }
         viewSkin();
         viewIcon();
         layoutContents(unscaledWidth,unscaledHeight,phase == ButtonPhase.DOWN);
         if(oldUnscaledWidth > unscaledWidth || textField.text != label || labelChanged || styleChangedFlag)
         {
            textField.text = label;
            truncated = textField.truncateToFit();
            if(!toolTipSet)
            {
               if(truncated)
               {
                  super.toolTip = label;
               }
               else
               {
                  super.toolTip = null;
               }
            }
            styleChangedFlag = false;
            labelChanged = false;
         }
         oldUnscaledWidth = unscaledWidth;
      }
      
      private function stage_mouseLeaveHandler(event:Event) : void
      {
         phase = ButtonPhase.UP;
         buttonReleased();
      }
      
      public function set listData(value:BaseListData) : void
      {
         _listData = value;
      }
   }
}
