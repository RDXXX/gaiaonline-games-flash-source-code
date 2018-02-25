package com.gaiaworld.monsters.view
{
   public class CherryFluff extends BaseMonster
   {
       
      
      public function CherryFluff()
      {
         super();
         hasBack = true;
         flips = true;
         loadMonster("cherryFluff");
      }
      
      override protected function monsterReady() : void
      {
         animation.gotoAndStop("walk");
      }
   }
}
