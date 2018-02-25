package mx.core
{
   use namespace mx_internal;
   
   public class EmbeddedFont
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var _fontName:String;
      
      private var _fontStyle:String;
      
      public function EmbeddedFont(fontName:String, bold:Boolean, italic:Boolean)
      {
         super();
         _fontName = fontName;
         _fontStyle = EmbeddedFontRegistry.getFontStyle(bold,italic);
      }
      
      public function get fontStyle() : String
      {
         return _fontStyle;
      }
      
      public function get fontName() : String
      {
         return _fontName;
      }
   }
}
