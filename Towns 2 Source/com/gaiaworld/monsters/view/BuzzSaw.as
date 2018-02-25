package com.gaiaworld.monsters.view
{
   public class BuzzSaw extends BaseMonster
   {
       
      
      public function BuzzSaw()
      {
         super();
         hasBack = true;
         flips = true;
         loadMonster("buzzSaw");
      }
      
      override protected function monsterReady() : void
      {
         animation.gotoAndStop("walk");
      }
   }
}
