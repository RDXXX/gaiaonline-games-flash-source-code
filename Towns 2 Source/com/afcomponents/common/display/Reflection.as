package com.afcomponents.common.display
{
   import com.afcomponents.common.display.reflection.Reflector;
   import com.afcomponents.common.graphics.ReflectionStyle;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.display.GradientType;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class Reflection extends Sprite
   {
      
      public static const TRANSPARENT_COLOR:int = 1;
       
      
      protected var _target:DisplayObject = null;
      
      protected var _reflection:Shape;
      
      protected var _layer:Shape;
      
      protected var _style:ReflectionStyle = null;
      
      protected var _reflector:Reflector = null;
      
      public function Reflection(param1:DisplayObject, param2:ReflectionStyle = null, param3:Boolean = true)
      {
         this._reflection = new Shape();
         this._layer = new Shape();
         super();
         this._target = param1;
         if(!param1)
         {
            throw new Error("[" + getQualifiedClassName(this) + "] class without target!");
         }
         this._style = !!param2?param2:new ReflectionStyle();
         this.preset();
         if(param3)
         {
            this._reflector = new Reflector(this);
         }
      }
      
      protected function preset() : void
      {
         this._layer.blendMode = BlendMode.ALPHA;
         super.cacheAsBitmap = true;
         this.addChild(this._reflection);
         this.addChild(this._layer);
      }
      
      public function get target() : DisplayObject
      {
         return this._target;
      }
      
      public function get reflection() : Shape
      {
         return this._reflection;
      }
      
      public function get layer() : Shape
      {
         return this._layer;
      }
      
      public function get style() : ReflectionStyle
      {
         return this._style;
      }
      
      public function get reflector() : Reflector
      {
         return this._reflector;
      }
      
      override public function set cacheAsBitmap(param1:Boolean) : void
      {
         throw new IllegalOperationError("\"cacheAsBitmap\" not implemented in [" + getQualifiedClassName(this) + "] class, extended from [com.afcomponents.common.display::Reflection].");
      }
      
      public function refresh() : void
      {
         this._reflection.graphics.clear();
         this._layer.graphics.clear();
         if(this._style.enabled)
         {
            this.redraw();
            this._reflection.alpha = this._style.clipAlpha;
            if(this._style.usePosition)
            {
               this.refreshPosition();
            }
         }
         else
         {
            this.redrawDisabled();
         }
      }
      
      public function remove() : void
      {
         this._target = null;
         this._reflection = null;
         this._layer = null;
         this._style = null;
         if(this._reflector)
         {
            this._reflector.remove();
         }
         this._reflector = null;
         if(this.parent)
         {
            this.parent.removeChild(this);
         }
      }
      
      public function drawReflectionLayer(param1:Rectangle, param2:ReflectionStyle, param3:Shape) : void
      {
         var _loc4_:Graphics = param3.graphics;
         _loc4_.beginGradientFill(GradientType.LINEAR,[Reflection.TRANSPARENT_COLOR,Reflection.TRANSPARENT_COLOR],[param2.alpha,0],[0,param2.matrixRatio * 255],this.getReflectionMaskMatrix(param1,param2));
         _loc4_.drawRect(0,0,param1.width,param1.height);
         _loc4_.endFill();
      }
      
      public function getReflectionMaskMatrix(param1:Rectangle, param2:ReflectionStyle) : Matrix
      {
         var _loc3_:Matrix = new Matrix();
         _loc3_.createGradientBox(param1.width,param2.matrixDropOff > 0?Number(param1.height / param2.matrixDropOff):Number(Number.MIN_VALUE),Math.PI * 0.5,0,0);
         return _loc3_;
      }
      
      protected function redraw() : void
      {
         if(this._style.useTransform)
         {
            this.refreshTransform();
         }
      }
      
      protected function redrawDisabled() : void
      {
      }
      
      function refreshTransform() : void
      {
         this._layer.x = this._layer.y = 0;
         var _loc1_:Matrix = this._target.transform.matrix;
         this._reflection.transform.matrix = new Matrix(_loc1_.a,-_loc1_.b,-_loc1_.c,_loc1_.d);
         var _loc2_:Rectangle = this._reflection.getBounds(this);
         this._reflection.x = this._reflection.x - _loc2_.x;
         this._reflection.y = this._reflection.y - _loc2_.y;
      }
      
      function refreshPosition() : void
      {
         var _loc1_:Rectangle = !!this._target.parent?this._target.getBounds(this._target.parent):this._target.getBounds(this._target);
         this.x = _loc1_.x;
         this.y = _loc1_.y + _loc1_.height + this._style.distance;
      }
   }
}
