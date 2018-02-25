package mx.skins.halo
{
   import flash.display.Graphics;
   import mx.core.mx_internal;
   import mx.skins.ProgrammaticSkin;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.IStyleClient;
   import mx.utils.GraphicsUtil;
   
   use namespace mx_internal;
   
   public class HaloFocusRect extends ProgrammaticSkin implements IStyleClient
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var _focusColor:Number;
      
      public function HaloFocusRect()
      {
         super();
      }
      
      public function get inheritingStyles() : Object
      {
         return styleName.inheritingStyles;
      }
      
      public function set inheritingStyles(value:Object) : void
      {
      }
      
      public function notifyStyleChangeInChildren(styleProp:String, recursive:Boolean) : void
      {
      }
      
      public function registerEffects(effects:Array) : void
      {
      }
      
      public function regenerateStyleCache(recursive:Boolean) : void
      {
      }
      
      public function get styleDeclaration() : CSSStyleDeclaration
      {
         return CSSStyleDeclaration(styleName);
      }
      
      public function getClassStyleDeclarations() : Array
      {
         return [];
      }
      
      public function get className() : String
      {
         return "HaloFocusRect";
      }
      
      public function clearStyle(styleProp:String) : void
      {
         if(styleProp == "focusColor")
         {
            _focusColor = NaN;
         }
      }
      
      public function setStyle(styleProp:String, newValue:*) : void
      {
         if(styleProp == "focusColor")
         {
            _focusColor = newValue;
         }
      }
      
      public function set nonInheritingStyles(value:Object) : void
      {
      }
      
      public function get nonInheritingStyles() : Object
      {
         return styleName.nonInheritingStyles;
      }
      
      override protected function updateDisplayList(w:Number, h:Number) : void
      {
         var tl:Number = NaN;
         var bl:Number = NaN;
         var tr:Number = NaN;
         var br:Number = NaN;
         var nr:Number = NaN;
         var ellipseSize:Number = NaN;
         super.updateDisplayList(w,h);
         var focusBlendMode:String = getStyle("focusBlendMode");
         var focusAlpha:Number = getStyle("focusAlpha");
         var focusColor:Number = getStyle("focusColor");
         var cornerRadius:Number = getStyle("cornerRadius");
         var focusThickness:Number = getStyle("focusThickness");
         var focusRoundedCorners:String = getStyle("focusRoundedCorners");
         var themeColor:Number = getStyle("themeColor");
         var rectColor:Number = focusColor;
         if(isNaN(rectColor))
         {
            rectColor = themeColor;
         }
         var g:Graphics = graphics;
         g.clear();
         if(focusBlendMode)
         {
            blendMode = focusBlendMode;
         }
         if(focusRoundedCorners != "tl tr bl br" && cornerRadius > 0)
         {
            tl = 0;
            bl = 0;
            tr = 0;
            br = 0;
            nr = cornerRadius + focusThickness;
            if(focusRoundedCorners.indexOf("tl") >= 0)
            {
               tl = nr;
            }
            if(focusRoundedCorners.indexOf("tr") >= 0)
            {
               tr = nr;
            }
            if(focusRoundedCorners.indexOf("bl") >= 0)
            {
               bl = nr;
            }
            if(focusRoundedCorners.indexOf("br") >= 0)
            {
               br = nr;
            }
            g.beginFill(rectColor,focusAlpha);
            GraphicsUtil.drawRoundRectComplex(g,0,0,w,h,tl,tr,bl,br);
            tl = !!tl?Number(cornerRadius):Number(0);
            tr = !!tr?Number(cornerRadius):Number(0);
            bl = !!bl?Number(cornerRadius):Number(0);
            br = !!br?Number(cornerRadius):Number(0);
            GraphicsUtil.drawRoundRectComplex(g,focusThickness,focusThickness,w - 2 * focusThickness,h - 2 * focusThickness,tl,tr,bl,br);
            g.endFill();
            nr = cornerRadius + focusThickness / 2;
            tl = !!tl?Number(nr):Number(0);
            tr = !!tr?Number(nr):Number(0);
            bl = !!bl?Number(nr):Number(0);
            br = !!br?Number(nr):Number(0);
            g.beginFill(rectColor,focusAlpha);
            GraphicsUtil.drawRoundRectComplex(g,focusThickness / 2,focusThickness / 2,w - focusThickness,h - focusThickness,tl,tr,bl,br);
            tl = !!tl?Number(cornerRadius):Number(0);
            tr = !!tr?Number(cornerRadius):Number(0);
            bl = !!bl?Number(cornerRadius):Number(0);
            br = !!br?Number(cornerRadius):Number(0);
            GraphicsUtil.drawRoundRectComplex(g,focusThickness,focusThickness,w - 2 * focusThickness,h - 2 * focusThickness,tl,tr,bl,br);
            g.endFill();
         }
         else
         {
            g.beginFill(rectColor,focusAlpha);
            ellipseSize = (cornerRadius > 0?cornerRadius + focusThickness:0) * 2;
            g.drawRoundRect(0,0,w,h,ellipseSize,ellipseSize);
            ellipseSize = cornerRadius * 2;
            g.drawRoundRect(focusThickness,focusThickness,w - 2 * focusThickness,h - 2 * focusThickness,ellipseSize,ellipseSize);
            g.endFill();
            g.beginFill(rectColor,focusAlpha);
            ellipseSize = (cornerRadius > 0?cornerRadius + focusThickness / 2:0) * 2;
            g.drawRoundRect(focusThickness / 2,focusThickness / 2,w - focusThickness,h - focusThickness,ellipseSize,ellipseSize);
            ellipseSize = cornerRadius * 2;
            g.drawRoundRect(focusThickness,focusThickness,w - 2 * focusThickness,h - 2 * focusThickness,ellipseSize,ellipseSize);
            g.endFill();
         }
      }
      
      override public function getStyle(styleProp:String) : *
      {
         return styleProp == "focusColor"?_focusColor:super.getStyle(styleProp);
      }
      
      public function set styleDeclaration(value:CSSStyleDeclaration) : void
      {
      }
   }
}
