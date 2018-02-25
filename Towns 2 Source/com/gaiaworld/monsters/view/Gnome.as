package com.gaiaworld.monsters.view
{
   public class Gnome extends BaseMonster
   {
       
      
      public function Gnome()
      {
         super();
         hasBack = true;
         loadMonster("gnome");
      }
      
      override protected function monsterReady() : void
      {
         animation.gotoAndStop("walk");
      }
   }
}
