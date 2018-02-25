package mx.skins.halo
{
   import flash.display.GradientType;
   import flash.display.Graphics;
   import mx.core.mx_internal;
   import mx.skins.ProgrammaticSkin;
   import mx.styles.StyleManager;
   import mx.utils.ColorUtil;
   
   use namespace mx_internal;
   
   public class TitleBackground extends ProgrammaticSkin
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public function TitleBackground()
      {
         super();
      }
      
      override protected function updateDisplayList(w:Number, h:Number) : void
      {
         super.updateDisplayList(w,h);
         var borderAlpha:Number = getStyle("borderAlpha");
         var cornerRadius:Number = getStyle("cornerRadius");
         var highlightAlphas:Array = getStyle("highlightAlphas");
         var headerColors:Array = getStyle("headerColors");
         var showChrome:* = headerColors != null;
         StyleManager.getColorNames(headerColors);
         var colorDark:Number = ColorUtil.adjustBrightness2(!!headerColors?uint(headerColors[1]):uint(16777215),-20);
         var g:Graphics = graphics;
         g.clear();
         if(h < 3)
         {
            return;
         }
         if(showChrome)
         {
            g.lineStyle(0,colorDark,borderAlpha);
            g.moveTo(0,h);
            g.lineTo(w,h);
            g.lineStyle(0,0,0);
            drawRoundRect(0,0,w,h,{
               "tl":cornerRadius,
               "tr":cornerRadius,
               "bl":0,
               "br":0
            },headerColors,borderAlpha,verticalGradientMatrix(0,0,w,h));
            drawRoundRect(0,0,w,h / 2,{
               "tl":cornerRadius,
               "tr":cornerRadius,
               "bl":0,
               "br":0
            },[16777215,16777215],highlightAlphas,verticalGradientMatrix(0,0,w,h / 2));
            drawRoundRect(0,0,w,h,{
               "tl":cornerRadius,
               "tr":cornerRadius,
               "bl":0,
               "br":0
            },16777215,highlightAlphas[0],null,GradientType.LINEAR,null,{
               "x":0,
               "y":1,
               "w":w,
               "h":h - 1,
               "r":{
                  "tl":cornerRadius,
                  "tr":cornerRadius,
                  "bl":0,
                  "br":0
               }
            });
         }
      }
   }
}
