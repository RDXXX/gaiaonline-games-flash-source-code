package com.gaiaworld.towns.smartphone
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class PhoneItemButton extends Sprite
   {
       
      
      public var back:MovieClip;
      
      public var text1:TextField;
      
      private var _text:String;
      
      private var itemPulse:PhoneItemPulse;
      
      public function PhoneItemButton()
      {
         super();
         this.buttonMode = true;
         this.useHandCursor = true;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function set text(param1:String) : void
      {
         this._text = param1;
         this.text1.text = this._text;
      }
      
      public function addPulse() : *
      {
         this.removePulse();
         this.itemPulse = new PhoneItemPulse();
         this.itemPulse.setText(this._text);
         this.addChild(this.itemPulse);
      }
      
      public function removePulse() : *
      {
         if(this.itemPulse != null)
         {
            if(this.contains(this.itemPulse))
            {
               this.removeChild(this.itemPulse);
            }
         }
      }
   }
}
