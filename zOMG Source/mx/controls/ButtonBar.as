package mx.controls
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.EventPhase;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import mx.containers.BoxDirection;
   import mx.controls.buttonBarClasses.ButtonBarButton;
   import mx.core.ClassFactory;
   import mx.core.EdgeMetrics;
   import mx.core.IFlexDisplayObject;
   import mx.core.IUIComponent;
   import mx.core.mx_internal;
   import mx.events.ChildExistenceChangedEvent;
   import mx.managers.IFocusManagerComponent;
   import mx.styles.StyleManager;
   
   use namespace mx_internal;
   
   public class ButtonBar extends NavBar implements IFocusManagerComponent
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      mx_internal var simulatedClickTriggerEvent:Event = null;
      
      mx_internal var focusedIndex:int = 0;
      
      private var directionChanged:Boolean = false;
      
      mx_internal var buttonWidthProp:String = "buttonWidth";
      
      private var oldUnscaledHeight:Number;
      
      mx_internal var buttonStyleNameProp:String = "buttonStyleName";
      
      mx_internal var lastButtonStyleNameProp:String = "lastButtonStyleName";
      
      private var recalcButtonWidths:Boolean = false;
      
      private var oldUnscaledWidth:Number;
      
      private var recalcButtonHeights:Boolean = false;
      
      mx_internal var buttonHeightProp:String = "buttonHeight";
      
      mx_internal var firstButtonStyleNameProp:String = "firstButtonStyleName";
      
      public function ButtonBar()
      {
         super();
         tabEnabled = true;
         navItemFactory = new ClassFactory(ButtonBarButton);
         addEventListener("scaleXChanged",scaleChangedHandler);
         addEventListener("scaleYChanged",scaleChangedHandler);
         addEventListener(ChildExistenceChangedEvent.CHILD_REMOVE,childRemoveHandler);
      }
      
      override public function get borderMetrics() : EdgeMetrics
      {
         return EdgeMetrics.EMPTY;
      }
      
      protected function resetButtonHeights() : void
      {
         var child:Button = null;
         for(var i:int = 0; i < numChildren; i++)
         {
            child = getChildAt(i) as Button;
            if(child)
            {
               child.explicitHeight = NaN;
               child.minHeight = NaN;
               child.maxHeight = NaN;
            }
         }
      }
      
      override protected function keyUpHandler(event:KeyboardEvent) : void
      {
         var child:Button = null;
         if(event.eventPhase != EventPhase.AT_TARGET)
         {
            return;
         }
         switch(event.keyCode)
         {
            case Keyboard.SPACE:
               if(focusedIndex != -1)
               {
                  child = Button(getChildAt(focusedIndex));
                  child.dispatchEvent(event);
               }
               event.stopPropagation();
         }
      }
      
      mx_internal function nextIndex(index:int) : int
      {
         var n:int = numChildren;
         if(n == 0)
         {
            return -1;
         }
         return index == n - 1?0:int(index + 1);
      }
      
      private function calcFullWidth() : Number
      {
         var w:Number = NaN;
         var cw:Number = NaN;
         var n:int = numChildren;
         var gap:Number = 0;
         if(n == 0)
         {
            return 0;
         }
         if(n > 1)
         {
            gap = getStyle("horizontalGap");
         }
         var horizontal:* = direction == BoxDirection.HORIZONTAL;
         var buttonWidth:Number = getStyle(buttonWidthProp);
         var child:IUIComponent = IUIComponent(getChildAt(0));
         if(buttonWidth)
         {
            w = !!isNaN(child.explicitWidth)?Number(buttonWidth):Number(child.explicitWidth);
         }
         else
         {
            w = child.getExplicitOrMeasuredWidth();
         }
         for(var i:int = 1; i < n; i++)
         {
            child = IUIComponent(getChildAt(i));
            if(buttonWidth)
            {
               cw = !!isNaN(child.explicitWidth)?Number(buttonWidth):Number(child.explicitWidth);
            }
            else
            {
               cw = child.getExplicitOrMeasuredWidth();
            }
            if(horizontal)
            {
               w = w + (gap + cw);
            }
            else
            {
               w = Math.max(w,cw);
            }
         }
         return w;
      }
      
      override protected function clickHandler(event:MouseEvent) : void
      {
         if(simulatedClickTriggerEvent == null)
         {
            focusedIndex = getChildIndex(DisplayObject(event.currentTarget));
            drawButtonFocus(focusedIndex,true);
         }
         super.clickHandler(event);
      }
      
      override protected function createNavItem(label:String, icon:Class = null) : IFlexDisplayObject
      {
         var newButton:Button = Button(navItemFactory.newInstance());
         newButton.focusEnabled = false;
         newButton.label = label;
         newButton.setStyle("icon",icon);
         newButton.addEventListener(MouseEvent.CLICK,clickHandler);
         addChild(newButton);
         recalcButtonWidths = recalcButtonHeights = true;
         return newButton;
      }
      
      override public function styleChanged(styleProp:String) : void
      {
         var allStyles:Boolean = styleProp == null || styleProp == "styleName";
         super.styleChanged(styleProp);
         if(allStyles || styleProp == buttonStyleNameProp || styleProp == firstButtonStyleNameProp || styleProp == lastButtonStyleNameProp)
         {
            resetNavItems();
         }
         else if(styleProp == buttonWidthProp)
         {
            recalcButtonWidths = true;
         }
         else if(styleProp == buttonHeightProp)
         {
            recalcButtonHeights = true;
         }
         else if(StyleManager.isInheritingStyle(styleProp) && StyleManager.isSizeInvalidatingStyle(styleProp))
         {
            recalcButtonWidths = recalcButtonHeights = true;
         }
      }
      
      protected function resetButtonWidths() : void
      {
         var child:Button = null;
         for(var i:int = 0; i < numChildren; i++)
         {
            child = getChildAt(i) as Button;
            if(child)
            {
               child.explicitWidth = NaN;
               child.minWidth = NaN;
               child.maxWidth = NaN;
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         var n:int = 0;
         var i:int = 0;
         super.commitProperties();
         if(directionChanged)
         {
            directionChanged = false;
            n = numChildren;
            for(i = 0; i < n; i++)
            {
               Button(getChildAt(i)).changeSkins();
            }
         }
         if(recalcButtonHeights)
         {
            resetButtonHeights();
         }
         if(recalcButtonWidths)
         {
            resetButtonWidths();
         }
      }
      
      private function calcFullHeight() : Number
      {
         var gap:Number = NaN;
         var h:Number = NaN;
         var ch:Number = NaN;
         var n:int = numChildren;
         if(n == 0)
         {
            return 0;
         }
         if(n > 1)
         {
            gap = getStyle("verticalGap");
         }
         var vertical:* = direction == BoxDirection.VERTICAL;
         var buttonHeight:Number = getStyle(buttonHeightProp);
         var child:IUIComponent = IUIComponent(getChildAt(0));
         if(buttonHeight)
         {
            h = !!isNaN(child.explicitHeight)?Number(buttonHeight):Number(child.explicitHeight);
         }
         else
         {
            h = child.getExplicitOrMeasuredHeight();
         }
         for(var i:int = 1; i < n; i++)
         {
            child = IUIComponent(getChildAt(i));
            if(buttonHeight)
            {
               ch = !!isNaN(child.explicitHeight)?Number(buttonHeight):Number(child.explicitHeight);
            }
            else
            {
               ch = child.getExplicitOrMeasuredHeight();
            }
            if(vertical)
            {
               h = h + (gap + ch);
            }
            else
            {
               h = Math.max(h,ch);
            }
         }
         return h;
      }
      
      override protected function resetNavItems() : void
      {
         var button:Button = null;
         var buttonStyleName:String = getStyle(buttonStyleNameProp);
         var firstButtonStyleName:String = getStyle(firstButtonStyleNameProp);
         var lastButtonStyleName:String = getStyle(lastButtonStyleNameProp);
         if(!buttonStyleName)
         {
            buttonStyleName = "ButtonBarButton";
         }
         if(!firstButtonStyleName)
         {
            firstButtonStyleName = buttonStyleName;
         }
         if(!lastButtonStyleName)
         {
            lastButtonStyleName = buttonStyleName;
         }
         var n:int = numChildren;
         for(var i:int = 0; i < n; i++)
         {
            button = Button(getChildAt(i));
            if(i == 0)
            {
               button.styleName = firstButtonStyleName;
            }
            else if(i == n - 1)
            {
               button.styleName = lastButtonStyleName;
            }
            else
            {
               button.styleName = buttonStyleName;
            }
            button.changeSkins();
            button.invalidateDisplayList();
         }
         recalcButtonWidths = recalcButtonHeights = true;
         invalidateDisplayList();
      }
      
      override public function get viewMetrics() : EdgeMetrics
      {
         return EdgeMetrics.EMPTY;
      }
      
      mx_internal function prevIndex(index:int) : int
      {
         var n:int = numChildren;
         return index == 0?int(n - 1):int(index - 1);
      }
      
      private function scaleChangedHandler(event:Event) : void
      {
         resetButtonHeights();
         resetButtonWidths();
      }
      
      mx_internal function drawButtonFocus(index:int, focused:Boolean) : void
      {
         var b:Button = null;
         if(numChildren > 0 && index < numChildren)
         {
            b = Button(getChildAt(index));
            b.drawFocus(focused && focusManager.showFocusIndicator);
            if(focused)
            {
               dispatchEvent(new Event("focusDraw"));
            }
            if(!focused && b.phase != ButtonPhase.UP)
            {
               b.phase = ButtonPhase.UP;
            }
         }
      }
      
      override protected function keyDownHandler(event:KeyboardEvent) : void
      {
         var child:Button = null;
         if(event.eventPhase != EventPhase.AT_TARGET)
         {
            return;
         }
         switch(event.keyCode)
         {
            case Keyboard.DOWN:
            case Keyboard.RIGHT:
               focusManager.showFocusIndicator = true;
               drawButtonFocus(focusedIndex,false);
               focusedIndex = nextIndex(focusedIndex);
               if(focusedIndex != -1)
               {
                  drawButtonFocus(focusedIndex,true);
               }
               event.stopPropagation();
               break;
            case Keyboard.UP:
            case Keyboard.LEFT:
               focusManager.showFocusIndicator = true;
               drawButtonFocus(focusedIndex,false);
               focusedIndex = prevIndex(focusedIndex);
               if(focusedIndex != -1)
               {
                  drawButtonFocus(focusedIndex,true);
               }
               event.stopPropagation();
               break;
            case Keyboard.SPACE:
               if(focusedIndex != -1)
               {
                  child = Button(getChildAt(focusedIndex));
                  child.dispatchEvent(event);
               }
               event.stopPropagation();
         }
      }
      
      override protected function measure() : void
      {
         var vm:EdgeMetrics = null;
         super.measure();
         vm = viewMetricsAndPadding;
         measuredWidth = calcFullWidth() + vm.left + vm.right;
         measuredHeight = calcFullHeight() + vm.top + vm.bottom;
         if(getStyle(buttonWidthProp))
         {
            measuredMinWidth = measuredWidth;
         }
         if(getStyle(buttonHeightProp))
         {
            measuredMinHeight = measuredHeight;
         }
      }
      
      private function childRemoveHandler(event:ChildExistenceChangedEvent) : void
      {
         var button:Button = null;
         var child:DisplayObject = event.relatedObject;
         var index:int = getChildIndex(child);
         var n:int = numChildren;
         if(n < 2)
         {
            return;
         }
         var buttonStyleName:String = getStyle(buttonStyleNameProp);
         var firstButtonStyleName:String = getStyle(firstButtonStyleNameProp);
         var lastButtonStyleName:String = getStyle(lastButtonStyleNameProp);
         if(!buttonStyleName)
         {
            buttonStyleName = "buttonBarButtonStyle";
         }
         if(!firstButtonStyleName)
         {
            firstButtonStyleName = buttonStyleName;
         }
         if(!lastButtonStyleName)
         {
            lastButtonStyleName = buttonStyleName;
         }
         if(index == 0 || index == n - 1)
         {
            button = Button(getChildAt(index == n - 1?int(n - 2):0));
            button.styleName = index == 0?firstButtonStyleName:lastButtonStyleName;
            button.changeSkins();
            button.invalidateDisplayList();
         }
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         var isHorizontal:* = false;
         var i:int = 0;
         var c:Button = null;
         var excessSpace:Number = NaN;
         var averageWidth:int = 0;
         var nLarge:int = 0;
         var tw:Number = NaN;
         var tSmall:int = 0;
         var mw:int = 0;
         var assignedWidth:int = 0;
         var th:Number = NaN;
         isHorizontal = direction == BoxDirection.HORIZONTAL;
         var isVertical:* = !isHorizontal;
         var buttonWidth:Number = getStyle(buttonWidthProp);
         var buttonHeightStyle:Number = getStyle(buttonHeightProp);
         var buttonHeight:Number = buttonHeightStyle;
         var vm:EdgeMetrics = viewMetricsAndPadding;
         var n:int = numChildren;
         var horizontalGap:Number = getStyle("horizontalGap");
         var verticalGap:Number = getStyle("verticalGap");
         var totalHorizontalGap:Number = isHorizontal && numChildren > 0?Number(horizontalGap * (n - 1)):Number(0);
         var totalVerticalGap:Number = isVertical && numChildren > 0?Number(verticalGap * (n - 1)):Number(0);
         var w:Number = unscaledWidth - vm.left - vm.right - totalHorizontalGap;
         var h:Number = unscaledHeight - vm.top - vm.bottom - totalVerticalGap;
         if(!w || !h)
         {
            return;
         }
         if(border)
         {
            border.visible = false;
         }
         if(unscaledWidth != oldUnscaledWidth)
         {
            recalcButtonWidths = true;
            oldUnscaledWidth = unscaledWidth;
         }
         if(unscaledHeight != oldUnscaledHeight)
         {
            recalcButtonHeights = true;
            oldUnscaledHeight = unscaledHeight;
         }
         if(recalcButtonWidths)
         {
            recalcButtonWidths = false;
            if(isNaN(buttonWidth) && isVertical)
            {
               buttonWidth = w;
            }
            excessSpace = w - (calcFullWidth() - totalHorizontalGap);
            averageWidth = n > 0?int(w / n):0;
            nLarge = 0;
            tw = 0;
            tSmall = 0;
            if(excessSpace != 0 && isHorizontal)
            {
               for(i = 0; i < n; i++)
               {
                  c = Button(getChildAt(i));
                  if(isNaN(c.explicitWidth))
                  {
                     mw = c.measuredWidth;
                     tw = tw + mw;
                     if(mw > averageWidth)
                     {
                        nLarge++;
                     }
                     else
                     {
                        tSmall = tSmall + mw;
                     }
                  }
               }
            }
            else
            {
               tw = w;
            }
            for(i = 0; i < n; i++)
            {
               c = Button(getChildAt(i));
               if(isNaN(c.explicitWidth))
               {
                  c.minWidth = 0;
                  if(!isNaN(buttonWidth))
                  {
                     c.minWidth = c.maxWidth = buttonWidth;
                     c.percentWidth = buttonWidth / Math.min(w,tw) * 100;
                  }
                  else if(excessSpace < 0)
                  {
                     assignedWidth = c.measuredWidth;
                     if(assignedWidth > averageWidth)
                     {
                        assignedWidth = (w - tSmall) / nLarge;
                     }
                     c.percentWidth = Number(assignedWidth) / w * 100;
                  }
                  else if(excessSpace > 0)
                  {
                     c.percentWidth = c.measuredWidth / tw * 100;
                  }
                  else
                  {
                     c.percentWidth = NaN;
                  }
                  if(isVertical)
                  {
                     c.percentWidth = 100;
                  }
               }
            }
         }
         if(recalcButtonHeights)
         {
            recalcButtonHeights = false;
            if(isNaN(buttonHeight) && isHorizontal)
            {
               buttonHeight = h;
            }
            excessSpace = h - (calcFullHeight() - totalVerticalGap);
            th = 0;
            if(excessSpace != 0 && isVertical)
            {
               for(i = 0; i < n; i++)
               {
                  c = Button(getChildAt(i));
                  if(isNaN(c.explicitHeight))
                  {
                     th = th + c.measuredHeight;
                  }
               }
            }
            for(i = 0; i < n; i++)
            {
               c = Button(getChildAt(i));
               if(isNaN(c.explicitHeight))
               {
                  c.minHeight = 0;
                  if(!isNaN(buttonHeight))
                  {
                     c.minHeight = buttonHeight;
                     c.percentHeight = buttonHeight / Math.min(th,h) * 100;
                  }
                  if(!isNaN(buttonHeightStyle))
                  {
                     c.maxHeight = buttonHeightStyle;
                  }
                  if(isHorizontal)
                  {
                     c.percentHeight = 100;
                  }
                  else if(excessSpace < 0)
                  {
                     c.percentHeight = c.measuredHeight / th * 100;
                  }
                  else if(excessSpace > 0)
                  {
                     c.percentHeight = c.measuredHeight / th * 100;
                  }
                  else
                  {
                     c.percentHeight = NaN;
                  }
               }
            }
         }
         super.updateDisplayList(unscaledWidth,unscaledHeight);
      }
      
      override public function drawFocus(isFocused:Boolean) : void
      {
         drawButtonFocus(focusedIndex,isFocused);
      }
      
      [Bindable("directionChanged")]
      override public function set direction(value:String) : void
      {
         if(initialized && value != direction)
         {
            directionChanged = true;
            invalidateProperties();
         }
         super.direction = value;
      }
   }
}
