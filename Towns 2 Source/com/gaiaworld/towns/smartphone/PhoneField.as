package com.gaiaworld.towns.smartphone
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class PhoneField extends Sprite
   {
      
      public static const PHONE_FIELD_CLICKED:String = "phoneFieldClicked";
       
      
      public var back:MovieClip;
      
      public var fText:TextField;
      
      public var index:int;
      
      public function PhoneField()
      {
         super();
         this.buttonMode = true;
         this.useHandCursor = true;
         this.addEventListener(MouseEvent.MOUSE_DOWN,this.clicked);
      }
      
      public function setText(param1:String) : *
      {
         this.fText.text = param1;
      }
      
      public function setIndex(param1:int) : void
      {
         this.index = param1;
      }
      
      private function clicked(param1:MouseEvent) : *
      {
         this.dispatchEvent(new Event(PHONE_FIELD_CLICKED,true));
      }
   }
}
