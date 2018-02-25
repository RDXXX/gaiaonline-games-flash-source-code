package com.gaiaworld.avatar.view.parts
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class BodyPart extends Sprite
   {
       
      
      private var bitmap:Bitmap;
      
      public var bmd:BitmapData;
      
      public function BodyPart()
      {
         super();
      }
      
      public function setBitmapData(param1:BitmapData) : *
      {
         this.bmd = param1;
         this.bitmap = new Bitmap(param1);
         this.bitmap.smoothing = true;
         this.bitmap.cacheAsBitmap = true;
         this.addChild(this.bitmap);
         this.bitmap.x = -this.bitmap.width / 2;
         this.bitmap.y = -this.bitmap.height / 2;
      }
      
      public function clean() : *
      {
         this.bmd.dispose();
      }
   }
}
