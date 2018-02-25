package mx.controls
{
   import flash.display.DisplayObject;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import mx.core.EdgeMetrics;
   import mx.core.IFlexDisplayObject;
   import mx.core.IFlexModuleFactory;
   import mx.core.IFontContextComponent;
   import mx.core.IRectangularBorder;
   import mx.core.IToolTip;
   import mx.core.IUITextField;
   import mx.core.UIComponent;
   import mx.core.UITextField;
   import mx.core.mx_internal;
   import mx.styles.ISimpleStyleClient;
   
   use namespace mx_internal;
   
   public class ToolTip extends UIComponent implements IToolTip, IFontContextComponent
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      public static var maxWidth:Number = 300;
       
      
      private var textChanged:Boolean;
      
      private var _text:String;
      
      protected var textField:IUITextField;
      
      mx_internal var border:IFlexDisplayObject;
      
      public function ToolTip()
      {
         super();
         mouseEnabled = false;
      }
      
      public function set fontContext(moduleFactory:IFlexModuleFactory) : void
      {
         this.moduleFactory = moduleFactory;
      }
      
      override public function styleChanged(styleProp:String) : void
      {
         super.styleChanged(styleProp);
         if(styleProp == "borderStyle" || styleProp == "styleName" || styleProp == null)
         {
            invalidateDisplayList();
         }
      }
      
      override protected function commitProperties() : void
      {
         var index:int = 0;
         var textFormat:TextFormat = null;
         super.commitProperties();
         if(hasFontContextChanged() && textField != null)
         {
            index = getChildIndex(DisplayObject(textField));
            removeTextField();
            createTextField(index);
            invalidateSize();
            textChanged = true;
         }
         if(textChanged)
         {
            textFormat = textField.getTextFormat();
            textFormat.leftMargin = 0;
            textFormat.rightMargin = 0;
            textField.defaultTextFormat = textFormat;
            textField.text = _text;
            textChanged = false;
         }
      }
      
      mx_internal function getTextField() : IUITextField
      {
         return textField;
      }
      
      override protected function createChildren() : void
      {
         var borderClass:Class = null;
         super.createChildren();
         if(!border)
         {
            borderClass = getStyle("borderSkin");
            border = new borderClass();
            if(border is ISimpleStyleClient)
            {
               ISimpleStyleClient(border).styleName = this;
            }
            addChild(DisplayObject(border));
         }
         createTextField(-1);
      }
      
      override protected function measure() : void
      {
         var heightSlop:Number = NaN;
         super.measure();
         var bm:EdgeMetrics = borderMetrics;
         var leftInset:Number = bm.left + getStyle("paddingLeft");
         var topInset:Number = bm.top + getStyle("paddingTop");
         var rightInset:Number = bm.right + getStyle("paddingRight");
         var bottomInset:Number = bm.bottom + getStyle("paddingBottom");
         var widthSlop:Number = leftInset + rightInset;
         heightSlop = topInset + bottomInset;
         textField.wordWrap = false;
         if(textField.textWidth + widthSlop > ToolTip.maxWidth)
         {
            textField.width = ToolTip.maxWidth - widthSlop;
            textField.wordWrap = true;
         }
         measuredWidth = textField.width + widthSlop;
         measuredHeight = textField.height + heightSlop;
      }
      
      public function get fontContext() : IFlexModuleFactory
      {
         return moduleFactory;
      }
      
      public function set text(value:String) : void
      {
         _text = value;
         textChanged = true;
         invalidateProperties();
         invalidateSize();
         invalidateDisplayList();
      }
      
      public function get text() : String
      {
         return _text;
      }
      
      mx_internal function removeTextField() : void
      {
         if(textField)
         {
            removeChild(DisplayObject(textField));
            textField = null;
         }
      }
      
      mx_internal function createTextField(childIndex:int) : void
      {
         if(!textField)
         {
            textField = IUITextField(createInFontContext(UITextField));
            textField.autoSize = TextFieldAutoSize.LEFT;
            textField.mouseEnabled = false;
            textField.multiline = true;
            textField.selectable = false;
            textField.wordWrap = false;
            textField.styleName = this;
            if(childIndex == -1)
            {
               addChild(DisplayObject(textField));
            }
            else
            {
               addChildAt(DisplayObject(textField),childIndex);
            }
         }
      }
      
      override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         super.updateDisplayList(unscaledWidth,unscaledHeight);
         var bm:EdgeMetrics = borderMetrics;
         var leftInset:Number = bm.left + getStyle("paddingLeft");
         var topInset:Number = bm.top + getStyle("paddingTop");
         var rightInset:Number = bm.right + getStyle("paddingRight");
         var bottomInset:Number = bm.bottom + getStyle("paddingBottom");
         var widthSlop:Number = leftInset + rightInset;
         var heightSlop:Number = topInset + bottomInset;
         border.setActualSize(unscaledWidth,unscaledHeight);
         textField.move(leftInset,topInset);
         textField.setActualSize(unscaledWidth - widthSlop,unscaledHeight - heightSlop);
      }
      
      private function get borderMetrics() : EdgeMetrics
      {
         if(border is IRectangularBorder)
         {
            return IRectangularBorder(border).borderMetrics;
         }
         return EdgeMetrics.EMPTY;
      }
   }
}
