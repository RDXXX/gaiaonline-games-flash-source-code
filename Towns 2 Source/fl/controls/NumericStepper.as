package fl.controls
{
   import fl.core.InvalidationType;
   import fl.core.UIComponent;
   import fl.events.ComponentEvent;
   import fl.managers.IFocusManagerComponent;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class NumericStepper extends UIComponent implements IFocusManagerComponent
   {
      
      private static var defaultStyles:Object = {
         "downArrowDisabledSkin":"NumericStepperDownArrow_disabledSkin",
         "downArrowDownSkin":"NumericStepperDownArrow_downSkin",
         "downArrowOverSkin":"NumericStepperDownArrow_overSkin",
         "downArrowUpSkin":"NumericStepperDownArrow_upSkin",
         "upArrowDisabledSkin":"NumericStepperUpArrow_disabledSkin",
         "upArrowDownSkin":"NumericStepperUpArrow_downSkin",
         "upArrowOverSkin":"NumericStepperUpArrow_overSkin",
         "upArrowUpSkin":"NumericStepperUpArrow_upSkin",
         "upSkin":"TextInput_upSkin",
         "disabledSkin":"TextInput_disabledSkin",
         "focusRect":null,
         "focusRectSkin":null,
         "focusRectPadding":null,
         "repeatDelay":500,
         "repeatInterval":35,
         "embedFonts":false
      };
      
      protected static const DOWN_ARROW_STYLES:Object = {
         "disabledSkin":"downArrowDisabledSkin",
         "downSkin":"downArrowDownSkin",
         "overSkin":"downArrowOverSkin",
         "upSkin":"downArrowUpSkin",
         "repeatDelay":"repeatDelay",
         "repeatInterval":"repeatInterval"
      };
      
      protected static const UP_ARROW_STYLES:Object = {
         "disabledSkin":"upArrowDisabledSkin",
         "downSkin":"upArrowDownSkin",
         "overSkin":"upArrowOverSkin",
         "upSkin":"upArrowUpSkin",
         "repeatDelay":"repeatDelay",
         "repeatInterval":"repeatInterval"
      };
      
      protected static const TEXT_INPUT_STYLES:Object = {
         "upSkin":"upSkin",
         "disabledSkin":"disabledSkin",
         "textPadding":"textPadding",
         "textFormat":"textFormat",
         "disabledTextFormat":"disabledTextFormat",
         "embedFonts":"embedFonts"
      };
       
      
      protected var inputField:TextInput;
      
      protected var upArrow:BaseButton;
      
      protected var downArrow:BaseButton;
      
      protected var _maximum:Number = 10;
      
      protected var _minimum:Number = 0;
      
      protected var _value:Number = 1;
      
      protected var _stepSize:Number = 1;
      
      protected var _precision:Number;
      
      public function NumericStepper()
      {
         super();
         setStyles();
         stepSize = _stepSize;
      }
      
      public static function getStyleDefinition() : Object
      {
         return defaultStyles;
      }
      
      override public function get enabled() : Boolean
      {
         return super.enabled;
      }
      
      override public function set enabled(param1:Boolean) : void
      {
         if(param1 == enabled)
         {
            return;
         }
         super.enabled = param1;
         upArrow.enabled = downArrow.enabled = inputField.enabled = param1;
      }
      
      public function get maximum() : Number
      {
         return _maximum;
      }
      
      public function set maximum(param1:Number) : void
      {
         _maximum = param1;
         if(_value > _maximum)
         {
            setValue(_maximum,false);
         }
      }
      
      public function get minimum() : Number
      {
         return _minimum;
      }
      
      public function set minimum(param1:Number) : void
      {
         _minimum = param1;
         if(_value < _minimum)
         {
            setValue(_minimum,false);
         }
      }
      
      public function get nextValue() : Number
      {
         var _loc1_:Number = _value + _stepSize;
         return !!inRange(_loc1_)?Number(_loc1_):Number(_value);
      }
      
      public function get previousValue() : Number
      {
         var _loc1_:Number = _value - _stepSize;
         return !!inRange(_loc1_)?Number(_loc1_):Number(_value);
      }
      
      public function get stepSize() : Number
      {
         return _stepSize;
      }
      
      public function set stepSize(param1:Number) : void
      {
         _stepSize = param1;
         _precision = getPrecision();
         setValue(_value);
      }
      
      public function get value() : Number
      {
         return _value;
      }
      
      public function set value(param1:Number) : void
      {
         setValue(param1,false);
      }
      
      public function get textField() : TextInput
      {
         return inputField;
      }
      
      public function get imeMode() : String
      {
         return inputField.imeMode;
      }
      
      public function set imeMode(param1:String) : void
      {
         inputField.imeMode = param1;
      }
      
      override protected function configUI() : void
      {
         super.configUI();
         upArrow = new BaseButton();
         copyStylesToChild(upArrow,UP_ARROW_STYLES);
         upArrow.autoRepeat = true;
         upArrow.setSize(21,12);
         upArrow.focusEnabled = false;
         addChild(upArrow);
         downArrow = new BaseButton();
         copyStylesToChild(downArrow,DOWN_ARROW_STYLES);
         downArrow.autoRepeat = true;
         downArrow.setSize(21,12);
         downArrow.focusEnabled = false;
         addChild(downArrow);
         inputField = new TextInput();
         copyStylesToChild(inputField,TEXT_INPUT_STYLES);
         inputField.restrict = "0-9\\-\\.\\,";
         inputField.text = _value.toString();
         inputField.setSize(21,24);
         inputField.focusTarget = this as IFocusManagerComponent;
         inputField.focusEnabled = false;
         inputField.addEventListener(FocusEvent.FOCUS_IN,passEvent);
         inputField.addEventListener(FocusEvent.FOCUS_OUT,passEvent);
         addChild(inputField);
         inputField.addEventListener(Event.CHANGE,onTextChange,false,0,true);
         upArrow.addEventListener(ComponentEvent.BUTTON_DOWN,stepperPressHandler,false,0,true);
         downArrow.addEventListener(ComponentEvent.BUTTON_DOWN,stepperPressHandler,false,0,true);
      }
      
      protected function setValue(param1:Number, param2:Boolean = true) : void
      {
         if(param1 == _value)
         {
            return;
         }
         var _loc3_:Number = _value;
         _value = getValidValue(param1);
         inputField.text = _value.toString();
         if(param2)
         {
            dispatchEvent(new Event(Event.CHANGE,true));
         }
      }
      
      override protected function keyDownHandler(param1:KeyboardEvent) : void
      {
         if(!enabled)
         {
            return;
         }
         param1.stopImmediatePropagation();
         var _loc2_:Number = Number(inputField.text);
         switch(param1.keyCode)
         {
            case Keyboard.END:
               setValue(maximum);
               break;
            case Keyboard.HOME:
               setValue(minimum);
               break;
            case Keyboard.UP:
               setValue(nextValue);
               break;
            case Keyboard.DOWN:
               setValue(previousValue);
               break;
            case Keyboard.ENTER:
               setValue(_loc2_);
         }
      }
      
      protected function stepperPressHandler(param1:ComponentEvent) : void
      {
         setValue(Number(inputField.text),false);
         switch(param1.currentTarget)
         {
            case upArrow:
               setValue(nextValue);
               break;
            case downArrow:
               setValue(previousValue);
         }
         inputField.setFocus();
         inputField.textField.setSelection(0,0);
      }
      
      override public function drawFocus(param1:Boolean) : void
      {
         var _loc2_:Number = NaN;
         super.drawFocus(param1);
         if(param1)
         {
            _loc2_ = Number(getStyleValue("focusRectPadding"));
            uiFocusRect.width = width + _loc2_ * 2;
            uiFocusRect.height = height + _loc2_ * 2;
         }
      }
      
      override protected function focusOutHandler(param1:FocusEvent) : void
      {
         if(param1.eventPhase == 3)
         {
            setValue(Number(inputField.text));
         }
         super.focusOutHandler(param1);
      }
      
      override protected function draw() : void
      {
         if(isInvalid(InvalidationType.STYLES,InvalidationType.STATE))
         {
            setStyles();
            invalidate(InvalidationType.SIZE,false);
         }
         if(isInvalid(InvalidationType.SIZE))
         {
            drawLayout();
         }
         if(isFocused && focusManager.showFocusIndicator)
         {
            drawFocus(true);
         }
         validate();
      }
      
      protected function drawLayout() : void
      {
         var _loc1_:Number = NaN;
         _loc1_ = width - upArrow.width;
         var _loc2_:Number = height / 2;
         inputField.setSize(_loc1_,height);
         upArrow.height = _loc2_;
         downArrow.height = Math.floor(_loc2_);
         downArrow.move(_loc1_,_loc2_);
         upArrow.move(_loc1_,0);
         downArrow.drawNow();
         upArrow.drawNow();
         inputField.drawNow();
      }
      
      protected function onTextChange(param1:Event) : void
      {
         param1.stopImmediatePropagation();
      }
      
      protected function passEvent(param1:Event) : void
      {
         dispatchEvent(param1);
      }
      
      override public function setFocus() : void
      {
         if(stage)
         {
            stage.focus = inputField.textField;
         }
      }
      
      override protected function isOurFocus(param1:DisplayObject) : Boolean
      {
         return param1 == inputField || super.isOurFocus(param1);
      }
      
      protected function setStyles() : void
      {
         copyStylesToChild(downArrow,DOWN_ARROW_STYLES);
         copyStylesToChild(upArrow,UP_ARROW_STYLES);
         copyStylesToChild(inputField,TEXT_INPUT_STYLES);
      }
      
      protected function inRange(param1:Number) : Boolean
      {
         return param1 >= _minimum && param1 <= _maximum;
      }
      
      protected function inStep(param1:Number) : Boolean
      {
         return (param1 - _minimum) % _stepSize == 0;
      }
      
      protected function getValidValue(param1:Number) : Number
      {
         if(isNaN(param1))
         {
            return _value;
         }
         var _loc2_:Number = Number((_stepSize * Math.round(param1 / _stepSize)).toFixed(_precision));
         if(_loc2_ > maximum)
         {
            return maximum;
         }
         if(_loc2_ < minimum)
         {
            return minimum;
         }
         return _loc2_;
      }
      
      protected function getPrecision() : Number
      {
         var _loc1_:String = _stepSize.toString();
         if(_loc1_.indexOf(".") == -1)
         {
            return 0;
         }
         return _loc1_.split(".").pop().length;
      }
   }
}
