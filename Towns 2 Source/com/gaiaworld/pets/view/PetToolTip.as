package com.gaiaworld.pets.view
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class PetToolTip extends Sprite
   {
       
      
      public var text1:TextField;
      
      public function PetToolTip()
      {
         super();
         this.visible = false;
      }
      
      public function showText(param1:String) : *
      {
         this.text1.htmlText = param1;
         this.visible = true;
      }
   }
}
