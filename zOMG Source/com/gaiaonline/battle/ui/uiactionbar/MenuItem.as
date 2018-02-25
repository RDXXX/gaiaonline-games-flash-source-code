package com.gaiaonline.battle.ui.uiactionbar
{
   import flash.events.MouseEvent;
   
   public class MenuItem extends MenuItemFl
   {
       
      
      public function MenuItem()
      {
         super();
         this.btn.addEventListener(MouseEvent.MOUSE_OVER,onMouseOver,false,0,true);
         this.btn.addEventListener(MouseEvent.MOUSE_OUT,onMouseOut,false,0,true);
      }
      
      private function onMouseOut(evt:MouseEvent) : void
      {
         this.txt.textColor = 16777215;
      }
      
      private function onMouseOver(evt:MouseEvent) : void
      {
         this.txt.textColor = 16711935;
      }
   }
}
