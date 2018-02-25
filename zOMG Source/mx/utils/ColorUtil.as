package mx.utils
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ColorUtil
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public function ColorUtil()
      {
         super();
      }
      
      public static function adjustBrightness2(rgb:uint, brite:Number) : uint
      {
         var r:Number = NaN;
         var g:Number = NaN;
         var b:Number = NaN;
         if(brite == 0)
         {
            return rgb;
         }
         if(brite < 0)
         {
            brite = (100 + brite) / 100;
            r = (rgb >> 16 & 255) * brite;
            g = (rgb >> 8 & 255) * brite;
            b = (rgb & 255) * brite;
         }
         else
         {
            brite = brite / 100;
            r = rgb >> 16 & 255;
            g = rgb >> 8 & 255;
            b = rgb & 255;
            r = r + (255 - r) * brite;
            g = g + (255 - g) * brite;
            b = b + (255 - b) * brite;
            r = Math.min(r,255);
            g = Math.min(g,255);
            b = Math.min(b,255);
         }
         return r << 16 | g << 8 | b;
      }
      
      public static function rgbMultiply(rgb1:uint, rgb2:uint) : uint
      {
         var r1:Number = rgb1 >> 16 & 255;
         var g1:Number = rgb1 >> 8 & 255;
         var b1:Number = rgb1 & 255;
         var r2:Number = rgb2 >> 16 & 255;
         var g2:Number = rgb2 >> 8 & 255;
         var b2:Number = rgb2 & 255;
         return r1 * r2 / 255 << 16 | g1 * g2 / 255 << 8 | b1 * b2 / 255;
      }
      
      public static function adjustBrightness(rgb:uint, brite:Number) : uint
      {
         var r:Number = Math.max(Math.min((rgb >> 16 & 255) + brite,255),0);
         var g:Number = Math.max(Math.min((rgb >> 8 & 255) + brite,255),0);
         var b:Number = Math.max(Math.min((rgb & 255) + brite,255),0);
         return r << 16 | g << 8 | b;
      }
   }
}
