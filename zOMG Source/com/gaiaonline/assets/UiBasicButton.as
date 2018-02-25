package com.gaiaonline.assets
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class UiBasicButton extends MovieClip
   {
       
      
      public var _caption:TextField;
      
      public var objRing:Object;
      
      public var toolTipText:String;
      
      public var btnAction:String;
      
      public var toolTipTitle:String;
      
      public var backgroundTab:SimpleButton;
      
      private var centerAlign:Boolean = false;
      
      public function UiBasicButton(captionTxt:String = "", activeButton:Boolean = true, centerAlign:Boolean = false, wdth:int = -1, textAlign:String = "left")
      {
         super();
         this.centerAlign = centerAlign;
         this._caption.autoSize = TextFieldAutoSize.LEFT;
         this._caption.wordWrap = false;
         this._caption.multiline = false;
         this._caption.text = captionTxt.toUpperCase();
         this.setWidth(width);
         this.setActive(activeButton);
         this.checkCenterAlign();
      }
      
      public function setActive(bStatus:Boolean = true) : void
      {
         this.buttonMode = bStatus;
         this.mouseEnabled = false;
         this.mouseChildren = bStatus;
         if(bStatus)
         {
            this._caption.alpha = 1;
            this.backgroundTab.alpha = 1;
         }
         else
         {
            this._caption.alpha = 0.4;
            this.backgroundTab.alpha = 0.7;
         }
         this._caption.mouseEnabled = false;
      }
      
      public function checkCenterAlign() : void
      {
         if(this.centerAlign)
         {
            this._caption.x = (this.backgroundTab.width - this._caption.width) / 2;
         }
      }
      
      public function setWidth(width:Number) : void
      {
         if(width != -1)
         {
            this.backgroundTab.width = width;
         }
         else
         {
            this.backgroundTab.width = this._caption.width + 10;
         }
      }
      
      public function get caption() : TextField
      {
         return this._caption;
      }
      
      public function setText(text:String) : void
      {
         this._caption.text = text.toUpperCase();
         this.checkCenterAlign();
      }
   }
}
