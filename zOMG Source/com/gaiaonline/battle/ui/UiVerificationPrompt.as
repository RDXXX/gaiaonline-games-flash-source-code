package com.gaiaonline.battle.ui
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   
   public class UiVerificationPrompt extends MovieClip
   {
       
      
      public var verifyBtn:SimpleButton;
      
      private var sb:SimpleButton = null;
      
      public function UiVerificationPrompt()
      {
         super();
         this.verifyBtn.addEventListener(MouseEvent.CLICK,onVerifyClick,false,0,true);
      }
      
      private function onVerifyClick(evt:MouseEvent) : void
      {
      }
   }
}
