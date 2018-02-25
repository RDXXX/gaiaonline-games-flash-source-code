package com.gaiaonline.battle.ui.UiGeneric
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   
   public class UiGenericButton extends MovieClip
   {
       
      
      public var txtLabel:TextField;
      
      public var mcBack:MovieClip;
      
      public function UiGenericButton()
      {
         super();
         this.txtLabel.mouseEnabled = false;
         this.addEventListener(MouseEvent.MOUSE_OVER,onMouseOver);
         this.addEventListener(MouseEvent.MOUSE_OUT,onMouseOut);
      }
      
      public function onMouseOver(evt:MouseEvent) : void
      {
         this.mcBack.gotoAndStop(2);
      }
      
      public function setLabel(txt:String, width:Number = 0) : void
      {
         this.txtLabel.text = txt;
         this.txtLabel.autoSize = TextFieldAutoSize.LEFT;
         var tf:TextFormat = new TextFormat();
         tf.size = 12;
         tf.bold = true;
         tf.color = 16777215;
         tf.font = "Arial";
         tf.align = "center";
         this.txtLabel.setTextFormat(tf);
         if(width <= 0)
         {
            this.mcBack.width = this.txtLabel.width + 10;
         }
         else
         {
            this.mcBack.width = width;
            this.txtLabel.x = width / 2 - this.txtLabel.width / 2;
         }
      }
      
      public function getLabel() : String
      {
         return this.txtLabel.text;
      }
      
      public function onMouseOut(evt:MouseEvent) : void
      {
         this.mcBack.gotoAndStop(1);
      }
   }
}
