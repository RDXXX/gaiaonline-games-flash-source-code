package com.gaiaworld.monsters.view
{
   public class Doll extends BaseMonster
   {
       
      
      public function Doll()
      {
         super();
         hasBack = true;
         flips = true;
         loadMonster("doll");
      }
      
      override protected function monsterReady() : void
      {
         animation.gotoAndStop("walk");
      }
   }
}
