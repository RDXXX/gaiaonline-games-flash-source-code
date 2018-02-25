package com.gaiaworld.monsters.view
{
   public class Landshark extends BaseMonster
   {
       
      
      public function Landshark()
      {
         super();
         hasBack = true;
         flips = true;
         loadMonster("landShark");
      }
      
      override protected function monsterReady() : void
      {
         animation.gotoAndStop("walk");
      }
   }
}
