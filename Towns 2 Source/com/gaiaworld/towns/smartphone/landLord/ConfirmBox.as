package com.gaiaworld.towns.smartphone.landLord
{
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class ConfirmBox extends Sprite
   {
      
      public static const SAY_YES:String = "sayYes";
      
      public static const SAY_NO:String = "sayNo";
       
      
      public var btnNo:SimpleButton;
      
      public var btnYes:SimpleButton;
      
      public function ConfirmBox()
      {
         super();
         this.btnYes.addEventListener(MouseEvent.MOUSE_DOWN,this.sayYes);
         this.btnNo.addEventListener(MouseEvent.MOUSE_DOWN,this.sayNo);
      }
      
      private function sayNo(param1:MouseEvent) : void
      {
         this.dispatchEvent(new Event(SAY_NO,true));
      }
      
      private function sayYes(param1:MouseEvent) : void
      {
         this.dispatchEvent(new Event(SAY_YES,true));
      }
   }
}
