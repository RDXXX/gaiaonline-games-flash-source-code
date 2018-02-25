package com.gaiaonline.battle.newrings
{
   import flash.display.Bitmap;
   
   public class RingIcon extends ItemIconBase
   {
       
      
      public function RingIcon(img:Bitmap)
      {
         super(img);
      }
      
      public function get ringId() : String
      {
         return super.id;
      }
      
      public function set ringId(id:String) : void
      {
         super.id = id;
      }
   }
}
