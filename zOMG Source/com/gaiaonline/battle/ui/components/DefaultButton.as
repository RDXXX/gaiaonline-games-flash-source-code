package com.gaiaonline.battle.ui.components
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class DefaultButton extends MovieClip
   {
       
      
      public var _caption:TextField;
      
      public var objRing:Object;
      
      public var toolTipText:String;
      
      public var btnAction:String;
      
      public var toolTipTitle:String;
      
      public var backgroundTab:SimpleButton;
      
      public function DefaultButton()
      {
         super();
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
      
      public function init(captionTxt:String = "", activeButton:Boolean = true, centerAlign:Boolean = false, wdth:int = -1) : void
      {
         this._caption.autoSize = TextFieldAutoSize.LEFT;
         this._caption.wordWrap = false;
         this._caption.multiline = false;
         if(captionTxt != "")
         {
            this._caption.text = captionTxt.toUpperCase();
         }
         if(wdth != -1)
         {
            this.backgroundTab.width = wdth;
         }
         else
         {
            this.backgroundTab.width = this._caption.width + 10;
         }
         this.setActive(activeButton);
         if(centerAlign)
         {
            this._caption.x = (this.backgroundTab.width - this._caption.width) / 2;
         }
      }
   }
}
