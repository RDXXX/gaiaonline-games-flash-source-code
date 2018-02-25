package com.gaiaworld.monsters.view
{
   public class PrariePup extends BaseMonster
   {
       
      
      public function PrariePup()
      {
         super();
         hasBack = true;
         flips = true;
         loadMonster("pup");
         frameCycle = 10;
         walkDuration = 30;
      }
      
      override protected function monsterReady() : void
      {
         animation.gotoAndStop("walk");
      }
   }
}
