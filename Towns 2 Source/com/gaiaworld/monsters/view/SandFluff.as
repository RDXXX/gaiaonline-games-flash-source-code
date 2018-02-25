package com.gaiaworld.monsters.view
{
   public class SandFluff extends BaseMonster
   {
       
      
      public function SandFluff()
      {
         super();
         hasBack = true;
         flips = true;
         loadMonster("sandFluff");
      }
      
      override protected function monsterReady() : void
      {
         animation.gotoAndStop("walk");
      }
   }
}
