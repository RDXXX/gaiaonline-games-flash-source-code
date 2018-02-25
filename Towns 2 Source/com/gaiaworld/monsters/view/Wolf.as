package com.gaiaworld.monsters.view
{
   public class Wolf extends BaseMonster
   {
       
      
      public function Wolf()
      {
         super();
         hasBack = true;
         flips = true;
         loadMonster("wolf");
      }
      
      override protected function monsterReady() : void
      {
         animation.gotoAndStop("walk");
      }
   }
}
