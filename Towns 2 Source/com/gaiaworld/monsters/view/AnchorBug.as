package com.gaiaworld.monsters.view
{
   public class AnchorBug extends BaseMonster
   {
       
      
      public function AnchorBug()
      {
         super();
         hasBack = true;
         flips = true;
         loadMonster("anchorBug");
      }
      
      override protected function monsterReady() : void
      {
         animation.gotoAndStop("walk");
      }
   }
}
