package com.gaiaworld.monsters.view
{
   public class WaterSpout extends BaseMonster
   {
       
      
      public function WaterSpout()
      {
         super();
         hasBack = true;
         flips = true;
         loadMonster("waterSpout");
      }
      
      override protected function monsterReady() : void
      {
         animation.gotoAndStop("walk");
      }
   }
}
