package mx.styles
{
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.system.ApplicationDomain;
   import flash.system.SecurityDomain;
   import flash.utils.Timer;
   import mx.core.FlexVersion;
   import mx.core.mx_internal;
   import mx.events.ModuleEvent;
   import mx.events.StyleEvent;
   import mx.managers.SystemManagerGlobals;
   import mx.modules.IModuleInfo;
   import mx.modules.ModuleManager;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   
   use namespace mx_internal;
   
   public class StyleManagerImpl implements IStyleManager2
   {
      
      private static var parentSizeInvalidatingStyles:Object = {
         "bottom":true,
         "horizontalCenter":true,
         "left":true,
         "right":true,
         "top":true,
         "verticalCenter":true,
         "baseline":true
      };
      
      private static var colorNames:Object = {
         "transparent":"transparent",
         "black":0,
         "blue":255,
         "green":32768,
         "gray":8421504,
         "silver":12632256,
         "lime":65280,
         "olive":8421376,
         "white":16777215,
         "yellow":16776960,
         "maroon":8388608,
         "navy":128,
         "red":16711680,
         "purple":8388736,
         "teal":32896,
         "fuchsia":16711935,
         "aqua":65535,
         "magenta":16711935,
         "cyan":65535,
         "halogreen":8453965,
         "haloblue":40447,
         "haloorange":16758272,
         "halosilver":11455193
      };
      
      private static var inheritingTextFormatStyles:Object = {
         "align":true,
         "bold":true,
         "color":true,
         "font":true,
         "indent":true,
         "italic":true,
         "size":true
      };
      
      private static var instance:IStyleManager2;
      
      private static var parentDisplayListInvalidatingStyles:Object = {
         "bottom":true,
         "horizontalCenter":true,
         "left":true,
         "right":true,
         "top":true,
         "verticalCenter":true,
         "baseline":true
      };
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      private static var sizeInvalidatingStyles:Object = {
         "borderStyle":true,
         "borderThickness":true,
         "fontAntiAliasType":true,
         "fontFamily":true,
         "fontGridFitType":true,
         "fontSharpness":true,
         "fontSize":true,
         "fontStyle":true,
         "fontThickness":true,
         "fontWeight":true,
         "headerHeight":true,
         "horizontalAlign":true,
         "horizontalGap":true,
         "kerning":true,
         "leading":true,
         "letterSpacing":true,
         "paddingBottom":true,
         "paddingLeft":true,
         "paddingRight":true,
         "paddingTop":true,
         "strokeWidth":true,
         "tabHeight":true,
         "tabWidth":true,
         "verticalAlign":true,
         "verticalGap":true
      };
       
      
      private var _stylesRoot:Object;
      
      private var _selectors:Object;
      
      private var styleModules:Object;
      
      private var _inheritingStyles:Object;
      
      private var resourceManager:IResourceManager;
      
      private var _typeSelectorCache:Object;
      
      public function StyleManagerImpl()
      {
         _selectors = {};
         styleModules = {};
         resourceManager = ResourceManager.getInstance();
         _inheritingStyles = {};
         _typeSelectorCache = {};
         super();
      }
      
      public static function getInstance() : IStyleManager2
      {
         if(!instance)
         {
            instance = new StyleManagerImpl();
         }
         return instance;
      }
      
      public function setStyleDeclaration(selector:String, styleDeclaration:CSSStyleDeclaration, update:Boolean) : void
      {
         styleDeclaration.selectorRefCount++;
         _selectors[selector] = styleDeclaration;
         typeSelectorCache = {};
         if(update)
         {
            styleDeclarationsChanged();
         }
      }
      
      public function registerParentDisplayListInvalidatingStyle(styleName:String) : void
      {
         parentDisplayListInvalidatingStyles[styleName] = true;
      }
      
      public function getStyleDeclaration(selector:String) : CSSStyleDeclaration
      {
         var index:int = 0;
         if(selector.charAt(0) != ".")
         {
            index = selector.lastIndexOf(".");
            if(index != -1)
            {
               selector = selector.substr(index + 1);
            }
         }
         return _selectors[selector];
      }
      
      public function set typeSelectorCache(value:Object) : void
      {
         _typeSelectorCache = value;
      }
      
      public function isColorName(colorName:String) : Boolean
      {
         return colorNames[colorName.toLowerCase()] !== undefined;
      }
      
      public function set inheritingStyles(value:Object) : void
      {
         _inheritingStyles = value;
      }
      
      public function getColorNames(colors:Array) : void
      {
         var colorNumber:uint = 0;
         if(!colors)
         {
            return;
         }
         var n:int = colors.length;
         for(var i:int = 0; i < n; i++)
         {
            if(colors[i] != null && isNaN(colors[i]))
            {
               colorNumber = getColorName(colors[i]);
               if(colorNumber != StyleManager.NOT_A_COLOR)
               {
                  colors[i] = colorNumber;
               }
            }
         }
      }
      
      public function isInheritingTextFormatStyle(styleName:String) : Boolean
      {
         return inheritingTextFormatStyles[styleName] == true;
      }
      
      public function registerParentSizeInvalidatingStyle(styleName:String) : void
      {
         parentSizeInvalidatingStyles[styleName] = true;
      }
      
      public function registerColorName(colorName:String, colorValue:uint) : void
      {
         colorNames[colorName.toLowerCase()] = colorValue;
      }
      
      public function isParentSizeInvalidatingStyle(styleName:String) : Boolean
      {
         return parentSizeInvalidatingStyles[styleName] == true;
      }
      
      public function registerInheritingStyle(styleName:String) : void
      {
         inheritingStyles[styleName] = true;
      }
      
      public function set stylesRoot(value:Object) : void
      {
         _stylesRoot = value;
      }
      
      public function get typeSelectorCache() : Object
      {
         return _typeSelectorCache;
      }
      
      public function isParentDisplayListInvalidatingStyle(styleName:String) : Boolean
      {
         return parentDisplayListInvalidatingStyles[styleName] == true;
      }
      
      public function isSizeInvalidatingStyle(styleName:String) : Boolean
      {
         return sizeInvalidatingStyles[styleName] == true;
      }
      
      public function styleDeclarationsChanged() : void
      {
         var sm:Object = null;
         var sms:Array = SystemManagerGlobals.topLevelSystemManagers;
         var n:int = sms.length;
         for(var i:int = 0; i < n; i++)
         {
            sm = sms[i];
            sm.regenerateStyleCache(true);
            sm.notifyStyleChangeInChildren(null,true);
         }
      }
      
      public function isValidStyleValue(value:*) : Boolean
      {
         return value !== undefined;
      }
      
      public function loadStyleDeclarations(url:String, update:Boolean = true, trustContent:Boolean = false) : IEventDispatcher
      {
         return loadStyleDeclarations2(url,update);
      }
      
      public function get inheritingStyles() : Object
      {
         return _inheritingStyles;
      }
      
      public function unloadStyleDeclarations(url:String, update:Boolean = true) : void
      {
         var module:IModuleInfo = null;
         var styleModuleInfo:StyleModuleInfo = styleModules[url];
         if(styleModuleInfo)
         {
            styleModuleInfo.styleModule.unload();
            module = styleModuleInfo.module;
            module.unload();
            module.removeEventListener(ModuleEvent.READY,styleModuleInfo.readyHandler);
            module.removeEventListener(ModuleEvent.ERROR,styleModuleInfo.errorHandler);
            styleModules[url] = null;
         }
         if(update)
         {
            styleDeclarationsChanged();
         }
      }
      
      public function getColorName(colorName:Object) : uint
      {
         var n:Number = NaN;
         var c:* = undefined;
         if(colorName is String)
         {
            if(colorName.charAt(0) == "#")
            {
               n = Number("0x" + colorName.slice(1));
               return !!isNaN(n)?uint(StyleManager.NOT_A_COLOR):uint(uint(n));
            }
            if(colorName.charAt(1) == "x" && colorName.charAt(0) == "0")
            {
               n = Number(colorName);
               return !!isNaN(n)?uint(StyleManager.NOT_A_COLOR):uint(uint(n));
            }
            c = colorNames[colorName.toLowerCase()];
            if(c === undefined)
            {
               return StyleManager.NOT_A_COLOR;
            }
            return uint(c);
         }
         return uint(colorName);
      }
      
      public function isInheritingStyle(styleName:String) : Boolean
      {
         return inheritingStyles[styleName] == true;
      }
      
      public function get stylesRoot() : Object
      {
         return _stylesRoot;
      }
      
      public function initProtoChainRoots() : void
      {
         if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
         {
            delete _inheritingStyles["textDecoration"];
            delete _inheritingStyles["leading"];
         }
         if(!stylesRoot)
         {
            stylesRoot = _selectors["global"].addStyleToProtoChain({},null);
         }
      }
      
      public function loadStyleDeclarations2(url:String, update:Boolean = true, applicationDomain:ApplicationDomain = null, securityDomain:SecurityDomain = null) : IEventDispatcher
      {
         var module:IModuleInfo = null;
         var styleEventDispatcher:StyleEventDispatcher = null;
         var timer:Timer = null;
         var timerHandler:Function = null;
         module = ModuleManager.getModule(url);
         var readyHandler:Function = function(moduleEvent:ModuleEvent):void
         {
            var styleModule:IStyleModule = IStyleModule(moduleEvent.module.factory.create());
            styleModules[moduleEvent.module.url].styleModule = styleModule;
            if(update)
            {
               styleDeclarationsChanged();
            }
         };
         module.addEventListener(ModuleEvent.READY,readyHandler,false,0,true);
         styleEventDispatcher = new StyleEventDispatcher(module);
         var errorHandler:Function = function(moduleEvent:ModuleEvent):void
         {
            var styleEvent:StyleEvent = null;
            var errorText:String = resourceManager.getString("styles","unableToLoad",[moduleEvent.errorText,url]);
            if(styleEventDispatcher.willTrigger(StyleEvent.ERROR))
            {
               styleEvent = new StyleEvent(StyleEvent.ERROR,moduleEvent.bubbles,moduleEvent.cancelable);
               styleEvent.bytesLoaded = 0;
               styleEvent.bytesTotal = 0;
               styleEvent.errorText = errorText;
               styleEventDispatcher.dispatchEvent(styleEvent);
               return;
            }
            throw new Error(errorText);
         };
         module.addEventListener(ModuleEvent.ERROR,errorHandler,false,0,true);
         styleModules[url] = new StyleModuleInfo(module,readyHandler,errorHandler);
         timer = new Timer(0);
         timerHandler = function(event:TimerEvent):void
         {
            timer.removeEventListener(TimerEvent.TIMER,timerHandler);
            timer.stop();
            module.load(applicationDomain,securityDomain);
         };
         timer.addEventListener(TimerEvent.TIMER,timerHandler,false,0,true);
         timer.start();
         return styleEventDispatcher;
      }
      
      public function registerSizeInvalidatingStyle(styleName:String) : void
      {
         sizeInvalidatingStyles[styleName] = true;
      }
      
      public function clearStyleDeclaration(selector:String, update:Boolean) : void
      {
         var styleDeclaration:CSSStyleDeclaration = getStyleDeclaration(selector);
         if(styleDeclaration && styleDeclaration.selectorRefCount > 0)
         {
            styleDeclaration.selectorRefCount--;
         }
         delete _selectors[selector];
         if(update)
         {
            styleDeclarationsChanged();
         }
      }
      
      public function get selectors() : Array
      {
         var i:* = null;
         var theSelectors:Array = [];
         for(i in _selectors)
         {
            theSelectors.push(i);
         }
         return theSelectors;
      }
   }
}

import flash.events.EventDispatcher;
import mx.events.ModuleEvent;
import mx.events.StyleEvent;
import mx.modules.IModuleInfo;

class StyleEventDispatcher extends EventDispatcher
{
    
   
   function StyleEventDispatcher(moduleInfo:IModuleInfo)
   {
      super();
      moduleInfo.addEventListener(ModuleEvent.ERROR,moduleInfo_errorHandler,false,0,true);
      moduleInfo.addEventListener(ModuleEvent.PROGRESS,moduleInfo_progressHandler,false,0,true);
      moduleInfo.addEventListener(ModuleEvent.READY,moduleInfo_readyHandler,false,0,true);
   }
   
   private function moduleInfo_progressHandler(event:ModuleEvent) : void
   {
      var styleEvent:StyleEvent = new StyleEvent(StyleEvent.PROGRESS,event.bubbles,event.cancelable);
      styleEvent.bytesLoaded = event.bytesLoaded;
      styleEvent.bytesTotal = event.bytesTotal;
      dispatchEvent(styleEvent);
   }
   
   private function moduleInfo_readyHandler(event:ModuleEvent) : void
   {
      var styleEvent:StyleEvent = new StyleEvent(StyleEvent.COMPLETE);
      styleEvent.bytesLoaded = event.bytesLoaded;
      styleEvent.bytesTotal = event.bytesTotal;
      dispatchEvent(styleEvent);
   }
   
   private function moduleInfo_errorHandler(event:ModuleEvent) : void
   {
      var styleEvent:StyleEvent = new StyleEvent(StyleEvent.ERROR,event.bubbles,event.cancelable);
      styleEvent.bytesLoaded = event.bytesLoaded;
      styleEvent.bytesTotal = event.bytesTotal;
      styleEvent.errorText = event.errorText;
      dispatchEvent(styleEvent);
   }
}

import mx.modules.IModuleInfo;
import mx.styles.IStyleModule;

class StyleModuleInfo
{
    
   
   public var errorHandler:Function;
   
   public var readyHandler:Function;
   
   public var module:IModuleInfo;
   
   public var styleModule:IStyleModule;
   
   function StyleModuleInfo(module:IModuleInfo, readyHandler:Function, errorHandler:Function)
   {
      super();
      this.module = module;
      this.readyHandler = readyHandler;
      this.errorHandler = errorHandler;
   }
}
