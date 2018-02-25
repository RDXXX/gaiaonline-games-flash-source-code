package com.gaiaworld.monsters.view
{
   public class Flamingo extends BaseMonster
   {
       
      
      public function Flamingo()
      {
         super();
         hasBack = false;
         flips = true;
         loadMonster("flamingo");
      }
      
      override protected function monsterReady() : void
      {
         animation.gotoAndStop("walk");
      }
   }
}
