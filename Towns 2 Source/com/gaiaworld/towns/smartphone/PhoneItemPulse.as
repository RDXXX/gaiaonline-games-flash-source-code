package com.gaiaworld.towns.smartphone
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class PhoneItemPulse extends MovieClip
   {
       
      
      public var text1:TextField;
      
      public function PhoneItemPulse()
      {
         super();
         this.stop();
      }
      
      public function setText(param1:String) : *
      {
         this.text1.text = param1;
         this.play();
      }
   }
}
