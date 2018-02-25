package mx.styles
{
   import flash.events.IEventDispatcher;
   import flash.system.ApplicationDomain;
   import flash.system.SecurityDomain;
   import mx.core.Singleton;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class StyleManager
   {
      
      private static var _impl:IStyleManager2;
      
      private static var implClassDependency:StyleManagerImpl;
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      public static const NOT_A_COLOR:uint = 4294967295;
       
      
      public function StyleManager()
      {
         super();
      }
      
      public static function isParentSizeInvalidatingStyle(styleName:String) : Boolean
      {
         return impl.isParentSizeInvalidatingStyle(styleName);
      }
      
      public static function registerInheritingStyle(styleName:String) : void
      {
         impl.registerInheritingStyle(styleName);
      }
      
      mx_internal static function set stylesRoot(value:Object) : void
      {
         impl.stylesRoot = value;
      }
      
      mx_internal static function get inheritingStyles() : Object
      {
         return impl.inheritingStyles;
      }
      
      mx_internal static function styleDeclarationsChanged() : void
      {
         impl.styleDeclarationsChanged();
      }
      
      public static function setStyleDeclaration(selector:String, styleDeclaration:CSSStyleDeclaration, update:Boolean) : void
      {
         impl.setStyleDeclaration(selector,styleDeclaration,update);
      }
      
      public static function registerParentDisplayListInvalidatingStyle(styleName:String) : void
      {
         impl.registerParentDisplayListInvalidatingStyle(styleName);
      }
      
      mx_internal static function get typeSelectorCache() : Object
      {
         return impl.typeSelectorCache;
      }
      
      mx_internal static function set inheritingStyles(value:Object) : void
      {
         impl.inheritingStyles = value;
      }
      
      public static function isColorName(colorName:String) : Boolean
      {
         return impl.isColorName(colorName);
      }
      
      public static function isParentDisplayListInvalidatingStyle(styleName:String) : Boolean
      {
         return impl.isParentDisplayListInvalidatingStyle(styleName);
      }
      
      public static function isSizeInvalidatingStyle(styleName:String) : Boolean
      {
         return impl.isSizeInvalidatingStyle(styleName);
      }
      
      public static function getColorName(colorName:Object) : uint
      {
         return impl.getColorName(colorName);
      }
      
      mx_internal static function set typeSelectorCache(value:Object) : void
      {
         impl.typeSelectorCache = value;
      }
      
      public static function unloadStyleDeclarations(url:String, update:Boolean = true) : void
      {
         impl.unloadStyleDeclarations(url,update);
      }
      
      public static function getColorNames(colors:Array) : void
      {
         impl.getColorNames(colors);
      }
      
      public static function loadStyleDeclarations(url:String, update:Boolean = true, trustContent:Boolean = false, applicationDomain:ApplicationDomain = null, securityDomain:SecurityDomain = null) : IEventDispatcher
      {
         return impl.loadStyleDeclarations2(url,update,applicationDomain,securityDomain);
      }
      
      private static function get impl() : IStyleManager2
      {
         if(!_impl)
         {
            _impl = IStyleManager2(Singleton.getInstance("mx.styles::IStyleManager2"));
         }
         return _impl;
      }
      
      public static function isValidStyleValue(value:*) : Boolean
      {
         return impl.isValidStyleValue(value);
      }
      
      mx_internal static function get stylesRoot() : Object
      {
         return impl.stylesRoot;
      }
      
      public static function isInheritingStyle(styleName:String) : Boolean
      {
         return impl.isInheritingStyle(styleName);
      }
      
      mx_internal static function initProtoChainRoots() : void
      {
         impl.initProtoChainRoots();
      }
      
      public static function registerParentSizeInvalidatingStyle(styleName:String) : void
      {
         impl.registerParentSizeInvalidatingStyle(styleName);
      }
      
      public static function get selectors() : Array
      {
         return impl.selectors;
      }
      
      public static function registerSizeInvalidatingStyle(styleName:String) : void
      {
         impl.registerSizeInvalidatingStyle(styleName);
      }
      
      public static function clearStyleDeclaration(selector:String, update:Boolean) : void
      {
         impl.clearStyleDeclaration(selector,update);
      }
      
      public static function registerColorName(colorName:String, colorValue:uint) : void
      {
         impl.registerColorName(colorName,colorValue);
      }
      
      public static function isInheritingTextFormatStyle(styleName:String) : Boolean
      {
         return impl.isInheritingTextFormatStyle(styleName);
      }
      
      public static function getStyleDeclaration(selector:String) : CSSStyleDeclaration
      {
         return impl.getStyleDeclaration(selector);
      }
   }
}
