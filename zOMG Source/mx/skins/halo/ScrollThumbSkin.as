package mx.skins.halo
{
   import flash.display.GradientType;
   import flash.geom.Matrix;
   import mx.core.mx_internal;
   import mx.skins.Border;
   import mx.styles.StyleManager;
   import mx.utils.ColorUtil;
   
   use namespace mx_internal;
   
   public class ScrollThumbSkin extends Border
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      private static var cache:Object = {};
       
      
      public function ScrollThumbSkin()
      {
         super();
      }
      
      private static function calcDerivedStyles(themeColor:uint, borderColor:uint, fillColor0:uint, fillColor1:uint) : Object
      {
         var o:Object = null;
         var key:String = HaloColors.getCacheKey(themeColor,borderColor,fillColor0,fillColor1);
         if(!cache[key])
         {
            o = cache[key] = {};
            HaloColors.addHaloColors(o,themeColor,fillColor0,fillColor1);
            o.borderColorDrk1 = ColorUtil.adjustBrightness2(borderColor,-50);
         }
         return cache[key];
      }
      
      override public function get measuredWidth() : Number
      {
         return 16;
      }
      
      override public function get measuredHeight() : Number
      {
         return 10;
      }
      
      override protected function updateDisplayList(w:Number, h:Number) : void
      {
         var upFillColors:Array = null;
         var upFillAlphas:Array = null;
         var overFillColors:Array = null;
         var overFillAlphas:Array = null;
         super.updateDisplayList(w,h);
         var backgroundColor:Number = getStyle("backgroundColor");
         var borderColor:uint = getStyle("borderColor");
         var cornerRadius:Number = getStyle("cornerRadius");
         var fillAlphas:Array = getStyle("fillAlphas");
         var fillColors:Array = getStyle("fillColors");
         StyleManager.getColorNames(fillColors);
         var highlightAlphas:Array = getStyle("highlightAlphas");
         var themeColor:uint = getStyle("themeColor");
         var gripColor:uint = 7305079;
         var derStyles:Object = calcDerivedStyles(themeColor,borderColor,fillColors[0],fillColors[1]);
         var radius:Number = Math.max(cornerRadius - 1,0);
         var cr:Object = {
            "tl":0,
            "tr":radius,
            "bl":0,
            "br":radius
         };
         radius = Math.max(radius - 1,0);
         var cr1:Object = {
            "tl":0,
            "tr":radius,
            "bl":0,
            "br":radius
         };
         var horizontal:Boolean = parent && parent.parent && parent.parent.rotation != 0;
         if(isNaN(backgroundColor))
         {
            backgroundColor = 16777215;
         }
         graphics.clear();
         drawRoundRect(1,0,w - 3,h,cr,backgroundColor,1);
         switch(name)
         {
            default:
            case "thumbUpSkin":
               upFillColors = [fillColors[0],fillColors[1]];
               upFillAlphas = [fillAlphas[0],fillAlphas[1]];
               drawRoundRect(0,0,w,h,0,16777215,0);
               if(horizontal)
               {
                  drawRoundRect(1,0,w - 2,h,cornerRadius,[derStyles.borderColorDrk1,derStyles.borderColorDrk1],[1,0],horizontalGradientMatrix(2,0,w,h),GradientType.LINEAR,null,{
                     "x":1,
                     "y":1,
                     "w":w - 4,
                     "h":h - 2,
                     "r":cr1
                  });
               }
               else
               {
                  drawRoundRect(1,h - radius,w - 3,radius + 4,{
                     "tl":0,
                     "tr":0,
                     "bl":0,
                     "br":radius
                  },[derStyles.borderColorDrk1,derStyles.borderColorDrk1],[1,0],!!horizontal?horizontalGradientMatrix(0,h - 4,w - 3,8):verticalGradientMatrix(0,h - 4,w - 3,8),GradientType.LINEAR,null,{
                     "x":1,
                     "y":h - radius,
                     "w":w - 4,
                     "h":radius,
                     "r":{
                        "tl":0,
                        "tr":0,
                        "bl":0,
                        "br":radius - 1
                     }
                  });
               }
               drawRoundRect(1,0,w - 3,h,cr,[borderColor,derStyles.borderColorDrk1],1,!!horizontal?horizontalGradientMatrix(0,0,w,h):verticalGradientMatrix(0,0,w,h),GradientType.LINEAR,null,{
                  "x":1,
                  "y":1,
                  "w":w - 4,
                  "h":h - 2,
                  "r":cr1
               });
               drawRoundRect(1,1,w - 4,h - 2,cr1,upFillColors,upFillAlphas,!!horizontal?horizontalGradientMatrix(1,0,w - 2,h - 2):verticalGradientMatrix(1,0,w - 2,h - 2));
               if(horizontal)
               {
                  drawRoundRect(1,0,(w - 4) / 2,h - 2,0,[16777215,16777215],highlightAlphas,horizontalGradientMatrix(1,1,w - 4,(h - 2) / 2));
               }
               else
               {
                  drawRoundRect(1,1,w - 4,(h - 2) / 2,cr1,[16777215,16777215],highlightAlphas,!!horizontal?horizontalGradientMatrix(1,0,(w - 4) / 2,h - 2):verticalGradientMatrix(1,1,w - 4,(h - 2) / 2));
               }
               break;
            case "thumbOverSkin":
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
               drawRoundRect(0,0,w,h,0,16777215,0);
               if(horizontal)
               {
                  drawRoundRect(1,0,w - 2,h,cornerRadius,[derStyles.borderColorDrk1,derStyles.borderColorDrk1],[1,0],horizontalGradientMatrix(2,0,w,h),GradientType.LINEAR,null,{
                     "x":1,
                     "y":1,
                     "w":w - 4,
                     "h":h - 2,
                     "r":cr1
                  });
               }
               else
               {
                  drawRoundRect(1,h - radius,w - 3,radius + 4,{
                     "tl":0,
                     "tr":0,
                     "bl":0,
                     "br":radius
                  },[derStyles.borderColorDrk1,derStyles.borderColorDrk1],[1,0],!!horizontal?horizontalGradientMatrix(0,h - 4,w - 3,8):verticalGradientMatrix(0,h - 4,w - 3,8),GradientType.LINEAR,null,{
                     "x":1,
                     "y":h - radius,
                     "w":w - 4,
                     "h":radius,
                     "r":{
                        "tl":0,
                        "tr":0,
                        "bl":0,
                        "br":radius - 1
                     }
                  });
               }
               drawRoundRect(1,0,w - 3,h,cr,[themeColor,derStyles.themeColDrk1],1,!!horizontal?horizontalGradientMatrix(1,0,w,h):verticalGradientMatrix(0,0,w,h),GradientType.LINEAR,null,{
                  "x":1,
                  "y":1,
                  "w":w - 4,
                  "h":h - 2,
                  "r":cr1
               });
               drawRoundRect(1,1,w - 4,h - 2,cr1,overFillColors,overFillAlphas,!!horizontal?horizontalGradientMatrix(1,0,w,h):verticalGradientMatrix(1,0,w,h));
               break;
            case "thumbDownSkin":
               if(horizontal)
               {
                  drawRoundRect(1,0,w - 2,h,cr,[derStyles.borderColorDrk1,derStyles.borderColorDrk1],[1,0],horizontalGradientMatrix(2,0,w,h),GradientType.LINEAR,null,{
                     "x":1,
                     "y":1,
                     "w":w - 4,
                     "h":h - 2,
                     "r":cr1
                  });
               }
               else
               {
                  drawRoundRect(1,h - radius,w - 3,radius + 4,{
                     "tl":0,
                     "tr":0,
                     "bl":0,
                     "br":radius
                  },[derStyles.borderColorDrk1,derStyles.borderColorDrk1],[1,0],!!horizontal?horizontalGradientMatrix(0,h - 4,w - 3,8):verticalGradientMatrix(0,h - 4,w - 3,8),GradientType.LINEAR,null,{
                     "x":1,
                     "y":h - radius,
                     "w":w - 4,
                     "h":radius,
                     "r":{
                        "tl":0,
                        "tr":0,
                        "bl":0,
                        "br":radius - 1
                     }
                  });
               }
               drawRoundRect(1,0,w - 3,h,cr,[themeColor,derStyles.themeColDrk2],1,!!horizontal?horizontalGradientMatrix(1,0,w,h):verticalGradientMatrix(0,0,w,h),GradientType.LINEAR,null,{
                  "x":1,
                  "y":1,
                  "w":w - 4,
                  "h":h - 2,
                  "r":cr1
               });
               drawRoundRect(1,1,w - 4,h - 2,cr1,[derStyles.fillColorPress1,derStyles.fillColorPress2],1,!!horizontal?horizontalGradientMatrix(1,0,w,h):verticalGradientMatrix(1,0,w,h));
               break;
            case "thumbDisabledSkin":
               drawRoundRect(0,0,w,h,0,16777215,0);
               drawRoundRect(1,0,w - 3,h,cr,10066329,0.5);
               drawRoundRect(1,1,w - 4,h - 2,cr1,16777215,0.5);
         }
         var gripW:Number = Math.floor(w / 2 - 4);
         drawRoundRect(gripW,Math.floor(h / 2 - 4),5,1,0,0,0.4);
         drawRoundRect(gripW,Math.floor(h / 2 - 2),5,1,0,0,0.4);
         drawRoundRect(gripW,Math.floor(h / 2),5,1,0,0,0.4);
         drawRoundRect(gripW,Math.floor(h / 2 + 2),5,1,0,0,0.4);
         drawRoundRect(gripW,Math.floor(h / 2 + 4),5,1,0,0,0.4);
      }
   }
}
