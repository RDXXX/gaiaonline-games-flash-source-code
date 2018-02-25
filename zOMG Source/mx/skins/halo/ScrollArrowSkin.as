package mx.skins.halo
{
   import flash.display.GradientType;
   import flash.display.Graphics;
   import flash.geom.Matrix;
   import mx.controls.scrollClasses.ScrollBar;
   import mx.core.FlexVersion;
   import mx.core.mx_internal;
   import mx.skins.Border;
   import mx.styles.StyleManager;
   import mx.utils.ColorUtil;
   
   use namespace mx_internal;
   
   public class ScrollArrowSkin extends Border
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      private static var cache:Object = {};
       
      
      public function ScrollArrowSkin()
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
            o.borderColorDrk1 = ColorUtil.adjustBrightness2(borderColor,-25);
            o.borderColorDrk2 = ColorUtil.adjustBrightness2(borderColor,-50);
         }
         return cache[key];
      }
      
      override public function get measuredWidth() : Number
      {
         return ScrollBar.THICKNESS;
      }
      
      override public function get measuredHeight() : Number
      {
         return ScrollBar.THICKNESS;
      }
      
      override protected function updateDisplayList(w:Number, h:Number) : void
      {
         var borderColors:Array = null;
         var upFillColors:Array = null;
         var upFillAlphas:Array = null;
         var overFillColors:Array = null;
         var overFillAlphas:Array = null;
         var disFillColors:Array = null;
         var disFillAlphas:Array = null;
         super.updateDisplayList(w,h);
         var backgroundColor:Number = getStyle("backgroundColor");
         var borderColor:uint = getStyle("borderColor");
         var fillAlphas:Array = getStyle("fillAlphas");
         var fillColors:Array = getStyle("fillColors");
         StyleManager.getColorNames(fillColors);
         var highlightAlphas:Array = getStyle("highlightAlphas");
         var themeColor:uint = getStyle("themeColor");
         var upArrow:* = name.charAt(0) == "u";
         var arrowColor:uint = getStyle("iconColor");
         var derStyles:Object = calcDerivedStyles(themeColor,borderColor,fillColors[0],fillColors[1]);
         var horizontal:Boolean = parent && parent.parent && parent.parent.rotation != 0;
         if(upArrow && !horizontal)
         {
            borderColors = [borderColor,derStyles.borderColorDrk1];
         }
         else
         {
            borderColors = [derStyles.borderColorDrk1,derStyles.borderColorDrk2];
         }
         var g:Graphics = graphics;
         g.clear();
         if(isNaN(backgroundColor))
         {
            backgroundColor = 16777215;
         }
         if(FlexVersion.compatibilityVersion >= FlexVersion.VERSION_3_0 || name.indexOf("Disabled") == -1)
         {
            drawRoundRect(0,0,w,h,0,backgroundColor,1);
         }
         switch(name)
         {
            case "upArrowUpSkin":
               if(!horizontal)
               {
                  drawRoundRect(1,h - 4,w - 2,8,0,[derStyles.borderColorDrk1,derStyles.borderColorDrk1],[1,0],verticalGradientMatrix(1,h - 4,w - 2,8),GradientType.LINEAR,null,{
                     "x":1,
                     "y":h - 4,
                     "w":w - 2,
                     "h":4,
                     "r":0
                  });
               }
            case "downArrowUpSkin":
               upFillColors = [fillColors[0],fillColors[1]];
               upFillAlphas = [fillAlphas[0],fillAlphas[1]];
               drawRoundRect(0,0,w,h,0,borderColors,1,!!horizontal?horizontalGradientMatrix(0,0,w,h):verticalGradientMatrix(0,0,w,h),GradientType.LINEAR,null,{
                  "x":1,
                  "y":1,
                  "w":w - 2,
                  "h":h - 2,
                  "r":0
               });
               drawRoundRect(1,1,w - 2,h - 2,0,upFillColors,upFillAlphas,!!horizontal?horizontalGradientMatrix(0,0,w - 2,h - 2):verticalGradientMatrix(0,0,w - 2,h - 2 / 2));
               drawRoundRect(1,1,w - 2,h - 2 / 2,0,[16777215,16777215],highlightAlphas,!!horizontal?horizontalGradientMatrix(0,0,w - 2,h - 2):verticalGradientMatrix(0,0,w - 2,h - 2 / 2));
               break;
            case "upArrowOverSkin":
               if(!horizontal)
               {
                  drawRoundRect(1,h - 4,w - 2,8,0,[derStyles.borderColorDrk1,derStyles.borderColorDrk1],[1,0],verticalGradientMatrix(1,h - 4,w - 2,8),GradientType.LINEAR,null,{
                     "x":1,
                     "y":h - 4,
                     "w":w - 2,
                     "h":4,
                     "r":0
                  });
               }
            case "downArrowOverSkin":
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
               drawRoundRect(0,0,w,h,0,16777215,1);
               drawRoundRect(0,0,w,h,0,[themeColor,derStyles.themeColDrk1],1,!!horizontal?horizontalGradientMatrix(0,0,w,h):verticalGradientMatrix(0,0,w,h),GradientType.LINEAR,null,{
                  "x":1,
                  "y":1,
                  "w":w - 2,
                  "h":h - 2,
                  "r":0
               });
               drawRoundRect(1,1,w - 2,h - 2,0,overFillColors,overFillAlphas,!!horizontal?horizontalGradientMatrix(0,0,w - 2,h - 2):verticalGradientMatrix(0,0,w - 2,h - 2));
               drawRoundRect(1,1,w - 2,h - 2 / 2,0,[16777215,16777215],highlightAlphas,!!horizontal?horizontalGradientMatrix(0,0,w - 2,h - 2):verticalGradientMatrix(0,0,w - 2,h - 2 / 2));
               break;
            case "upArrowDownSkin":
               if(!horizontal)
               {
                  drawRoundRect(1,h - 4,w - 2,8,0,[derStyles.borderColorDrk1,derStyles.borderColorDrk1],[1,0],!!horizontal?horizontalGradientMatrix(1,h - 4,w - 2,8):verticalGradientMatrix(1,h - 4,w - 2,8),GradientType.LINEAR,null,{
                     "x":1,
                     "y":h - 4,
                     "w":w - 2,
                     "h":4,
                     "r":0
                  });
               }
            case "downArrowDownSkin":
               drawRoundRect(0,0,w,h,0,[themeColor,derStyles.themeColDrk1],1,!!horizontal?horizontalGradientMatrix(0,0,w,h):verticalGradientMatrix(0,0,w,h),GradientType.LINEAR,null,{
                  "x":1,
                  "y":1,
                  "w":w - 2,
                  "h":h - 2,
                  "r":0
               });
               drawRoundRect(1,1,w - 2,h - 2,0,[derStyles.fillColorPress1,derStyles.fillColorPress2],1,!!horizontal?horizontalGradientMatrix(0,0,w - 2,h - 2):verticalGradientMatrix(0,0,w - 2,h - 2));
               drawRoundRect(1,1,w - 2,h - 2 / 2,0,[16777215,16777215],highlightAlphas,!!horizontal?horizontalGradientMatrix(0,0,w - 2,h - 2):verticalGradientMatrix(0,0,w - 2,h - 2 / 2));
               break;
            case "upArrowDisabledSkin":
               if(FlexVersion.compatibilityVersion >= FlexVersion.VERSION_3_0)
               {
                  if(!horizontal)
                  {
                     drawRoundRect(1,h - 4,w - 2,8,0,[derStyles.borderColorDrk1,derStyles.borderColorDrk1],[0.5,0],verticalGradientMatrix(1,h - 4,w - 2,8),GradientType.LINEAR,null,{
                        "x":1,
                        "y":h - 4,
                        "w":w - 2,
                        "h":4,
                        "r":0
                     });
                  }
               }
            case "downArrowDisabledSkin":
               if(FlexVersion.compatibilityVersion >= FlexVersion.VERSION_3_0)
               {
                  disFillColors = [fillColors[0],fillColors[1]];
                  disFillAlphas = [fillAlphas[0] - 0.15,fillAlphas[1] - 0.15];
                  drawRoundRect(0,0,w,h,0,borderColors,0.5,!!horizontal?horizontalGradientMatrix(0,0,w,h):verticalGradientMatrix(0,0,w,h),GradientType.LINEAR,null,{
                     "x":1,
                     "y":1,
                     "w":w - 2,
                     "h":h - 2,
                     "r":0
                  });
                  drawRoundRect(1,1,w - 2,h - 2,0,disFillColors,disFillAlphas,!!horizontal?horizontalGradientMatrix(0,0,w - 2,h - 2):verticalGradientMatrix(0,0,w - 2,h - 2 / 2));
                  arrowColor = getStyle("disabledIconColor");
                  break;
               }
               drawRoundRect(0,0,w,h,0,16777215,0);
               return;
            default:
               drawRoundRect(0,0,w,h,0,16777215,0);
               return;
         }
         g.beginFill(arrowColor);
         if(upArrow)
         {
            g.moveTo(w / 2,6);
            g.lineTo(w - 5,h - 6);
            g.lineTo(5,h - 6);
            g.lineTo(w / 2,6);
         }
         else
         {
            g.moveTo(w / 2,h - 6);
            g.lineTo(w - 5,6);
            g.lineTo(5,6);
            g.lineTo(w / 2,h - 6);
         }
         g.endFill();
      }
   }
}
