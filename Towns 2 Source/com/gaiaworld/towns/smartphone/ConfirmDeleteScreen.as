package com.gaiaworld.towns.smartphone
{
   import com.gaiaworld.towns.constants.PhoneConstants;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class ConfirmDeleteScreen extends Sprite
   {
       
      
      public var btnNo:SimpleButton;
      
      public var btnYes:SimpleButton;
      
      public var text1:TextField;
      
      public function ConfirmDeleteScreen()
      {
         super();
         this.btnYes.addEventListener(MouseEvent.MOUSE_DOWN,this.sayYes);
         this.btnNo.addEventListener(MouseEvent.MOUSE_DOWN,this.sayNo);
      }
      
      private function sayNo(param1:MouseEvent) : void
      {
         this.dispatchEvent(new Event(PhoneConstants.DELETE_SAY_NO,true));
      }
      
      private function sayYes(param1:MouseEvent) : void
      {
         this.dispatchEvent(new Event(PhoneConstants.DELETE_SAY_YES,true));
      }
      
      public function setText(param1:String) : *
      {
         this.text1.text = "Really Delete " + param1 + " ?";
      }
   }
}
