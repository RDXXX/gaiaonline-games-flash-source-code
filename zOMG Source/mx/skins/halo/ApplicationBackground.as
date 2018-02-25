package mx.skins.halo
{
   import flash.display.Graphics;
   import mx.core.mx_internal;
   import mx.skins.ProgrammaticSkin;
   import mx.utils.ColorUtil;
   
   use namespace mx_internal;
   
   public class ApplicationBackground extends ProgrammaticSkin
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public function ApplicationBackground()
      {
         super();
      }
      
      override public function get measuredWidth() : Number
      {
         return 8;
      }
      
      override public function get measuredHeight() : Number
      {
         return 8;
      }
      
      override protected function updateDisplayList(w:Number, h:Number) : void
      {
         var bgColor:uint = 0;
         super.updateDisplayList(w,h);
         var g:Graphics = graphics;
         var fillColors:Array = getStyle("backgroundGradientColors");
         var fillAlphas:Array = getStyle("backgroundGradientAlphas");
         if(!fillColors)
         {
            bgColor = getStyle("backgroundColor");
            if(isNaN(bgColor))
            {
               bgColor = 16777215;
            }
            fillColors = [];
            fillColors[0] = ColorUtil.adjustBrightness(bgColor,15);
            fillColors[1] = ColorUtil.adjustBrightness(bgColor,-25);
         }
         if(!fillAlphas)
         {
            fillAlphas = [1,1];
         }
         g.clear();
         drawRoundRect(0,0,w,h,0,fillColors,fillAlphas,verticalGradientMatrix(0,0,w,h));
      }
   }
}
