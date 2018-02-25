package mx.skins.halo
{
   import flash.display.GradientType;
   import flash.display.Graphics;
   import mx.core.EdgeMetrics;
   import mx.core.FlexVersion;
   import mx.core.IContainer;
   import mx.core.IUIComponent;
   import mx.core.mx_internal;
   import mx.graphics.RectangularDropShadow;
   import mx.skins.RectangularBorder;
   import mx.styles.IStyleClient;
   import mx.styles.StyleManager;
   import mx.utils.ColorUtil;
   
   use namespace mx_internal;
   
   public class HaloBorder extends RectangularBorder
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      private static var BORDER_WIDTHS:Object = {
         "none":0,
         "solid":1,
         "inset":2,
         "outset":2,
         "alert":3,
         "dropdown":2,
         "menuBorder":1,
         "comboNonEdit":2
      };
       
      
      mx_internal var radiusObj:Object;
      
      mx_internal var backgroundHole:Object;
      
      mx_internal var radius:Number;
      
      mx_internal var bRoundedCorners:Boolean;
      
      mx_internal var backgroundColor:Object;
      
      private var dropShadow:RectangularDropShadow;
      
      protected var _borderMetrics:EdgeMetrics;
      
      mx_internal var backgroundAlphaName:String;
      
      public function HaloBorder()
      {
         super();
         BORDER_WIDTHS["default"] = 3;
      }
      
      override public function styleChanged(styleProp:String) : void
      {
         if(styleProp == null || styleProp == "styleName" || styleProp == "borderStyle" || styleProp == "borderThickness" || styleProp == "borderSides")
         {
            _borderMetrics = null;
         }
         invalidateDisplayList();
      }
      
      override protected function updateDisplayList(w:Number, h:Number) : void
      {
         if(isNaN(w) || isNaN(h))
         {
            return;
         }
         super.updateDisplayList(w,h);
         backgroundColor = getBackgroundColor();
         bRoundedCorners = false;
         backgroundAlphaName = "backgroundAlpha";
         backgroundHole = null;
         radius = 0;
         radiusObj = null;
         drawBorder(w,h);
         drawBackground(w,h);
      }
      
      mx_internal function drawBorder(w:Number, h:Number) : void
      {
         var backgroundAlpha:Number = NaN;
         var borderCapColor:uint = 0;
         var borderColor:uint = 0;
         var borderSides:String = null;
         var borderThickness:Number = NaN;
         var buttonColor:uint = 0;
         var docked:Boolean = false;
         var dropdownBorderColor:uint = 0;
         var fillColors:Array = null;
         var footerColors:Array = null;
         var highlightColor:uint = 0;
         var shadowCapColor:uint = 0;
         var shadowColor:uint = 0;
         var themeColor:uint = 0;
         var translucent:Boolean = false;
         var hole:Object = null;
         var borderColorDrk1:Number = NaN;
         var borderColorDrk2:Number = NaN;
         var borderColorLt1:Number = NaN;
         var borderInnerColor:Object = null;
         var contentAlpha:Number = NaN;
         var br:Number = NaN;
         var parentContainer:IContainer = null;
         var vm:EdgeMetrics = null;
         var showChrome:* = false;
         var borderAlpha:Number = NaN;
         var fillAlphas:Array = null;
         var backgroundColorNum:uint = 0;
         var bHasAllSides:Boolean = false;
         var holeRadius:Number = NaN;
         var borderStyle:String = getStyle("borderStyle");
         var highlightAlphas:Array = getStyle("highlightAlphas");
         var drawTopHighlight:Boolean = false;
         var g:Graphics = graphics;
         g.clear();
         if(borderStyle)
         {
            switch(borderStyle)
            {
               case "none":
                  break;
               case "inset":
                  borderColor = getStyle("borderColor");
                  borderColorDrk1 = ColorUtil.adjustBrightness2(borderColor,-40);
                  borderColorDrk2 = ColorUtil.adjustBrightness2(borderColor,25);
                  borderColorLt1 = ColorUtil.adjustBrightness2(borderColor,40);
                  borderInnerColor = backgroundColor;
                  if(borderInnerColor === null || borderInnerColor === "")
                  {
                     borderInnerColor = borderColor;
                  }
                  draw3dBorder(borderColorDrk2,borderColorDrk1,borderColorLt1,Number(borderInnerColor),Number(borderInnerColor),Number(borderInnerColor));
                  break;
               case "outset":
                  borderColor = getStyle("borderColor");
                  borderColorDrk1 = ColorUtil.adjustBrightness2(borderColor,-40);
                  borderColorDrk2 = ColorUtil.adjustBrightness2(borderColor,-25);
                  borderColorLt1 = ColorUtil.adjustBrightness2(borderColor,40);
                  borderInnerColor = backgroundColor;
                  if(borderInnerColor === null || borderInnerColor === "")
                  {
                     borderInnerColor = borderColor;
                  }
                  draw3dBorder(borderColorDrk2,borderColorLt1,borderColorDrk1,Number(borderInnerColor),Number(borderInnerColor),Number(borderInnerColor));
                  break;
               case "alert":
               case "default":
                  if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
                  {
                     contentAlpha = getStyle("backgroundAlpha");
                     backgroundAlpha = getStyle("borderAlpha");
                     backgroundAlphaName = "borderAlpha";
                     radius = getStyle("cornerRadius");
                     bRoundedCorners = getStyle("roundedBottomCorners").toString().toLowerCase() == "true";
                     br = !!bRoundedCorners?Number(radius):Number(0);
                     drawDropShadow(0,0,w,h,radius,radius,br,br);
                     if(!bRoundedCorners)
                     {
                        radiusObj = {};
                     }
                     parentContainer = parent as IContainer;
                     if(parentContainer)
                     {
                        vm = parentContainer.viewMetrics;
                        backgroundHole = {
                           "x":vm.left,
                           "y":vm.top,
                           "w":Math.max(0,w - vm.left - vm.right),
                           "h":Math.max(0,h - vm.top - vm.bottom),
                           "r":0
                        };
                        if(backgroundHole.w > 0 && backgroundHole.h > 0)
                        {
                           if(contentAlpha != backgroundAlpha)
                           {
                              drawDropShadow(backgroundHole.x,backgroundHole.y,backgroundHole.w,backgroundHole.h,0,0,0,0);
                           }
                           g.beginFill(Number(backgroundColor),contentAlpha);
                           g.drawRect(backgroundHole.x,backgroundHole.y,backgroundHole.w,backgroundHole.h);
                           g.endFill();
                        }
                     }
                     backgroundColor = getStyle("borderColor");
                  }
                  break;
               case "dropdown":
                  dropdownBorderColor = getStyle("dropdownBorderColor");
                  drawDropShadow(0,0,w,h,4,0,0,4);
                  drawRoundRect(0,0,w,h,{
                     "tl":4,
                     "tr":0,
                     "br":0,
                     "bl":4
                  },5068126,1);
                  drawRoundRect(0,0,w,h,{
                     "tl":4,
                     "tr":0,
                     "br":0,
                     "bl":4
                  },[16777215,16777215],[0.7,0],verticalGradientMatrix(0,0,w,h));
                  drawRoundRect(1,1,w - 1,h - 2,{
                     "tl":3,
                     "tr":0,
                     "br":0,
                     "bl":3
                  },16777215,1);
                  drawRoundRect(1,2,w - 1,h - 3,{
                     "tl":3,
                     "tr":0,
                     "br":0,
                     "bl":3
                  },[15658734,16777215],1,verticalGradientMatrix(0,0,w - 1,h - 3));
                  if(!isNaN(dropdownBorderColor))
                  {
                     drawRoundRect(0,0,w + 1,h,{
                        "tl":4,
                        "tr":0,
                        "br":0,
                        "bl":4
                     },dropdownBorderColor,0.5);
                     drawRoundRect(1,1,w - 1,h - 2,{
                        "tl":3,
                        "tr":0,
                        "br":0,
                        "bl":3
                     },16777215,1);
                     drawRoundRect(1,2,w - 1,h - 3,{
                        "tl":3,
                        "tr":0,
                        "br":0,
                        "bl":3
                     },[15658734,16777215],1,verticalGradientMatrix(0,0,w - 1,h - 3));
                  }
                  backgroundColor = null;
                  break;
               case "menuBorder":
                  borderColor = getStyle("borderColor");
                  drawRoundRect(0,0,w,h,0,borderColor,1);
                  drawDropShadow(1,1,w - 2,h - 2,0,0,0,0);
                  break;
               case "comboNonEdit":
                  break;
               case "controlBar":
                  if(w == 0 || h == 0)
                  {
                     backgroundColor = null;
                     break;
                  }
                  footerColors = getStyle("footerColors");
                  showChrome = footerColors != null;
                  borderAlpha = getStyle("borderAlpha");
                  if(showChrome)
                  {
                     g.lineStyle(0,footerColors.length > 0?uint(footerColors[1]):uint(footerColors[0]),borderAlpha);
                     g.moveTo(0,0);
                     g.lineTo(w,0);
                     g.lineStyle(0,0,0);
                     if(parent && parent.parent && parent.parent is IStyleClient)
                     {
                        radius = IStyleClient(parent.parent).getStyle("cornerRadius");
                        borderAlpha = IStyleClient(parent.parent).getStyle("borderAlpha");
                     }
                     if(isNaN(radius))
                     {
                        radius = 0;
                     }
                     if(IStyleClient(parent.parent).getStyle("roundedBottomCorners").toString().toLowerCase() != "true")
                     {
                        radius = 0;
                     }
                     drawRoundRect(0,1,w,h - 1,{
                        "tl":0,
                        "tr":0,
                        "bl":radius,
                        "br":radius
                     },footerColors,borderAlpha,verticalGradientMatrix(0,0,w,h));
                     if(footerColors.length > 1 && footerColors[0] != footerColors[1])
                     {
                        drawRoundRect(0,1,w,h - 1,{
                           "tl":0,
                           "tr":0,
                           "bl":radius,
                           "br":radius
                        },[16777215,16777215],highlightAlphas,verticalGradientMatrix(0,0,w,h));
                        drawRoundRect(1,2,w - 2,h - 3,{
                           "tl":0,
                           "tr":0,
                           "bl":radius - 1,
                           "br":radius - 1
                        },footerColors,borderAlpha,verticalGradientMatrix(0,0,w,h));
                     }
                  }
                  backgroundColor = null;
                  break;
               case "applicationControlBar":
                  fillColors = getStyle("fillColors");
                  backgroundAlpha = getStyle("backgroundAlpha");
                  highlightAlphas = getStyle("highlightAlphas");
                  fillAlphas = getStyle("fillAlphas");
                  docked = getStyle("docked");
                  backgroundColorNum = uint(backgroundColor);
                  radius = getStyle("cornerRadius");
                  if(!radius)
                  {
                     radius = 0;
                  }
                  drawDropShadow(0,1,w,h - 1,radius,radius,radius,radius);
                  if(backgroundColor !== null && StyleManager.isValidStyleValue(backgroundColor))
                  {
                     drawRoundRect(0,1,w,h - 1,radius,backgroundColorNum,backgroundAlpha,verticalGradientMatrix(0,0,w,h));
                  }
                  drawRoundRect(0,1,w,h - 1,radius,fillColors,fillAlphas,verticalGradientMatrix(0,0,w,h));
                  drawRoundRect(0,1,w,h / 2 - 1,{
                     "tl":radius,
                     "tr":radius,
                     "bl":0,
                     "br":0
                  },[16777215,16777215],highlightAlphas,verticalGradientMatrix(0,0,w,h / 2 - 1));
                  drawRoundRect(0,1,w,h - 1,{
                     "tl":radius,
                     "tr":radius,
                     "bl":0,
                     "br":0
                  },16777215,0.3,null,GradientType.LINEAR,null,{
                     "x":0,
                     "y":2,
                     "w":w,
                     "h":h - 2,
                     "r":{
                        "tl":radius,
                        "tr":radius,
                        "bl":0,
                        "br":0
                     }
                  });
                  backgroundColor = null;
                  break;
               default:
                  borderColor = getStyle("borderColor");
                  borderThickness = getStyle("borderThickness");
                  borderSides = getStyle("borderSides");
                  bHasAllSides = true;
                  radius = getStyle("cornerRadius");
                  bRoundedCorners = getStyle("roundedBottomCorners").toString().toLowerCase() == "true";
                  holeRadius = Math.max(radius - borderThickness,0);
                  hole = {
                     "x":borderThickness,
                     "y":borderThickness,
                     "w":w - borderThickness * 2,
                     "h":h - borderThickness * 2,
                     "r":holeRadius
                  };
                  if(!bRoundedCorners)
                  {
                     radiusObj = {
                        "tl":radius,
                        "tr":radius,
                        "bl":0,
                        "br":0
                     };
                     hole.r = {
                        "tl":holeRadius,
                        "tr":holeRadius,
                        "bl":0,
                        "br":0
                     };
                  }
                  if(borderSides != "left top right bottom")
                  {
                     hole.r = {
                        "tl":holeRadius,
                        "tr":holeRadius,
                        "bl":(!!bRoundedCorners?holeRadius:0),
                        "br":(!!bRoundedCorners?holeRadius:0)
                     };
                     radiusObj = {
                        "tl":radius,
                        "tr":radius,
                        "bl":(!!bRoundedCorners?radius:0),
                        "br":(!!bRoundedCorners?radius:0)
                     };
                     borderSides = borderSides.toLowerCase();
                     if(borderSides.indexOf("left") == -1)
                     {
                        hole.x = 0;
                        hole.w = hole.w + borderThickness;
                        hole.r.tl = 0;
                        hole.r.bl = 0;
                        radiusObj.tl = 0;
                        radiusObj.bl = 0;
                        bHasAllSides = false;
                     }
                     if(borderSides.indexOf("top") == -1)
                     {
                        hole.y = 0;
                        hole.h = hole.h + borderThickness;
                        hole.r.tl = 0;
                        hole.r.tr = 0;
                        radiusObj.tl = 0;
                        radiusObj.tr = 0;
                        bHasAllSides = false;
                     }
                     if(borderSides.indexOf("right") == -1)
                     {
                        hole.w = hole.w + borderThickness;
                        hole.r.tr = 0;
                        hole.r.br = 0;
                        radiusObj.tr = 0;
                        radiusObj.br = 0;
                        bHasAllSides = false;
                     }
                     if(borderSides.indexOf("bottom") == -1)
                     {
                        hole.h = hole.h + borderThickness;
                        hole.r.bl = 0;
                        hole.r.br = 0;
                        radiusObj.bl = 0;
                        radiusObj.br = 0;
                        bHasAllSides = false;
                     }
                  }
                  if(radius == 0 && bHasAllSides)
                  {
                     drawDropShadow(0,0,w,h,0,0,0,0);
                     g.beginFill(borderColor);
                     g.drawRect(0,0,w,h);
                     g.drawRect(borderThickness,borderThickness,w - 2 * borderThickness,h - 2 * borderThickness);
                     g.endFill();
                  }
                  else if(radiusObj)
                  {
                     drawDropShadow(0,0,w,h,radiusObj.tl,radiusObj.tr,radiusObj.br,radiusObj.bl);
                     drawRoundRect(0,0,w,h,radiusObj,borderColor,1,null,null,null,hole);
                     radiusObj.tl = Math.max(radius - borderThickness,0);
                     radiusObj.tr = Math.max(radius - borderThickness,0);
                     radiusObj.bl = !!bRoundedCorners?Math.max(radius - borderThickness,0):0;
                     radiusObj.br = !!bRoundedCorners?Math.max(radius - borderThickness,0):0;
                  }
                  else
                  {
                     drawDropShadow(0,0,w,h,radius,radius,radius,radius);
                     drawRoundRect(0,0,w,h,radius,borderColor,1,null,null,null,hole);
                     radius = Math.max(getStyle("cornerRadius") - borderThickness,0);
                  }
            }
         }
      }
      
      mx_internal function drawBackground(w:Number, h:Number) : void
      {
         var nd:Number = NaN;
         var alpha:Number = NaN;
         var bm:EdgeMetrics = null;
         var g:Graphics = null;
         var bottom:Number = NaN;
         var topRadius:Number = NaN;
         var bottomRadius:Number = NaN;
         var highlightAlphas:Array = null;
         var highlightAlpha:Number = NaN;
         if(backgroundColor !== null && backgroundColor !== "" || getStyle("mouseShield") || getStyle("mouseShieldChildren"))
         {
            nd = Number(backgroundColor);
            alpha = 1;
            bm = getBackgroundColorMetrics();
            g = graphics;
            if(isNaN(nd) || backgroundColor === "" || backgroundColor === null)
            {
               alpha = 0;
               nd = 16777215;
            }
            else
            {
               alpha = getStyle(backgroundAlphaName);
            }
            if(radius != 0 || backgroundHole)
            {
               bottom = bm.bottom;
               if(radiusObj)
               {
                  topRadius = Math.max(radius - Math.max(bm.top,bm.left,bm.right),0);
                  bottomRadius = !!bRoundedCorners?Number(Math.max(radius - Math.max(bm.bottom,bm.left,bm.right),0)):Number(0);
                  radiusObj = {
                     "tl":topRadius,
                     "tr":topRadius,
                     "bl":bottomRadius,
                     "br":bottomRadius
                  };
                  drawRoundRect(bm.left,bm.top,width - (bm.left + bm.right),height - (bm.top + bottom),radiusObj,nd,alpha,null,GradientType.LINEAR,null,backgroundHole);
               }
               else
               {
                  drawRoundRect(bm.left,bm.top,width - (bm.left + bm.right),height - (bm.top + bottom),radius,nd,alpha,null,GradientType.LINEAR,null,backgroundHole);
               }
            }
            else
            {
               g.beginFill(nd,alpha);
               g.drawRect(bm.left,bm.top,w - bm.right - bm.left,h - bm.bottom - bm.top);
               g.endFill();
            }
         }
         var borderStyle:String = getStyle("borderStyle");
         if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0 && (borderStyle == "alert" || borderStyle == "default") && getStyle("headerColors") == null)
         {
            highlightAlphas = getStyle("highlightAlphas");
            highlightAlpha = !!highlightAlphas?Number(highlightAlphas[0]):Number(0.3);
            drawRoundRect(0,0,w,h,{
               "tl":radius,
               "tr":radius,
               "bl":0,
               "br":0
            },16777215,highlightAlpha,null,GradientType.LINEAR,null,{
               "x":0,
               "y":1,
               "w":w,
               "h":h - 1,
               "r":{
                  "tl":radius,
                  "tr":radius,
                  "bl":0,
                  "br":0
               }
            });
         }
      }
      
      mx_internal function drawDropShadow(x:Number, y:Number, width:Number, height:Number, tlRadius:Number, trRadius:Number, brRadius:Number, blRadius:Number) : void
      {
         var angle:Number = NaN;
         var docked:Boolean = false;
         if(getStyle("dropShadowEnabled") == false || getStyle("dropShadowEnabled") == "false" || width == 0 || height == 0)
         {
            return;
         }
         var distance:Number = getStyle("shadowDistance");
         var direction:String = getStyle("shadowDirection");
         if(getStyle("borderStyle") == "applicationControlBar")
         {
            docked = getStyle("docked");
            angle = !!docked?Number(90):Number(getDropShadowAngle(distance,direction));
            distance = Math.abs(distance);
         }
         else
         {
            angle = getDropShadowAngle(distance,direction);
            distance = Math.abs(distance) + 2;
         }
         if(!dropShadow)
         {
            dropShadow = new RectangularDropShadow();
         }
         dropShadow.distance = distance;
         dropShadow.angle = angle;
         dropShadow.color = getStyle("dropShadowColor");
         dropShadow.alpha = 0.4;
         dropShadow.tlRadius = tlRadius;
         dropShadow.trRadius = trRadius;
         dropShadow.blRadius = blRadius;
         dropShadow.brRadius = brRadius;
         dropShadow.drawShadow(graphics,x,y,width,height);
      }
      
      mx_internal function getBackgroundColor() : Object
      {
         var color:Object = null;
         var p:IUIComponent = parent as IUIComponent;
         if(p && !p.enabled)
         {
            color = getStyle("backgroundDisabledColor");
            if(color !== null && StyleManager.isValidStyleValue(color))
            {
               return color;
            }
         }
         return getStyle("backgroundColor");
      }
      
      mx_internal function draw3dBorder(c1:Number, c2:Number, c3:Number, c4:Number, c5:Number, c6:Number) : void
      {
         var w:Number = width;
         var h:Number = height;
         drawDropShadow(0,0,width,height,0,0,0,0);
         var g:Graphics = graphics;
         g.beginFill(c1);
         g.drawRect(0,0,w,h);
         g.drawRect(1,0,w - 2,h);
         g.endFill();
         g.beginFill(c2);
         g.drawRect(1,0,w - 2,1);
         g.endFill();
         g.beginFill(c3);
         g.drawRect(1,h - 1,w - 2,1);
         g.endFill();
         g.beginFill(c4);
         g.drawRect(1,1,w - 2,1);
         g.endFill();
         g.beginFill(c5);
         g.drawRect(1,h - 2,w - 2,1);
         g.endFill();
         g.beginFill(c6);
         g.drawRect(1,2,w - 2,h - 4);
         g.drawRect(2,2,w - 4,h - 4);
         g.endFill();
      }
      
      mx_internal function getBackgroundColorMetrics() : EdgeMetrics
      {
         return borderMetrics;
      }
      
      mx_internal function getDropShadowAngle(distance:Number, direction:String) : Number
      {
         if(direction == "left")
         {
            return distance >= 0?Number(135):Number(225);
         }
         if(direction == "right")
         {
            return distance >= 0?Number(45):Number(315);
         }
         return distance >= 0?Number(90):Number(270);
      }
      
      override public function get borderMetrics() : EdgeMetrics
      {
         var borderThickness:Number = NaN;
         var borderSides:String = null;
         if(_borderMetrics)
         {
            return _borderMetrics;
         }
         var borderStyle:String = getStyle("borderStyle");
         if(borderStyle == "default" || borderStyle == "alert")
         {
            if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
            {
               _borderMetrics = new EdgeMetrics(0,0,0,0);
            }
            else
            {
               return EdgeMetrics.EMPTY;
            }
         }
         else if(borderStyle == "controlBar" || borderStyle == "applicationControlBar")
         {
            _borderMetrics = new EdgeMetrics(1,1,1,1);
         }
         else if(borderStyle == "solid")
         {
            borderThickness = getStyle("borderThickness");
            if(isNaN(borderThickness))
            {
               borderThickness = 0;
            }
            _borderMetrics = new EdgeMetrics(borderThickness,borderThickness,borderThickness,borderThickness);
            borderSides = getStyle("borderSides");
            if(borderSides != "left top right bottom")
            {
               if(borderSides.indexOf("left") == -1)
               {
                  _borderMetrics.left = 0;
               }
               if(borderSides.indexOf("top") == -1)
               {
                  _borderMetrics.top = 0;
               }
               if(borderSides.indexOf("right") == -1)
               {
                  _borderMetrics.right = 0;
               }
               if(borderSides.indexOf("bottom") == -1)
               {
                  _borderMetrics.bottom = 0;
               }
            }
         }
         else
         {
            borderThickness = BORDER_WIDTHS[borderStyle];
            if(isNaN(borderThickness))
            {
               borderThickness = 0;
            }
            _borderMetrics = new EdgeMetrics(borderThickness,borderThickness,borderThickness,borderThickness);
         }
         return _borderMetrics;
      }
   }
}
