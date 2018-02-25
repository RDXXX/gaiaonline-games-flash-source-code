package com.gaiaonline.battle.newghibuffs
{
   import com.gaiaonline.battle.newrings.ItemIconBase;
   import flash.display.Bitmap;
   
   public class GhiBuffIcon extends ItemIconBase
   {
       
      
      public function GhiBuffIcon(img:Bitmap)
      {
         super(img);
      }
      
      override protected function loadBitmap() : void
      {
         bitmap.x = 0;
         bitmap.y = 0;
         this.addChild(bitmap);
      }
   }
}
