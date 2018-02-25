package mx.skins.halo
{
   import mx.core.mx_internal;
   import mx.utils.ColorUtil;
   
   use namespace mx_internal;
   
   public class HaloColors
   {
      
      private static var cache:Object = {};
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public function HaloColors()
      {
         super();
      }
      
      public static function getCacheKey(... colors) : String
      {
         return colors.join(",");
      }
      
      public static function addHaloColors(colors:Object, themeColor:uint, fillColor0:uint, fillColor1:uint) : void
      {
         var key:String = getCacheKey(themeColor,fillColor0,fillColor1);
         var o:Object = cache[key];
         if(!o)
         {
            o = cache[key] = {};
            o.themeColLgt = ColorUtil.adjustBrightness(themeColor,100);
            o.themeColDrk1 = ColorUtil.adjustBrightness(themeColor,-75);
            o.themeColDrk2 = ColorUtil.adjustBrightness(themeColor,-25);
            o.fillColorBright1 = ColorUtil.adjustBrightness2(fillColor0,15);
            o.fillColorBright2 = ColorUtil.adjustBrightness2(fillColor1,15);
            o.fillColorPress1 = ColorUtil.adjustBrightness2(themeColor,85);
            o.fillColorPress2 = ColorUtil.adjustBrightness2(themeColor,60);
            o.bevelHighlight1 = ColorUtil.adjustBrightness2(fillColor0,40);
            o.bevelHighlight2 = ColorUtil.adjustBrightness2(fillColor1,40);
         }
         colors.themeColLgt = o.themeColLgt;
         colors.themeColDrk1 = o.themeColDrk1;
         colors.themeColDrk2 = o.themeColDrk2;
         colors.fillColorBright1 = o.fillColorBright1;
         colors.fillColorBright2 = o.fillColorBright2;
         colors.fillColorPress1 = o.fillColorPress1;
         colors.fillColorPress2 = o.fillColorPress2;
         colors.bevelHighlight1 = o.bevelHighlight1;
         colors.bevelHighlight2 = o.bevelHighlight2;
      }
   }
}
