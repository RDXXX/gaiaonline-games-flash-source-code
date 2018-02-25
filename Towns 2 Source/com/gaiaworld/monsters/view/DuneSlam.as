package com.gaiaworld.monsters.view
{
   public class DuneSlam extends BaseMonster
   {
       
      
      public function DuneSlam()
      {
         super();
         hasBack = true;
         flips = true;
         loadMonster("duneSlam");
      }
      
      override protected function monsterReady() : void
      {
         animation.gotoAndStop("walk");
      }
   }
}
