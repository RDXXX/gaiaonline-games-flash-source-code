package mx.skins.halo
{
   import flash.display.DisplayObjectContainer;
   import flash.display.GradientType;
   import flash.utils.describeType;
   import flash.utils.getQualifiedClassName;
   import mx.core.EdgeMetrics;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.skins.Border;
   import mx.styles.IStyleClient;
   import mx.styles.StyleManager;
   import mx.utils.ColorUtil;
   
   use namespace mx_internal;
   
   public class TabSkin extends Border
   {
      
      private static var cache:Object = {};
      
      private static var tabnavs:Object = {};
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var _borderMetrics:EdgeMetrics;
      
      public function TabSkin()
      {
         _borderMetrics = new EdgeMetrics(1,1,1,1);
         super();
      }
      
      private static function calcDerivedStyles(themeColor:uint, borderColor:uint, falseFillColor0:uint, falseFillColor1:uint, fillColor0:uint, fillColor1:uint) : Object
      {
         var o:Object = null;
         var key:String = HaloColors.getCacheKey(themeColor,borderColor,falseFillColor0,falseFillColor1,fillColor0,fillColor1);
         if(!cache[key])
         {
            o = cache[key] = {};
            HaloColors.addHaloColors(o,themeColor,fillColor0,fillColor1);
            o.borderColorDrk1 = ColorUtil.adjustBrightness2(borderColor,10);
            o.falseFillColorBright1 = ColorUtil.adjustBrightness(falseFillColor0,15);
            o.falseFillColorBright2 = ColorUtil.adjustBrightness(falseFillColor1,15);
         }
         return cache[key];
      }
      
      private static function isTabNavigator(parent:Object) : Boolean
      {
         var s:String = null;
         var x:XML = null;
         s = getQualifiedClassName(parent);
         if(tabnavs[s] == 1)
         {
            return true;
         }
         if(tabnavs[s] == 0)
         {
            return false;
         }
         if(s == "mx.containers::TabNavigator")
         {
            tabnavs[s] == 1;
            return true;
         }
         x = describeType(parent);
         var xmllist:XMLList = x.extendsClass.(@type == "mx.containers::TabNavigator");
         if(xmllist.length() == 0)
         {
            tabnavs[s] = 0;
            return false;
         }
         tabnavs[s] = 1;
         return true;
      }
      
      override public function get measuredWidth() : Number
      {
         return UIComponent.DEFAULT_MEASURED_MIN_WIDTH;
      }
      
      override protected function updateDisplayList(w:Number, h:Number) : void
      {
         var upFillColors:Array = null;
         var upFillAlphas:Array = null;
         var overFillColors:Array = null;
         var overFillAlphas:Array = null;
         var disFillColors:Array = null;
         var disFillAlphas:Array = null;
         var p:DisplayObjectContainer = null;
         super.updateDisplayList(w,h);
         var backgroundAlpha:Number = getStyle("backgroundAlpha");
         var backgroundColor:Number = getStyle("backgroundColor");
         var borderColor:uint = getStyle("borderColor");
         var cornerRadius:Number = getStyle("cornerRadius");
         var fillAlphas:Array = getStyle("fillAlphas");
         var fillColors:Array = getStyle("fillColors");
         StyleManager.getColorNames(fillColors);
         var highlightAlphas:Array = getStyle("highlightAlphas");
         var themeColor:uint = getStyle("themeColor");
         var falseFillColors:Array = [];
         falseFillColors[0] = ColorUtil.adjustBrightness2(fillColors[0],-5);
         falseFillColors[1] = ColorUtil.adjustBrightness2(fillColors[1],-5);
         var derStyles:Object = calcDerivedStyles(themeColor,borderColor,falseFillColors[0],falseFillColors[1],fillColors[0],fillColors[1]);
         var parentedByTabNavigator:Boolean = parent != null && parent.parent != null && parent.parent.parent != null && isTabNavigator(parent.parent.parent);
         var tabOffset:Number = 1;
         if(parentedByTabNavigator)
         {
            tabOffset = Object(parent.parent.parent).borderMetrics.top;
         }
         var drawBottomLine:Boolean = parentedByTabNavigator && IStyleClient(parent.parent.parent).getStyle("borderStyle") != "none" && tabOffset >= 0;
         var cornerRadius2:Number = Math.max(cornerRadius - 2,0);
         var cr:Object = {
            "tl":cornerRadius,
            "tr":cornerRadius,
            "bl":0,
            "br":0
         };
         var cr2:Object = {
            "tl":cornerRadius2,
            "tr":cornerRadius2,
            "bl":0,
            "br":0
         };
         graphics.clear();
         switch(name)
         {
            case "upSkin":
               upFillColors = [falseFillColors[0],falseFillColors[1]];
               upFillAlphas = [fillAlphas[0],fillAlphas[1]];
               drawRoundRect(0,0,w,h - 1,cr,[derStyles.borderColorDrk1,borderColor],1,verticalGradientMatrix(0,0,w,h),GradientType.LINEAR,null,{
                  "x":1,
                  "y":1,
                  "w":w - 2,
                  "h":h - 2,
                  "r":cr2
               });
               drawRoundRect(1,1,w - 2,h - 2,cr2,upFillColors,upFillAlphas,verticalGradientMatrix(0,2,w - 2,h - 6));
               drawRoundRect(1,1,w - 2,(h - 2) / 2,cr2,[16777215,16777215],highlightAlphas,verticalGradientMatrix(1,1,w - 2,(h - 2) / 2));
               if(drawBottomLine)
               {
                  drawRoundRect(0,h - tabOffset,w,tabOffset,0,borderColor,fillAlphas[1]);
               }
               drawRoundRect(0,h - 2,w,1,0,0,0.09);
               drawRoundRect(0,h - 3,w,1,0,0,0.03);
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
               drawRoundRect(0,0,w,h - 1,cr,[themeColor,derStyles.themeColDrk2],1,verticalGradientMatrix(0,0,w,h - 6),GradientType.LINEAR,null,{
                  "x":1,
                  "y":1,
                  "w":w - 2,
                  "h":h - 2,
                  "r":cr2
               });
               drawRoundRect(1,1,w - 2,h - 2,cr2,[derStyles.falseFillColorBright1,derStyles.falseFillColorBright2],overFillAlphas,verticalGradientMatrix(2,2,w - 2,h - 2));
               drawRoundRect(1,1,w - 2,(h - 2) / 2,cr2,[16777215,16777215],highlightAlphas,verticalGradientMatrix(1,1,w - 2,(h - 2) / 2));
               if(drawBottomLine)
               {
                  drawRoundRect(0,h - tabOffset,w,tabOffset,0,borderColor,fillAlphas[1]);
               }
               drawRoundRect(0,h - 2,w,1,0,0,0.09);
               drawRoundRect(0,h - 3,w,1,0,0,0.03);
               break;
            case "disabledSkin":
               disFillColors = [fillColors[0],fillColors[1]];
               disFillAlphas = [Math.max(0,fillAlphas[0] - 0.15),Math.max(0,fillAlphas[1] - 0.15)];
               drawRoundRect(0,0,w,h - 1,cr,[derStyles.borderColorDrk1,borderColor],0.5,verticalGradientMatrix(0,0,w,h - 6));
               drawRoundRect(1,1,w - 2,h - 2,cr2,disFillColors,disFillAlphas,verticalGradientMatrix(0,2,w - 2,h - 2));
               if(drawBottomLine)
               {
                  drawRoundRect(0,h - tabOffset,w,tabOffset,0,borderColor,fillAlphas[1]);
               }
               drawRoundRect(0,h - 2,w,1,0,0,0.09);
               drawRoundRect(0,h - 3,w,1,0,0,0.03);
               break;
            case "downSkin":
            case "selectedUpSkin":
            case "selectedDownSkin":
            case "selectedOverSkin":
            case "selectedDisabledSkin":
               if(isNaN(backgroundColor))
               {
                  p = parent;
                  while(p)
                  {
                     if(p is IStyleClient)
                     {
                        backgroundColor = IStyleClient(p).getStyle("backgroundColor");
                     }
                     if(!isNaN(backgroundColor))
                     {
                        break;
                     }
                     p = p.parent;
                  }
                  if(isNaN(backgroundColor))
                  {
                     backgroundColor = 16777215;
                  }
               }
               drawRoundRect(0,0,w,h - 1,cr,[derStyles.borderColorDrk1,borderColor],1,verticalGradientMatrix(0,0,w,h - 2),GradientType.LINEAR,null,{
                  "x":1,
                  "y":1,
                  "w":w - 2,
                  "h":h - 2,
                  "r":cr2
               });
               drawRoundRect(1,1,w - 2,h - 2,cr2,backgroundColor,backgroundAlpha);
               if(drawBottomLine)
               {
                  drawRoundRect(1,h - tabOffset,w - 2,tabOffset,0,backgroundColor,backgroundAlpha);
               }
         }
      }
      
      override public function get measuredHeight() : Number
      {
         return UIComponent.DEFAULT_MEASURED_MIN_HEIGHT;
      }
      
      override public function get borderMetrics() : EdgeMetrics
      {
         return _borderMetrics;
      }
   }
}
