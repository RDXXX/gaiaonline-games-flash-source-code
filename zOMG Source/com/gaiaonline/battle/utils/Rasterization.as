package com.gaiaonline.battle.utils
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   
   public class Rasterization
   {
      
      private static const S_SCALE:Number = 0.5;
      
      private static var _useScaling:Boolean = false;
       
      
      private var _stats:Object;
      
      private var _left:Number = 0;
      
      private var _top:Number = 0;
      
      private var _bmd:BitmapData = null;
      
      public function Rasterization(obj:DisplayObject)
      {
         _stats = {
            "name":"",
            "count":0
         };
         super();
         var bound:Rectangle = obj.getBounds(obj);
         _left = bound.left;
         _top = bound.top;
         var scaler:Number = !!_useScaling?Number(S_SCALE):Number(1);
         _bmd = new BitmapData(Math.max(obj.width * scaler,1),Math.max(obj.height * scaler,1),true,0);
         var mat:Matrix = new Matrix(1,0,0,1,-_left,-_top);
         if(_useScaling)
         {
            mat.scale(S_SCALE,S_SCALE);
         }
         _bmd.draw(obj,mat);
         _stats.name = String(obj);
      }
      
      private static function tr(str:String) : void
      {
      }
      
      public function createBitmap() : Bitmap
      {
         var mat:Matrix = null;
         var bmp:Bitmap = new Bitmap(_bmd);
         if(_useScaling)
         {
            mat = new Matrix(1,0,0,1);
            mat.scale(1 / S_SCALE,1 / S_SCALE);
            bmp.transform.matrix = mat;
            bmp.smoothing = true;
         }
         bmp.x = _left;
         bmp.y = _top;
         addRef();
         return bmp;
      }
      
      public function get left() : int
      {
         return _left;
      }
      
      private function addRef() : void
      {
         _stats.count++;
         tr("new instance of " + _stats.name + ", instances: " + _stats.count);
      }
      
      public function get top() : int
      {
         return _top;
      }
      
      public function get bitmapData() : BitmapData
      {
         return _bmd;
      }
   }
}
