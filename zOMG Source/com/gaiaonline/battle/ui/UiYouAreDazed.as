package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.ui.events.UiEvents;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.utils.Timer;
   
   public class UiYouAreDazed extends MovieClip
   {
       
      
      private var timer:Timer;
      
      private var tl:int = 0;
      
      private var tCount:int = 0;
      
      private var btnGoto:SimpleButton;
      
      public function UiYouAreDazed(youAreDazed:MovieClip)
      {
         super();
         this.addChild(youAreDazed);
         this.btnGoto = youAreDazed.btnGoto;
         this.btnGoto.addEventListener(MouseEvent.CLICK,onGotoClick,false,0,true);
      }
      
      private function onGotoClick(evt:MouseEvent) : void
      {
         this.dispatchEvent(new UiEvents("GOTO",null));
      }
   }
}
