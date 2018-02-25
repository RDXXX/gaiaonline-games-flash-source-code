package mx.core
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   import flash.utils.getQualifiedClassName;
   import mx.automation.IAutomationObject;
   import mx.managers.ISystemManager;
   import mx.managers.IToolTipManagerClient;
   import mx.managers.SystemManager;
   import mx.managers.ToolTipManager;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   import mx.styles.ISimpleStyleClient;
   import mx.styles.IStyleClient;
   import mx.styles.StyleManager;
   import mx.styles.StyleProtoChain;
   import mx.utils.StringUtil;
   
   use namespace mx_internal;
   
   public class UITextField extends FlexTextField implements IAutomationObject, IIMESupport, IFlexModule, IInvalidating, ISimpleStyleClient, IToolTipManagerClient, IUITextField
   {
      
      mx_internal static const TEXT_WIDTH_PADDING:int = 5;
      
      mx_internal static const TEXT_HEIGHT_PADDING:int = 4;
      
      private static var truncationIndicatorResource:String;
      
      private static var _embeddedFontRegistry:IEmbeddedFontRegistry;
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      mx_internal static var debuggingBorders:Boolean = false;
       
      
      private var _enabled:Boolean = true;
      
      private var untruncatedText:String;
      
      private var cachedEmbeddedFont:EmbeddedFont = null;
      
      private var cachedTextFormat:TextFormat;
      
      private var _automationDelegate:IAutomationObject;
      
      private var _automationName:String;
      
      private var _styleName:Object;
      
      private var _document:Object;
      
      mx_internal var _toolTip:String;
      
      private var _nestLevel:int = 0;
      
      private var _explicitHeight:Number;
      
      private var _moduleFactory:IFlexModuleFactory;
      
      private var _initialized:Boolean = false;
      
      private var _nonInheritingStyles:Object;
      
      private var _inheritingStyles:Object;
      
      private var _includeInLayout:Boolean = true;
      
      private var invalidateDisplayListFlag:Boolean = true;
      
      mx_internal var explicitColor:uint = 4.294967295E9;
      
      private var _processedDescriptors:Boolean = true;
      
      private var _updateCompletePendingFlag:Boolean = false;
      
      private var explicitHTMLText:String = null;
      
      mx_internal var _parent:DisplayObjectContainer;
      
      private var _imeMode:String = null;
      
      private var resourceManager:IResourceManager;
      
      mx_internal var styleChangedFlag:Boolean = true;
      
      private var _ignorePadding:Boolean = true;
      
      private var _owner:DisplayObjectContainer;
      
      private var _explicitWidth:Number;
      
      public function UITextField()
      {
         resourceManager = ResourceManager.getInstance();
         _inheritingStyles = UIComponent.STYLE_UNINITIALIZED;
         _nonInheritingStyles = UIComponent.STYLE_UNINITIALIZED;
         super();
         super.text = "";
         focusRect = false;
         selectable = false;
         tabEnabled = false;
         if(debuggingBorders)
         {
            border = true;
         }
         if(!truncationIndicatorResource)
         {
            truncationIndicatorResource = resourceManager.getString("core","truncationIndicator");
         }
         addEventListener(Event.CHANGE,changeHandler);
         addEventListener("textFieldStyleChange",textFieldStyleChangeHandler);
         resourceManager.addEventListener(Event.CHANGE,resourceManager_changeHandler,false,0,true);
      }
      
      private static function get embeddedFontRegistry() : IEmbeddedFontRegistry
      {
         if(!_embeddedFontRegistry)
         {
            _embeddedFontRegistry = IEmbeddedFontRegistry(Singleton.getInstance("mx.core::IEmbeddedFontRegistry"));
         }
         return _embeddedFontRegistry;
      }
      
      public function set imeMode(value:String) : void
      {
         _imeMode = value;
      }
      
      public function get nestLevel() : int
      {
         return _nestLevel;
      }
      
      private function textFieldStyleChangeHandler(event:Event) : void
      {
         if(explicitHTMLText != null)
         {
            super.htmlText = explicitHTMLText;
         }
      }
      
      public function truncateToFit(truncationIndicator:String = null) : Boolean
      {
         var s:String = null;
         if(!truncationIndicator)
         {
            truncationIndicator = truncationIndicatorResource;
         }
         validateNow();
         var originalText:String = super.text;
         untruncatedText = originalText;
         var w:Number = width;
         if(originalText != "" && textWidth + TEXT_WIDTH_PADDING > w + 1.0e-14)
         {
            s = super.text = originalText;
            originalText.slice(0,Math.floor(w / (textWidth + TEXT_WIDTH_PADDING) * originalText.length));
            while(s.length > 1 && textWidth + TEXT_WIDTH_PADDING > w)
            {
               s = s.slice(0,-1);
               super.text = s + truncationIndicator;
            }
            return true;
         }
         return false;
      }
      
      public function set nestLevel(value:int) : void
      {
         if(value > 1 && _nestLevel != value)
         {
            _nestLevel = value;
            StyleProtoChain.initTextField(this);
            styleChangedFlag = true;
            validateNow();
         }
      }
      
      public function get minHeight() : Number
      {
         return 0;
      }
      
      public function getExplicitOrMeasuredHeight() : Number
      {
         return !isNaN(explicitHeight)?Number(explicitHeight):Number(measuredHeight);
      }
      
      public function getStyle(styleProp:String) : *
      {
         if(StyleManager.inheritingStyles[styleProp])
         {
            return !!inheritingStyles?inheritingStyles[styleProp]:IStyleClient(parent).getStyle(styleProp);
         }
         return !!nonInheritingStyles?nonInheritingStyles[styleProp]:IStyleClient(parent).getStyle(styleProp);
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
      
      public function setColor(color:uint) : void
      {
         explicitColor = color;
         styleChangedFlag = true;
         invalidateDisplayListFlag = true;
         validateNow();
      }
      
      override public function replaceText(beginIndex:int, endIndex:int, newText:String) : void
      {
         super.replaceText(beginIndex,endIndex,newText);
         dispatchEvent(new Event("textReplace"));
      }
      
      private function creatingSystemManager() : ISystemManager
      {
         return moduleFactory != null && moduleFactory is ISystemManager?ISystemManager(moduleFactory):systemManager;
      }
      
      public function set document(value:Object) : void
      {
         _document = value;
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
      
      public function get explicitMinHeight() : Number
      {
         return NaN;
      }
      
      public function get focusPane() : Sprite
      {
         return null;
      }
      
      public function getTextStyles() : TextFormat
      {
         var textFormat:TextFormat = new TextFormat();
         textFormat.align = getStyle("textAlign");
         textFormat.bold = getStyle("fontWeight") == "bold";
         if(enabled)
         {
            if(explicitColor == StyleManager.NOT_A_COLOR)
            {
               textFormat.color = getStyle("color");
            }
            else
            {
               textFormat.color = explicitColor;
            }
         }
         else
         {
            textFormat.color = getStyle("disabledColor");
         }
         textFormat.font = StringUtil.trimArrayElements(getStyle("fontFamily"),",");
         textFormat.indent = getStyle("textIndent");
         textFormat.italic = getStyle("fontStyle") == "italic";
         textFormat.kerning = getStyle("kerning");
         textFormat.leading = getStyle("leading");
         textFormat.leftMargin = !!ignorePadding?0:getStyle("paddingLeft");
         textFormat.letterSpacing = getStyle("letterSpacing");
         textFormat.rightMargin = !!ignorePadding?0:getStyle("paddingRight");
         textFormat.size = getStyle("fontSize");
         textFormat.underline = getStyle("textDecoration") == "underline";
         cachedTextFormat = textFormat;
         return textFormat;
      }
      
      override public function set text(value:String) : void
      {
         if(!value)
         {
            value = "";
         }
         if(!isHTML && super.text == value)
         {
            return;
         }
         super.text = value;
         explicitHTMLText = null;
         if(invalidateDisplayListFlag)
         {
            validateNow();
         }
      }
      
      public function getExplicitOrMeasuredWidth() : Number
      {
         return !isNaN(explicitWidth)?Number(explicitWidth):Number(measuredWidth);
      }
      
      public function get showInAutomationHierarchy() : Boolean
      {
         return true;
      }
      
      public function set automationName(value:String) : void
      {
         _automationName = value;
      }
      
      public function get systemManager() : ISystemManager
      {
         var ui:IUIComponent = null;
         var o:DisplayObject = parent;
         while(o)
         {
            ui = o as IUIComponent;
            if(ui)
            {
               return ui.systemManager;
            }
            o = o.parent;
         }
         return null;
      }
      
      public function setStyle(styleProp:String, value:*) : void
      {
      }
      
      public function get percentWidth() : Number
      {
         return NaN;
      }
      
      public function get explicitHeight() : Number
      {
         return _explicitHeight;
      }
      
      public function get baselinePosition() : Number
      {
         var tlm:TextLineMetrics = null;
         if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
         {
            tlm = getLineMetrics(0);
            return height - 4 - tlm.descent;
         }
         if(!parent)
         {
            return NaN;
         }
         var isEmpty:* = text == "";
         if(isEmpty)
         {
            super.text = "Wj";
         }
         tlm = getLineMetrics(0);
         if(isEmpty)
         {
            super.text = "";
         }
         return 2 + tlm.ascent;
      }
      
      public function set enabled(value:Boolean) : void
      {
         mouseEnabled = value;
         _enabled = value;
         styleChanged("color");
      }
      
      public function get minWidth() : Number
      {
         return 0;
      }
      
      public function get automationValue() : Array
      {
         if(automationDelegate)
         {
            return automationDelegate.automationValue;
         }
         return [""];
      }
      
      public function get tweeningProperties() : Array
      {
         return null;
      }
      
      public function get measuredWidth() : Number
      {
         validateNow();
         if(!stage)
         {
            return textWidth + TEXT_WIDTH_PADDING;
         }
         return textWidth * transform.concatenatedMatrix.d + TEXT_WIDTH_PADDING;
      }
      
      public function set tweeningProperties(value:Array) : void
      {
      }
      
      public function createAutomationIDPart(child:IAutomationObject) : Object
      {
         return null;
      }
      
      override public function get parent() : DisplayObjectContainer
      {
         return !!_parent?_parent:super.parent;
      }
      
      public function set updateCompletePendingFlag(value:Boolean) : void
      {
         _updateCompletePendingFlag = value;
      }
      
      public function setActualSize(w:Number, h:Number) : void
      {
         if(width != w)
         {
            width = w;
         }
         if(height != h)
         {
            height = h;
         }
      }
      
      public function get numAutomationChildren() : int
      {
         return 0;
      }
      
      public function set focusPane(value:Sprite) : void
      {
      }
      
      public function getAutomationChildAt(index:int) : IAutomationObject
      {
         return null;
      }
      
      public function get inheritingStyles() : Object
      {
         return _inheritingStyles;
      }
      
      public function get owner() : DisplayObjectContainer
      {
         return !!_owner?_owner:parent;
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
         else if(p is SystemManager)
         {
            _parent = p;
         }
         else
         {
            _parent = p.parent;
         }
      }
      
      public function get processedDescriptors() : Boolean
      {
         return _processedDescriptors;
      }
      
      public function get maxWidth() : Number
      {
         return UIComponent.DEFAULT_MAX_WIDTH;
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
      
      public function get initialized() : Boolean
      {
         return _initialized;
      }
      
      public function invalidateDisplayList() : void
      {
         invalidateDisplayListFlag = true;
      }
      
      public function invalidateProperties() : void
      {
      }
      
      override public function insertXMLText(beginIndex:int, endIndex:int, richText:String, pasting:Boolean = false) : void
      {
         super.insertXMLText(beginIndex,endIndex,richText,pasting);
         dispatchEvent(new Event("textInsert"));
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
         }
      }
      
      override public function set htmlText(value:String) : void
      {
         if(!value)
         {
            value = "";
         }
         if(isHTML && super.htmlText == value)
         {
            return;
         }
         if(cachedTextFormat && styleSheet == null)
         {
            defaultTextFormat = cachedTextFormat;
         }
         super.htmlText = value;
         explicitHTMLText = value;
         if(invalidateDisplayListFlag)
         {
            validateNow();
         }
      }
      
      public function set showInAutomationHierarchy(value:Boolean) : void
      {
      }
      
      private function resourceManager_changeHandler(event:Event) : void
      {
         truncationIndicatorResource = resourceManager.getString("core","truncationIndicator");
         if(untruncatedText != null)
         {
            super.text = untruncatedText;
            truncateToFit();
         }
      }
      
      public function set measuredMinWidth(value:Number) : void
      {
      }
      
      public function set explicitHeight(value:Number) : void
      {
         _explicitHeight = value;
      }
      
      public function get explicitMinWidth() : Number
      {
         return NaN;
      }
      
      public function set percentWidth(value:Number) : void
      {
      }
      
      public function get imeMode() : String
      {
         return _imeMode;
      }
      
      public function get moduleFactory() : IFlexModuleFactory
      {
         return _moduleFactory;
      }
      
      public function set systemManager(value:ISystemManager) : void
      {
      }
      
      public function get explicitMaxWidth() : Number
      {
         return NaN;
      }
      
      public function get document() : Object
      {
         return _document;
      }
      
      public function get updateCompletePendingFlag() : Boolean
      {
         return _updateCompletePendingFlag;
      }
      
      public function replayAutomatableEvent(event:Event) : Boolean
      {
         if(automationDelegate)
         {
            return automationDelegate.replayAutomatableEvent(event);
         }
         return false;
      }
      
      public function get enabled() : Boolean
      {
         return _enabled;
      }
      
      public function set owner(value:DisplayObjectContainer) : void
      {
         _owner = value;
      }
      
      public function get automationTabularData() : Object
      {
         return null;
      }
      
      public function set nonInheritingStyles(value:Object) : void
      {
         _nonInheritingStyles = value;
      }
      
      public function get includeInLayout() : Boolean
      {
         return _includeInLayout;
      }
      
      public function get measuredMinWidth() : Number
      {
         return 0;
      }
      
      public function set isPopUp(value:Boolean) : void
      {
      }
      
      public function set automationDelegate(value:Object) : void
      {
         _automationDelegate = value as IAutomationObject;
      }
      
      public function get measuredHeight() : Number
      {
         validateNow();
         if(!stage)
         {
            return textHeight + TEXT_HEIGHT_PADDING;
         }
         return textHeight * transform.concatenatedMatrix.a + TEXT_HEIGHT_PADDING;
      }
      
      public function set processedDescriptors(value:Boolean) : void
      {
         _processedDescriptors = value;
      }
      
      public function setFocus() : void
      {
         systemManager.stage.focus = this;
      }
      
      public function initialize() : void
      {
      }
      
      public function set percentHeight(value:Number) : void
      {
      }
      
      public function resolveAutomationIDPart(criteria:Object) : Array
      {
         return [];
      }
      
      public function set inheritingStyles(value:Object) : void
      {
         _inheritingStyles = value;
      }
      
      public function getUITextFormat() : UITextFormat
      {
         validateNow();
         var textFormat:UITextFormat = new UITextFormat(creatingSystemManager());
         textFormat.moduleFactory = moduleFactory;
         textFormat.copyFrom(getTextFormat());
         textFormat.antiAliasType = antiAliasType;
         textFormat.gridFitType = gridFitType;
         textFormat.sharpness = sharpness;
         textFormat.thickness = thickness;
         return textFormat;
      }
      
      private function changeHandler(event:Event) : void
      {
         explicitHTMLText = null;
      }
      
      public function set initialized(value:Boolean) : void
      {
         _initialized = value;
      }
      
      public function get nonZeroTextHeight() : Number
      {
         var result:Number = NaN;
         if(super.text == "")
         {
            super.text = "Wj";
            result = textHeight;
            super.text = "";
            return result;
         }
         return textHeight;
      }
      
      public function owns(child:DisplayObject) : Boolean
      {
         return child == this;
      }
      
      override public function setTextFormat(format:TextFormat, beginIndex:int = -1, endIndex:int = -1) : void
      {
         if(styleSheet)
         {
            return;
         }
         super.setTextFormat(format,beginIndex,endIndex);
         dispatchEvent(new Event("textFormatChange"));
      }
      
      public function get nonInheritingStyles() : Object
      {
         return _nonInheritingStyles;
      }
      
      public function setVisible(visible:Boolean, noEvent:Boolean = false) : void
      {
         this.visible = visible;
      }
      
      public function get maxHeight() : Number
      {
         return UIComponent.DEFAULT_MAX_HEIGHT;
      }
      
      public function get automationDelegate() : Object
      {
         return _automationDelegate;
      }
      
      public function get isPopUp() : Boolean
      {
         return false;
      }
      
      public function set ignorePadding(value:Boolean) : void
      {
         _ignorePadding = value;
         styleChanged(null);
      }
      
      public function set styleName(value:Object) : void
      {
         if(_styleName === value)
         {
            return;
         }
         _styleName = value;
         if(parent)
         {
            StyleProtoChain.initTextField(this);
            styleChanged("styleName");
         }
      }
      
      public function styleChanged(styleProp:String) : void
      {
         styleChangedFlag = true;
         if(!invalidateDisplayListFlag)
         {
            invalidateDisplayListFlag = true;
            if("callLater" in parent)
            {
               Object(parent).callLater(validateNow);
            }
         }
      }
      
      public function get percentHeight() : Number
      {
         return NaN;
      }
      
      private function get isHTML() : Boolean
      {
         return explicitHTMLText != null;
      }
      
      public function get explicitMaxHeight() : Number
      {
         return NaN;
      }
      
      public function get styleName() : Object
      {
         return _styleName;
      }
      
      public function set explicitWidth(value:Number) : void
      {
         _explicitWidth = value;
      }
      
      public function validateNow() : void
      {
         var textFormat:TextFormat = null;
         var embeddedFont:EmbeddedFont = null;
         var fontModuleFactory:IFlexModuleFactory = null;
         var sm:ISystemManager = null;
         if(!parent)
         {
            return;
         }
         if(!isNaN(explicitWidth) && super.width != explicitWidth)
         {
            super.width = explicitWidth > 4?Number(explicitWidth):Number(4);
         }
         if(!isNaN(explicitHeight) && super.height != explicitHeight)
         {
            super.height = explicitHeight;
         }
         if(styleChangedFlag)
         {
            textFormat = getTextStyles();
            if(textFormat.font)
            {
               embeddedFont = getEmbeddedFont(textFormat.font,textFormat.bold,textFormat.italic);
               fontModuleFactory = embeddedFontRegistry.getAssociatedModuleFactory(embeddedFont,moduleFactory);
               if(fontModuleFactory != null)
               {
                  embedFonts = true;
               }
               else
               {
                  sm = creatingSystemManager();
                  embedFonts = sm != null && sm.isFontFaceEmbedded(textFormat);
               }
            }
            else
            {
               embedFonts = getStyle("embedFonts");
            }
            if(getStyle("fontAntiAliasType") != undefined)
            {
               antiAliasType = getStyle("fontAntiAliasType");
               gridFitType = getStyle("fontGridFitType");
               sharpness = getStyle("fontSharpness");
               thickness = getStyle("fontThickness");
            }
            if(!styleSheet)
            {
               super.setTextFormat(textFormat);
               defaultTextFormat = textFormat;
            }
            dispatchEvent(new Event("textFieldStyleChange"));
         }
         styleChangedFlag = false;
         invalidateDisplayListFlag = false;
      }
      
      public function set toolTip(value:String) : void
      {
         var oldValue:String = _toolTip;
         _toolTip = value;
         ToolTipManager.registerToolTip(this,oldValue,value);
      }
      
      public function move(x:Number, y:Number) : void
      {
         if(this.x != x)
         {
            this.x = x;
         }
         if(this.y != y)
         {
            this.y = y;
         }
      }
      
      public function get toolTip() : String
      {
         return _toolTip;
      }
      
      public function get ignorePadding() : Boolean
      {
         return _ignorePadding;
      }
      
      public function get explicitWidth() : Number
      {
         return _explicitWidth;
      }
      
      public function invalidateSize() : void
      {
         invalidateDisplayListFlag = true;
      }
      
      public function set measuredMinHeight(value:Number) : void
      {
      }
      
      public function get measuredMinHeight() : Number
      {
         return 0;
      }
      
      public function set moduleFactory(factory:IFlexModuleFactory) : void
      {
         _moduleFactory = factory;
      }
   }
}
