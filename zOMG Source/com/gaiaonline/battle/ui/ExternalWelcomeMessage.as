package com.gaiaonline.battle.ui
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class ExternalWelcomeMessage extends MovieClip
   {
       
      
      public var okBtn:SimpleButton;
      
      public function ExternalWelcomeMessage()
      {
         super();
         okBtn.addEventListener(MouseEvent.CLICK,onClickOk,false,0,true);
      }
      
      private function onClickOk(evt:MouseEvent) : void
      {
         dispatchEvent(new Event("CLOSE"));
      }
   }
}
