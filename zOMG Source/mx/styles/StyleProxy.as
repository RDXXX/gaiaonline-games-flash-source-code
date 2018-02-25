package mx.styles
{
   import mx.core.FlexVersion;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class StyleProxy implements IStyleClient
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var _source:IStyleClient;
      
      private var _filterMap:Object;
      
      public function StyleProxy(source:IStyleClient, filterMap:Object)
      {
         super();
         this.filterMap = filterMap;
         this.source = source;
      }
      
      public function styleChanged(styleProp:String) : void
      {
         return _source.styleChanged(styleProp);
      }
      
      public function get filterMap() : Object
      {
         return FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0?null:_filterMap;
      }
      
      public function set filterMap(value:Object) : void
      {
         _filterMap = value;
      }
      
      public function get styleDeclaration() : CSSStyleDeclaration
      {
         return _source.styleDeclaration;
      }
      
      public function notifyStyleChangeInChildren(styleProp:String, recursive:Boolean) : void
      {
         return _source.notifyStyleChangeInChildren(styleProp,recursive);
      }
      
      public function set inheritingStyles(value:Object) : void
      {
      }
      
      public function get source() : IStyleClient
      {
         return _source;
      }
      
      public function get styleName() : Object
      {
         if(_source.styleName is IStyleClient)
         {
            return new StyleProxy(IStyleClient(_source.styleName),filterMap);
         }
         return _source.styleName;
      }
      
      public function registerEffects(effects:Array) : void
      {
         return _source.registerEffects(effects);
      }
      
      public function regenerateStyleCache(recursive:Boolean) : void
      {
         _source.regenerateStyleCache(recursive);
      }
      
      public function get inheritingStyles() : Object
      {
         return _source.inheritingStyles;
      }
      
      public function get className() : String
      {
         return _source.className;
      }
      
      public function clearStyle(styleProp:String) : void
      {
         _source.clearStyle(styleProp);
      }
      
      public function getClassStyleDeclarations() : Array
      {
         return _source.getClassStyleDeclarations();
      }
      
      public function set nonInheritingStyles(value:Object) : void
      {
      }
      
      public function setStyle(styleProp:String, newValue:*) : void
      {
         _source.setStyle(styleProp,newValue);
      }
      
      public function get nonInheritingStyles() : Object
      {
         return FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0?_source.nonInheritingStyles:null;
      }
      
      public function set styleName(value:Object) : void
      {
         _source.styleName = value;
      }
      
      public function getStyle(styleProp:String) : *
      {
         return _source.getStyle(styleProp);
      }
      
      public function set source(value:IStyleClient) : void
      {
         _source = value;
      }
      
      public function set styleDeclaration(value:CSSStyleDeclaration) : void
      {
         _source.styleDeclaration = styleDeclaration;
      }
   }
}
