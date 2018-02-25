package mx.skins.halo
{
   import flash.display.GradientType;
   import mx.core.IButton;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.skins.Border;
   import mx.styles.StyleManager;
   import mx.utils.ColorUtil;
   
   use namespace mx_internal;
   
   public class ButtonSkin extends Border
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      private static var cache:Object = {};
       
      
      public function ButtonSkin()
      {
         super();
      }
      
      private static function calcDerivedStyles(themeColor:uint, fillColor0:uint, fillColor1:uint) : Object
      {
         var o:Object = null;
         var key:String = HaloColors.getCacheKey(themeColor,fillColor0,fillColor1);
         if(!cache[key])
         {
            o = cache[key] = {};
            HaloColors.addHaloColors(o,themeColor,fillColor0,fillColor1);
         }
         return cache[key];
      }
      
      override public function get measuredWidth() : Number
      {
         return UIComponent.DEFAULT_MEASURED_MIN_WIDTH;
      }
      
      override public function get measuredHeight() : Number
      {
         return UIComponent.DEFAULT_MEASURED_MIN_HEIGHT;
      }
      
      override protected function updateDisplayList(w:Number, h:Number) : void
      {
         var tmp:Number = NaN;
         var upFillColors:Array = null;
         var upFillAlphas:Array = null;
         var overFillColors:Array = null;
         var overFillAlphas:Array = null;
         var disFillColors:Array = null;
         var disFillAlphas:Array = null;
         super.updateDisplayList(w,h);
         var borderColor:uint = getStyle("borderColor");
         var cornerRadius:Number = getStyle("cornerRadius");
         var fillAlphas:Array = getStyle("fillAlphas");
         var fillColors:Array = getStyle("fillColors");
         StyleManager.getColorNames(fillColors);
         var highlightAlphas:Array = getStyle("highlightAlphas");
         var themeColor:uint = getStyle("themeColor");
         var derStyles:Object = calcDerivedStyles(themeColor,fillColors[0],fillColors[1]);
         var borderColorDrk1:Number = ColorUtil.adjustBrightness2(borderColor,-50);
         var themeColorDrk1:Number = ColorUtil.adjustBrightness2(themeColor,-25);
         var emph:Boolean = false;
         if(parent is IButton)
         {
            emph = IButton(parent).emphasized;
         }
         var cr:Number = Math.max(0,cornerRadius);
         var cr1:Number = Math.max(0,cornerRadius - 1);
         var cr2:Number = Math.max(0,cornerRadius - 2);
         graphics.clear();
         switch(name)
         {
            case "selectedUpSkin":
            case "selectedOverSkin":
               drawRoundRect(0,0,w,h,cr,[themeColor,themeColorDrk1],1,verticalGradientMatrix(0,0,w,h));
               drawRoundRect(1,1,w - 2,h - 2,cr1,[fillColors[1],fillColors[1]],1,verticalGradientMatrix(0,0,w - 2,h - 2));
               break;
            case "upSkin":
               upFillColors = [fillColors[0],fillColors[1]];
               upFillAlphas = [fillAlphas[0],fillAlphas[1]];
               if(emph)
               {
                  drawRoundRect(0,0,w,h,cr,[themeColor,themeColorDrk1],1,verticalGradientMatrix(0,0,w,h),GradientType.LINEAR,null,{
                     "x":2,
                     "y":2,
                     "w":w - 4,
                     "h":h - 4,
                     "r":cornerRadius - 2
                  });
                  drawRoundRect(2,2,w - 4,h - 4,cr2,upFillColors,upFillAlphas,verticalGradientMatrix(2,2,w - 2,h - 2));
                  drawRoundRect(2,2,w - 4,(h - 4) / 2,{
                     "tl":cr2,
                     "tr":cr2,
                     "bl":0,
                     "br":0
                  },[16777215,16777215],highlightAlphas,verticalGradientMatrix(1,1,w - 2,(h - 2) / 2));
               }
               else
               {
                  drawRoundRect(0,0,w,h,cr,[borderColor,borderColorDrk1],1,verticalGradientMatrix(0,0,w,h),GradientType.LINEAR,null,{
                     "x":1,
                     "y":1,
                     "w":w - 2,
                     "h":h - 2,
                     "r":cornerRadius - 1
                  });
                  drawRoundRect(1,1,w - 2,h - 2,cr1,upFillColors,upFillAlphas,verticalGradientMatrix(1,1,w - 2,h - 2));
                  drawRoundRect(1,1,w - 2,(h - 2) / 2,{
                     "tl":cr1,
                     "tr":cr1,
                     "bl":0,
                     "br":0
                  },[16777215,16777215],highlightAlphas,verticalGradientMatrix(1,1,w - 2,(h - 2) / 2));
               }
               break;
            case "overSkin":
               if(fillColors.length > 2)
               {
                  overFillColors = [fillColors[2],fillColors[3]];
               }
               else
               {
                  overFillColors = [fillColors[0],fillColors[1]];
               }
               if(fillAlphas.length > 2)
               {
                  overFillAlphas = [fillAlphas[2],fillAlphas[3]];
               }
               else
               {
                  overFillAlphas = [fillAlphas[0],fillAlphas[1]];
               }
               drawRoundRect(0,0,w,h,cr,[themeColor,themeColorDrk1],1,verticalGradientMatrix(0,0,w,h),GradientType.LINEAR,null,{
                  "x":1,
                  "y":1,
                  "w":w - 2,
                  "h":h - 2,
                  "r":cornerRadius - 1
               });
               drawRoundRect(1,1,w - 2,h - 2,cr1,overFillColors,overFillAlphas,verticalGradientMatrix(1,1,w - 2,h - 2));
               drawRoundRect(1,1,w - 2,(h - 2) / 2,{
                  "tl":cr1,
                  "tr":cr1,
                  "bl":0,
                  "br":0
               },[16777215,16777215],highlightAlphas,verticalGradientMatrix(1,1,w - 2,(h - 2) / 2));
               break;
            case "downSkin":
            case "selectedDownSkin":
               drawRoundRect(0,0,w,h,cr,[themeColor,themeColorDrk1],1,verticalGradientMatrix(0,0,w,h));
               drawRoundRect(1,1,w - 2,h - 2,cr1,[derStyles.fillColorPress1,derStyles.fillColorPress2],1,verticalGradientMatrix(1,1,w - 2,h - 2));
               drawRoundRect(2,2,w - 4,(h - 4) / 2,{
                  "tl":cr2,
                  "tr":cr2,
                  "bl":0,
                  "br":0
               },[16777215,16777215],highlightAlphas,verticalGradientMatrix(1,1,w - 2,(h - 2) / 2));
               break;
            case "disabledSkin":
            case "selectedDisabledSkin":
               disFillColors = [fillColors[0],fillColors[1]];
               disFillAlphas = [Math.max(0,fillAlphas[0] - 0.15),Math.max(0,fillAlphas[1] - 0.15)];
               drawRoundRect(0,0,w,h,cr,[borderColor,borderColorDrk1],0.5,verticalGradientMatrix(0,0,w,h),GradientType.LINEAR,null,{
                  "x":1,
                  "y":1,
                  "w":w - 2,
                  "h":h - 2,
                  "r":cornerRadius - 1
               });
               drawRoundRect(1,1,w - 2,h - 2,cr1,disFillColors,disFillAlphas,verticalGradientMatrix(1,1,w - 2,h - 2));
         }
      }
   }
}
