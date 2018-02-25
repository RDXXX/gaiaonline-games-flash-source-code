package com.gaiaonline.battle.newrings
{
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   
   public class ItemIconBase extends MovieClip
   {
       
      
      public var type:int = -1;
      
      public var position:int = -1;
      
      private var _bitmap:Bitmap = null;
      
      private var _id:String = "";
      
      public function ItemIconBase(img:Bitmap)
      {
         super();
         this._bitmap = img;
         loadBitmap();
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      protected function get bitmap() : Bitmap
      {
         return this._bitmap;
      }
      
      protected function loadBitmap() : void
      {
         if(this.bitmap != null)
         {
            this.graphics.beginBitmapFill(this._bitmap.bitmapData,null,false);
            this.graphics.drawRect(0,0,this._bitmap.width,this._bitmap.height);
            this.graphics.endFill();
         }
      }
      
      public function set id(id:String) : void
      {
         _id = id;
      }
   }
}
