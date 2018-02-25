package mx.core
{
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   import mx.managers.ISystemManager;
   
   use namespace mx_internal;
   
   public class UITextFormat extends TextFormat
   {
      
      private static var _embeddedFontRegistry:IEmbeddedFontRegistry;
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      private static var _textFieldFactory:ITextFieldFactory;
       
      
      private var systemManager:ISystemManager;
      
      public var sharpness:Number;
      
      public var gridFitType:String;
      
      public var antiAliasType:String;
      
      public var thickness:Number;
      
      private var cachedEmbeddedFont:EmbeddedFont = null;
      
      private var _moduleFactory:IFlexModuleFactory;
      
      public function UITextFormat(systemManager:ISystemManager, font:String = null, size:Object = null, color:Object = null, bold:Object = null, italic:Object = null, underline:Object = null, url:String = null, target:String = null, align:String = null, leftMargin:Object = null, rightMargin:Object = null, indent:Object = null, leading:Object = null)
      {
         this.systemManager = systemManager;
         super(font,size,color,bold,italic,underline,url,target,align,leftMargin,rightMargin,indent,leading);
      }
      
      private static function get embeddedFontRegistry() : IEmbeddedFontRegistry
      {
         if(!_embeddedFontRegistry)
         {
            _embeddedFontRegistry = IEmbeddedFontRegistry(Singleton.getInstance("mx.core::IEmbeddedFontRegistry"));
         }
         return _embeddedFontRegistry;
      }
      
      private static function get textFieldFactory() : ITextFieldFactory
      {
         if(!_textFieldFactory)
         {
            _textFieldFactory = ITextFieldFactory(Singleton.getInstance("mx.core::ITextFieldFactory"));
         }
         return _textFieldFactory;
      }
      
      public function set moduleFactory(value:IFlexModuleFactory) : void
      {
         _moduleFactory = value;
      }
      
      mx_internal function copyFrom(source:TextFormat) : void
      {
         font = source.font;
         size = source.size;
         color = source.color;
         bold = source.bold;
         italic = source.italic;
         underline = source.underline;
         url = source.url;
         target = source.target;
         align = source.align;
         leftMargin = source.leftMargin;
         rightMargin = source.rightMargin;
         indent = source.indent;
         leading = source.leading;
         letterSpacing = source.letterSpacing;
         blockIndent = source.blockIndent;
         bullet = source.bullet;
         display = source.display;
         indent = source.indent;
         kerning = source.kerning;
         tabStops = source.tabStops;
      }
      
      private function getEmbeddedFont(fontName:String, bold:Boolean, italic:Boolean) : EmbeddedFont
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
      
      public function measureText(text:String, roundUp:Boolean = true) : TextLineMetrics
      {
         return measure(text,false,roundUp);
      }
      
      private function measure(s:String, html:Boolean, roundUp:Boolean) : TextLineMetrics
      {
         if(!s)
         {
            s = "";
         }
         var embeddedFont:* = false;
         var fontModuleFactory:IFlexModuleFactory = embeddedFontRegistry.getAssociatedModuleFactory(getEmbeddedFont(font,bold,italic),moduleFactory);
         embeddedFont = fontModuleFactory != null;
         if(fontModuleFactory == null)
         {
            fontModuleFactory = systemManager;
         }
         var measurementTextField:TextField = null;
         measurementTextField = TextField(textFieldFactory.createTextField(fontModuleFactory));
         if(html)
         {
            measurementTextField.htmlText = "";
         }
         else
         {
            measurementTextField.text = "";
         }
         measurementTextField.defaultTextFormat = this;
         if(font)
         {
            measurementTextField.embedFonts = embeddedFont || systemManager != null && systemManager.isFontFaceEmbedded(this);
         }
         else
         {
            measurementTextField.embedFonts = false;
         }
         measurementTextField.antiAliasType = antiAliasType;
         measurementTextField.gridFitType = gridFitType;
         measurementTextField.sharpness = sharpness;
         measurementTextField.thickness = thickness;
         if(html)
         {
            measurementTextField.htmlText = s;
         }
         else
         {
            measurementTextField.text = s;
         }
         var lineMetrics:TextLineMetrics = measurementTextField.getLineMetrics(0);
         if(indent != null)
         {
            lineMetrics.width = lineMetrics.width + indent;
         }
         if(roundUp)
         {
            lineMetrics.width = Math.ceil(lineMetrics.width);
            lineMetrics.height = Math.ceil(lineMetrics.height);
         }
         return lineMetrics;
      }
      
      public function measureHTMLText(htmlText:String, roundUp:Boolean = true) : TextLineMetrics
      {
         return measure(htmlText,true,roundUp);
      }
      
      public function get moduleFactory() : IFlexModuleFactory
      {
         return _moduleFactory;
      }
   }
}
