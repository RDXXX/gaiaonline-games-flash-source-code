package mx.core
{
   import flash.text.FontStyle;
   import flash.utils.Dictionary;
   
   use namespace mx_internal;
   
   public class EmbeddedFontRegistry implements IEmbeddedFontRegistry
   {
      
      private static var fonts:Object = {};
      
      private static var instance:IEmbeddedFontRegistry;
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public function EmbeddedFontRegistry()
      {
         super();
      }
      
      public static function registerFonts(fonts:Object, moduleFactory:IFlexModuleFactory) : void
      {
         var f:* = null;
         var fontObj:Object = null;
         var fieldIter:* = null;
         var bold:Boolean = false;
         var italic:Boolean = false;
         var fontRegistry:IEmbeddedFontRegistry = IEmbeddedFontRegistry(Singleton.getInstance("mx.core::IEmbeddedFontRegistry"));
         for(f in fonts)
         {
            fontObj = fonts[f];
            for(fieldIter in fontObj)
            {
               if(fontObj[fieldIter] != false)
               {
                  if(fieldIter == "regular")
                  {
                     bold = false;
                     italic = false;
                  }
                  else if(fieldIter == "boldItalic")
                  {
                     bold = true;
                     italic = true;
                  }
                  else if(fieldIter == "bold")
                  {
                     bold = true;
                     italic = false;
                  }
                  else if(fieldIter == "italic")
                  {
                     bold = false;
                     italic = true;
                  }
                  fontRegistry.registerFont(new EmbeddedFont(String(f),bold,italic),moduleFactory);
               }
            }
         }
      }
      
      public static function getInstance() : IEmbeddedFontRegistry
      {
         if(!instance)
         {
            instance = new EmbeddedFontRegistry();
         }
         return instance;
      }
      
      public static function getFontStyle(bold:Boolean, italic:Boolean) : String
      {
         var style:String = FontStyle.REGULAR;
         if(bold && italic)
         {
            style = FontStyle.BOLD_ITALIC;
         }
         else if(bold)
         {
            style = FontStyle.BOLD;
         }
         else if(italic)
         {
            style = FontStyle.ITALIC;
         }
         return style;
      }
      
      private static function createFontKey(font:EmbeddedFont) : String
      {
         return font.fontName + font.fontStyle;
      }
      
      private static function createEmbeddedFont(key:String) : EmbeddedFont
      {
         var fontName:String = null;
         var fontBold:Boolean = false;
         var fontItalic:Boolean = false;
         var index:int = endsWith(key,FontStyle.REGULAR);
         if(index > 0)
         {
            fontName = key.substring(0,index);
            return new EmbeddedFont(fontName,false,false);
         }
         index = endsWith(key,FontStyle.BOLD);
         if(index > 0)
         {
            fontName = key.substring(0,index);
            return new EmbeddedFont(fontName,true,false);
         }
         index = endsWith(key,FontStyle.BOLD_ITALIC);
         if(index > 0)
         {
            fontName = key.substring(0,index);
            return new EmbeddedFont(fontName,true,true);
         }
         index = endsWith(key,FontStyle.ITALIC);
         if(index > 0)
         {
            fontName = key.substring(0,index);
            return new EmbeddedFont(fontName,false,true);
         }
         return new EmbeddedFont("",false,false);
      }
      
      private static function endsWith(s:String, match:String) : int
      {
         var index:int = s.lastIndexOf(match);
         if(index > 0 && index + match.length == s.length)
         {
            return index;
         }
         return -1;
      }
      
      public function getAssociatedModuleFactory(font:EmbeddedFont, defaultModuleFactory:IFlexModuleFactory) : IFlexModuleFactory
      {
         var found:int = 0;
         var iter:* = null;
         var fontDictionary:Dictionary = fonts[createFontKey(font)];
         if(fontDictionary)
         {
            found = fontDictionary[defaultModuleFactory];
            if(found)
            {
               return defaultModuleFactory;
            }
            for(iter in fontDictionary)
            {
               return iter as IFlexModuleFactory;
            }
         }
         return null;
      }
      
      public function deregisterFont(font:EmbeddedFont, moduleFactory:IFlexModuleFactory) : void
      {
         var count:int = 0;
         var obj:* = null;
         var fontKey:String = createFontKey(font);
         var fontDictionary:Dictionary = fonts[fontKey];
         if(fontDictionary != null)
         {
            delete fontDictionary[moduleFactory];
            count = 0;
            for(obj in fontDictionary)
            {
               count++;
            }
            if(count == 0)
            {
               delete fonts[fontKey];
            }
         }
      }
      
      public function getFonts() : Array
      {
         var key:* = null;
         var fontArray:Array = [];
         for(key in fonts)
         {
            fontArray.push(createEmbeddedFont(key));
         }
         return fontArray;
      }
      
      public function registerFont(font:EmbeddedFont, moduleFactory:IFlexModuleFactory) : void
      {
         var fontKey:String = createFontKey(font);
         var fontDictionary:Dictionary = fonts[fontKey];
         if(!fontDictionary)
         {
            fontDictionary = new Dictionary(true);
            fonts[fontKey] = fontDictionary;
         }
         fontDictionary[moduleFactory] = 1;
      }
   }
}
