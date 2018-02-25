package mx.graphics
{
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.filters.DropShadowFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import mx.core.FlexShape;
   import mx.core.mx_internal;
   import mx.utils.GraphicsUtil;
   
   use namespace mx_internal;
   
   public class RectangularDropShadow
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var leftShadow:BitmapData;
      
      private var _tlRadius:Number = 0;
      
      private var _trRadius:Number = 0;
      
      private var _angle:Number = 45.0;
      
      private var topShadow:BitmapData;
      
      private var _distance:Number = 4.0;
      
      private var rightShadow:BitmapData;
      
      private var _alpha:Number = 0.4;
      
      private var shadow:BitmapData;
      
      private var _brRadius:Number = 0;
      
      private var _blRadius:Number = 0;
      
      private var _color:int = 0;
      
      private var bottomShadow:BitmapData;
      
      private var changed:Boolean = true;
      
      public function RectangularDropShadow()
      {
         super();
      }
      
      public function get blRadius() : Number
      {
         return _blRadius;
      }
      
      public function set brRadius(value:Number) : void
      {
         if(_brRadius != value)
         {
            _brRadius = value;
            changed = true;
         }
      }
      
      public function set color(value:int) : void
      {
         if(_color != value)
         {
            _color = value;
            changed = true;
         }
      }
      
      public function drawShadow(g:Graphics, x:Number, y:Number, width:Number, height:Number) : void
      {
         var tlWidth:Number = NaN;
         var tlHeight:Number = NaN;
         var trWidth:Number = NaN;
         var trHeight:Number = NaN;
         var blWidth:Number = NaN;
         var blHeight:Number = NaN;
         var brWidth:Number = NaN;
         var brHeight:Number = NaN;
         if(changed)
         {
            createShadowBitmaps();
            changed = false;
         }
         width = Math.ceil(width);
         height = Math.ceil(height);
         var leftThickness:int = !!leftShadow?int(leftShadow.width):0;
         var rightThickness:int = !!rightShadow?int(rightShadow.width):0;
         var topThickness:int = !!topShadow?int(topShadow.height):0;
         var bottomThickness:int = !!bottomShadow?int(bottomShadow.height):0;
         var widthThickness:int = leftThickness + rightThickness;
         var heightThickness:int = topThickness + bottomThickness;
         var maxCornerHeight:Number = (height + heightThickness) / 2;
         var maxCornerWidth:Number = (width + widthThickness) / 2;
         var matrix:Matrix = new Matrix();
         if(leftShadow || topShadow)
         {
            tlWidth = Math.min(tlRadius + widthThickness,maxCornerWidth);
            tlHeight = Math.min(tlRadius + heightThickness,maxCornerHeight);
            matrix.tx = x - leftThickness;
            matrix.ty = y - topThickness;
            g.beginBitmapFill(shadow,matrix);
            g.drawRect(x - leftThickness,y - topThickness,tlWidth,tlHeight);
            g.endFill();
         }
         if(rightShadow || topShadow)
         {
            trWidth = Math.min(trRadius + widthThickness,maxCornerWidth);
            trHeight = Math.min(trRadius + heightThickness,maxCornerHeight);
            matrix.tx = x + width + rightThickness - shadow.width;
            matrix.ty = y - topThickness;
            g.beginBitmapFill(shadow,matrix);
            g.drawRect(x + width + rightThickness - trWidth,y - topThickness,trWidth,trHeight);
            g.endFill();
         }
         if(leftShadow || bottomShadow)
         {
            blWidth = Math.min(blRadius + widthThickness,maxCornerWidth);
            blHeight = Math.min(blRadius + heightThickness,maxCornerHeight);
            matrix.tx = x - leftThickness;
            matrix.ty = y + height + bottomThickness - shadow.height;
            g.beginBitmapFill(shadow,matrix);
            g.drawRect(x - leftThickness,y + height + bottomThickness - blHeight,blWidth,blHeight);
            g.endFill();
         }
         if(rightShadow || bottomShadow)
         {
            brWidth = Math.min(brRadius + widthThickness,maxCornerWidth);
            brHeight = Math.min(brRadius + heightThickness,maxCornerHeight);
            matrix.tx = x + width + rightThickness - shadow.width;
            matrix.ty = y + height + bottomThickness - shadow.height;
            g.beginBitmapFill(shadow,matrix);
            g.drawRect(x + width + rightThickness - brWidth,y + height + bottomThickness - brHeight,brWidth,brHeight);
            g.endFill();
         }
         if(leftShadow)
         {
            matrix.tx = x - leftThickness;
            matrix.ty = 0;
            g.beginBitmapFill(leftShadow,matrix);
            g.drawRect(x - leftThickness,y - topThickness + tlHeight,leftThickness,height + topThickness + bottomThickness - tlHeight - blHeight);
            g.endFill();
         }
         if(rightShadow)
         {
            matrix.tx = x + width;
            matrix.ty = 0;
            g.beginBitmapFill(rightShadow,matrix);
            g.drawRect(x + width,y - topThickness + trHeight,rightThickness,height + topThickness + bottomThickness - trHeight - brHeight);
            g.endFill();
         }
         if(topShadow)
         {
            matrix.tx = 0;
            matrix.ty = y - topThickness;
            g.beginBitmapFill(topShadow,matrix);
            g.drawRect(x - leftThickness + tlWidth,y - topThickness,width + leftThickness + rightThickness - tlWidth - trWidth,topThickness);
            g.endFill();
         }
         if(bottomShadow)
         {
            matrix.tx = 0;
            matrix.ty = y + height;
            g.beginBitmapFill(bottomShadow,matrix);
            g.drawRect(x - leftThickness + blWidth,y + height,width + leftThickness + rightThickness - blWidth - brWidth,bottomThickness);
            g.endFill();
         }
      }
      
      public function get brRadius() : Number
      {
         return _brRadius;
      }
      
      public function get angle() : Number
      {
         return _angle;
      }
      
      private function createShadowBitmaps() : void
      {
         var roundRectWidth:Number = Math.max(tlRadius,blRadius) + 2 * distance + Math.max(trRadius,brRadius);
         var roundRectHeight:Number = Math.max(tlRadius,trRadius) + 2 * distance + Math.max(blRadius,brRadius);
         if(roundRectWidth < 0 || roundRectHeight < 0)
         {
            return;
         }
         var roundRect:Shape = new FlexShape();
         var g:Graphics = roundRect.graphics;
         g.beginFill(16777215);
         GraphicsUtil.drawRoundRectComplex(g,0,0,roundRectWidth,roundRectHeight,tlRadius,trRadius,blRadius,brRadius);
         g.endFill();
         var roundRectBitmap:BitmapData = new BitmapData(roundRectWidth,roundRectHeight,true,0);
         roundRectBitmap.draw(roundRect,new Matrix());
         var filter:DropShadowFilter = new DropShadowFilter(distance,angle,color,alpha);
         filter.knockout = true;
         var inputRect:Rectangle = new Rectangle(0,0,roundRectWidth,roundRectHeight);
         var outputRect:Rectangle = roundRectBitmap.generateFilterRect(inputRect,filter);
         var leftThickness:Number = inputRect.left - outputRect.left;
         var rightThickness:Number = outputRect.right - inputRect.right;
         var topThickness:Number = inputRect.top - outputRect.top;
         var bottomThickness:Number = outputRect.bottom - inputRect.bottom;
         shadow = new BitmapData(outputRect.width,outputRect.height);
         shadow.applyFilter(roundRectBitmap,inputRect,new Point(leftThickness,topThickness),filter);
         var origin:Point = new Point(0,0);
         var rect:Rectangle = new Rectangle();
         if(leftThickness > 0)
         {
            rect.x = 0;
            rect.y = tlRadius + topThickness + bottomThickness;
            rect.width = leftThickness;
            rect.height = 1;
            leftShadow = new BitmapData(leftThickness,1);
            leftShadow.copyPixels(shadow,rect,origin);
         }
         else
         {
            leftShadow = null;
         }
         if(rightThickness > 0)
         {
            rect.x = shadow.width - rightThickness;
            rect.y = trRadius + topThickness + bottomThickness;
            rect.width = rightThickness;
            rect.height = 1;
            rightShadow = new BitmapData(rightThickness,1);
            rightShadow.copyPixels(shadow,rect,origin);
         }
         else
         {
            rightShadow = null;
         }
         if(topThickness > 0)
         {
            rect.x = tlRadius + leftThickness + rightThickness;
            rect.y = 0;
            rect.width = 1;
            rect.height = topThickness;
            topShadow = new BitmapData(1,topThickness);
            topShadow.copyPixels(shadow,rect,origin);
         }
         else
         {
            topShadow = null;
         }
         if(bottomThickness > 0)
         {
            rect.x = blRadius + leftThickness + rightThickness;
            rect.y = shadow.height - bottomThickness;
            rect.width = 1;
            rect.height = bottomThickness;
            bottomShadow = new BitmapData(1,bottomThickness);
            bottomShadow.copyPixels(shadow,rect,origin);
         }
         else
         {
            bottomShadow = null;
         }
      }
      
      public function get alpha() : Number
      {
         return _alpha;
      }
      
      public function get color() : int
      {
         return _color;
      }
      
      public function set angle(value:Number) : void
      {
         if(_angle != value)
         {
            _angle = value;
            changed = true;
         }
      }
      
      public function set trRadius(value:Number) : void
      {
         if(_trRadius != value)
         {
            _trRadius = value;
            changed = true;
         }
      }
      
      public function set tlRadius(value:Number) : void
      {
         if(_tlRadius != value)
         {
            _tlRadius = value;
            changed = true;
         }
      }
      
      public function get trRadius() : Number
      {
         return _trRadius;
      }
      
      public function set distance(value:Number) : void
      {
         if(_distance != value)
         {
            _distance = value;
            changed = true;
         }
      }
      
      public function get distance() : Number
      {
         return _distance;
      }
      
      public function get tlRadius() : Number
      {
         return _tlRadius;
      }
      
      public function set alpha(value:Number) : void
      {
         if(_alpha != value)
         {
            _alpha = value;
            changed = true;
         }
      }
      
      public function set blRadius(value:Number) : void
      {
         if(_blRadius != value)
         {
            _blRadius = value;
            changed = true;
         }
      }
   }
}
