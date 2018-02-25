package com.gaiaworld.monsters.view
{
   public class Lantern extends BaseMonster
   {
       
      
      public function Lantern()
      {
         super();
         hasBack = true;
         flips = true;
         loadMonster("lantern");
      }
      
      override protected function monsterReady() : void
      {
         animation.gotoAndStop("walk");
      }
   }
}
