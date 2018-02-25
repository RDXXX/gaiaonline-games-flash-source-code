package com.gaiaworld.monsters.view
{
   public class GrassFluff extends BaseMonster
   {
       
      
      public function GrassFluff()
      {
         super();
         hasBack = true;
         flips = true;
         loadMonster("grassFluff");
      }
      
      override protected function monsterReady() : void
      {
         animation.gotoAndStop("walk");
      }
   }
}
