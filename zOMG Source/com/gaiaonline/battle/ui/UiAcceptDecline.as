package com.gaiaonline.battle.ui
{
   import com.gaiaonline.assets.UiBasicButton;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class UiAcceptDecline extends MovieClip
   {
       
      
      public var txt:TextField;
      
      public var btns:Sprite;
      
      public var param:Object;
      
      public function UiAcceptDecline()
      {
         super();
      }
      
      public function addButton(txt:String) : void
      {
         var btn:UiBasicButton = new UiBasicButton(txt,true,true);
         btn.btnAction = "Btn" + txt + "Click";
         if(Sprite(this.btns).numChildren == 0)
         {
            btn.x = this.btns.width;
         }
         else
         {
            btn.x = this.btns.width + 10;
         }
         this.btns.addChild(btn);
         this.btns.x = (245 - this.btns.width) / 2;
         btn.addEventListener(MouseEvent.CLICK,onBtnClick,false,0,true);
      }
      
      private function onBtnClick(evt:MouseEvent) : void
      {
         var action:String = UiBasicButton(SimpleButton(evt.target).parent).btnAction;
         this.dispatchEvent(new Event(action));
      }
      
      public function setText(txt:String) : void
      {
         TextField(this.txt).autoSize = TextFieldAutoSize.CENTER;
         TextField(this.txt).htmlText = txt;
         this.btns.y = this.txt.y + TextField(this.txt).height + 3;
      }
   }
}
