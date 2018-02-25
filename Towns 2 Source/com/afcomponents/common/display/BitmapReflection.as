package com.afcomponents.common.display
{
   import com.afcomponents.common.graphics.ReflectionStyle;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   
   public class BitmapReflection extends Reflection
   {
      
      public static const MAX_SIZE:int = 2880;
       
      
      protected var _bounds:Rectangle = null;
      
      protected var _useTargetSize:Boolean = false;
      
      protected var _smoothing:Boolean = false;
      
      protected var _bitmapData:BitmapData = null;
      
      protected var _lastBounds:Rectangle = null;
      
      public function BitmapReflection(param1:DisplayObject, param2:ReflectionStyle = null, param3:Boolean = true)
      {
         super(param1,param2,param3);
      }
      
      public static function drawReflectionBitmap(param1:BitmapData, param2:Shape) : void
      {
         var _loc3_:Graphics = param2.graphics;
         _loc3_.beginBitmapFill(param1,new Matrix(1,0,0,-1));
         _loc3_.drawRect(0,0,param1.width,param1.height);
         _loc3_.endFill();
      }
      
      public function get bounds() : Rectangle
      {
         return !!this._bounds?this._bounds:this._lastBounds;
      }
      
      public function set bounds(param1:Rectangle) : void
      {
         param1.width = param1.width > 0?Number(param1.width):Number(1);
         param1.height = param1.height > 0?Number(param1.height):Number(1);
         this._bounds = param1;
      }
      
      public function get smoothing() : Boolean
      {
         return this._smoothing;
      }
      
      public function set smoothing(param1:Boolean) : void
      {
         this._smoothing = param1;
      }
      
      public function get useTargetSize() : Boolean
      {
         return this._useTargetSize;
      }
      
      public function set useTargetSize(param1:Boolean) : void
      {
         this._useTargetSize = param1;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this._bitmapData;
      }
      
      override public function remove() : void
      {
         this._bitmapData.dispose();
         this._bitmapData = null;
         super.remove();
      }
      
      override protected function redraw() : void
      {
         if(this._bitmapData)
         {
            this._bitmapData.dispose();
         }
         var _loc1_:Rectangle = this._target.getBounds(this._target);
         _loc1_.width = _loc1_.width < MAX_SIZE?Number(_loc1_.width):Number(MAX_SIZE);
         _loc1_.height = _loc1_.height < MAX_SIZE?Number(_loc1_.height):Number(MAX_SIZE);
         _loc1_.width = _loc1_.width > 0?Number(_loc1_.width):Number(1);
         _loc1_.height = _loc1_.height > 0?Number(_loc1_.height):Number(1);
         if(this._bounds)
         {
            this._lastBounds = this._bounds;
         }
         else
         {
            this._lastBounds = _loc1_;
         }
         this.redrawBitmap(_loc1_);
      }
      
      override protected function redrawDisabled() : void
      {
         if(this._bitmapData)
         {
            this._bitmapData.dispose();
         }
         this._bitmapData = new BitmapData(1,1,true,Reflection.TRANSPARENT_COLOR);
         drawReflectionBitmap(this._bitmapData,this._reflection);
      }
      
      protected function redrawBitmap(param1:Rectangle) : void
      {
         if(this._useTargetSize)
         {
            this._bitmapData = new BitmapData(param1.width,param1.height,true,Reflection.TRANSPARENT_COLOR);
            this._bitmapData.draw(this._target,null,null,null,this._lastBounds,this._smoothing);
         }
         else
         {
            this._bitmapData = new BitmapData(this._lastBounds.width,this._lastBounds.height,true,Reflection.TRANSPARENT_COLOR);
            this._bitmapData.draw(this._target,new Matrix(1,0,0,1,-this._lastBounds.x,-this._lastBounds.y),null,null,null,this._smoothing);
         }
         drawReflectionBitmap(this._bitmapData,this._reflection);
         super.redraw();
         drawReflectionLayer(this._reflection.getBounds(this),this._style,this._layer);
      }
   }
}
