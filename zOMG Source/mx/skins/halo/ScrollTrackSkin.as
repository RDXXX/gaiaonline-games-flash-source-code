package mx.skins.halo
{
   import flash.display.GradientType;
   import mx.core.FlexVersion;
   import mx.core.mx_internal;
   import mx.skins.Border;
   import mx.styles.StyleManager;
   import mx.utils.ColorUtil;
   
   use namespace mx_internal;
   
   public class ScrollTrackSkin extends Border
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public function ScrollTrackSkin()
      {
         super();
      }
      
      override public function get measuredWidth() : Number
      {
         return 16;
      }
      
      override public function get measuredHeight() : Number
      {
         return 1;
      }
      
      override protected function updateDisplayList(w:Number, h:Number) : void
      {
         super.updateDisplayList(w,h);
         var fillColors:Array = getStyle("trackColors");
         StyleManager.getColorNames(fillColors);
         var borderColor:uint = ColorUtil.adjustBrightness2(getStyle("borderColor"),-20);
         var borderColorDrk1:uint = ColorUtil.adjustBrightness2(borderColor,-30);
         graphics.clear();
         var fillAlpha:Number = 1;
         if(name == "trackDisabledSkin" && FlexVersion.compatibilityVersion >= FlexVersion.VERSION_3_0)
         {
            fillAlpha = 0.2;
         }
         drawRoundRect(0,0,w,h,0,[borderColor,borderColorDrk1],fillAlpha,verticalGradientMatrix(0,0,w,h),GradientType.LINEAR,null,{
            "x":1,
            "y":1,
            "w":w - 2,
            "h":h - 2,
            "r":0
         });
         drawRoundRect(1,1,w - 2,h - 2,0,fillColors,fillAlpha,horizontalGradientMatrix(1,1,w / 3 * 2,h - 2));
      }
   }
}
