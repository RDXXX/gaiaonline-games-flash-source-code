package com.gaiaonline.battle.newcollectibles
{
   import com.gaiaonline.battle.newrings.ItemIconBase;
   import flash.display.Bitmap;
   
   public class CollectibleIcon extends ItemIconBase
   {
       
      
      public function CollectibleIcon(img:Bitmap)
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
