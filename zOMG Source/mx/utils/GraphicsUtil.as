package mx.utils
{
   import flash.display.Graphics;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class GraphicsUtil
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public function GraphicsUtil()
      {
         super();
      }
      
      public static function drawRoundRectComplex(graphics:Graphics, x:Number, y:Number, width:Number, height:Number, topLeftRadius:Number, topRightRadius:Number, bottomLeftRadius:Number, bottomRightRadius:Number) : void
      {
         var xw:Number = x + width;
         var yh:Number = y + height;
         var minSize:Number = width < height?Number(width * 2):Number(height * 2);
         topLeftRadius = topLeftRadius < minSize?Number(topLeftRadius):Number(minSize);
         topRightRadius = topRightRadius < minSize?Number(topRightRadius):Number(minSize);
         bottomLeftRadius = bottomLeftRadius < minSize?Number(bottomLeftRadius):Number(minSize);
         bottomRightRadius = bottomRightRadius < minSize?Number(bottomRightRadius):Number(minSize);
         var a:Number = bottomRightRadius * 0.292893218813453;
         var s:Number = bottomRightRadius * 0.585786437626905;
         graphics.moveTo(xw,yh - bottomRightRadius);
         graphics.curveTo(xw,yh - s,xw - a,yh - a);
         graphics.curveTo(xw - s,yh,xw - bottomRightRadius,yh);
         a = bottomLeftRadius * 0.292893218813453;
         s = bottomLeftRadius * 0.585786437626905;
         graphics.lineTo(x + bottomLeftRadius,yh);
         graphics.curveTo(x + s,yh,x + a,yh - a);
         graphics.curveTo(x,yh - s,x,yh - bottomLeftRadius);
         a = topLeftRadius * 0.292893218813453;
         s = topLeftRadius * 0.585786437626905;
         graphics.lineTo(x,y + topLeftRadius);
         graphics.curveTo(x,y + s,x + a,y + a);
         graphics.curveTo(x + s,y,x + topLeftRadius,y);
         a = topRightRadius * 0.292893218813453;
         s = topRightRadius * 0.585786437626905;
         graphics.lineTo(xw - topRightRadius,y);
         graphics.curveTo(xw - s,y,xw - a,y + a);
         graphics.curveTo(xw,y + s,xw,y + topRightRadius);
         graphics.lineTo(xw,yh - bottomRightRadius);
      }
   }
}
