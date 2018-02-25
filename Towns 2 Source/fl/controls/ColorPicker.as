package fl.controls
{
   import fl.core.InvalidationType;
   import fl.core.UIComponent;
   import fl.events.ColorPickerEvent;
   import fl.managers.IFocusManager;
   import fl.managers.IFocusManagerComponent;
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.ui.Keyboard;
   
   public class ColorPicker extends UIComponent implements IFocusManagerComponent
   {
      
      public static var defaultColors:Array;
      
      private static var defaultStyles:Object = {
         "upSkin":"ColorPicker_upSkin",
         "disabledSkin":"ColorPicker_disabledSkin",
         "overSkin":"ColorPicker_overSkin",
         "downSkin":"ColorPicker_downSkin",
         "colorWell":"ColorPicker_colorWell",
         "swatchSkin":"ColorPicker_swatchSkin",
         "swatchSelectedSkin":"ColorPicker_swatchSelectedSkin",
         "swatchWidth":10,
         "swatchHeight":10,
         "columnCount":18,
         "swatchPadding":1,
         "textFieldSkin":"ColorPicker_textFieldSkin",
         "textFieldWidth":null,
         "textFieldHeight":null,
         "textPadding":3,
         "background":"ColorPicker_backgroundSkin",
         "backgroundPadding":5,
         "textFormat":null,
         "focusRectSkin":null,
         "focusRectPadding":null,
         "embedFonts":false
      };
      
      protected static const POPUP_BUTTON_STYLES:Object = {
         "disabledSkin":"disabledSkin",
         "downSkin":"downSkin",
         "overSkin":"overSkin",
         "upSkin":"upSkin"
      };
      
      protected static const SWATCH_STYLES:Object = {
         "disabledSkin":"swatchSkin",
         "downSkin":"swatchSkin",
         "overSkin":"swatchSkin",
         "upSkin":"swatchSkin"
      };
       
      
      public var textField:TextField;
      
      protected var customColors:Array;
      
      protected var colorHash:Object;
      
      protected var paletteBG:DisplayObject;
      
      protected var selectedSwatch:Sprite;
      
      protected var _selectedColor:uint;
      
      protected var rollOverColor:int = -1;
      
      protected var _editable:Boolean = true;
      
      protected var _showTextField:Boolean = true;
      
      protected var isOpen:Boolean = false;
      
      protected var doOpen:Boolean = false;
      
      protected var swatchButton:BaseButton;
      
      protected var colorWell:DisplayObject;
      
      protected var swatchSelectedSkin:DisplayObject;
      
      protected var palette:Sprite;
      
      protected var textFieldBG:DisplayObject;
      
      protected var swatches:Sprite;
      
      protected var swatchMap:Array;
      
      protected var currRowIndex:int;
      
      protected var currColIndex:int;
      
      public function ColorPicker()
      {
         super();
      }
      
      public static function getStyleDefinition() : Object
      {
         return defaultStyles;
      }
      
      public function get selectedColor() : uint
      {
         if(colorWell == null)
         {
            return 0;
         }
         return colorWell.transform.colorTransform.color;
      }
      
      public function set selectedColor(param1:uint) : void
      {
         if(!_enabled)
         {
            return;
         }
         _selectedColor = param1;
         rollOverColor = -1;
         currColIndex = currRowIndex = 0;
         var _loc2_:ColorTransform = new ColorTransform();
         _loc2_.color = param1;
         setColorWellColor(_loc2_);
         invalidate(InvalidationType.DATA);
      }
      
      public function get hexValue() : String
      {
         if(colorWell == null)
         {
            return colorToString(0);
         }
         return colorToString(colorWell.transform.colorTransform.color);
      }
      
      override public function get enabled() : Boolean
      {
         return super.enabled;
      }
      
      override public function set enabled(param1:Boolean) : void
      {
         super.enabled = param1;
         if(!param1)
         {
            close();
         }
         swatchButton.enabled = param1;
      }
      
      public function get editable() : Boolean
      {
         return _editable;
      }
      
      public function set editable(param1:Boolean) : void
      {
         _editable = param1;
         invalidate(InvalidationType.STATE);
      }
      
      public function get showTextField() : Boolean
      {
         return _showTextField;
      }
      
      public function set showTextField(param1:Boolean) : void
      {
         invalidate(InvalidationType.STYLES);
         _showTextField = param1;
      }
      
      public function get colors() : Array
      {
         return customColors != null?customColors:ColorPicker.defaultColors;
      }
      
      public function set colors(param1:Array) : void
      {
         customColors = param1;
         invalidate(InvalidationType.DATA);
      }
      
      public function get imeMode() : String
      {
         return _imeMode;
      }
      
      public function set imeMode(param1:String) : void
      {
         _imeMode = param1;
      }
      
      public function open() : void
      {
         if(!_enabled)
         {
            return;
         }
         doOpen = true;
         var _loc1_:IFocusManager = focusManager;
         if(_loc1_)
         {
            _loc1_.defaultButtonEnabled = false;
         }
         invalidate(InvalidationType.STATE);
      }
      
      public function close() : void
      {
         if(isOpen)
         {
            stage.removeChild(palette);
            isOpen = false;
            dispatchEvent(new Event(Event.CLOSE));
         }
         var _loc1_:IFocusManager = focusManager;
         if(_loc1_)
         {
            _loc1_.defaultButtonEnabled = true;
         }
         removeStageListener();
         cleanUpSelected();
      }
      
      private function addCloseListener(param1:Event) : *
      {
         removeEventListener(Event.ENTER_FRAME,addCloseListener);
         if(!isOpen)
         {
            return;
         }
         addStageListener();
      }
      
      protected function onStageClick(param1:MouseEvent) : void
      {
         if(!contains(param1.target as DisplayObject) && !palette.contains(param1.target as DisplayObject))
         {
            selectedColor = _selectedColor;
            close();
         }
      }
      
      protected function setStyles() : void
      {
         var _loc1_:DisplayObject = colorWell;
         var _loc2_:Object = getStyleValue("colorWell");
         if(_loc2_ != null)
         {
            colorWell = getDisplayObjectInstance(_loc2_) as DisplayObject;
         }
         addChildAt(colorWell,getChildIndex(swatchButton));
         copyStylesToChild(swatchButton,POPUP_BUTTON_STYLES);
         swatchButton.drawNow();
         if(_loc1_ != null && contains(_loc1_) && _loc1_ != colorWell)
         {
            removeChild(_loc1_);
         }
      }
      
      protected function cleanUpSelected() : void
      {
         if(swatchSelectedSkin && palette.contains(swatchSelectedSkin))
         {
            palette.removeChild(swatchSelectedSkin);
         }
      }
      
      protected function onPopupButtonClick(param1:MouseEvent) : void
      {
         if(isOpen)
         {
            close();
         }
         else
         {
            open();
         }
      }
      
      override protected function draw() : void
      {
         if(isInvalid(InvalidationType.STYLES,InvalidationType.DATA))
         {
            setStyles();
            drawPalette();
            setEmbedFonts();
            invalidate(InvalidationType.DATA,false);
            invalidate(InvalidationType.STYLES,false);
         }
         if(isInvalid(InvalidationType.DATA))
         {
            drawSwatchHighlight();
            setColorDisplay();
         }
         if(isInvalid(InvalidationType.STATE))
         {
            setTextEditable();
            if(doOpen)
            {
               doOpen = false;
               showPalette();
            }
            colorWell.visible = enabled;
         }
         if(isInvalid(InvalidationType.SIZE,InvalidationType.STYLES))
         {
            swatchButton.setSize(width,height);
            swatchButton.drawNow();
            colorWell.width = width;
            colorWell.height = height;
         }
         super.draw();
      }
      
      protected function showPalette() : void
      {
         if(isOpen)
         {
            positionPalette();
            return;
         }
         addEventListener(Event.ENTER_FRAME,addCloseListener,false,0,true);
         stage.addChild(palette);
         isOpen = true;
         positionPalette();
         dispatchEvent(new Event(Event.OPEN));
         stage.focus = textField;
         var _loc1_:Sprite = selectedSwatch;
         if(_loc1_ == null)
         {
            _loc1_ = findSwatch(_selectedColor);
         }
         setSwatchHighlight(_loc1_);
      }
      
      protected function setEmbedFonts() : void
      {
         var _loc1_:Object = getStyleValue("embedFonts");
         if(_loc1_ != null)
         {
            textField.embedFonts = _loc1_;
         }
      }
      
      protected function drawSwatchHighlight() : void
      {
         cleanUpSelected();
         var _loc1_:Object = getStyleValue("swatchSelectedSkin");
         var _loc2_:Number = getStyleValue("swatchPadding") as Number;
         if(_loc1_ != null)
         {
            swatchSelectedSkin = getDisplayObjectInstance(_loc1_);
            swatchSelectedSkin.x = 0;
            swatchSelectedSkin.y = 0;
            swatchSelectedSkin.width = (getStyleValue("swatchWidth") as Number) + 2;
            swatchSelectedSkin.height = (getStyleValue("swatchHeight") as Number) + 2;
         }
      }
      
      protected function drawPalette() : void
      {
         if(isOpen)
         {
            stage.removeChild(palette);
         }
         palette = new Sprite();
         drawTextField();
         drawSwatches();
         drawBG();
      }
      
      protected function drawTextField() : void
      {
         if(!showTextField)
         {
            return;
         }
         var _loc1_:Number = getStyleValue("backgroundPadding") as Number;
         var _loc2_:Number = getStyleValue("textPadding") as Number;
         textFieldBG = getDisplayObjectInstance(getStyleValue("textFieldSkin"));
         if(textFieldBG != null)
         {
            palette.addChild(textFieldBG);
            textFieldBG.x = textFieldBG.y = _loc1_;
         }
         var _loc3_:Object = UIComponent.getStyleDefinition();
         var _loc4_:TextFormat = !!enabled?_loc3_.defaultTextFormat as TextFormat:_loc3_.defaultDisabledTextFormat as TextFormat;
         textField.setTextFormat(_loc4_);
         var _loc5_:TextFormat = getStyleValue("textFormat") as TextFormat;
         if(_loc5_ != null)
         {
            textField.setTextFormat(_loc5_);
         }
         else
         {
            _loc5_ = _loc4_;
         }
         textField.defaultTextFormat = _loc5_;
         setEmbedFonts();
         textField.restrict = "A-Fa-f0-9#";
         textField.maxChars = 6;
         palette.addChild(textField);
         textField.text = " #888888 ";
         textField.height = textField.textHeight + 3;
         textField.width = textField.textWidth + 3;
         textField.text = "";
         textField.x = textField.y = _loc1_ + _loc2_;
         textFieldBG.width = textField.width + _loc2_ * 2;
         textFieldBG.height = textField.height + _loc2_ * 2;
         setTextEditable();
      }
      
      protected function drawSwatches() : void
      {
         var _loc10_:Sprite = null;
         var _loc1_:Number = getStyleValue("backgroundPadding") as Number;
         var _loc2_:Number = !!showTextField?Number(textFieldBG.y + textFieldBG.height + _loc1_):Number(_loc1_);
         swatches = new Sprite();
         palette.addChild(swatches);
         swatches.x = _loc1_;
         swatches.y = _loc2_;
         var _loc3_:uint = getStyleValue("columnCount") as uint;
         var _loc4_:uint = getStyleValue("swatchPadding") as uint;
         var _loc5_:Number = getStyleValue("swatchWidth") as Number;
         var _loc6_:Number = getStyleValue("swatchHeight") as Number;
         colorHash = {};
         swatchMap = [];
         var _loc7_:uint = Math.min(1024,colors.length);
         var _loc8_:int = -1;
         var _loc9_:uint = 0;
         while(_loc9_ < _loc7_)
         {
            _loc10_ = createSwatch(colors[_loc9_]);
            _loc10_.x = (_loc5_ + _loc4_) * (_loc9_ % _loc3_);
            if(_loc10_.x == 0)
            {
               swatchMap.push([_loc10_]);
               _loc8_++;
            }
            else
            {
               swatchMap[_loc8_].push(_loc10_);
            }
            colorHash[colors[_loc9_]] = {
               "swatch":_loc10_,
               "row":_loc8_,
               "col":swatchMap[_loc8_].length - 1
            };
            _loc10_.y = Math.floor(_loc9_ / _loc3_) * (_loc6_ + _loc4_);
            swatches.addChild(_loc10_);
            _loc9_++;
         }
      }
      
      protected function drawBG() : void
      {
         var _loc1_:Object = getStyleValue("background");
         if(_loc1_ != null)
         {
            paletteBG = getDisplayObjectInstance(_loc1_) as Sprite;
         }
         if(paletteBG == null)
         {
            return;
         }
         var _loc2_:Number = Number(getStyleValue("backgroundPadding"));
         paletteBG.width = Math.max(!!showTextField?Number(textFieldBG.width):Number(0),swatches.width) + _loc2_ * 2;
         paletteBG.height = swatches.y + swatches.height + _loc2_;
         palette.addChildAt(paletteBG,0);
      }
      
      protected function positionPalette() : void
      {
         var _loc1_:Point = swatchButton.localToGlobal(new Point(0,0));
         var _loc2_:Number = getStyleValue("backgroundPadding") as Number;
         if(_loc1_.x + palette.width > stage.stageWidth)
         {
            palette.x = _loc1_.x - palette.width << 0;
         }
         else
         {
            palette.x = _loc1_.x + swatchButton.width + _loc2_ << 0;
         }
         palette.y = Math.max(0,Math.min(_loc1_.y,stage.stageHeight - palette.height)) << 0;
      }
      
      protected function setTextEditable() : void
      {
         if(!showTextField)
         {
            return;
         }
         textField.type = !!editable?TextFieldType.INPUT:TextFieldType.DYNAMIC;
         textField.selectable = editable;
      }
      
      override protected function keyUpHandler(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = 0;
         var _loc4_:String = null;
         var _loc5_:Sprite = null;
         if(!isOpen)
         {
            return;
         }
         var _loc3_:ColorTransform = new ColorTransform();
         if(editable && showTextField)
         {
            _loc4_ = textField.text;
            if(_loc4_.indexOf("#") > -1)
            {
               _loc4_ = _loc4_.replace(/^\s+|\s+$/g,"");
               _loc4_ = _loc4_.replace(/#/g,"");
            }
            _loc2_ = parseInt(_loc4_,16);
            _loc5_ = findSwatch(_loc2_);
            setSwatchHighlight(_loc5_);
            _loc3_.color = _loc2_;
            setColorWellColor(_loc3_);
         }
         else
         {
            _loc2_ = rollOverColor;
            _loc3_.color = _loc2_;
         }
         if(param1.keyCode != Keyboard.ENTER)
         {
            return;
         }
         dispatchEvent(new ColorPickerEvent(ColorPickerEvent.ENTER,_loc2_));
         _selectedColor = rollOverColor;
         setColorText(_loc3_.color);
         rollOverColor = _loc3_.color;
         dispatchEvent(new ColorPickerEvent(ColorPickerEvent.CHANGE,selectedColor));
         close();
      }
      
      protected function positionTextField() : void
      {
         if(!showTextField)
         {
            return;
         }
         var _loc1_:Number = getStyleValue("backgroundPadding") as Number;
         var _loc2_:Number = getStyleValue("textPadding") as Number;
         textFieldBG.x = paletteBG.x + _loc1_;
         textFieldBG.y = paletteBG.y + _loc1_;
         textField.x = textFieldBG.x + _loc2_;
         textField.y = textFieldBG.y + _loc2_;
      }
      
      protected function setColorDisplay() : void
      {
         if(!swatchMap.length)
         {
            return;
         }
         var _loc1_:ColorTransform = new ColorTransform(0,0,0,1,_selectedColor >> 16,_selectedColor >> 8 & 255,_selectedColor & 255,0);
         setColorWellColor(_loc1_);
         setColorText(_selectedColor);
         var _loc2_:Sprite = findSwatch(_selectedColor);
         setSwatchHighlight(_loc2_);
         if(swatchMap.length && colorHash[_selectedColor] == undefined)
         {
            cleanUpSelected();
         }
      }
      
      protected function setSwatchHighlight(param1:Sprite) : void
      {
         if(param1 == null)
         {
            if(palette.contains(swatchSelectedSkin))
            {
               palette.removeChild(swatchSelectedSkin);
            }
            return;
         }
         if(!palette.contains(swatchSelectedSkin) && colors.length > 0)
         {
            palette.addChild(swatchSelectedSkin);
         }
         else if(!colors.length)
         {
            return;
         }
         var _loc2_:Number = getStyleValue("swatchPadding") as Number;
         palette.setChildIndex(swatchSelectedSkin,palette.numChildren - 1);
         swatchSelectedSkin.x = swatches.x + param1.x - 1;
         swatchSelectedSkin.y = swatches.y + param1.y - 1;
         var _loc3_:* = param1.getChildByName("color").transform.colorTransform.color;
         currColIndex = colorHash[_loc3_].col;
         currRowIndex = colorHash[_loc3_].row;
      }
      
      protected function findSwatch(param1:uint) : Sprite
      {
         if(!swatchMap.length)
         {
            return null;
         }
         var _loc2_:Object = colorHash[param1];
         if(_loc2_ != null)
         {
            return _loc2_.swatch;
         }
         return null;
      }
      
      protected function onSwatchClick(param1:MouseEvent) : void
      {
         var _loc2_:ColorTransform = param1.target.getChildByName("color").transform.colorTransform;
         _selectedColor = _loc2_.color;
         dispatchEvent(new ColorPickerEvent(ColorPickerEvent.CHANGE,selectedColor));
         close();
      }
      
      protected function onSwatchOver(param1:MouseEvent) : void
      {
         var _loc2_:BaseButton = param1.target.getChildByName("color") as BaseButton;
         var _loc3_:ColorTransform = _loc2_.transform.colorTransform;
         setColorWellColor(_loc3_);
         setSwatchHighlight(param1.target as Sprite);
         setColorText(_loc3_.color);
         dispatchEvent(new ColorPickerEvent(ColorPickerEvent.ITEM_ROLL_OVER,_loc3_.color));
      }
      
      protected function onSwatchOut(param1:MouseEvent) : void
      {
         var _loc2_:ColorTransform = param1.target.transform.colorTransform;
         dispatchEvent(new ColorPickerEvent(ColorPickerEvent.ITEM_ROLL_OUT,_loc2_.color));
      }
      
      protected function setColorText(param1:uint) : void
      {
         if(textField == null)
         {
            return;
         }
         textField.text = "#" + colorToString(param1);
      }
      
      protected function colorToString(param1:uint) : String
      {
         var _loc2_:String = param1.toString(16);
         while(_loc2_.length < 6)
         {
            _loc2_ = "0" + _loc2_;
         }
         return _loc2_;
      }
      
      protected function setColorWellColor(param1:ColorTransform) : void
      {
         if(!colorWell)
         {
            return;
         }
         colorWell.transform.colorTransform = param1;
      }
      
      protected function createSwatch(param1:uint) : Sprite
      {
         var _loc2_:Sprite = new Sprite();
         var _loc3_:BaseButton = new BaseButton();
         _loc3_.focusEnabled = false;
         var _loc4_:Number = getStyleValue("swatchWidth") as Number;
         var _loc5_:Number = getStyleValue("swatchHeight") as Number;
         _loc3_.setSize(_loc4_,_loc5_);
         _loc3_.transform.colorTransform = new ColorTransform(0,0,0,1,param1 >> 16,param1 >> 8 & 255,param1 & 255,0);
         copyStylesToChild(_loc3_,SWATCH_STYLES);
         _loc3_.mouseEnabled = false;
         _loc3_.drawNow();
         _loc3_.name = "color";
         _loc2_.addChild(_loc3_);
         var _loc6_:Number = getStyleValue("swatchPadding") as Number;
         var _loc7_:Graphics = _loc2_.graphics;
         _loc7_.beginFill(0);
         _loc7_.drawRect(-_loc6_,-_loc6_,_loc4_ + _loc6_ * 2,_loc5_ + _loc6_ * 2);
         _loc7_.endFill();
         _loc2_.addEventListener(MouseEvent.CLICK,onSwatchClick,false,0,true);
         _loc2_.addEventListener(MouseEvent.MOUSE_OVER,onSwatchOver,false,0,true);
         _loc2_.addEventListener(MouseEvent.MOUSE_OUT,onSwatchOut,false,0,true);
         return _loc2_;
      }
      
      protected function addStageListener(param1:Event = null) : void
      {
         stage.addEventListener(MouseEvent.MOUSE_DOWN,onStageClick,false,0,true);
      }
      
      protected function removeStageListener(param1:Event = null) : void
      {
         stage.removeEventListener(MouseEvent.MOUSE_DOWN,onStageClick,false);
      }
      
      override protected function focusInHandler(param1:FocusEvent) : void
      {
         super.focusInHandler(param1);
         setIMEMode(true);
      }
      
      override protected function focusOutHandler(param1:FocusEvent) : void
      {
         if(param1.relatedObject == textField)
         {
            setFocus();
            return;
         }
         if(isOpen)
         {
            close();
         }
         super.focusOutHandler(param1);
         setIMEMode(false);
      }
      
      override protected function isOurFocus(param1:DisplayObject) : Boolean
      {
         return param1 == textField || super.isOurFocus(param1);
      }
      
      override protected function keyDownHandler(param1:KeyboardEvent) : void
      {
         var _loc3_:Sprite = null;
         switch(param1.keyCode)
         {
            case Keyboard.SHIFT:
            case Keyboard.CONTROL:
               return;
            default:
               if(param1.ctrlKey)
               {
                  switch(param1.keyCode)
                  {
                     case Keyboard.DOWN:
                        open();
                        break;
                     case Keyboard.UP:
                        close();
                  }
                  return;
               }
               if(!isOpen)
               {
                  switch(param1.keyCode)
                  {
                     case Keyboard.UP:
                     case Keyboard.DOWN:
                     case Keyboard.LEFT:
                     case Keyboard.RIGHT:
                     case Keyboard.SPACE:
                        open();
                        return;
                  }
               }
               textField.maxChars = param1.keyCode == "#".charCodeAt(0) || textField.text.indexOf("#") > -1?7:6;
               switch(param1.keyCode)
               {
                  case Keyboard.TAB:
                     _loc3_ = findSwatch(_selectedColor);
                     setSwatchHighlight(_loc3_);
                     return;
                  case Keyboard.HOME:
                     currColIndex = currRowIndex = 0;
                     break;
                  case Keyboard.END:
                     currColIndex = swatchMap[swatchMap.length - 1].length - 1;
                     currRowIndex = swatchMap.length - 1;
                     break;
                  case Keyboard.PAGE_DOWN:
                     currRowIndex = swatchMap.length - 1;
                     break;
                  case Keyboard.PAGE_UP:
                     currRowIndex = 0;
                     break;
                  case Keyboard.ESCAPE:
                     if(isOpen)
                     {
                        selectedColor = _selectedColor;
                     }
                     close();
                     return;
                  case Keyboard.ENTER:
                     return;
                  case Keyboard.UP:
                     currRowIndex = Math.max(-1,currRowIndex - 1);
                     if(currRowIndex == -1)
                     {
                        currRowIndex = swatchMap.length - 1;
                     }
                     break;
                  case Keyboard.DOWN:
                     currRowIndex = Math.min(swatchMap.length,currRowIndex + 1);
                     if(currRowIndex == swatchMap.length)
                     {
                        currRowIndex = 0;
                     }
                     break;
                  case Keyboard.RIGHT:
                     currColIndex = Math.min(swatchMap[currRowIndex].length,currColIndex + 1);
                     if(currColIndex == swatchMap[currRowIndex].length)
                     {
                        currColIndex = 0;
                        currRowIndex = Math.min(swatchMap.length,currRowIndex + 1);
                        if(currRowIndex == swatchMap.length)
                        {
                           currRowIndex = 0;
                        }
                     }
                     break;
                  case Keyboard.LEFT:
                     currColIndex = Math.max(-1,currColIndex - 1);
                     if(currColIndex == -1)
                     {
                        currColIndex = swatchMap[currRowIndex].length - 1;
                        currRowIndex = Math.max(-1,currRowIndex - 1);
                        if(currRowIndex == -1)
                        {
                           currRowIndex = swatchMap.length - 1;
                        }
                     }
                     break;
                  default:
                     return;
               }
               var _loc2_:ColorTransform = swatchMap[currRowIndex][currColIndex].getChildByName("color").transform.colorTransform;
               rollOverColor = _loc2_.color;
               setColorWellColor(_loc2_);
               setSwatchHighlight(swatchMap[currRowIndex][currColIndex]);
               setColorText(_loc2_.color);
               return;
         }
      }
      
      override protected function configUI() : void
      {
         var _loc1_:uint = 0;
         super.configUI();
         tabChildren = false;
         if(ColorPicker.defaultColors == null)
         {
            ColorPicker.defaultColors = [];
            _loc1_ = 0;
            while(_loc1_ < 216)
            {
               ColorPicker.defaultColors.push(((_loc1_ / 6 % 3 << 0) + (_loc1_ / 108 << 0) * 3) * 51 << 16 | _loc1_ % 6 * 51 << 8 | (_loc1_ / 18 << 0) % 6 * 51);
               _loc1_++;
            }
         }
         colorHash = {};
         swatchMap = [];
         textField = new TextField();
         textField.tabEnabled = false;
         swatchButton = new BaseButton();
         swatchButton.focusEnabled = false;
         swatchButton.useHandCursor = false;
         swatchButton.autoRepeat = false;
         swatchButton.setSize(25,25);
         swatchButton.addEventListener(MouseEvent.CLICK,onPopupButtonClick,false,0,true);
         addChild(swatchButton);
         palette = new Sprite();
         palette.tabChildren = false;
         palette.cacheAsBitmap = true;
      }
   }
}
