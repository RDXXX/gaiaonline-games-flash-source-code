package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.Globals;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   
   public class UiChatNotification extends MovieClip
   {
       
      
      private var shape:Shape;
      
      private var delay:uint;
      
      private var remove:Boolean = true;
      
      private var txt:TextField;
      
      private var pause:Boolean = false;
      
      private var format:TextFormat;
      
      private var sp:Sprite;
      
      public function UiChatNotification()
      {
         shape = new Shape();
         sp = new Sprite();
         txt = new TextField();
         format = new TextFormat();
         super();
         this.sp.addEventListener(MouseEvent.MOUSE_OVER,pauseHide,false,0,true);
         this.sp.addEventListener(MouseEvent.MOUSE_OUT,unpauseHide,false,0,true);
         this.sp.addEventListener(MouseEvent.CLICK,openChat,false,0,true);
         this.shape.graphics.beginFill(0,0.5);
         this.shape.graphics.drawRect(0,0,300,20);
         this.sp.addChild(this.shape);
         this.format.font = "Arial";
         this.format.size = 9;
         this.txt.textColor = 16777215;
         this.txt.selectable = false;
         this.txt.multiline = true;
         this.txt.wordWrap = true;
         this.txt.width = 300;
         this.sp.addChild(this.txt);
         this.addChild(sp);
      }
      
      private function openChat(e:MouseEvent) : void
      {
         if(Globals.uiManager.actionBar)
         {
            Globals.uiManager.actionBar.onBtnChat(e);
         }
         this.pause = false;
         removeNotification();
      }
      
      public function showNotification(t:String) : void
      {
         this.txt.htmlText = t;
         this.txt.setTextFormat(this.format);
         if(Globals.uiManager.actionBar)
         {
            this.sp.x = Globals.uiManager.actionBar.x + 13;
         }
         this.txt.autoSize = TextFieldAutoSize.LEFT;
         this.shape.width = this.txt.width;
         this.shape.height = this.txt.height;
         if(Globals.uiManager.actionBar)
         {
            this.sp.y = Globals.uiManager.actionBar.y - this.sp.height;
         }
         Globals.uiManager.mcBaseWinLayer.addChild(this.sp);
      }
      
      private function pauseHide(e:MouseEvent) : void
      {
         this.pause = true;
      }
      
      public function removeNotification() : void
      {
         this.remove = true;
         if(Globals.uiManager.mcBaseWinLayer.contains(this.sp) && this.pause == false)
         {
            Globals.uiManager.mcBaseWinLayer.removeChild(this.sp);
            this.remove = false;
         }
      }
      
      private function unpauseHide(e:MouseEvent) : void
      {
         this.pause = false;
         if(this.remove)
         {
            removeNotification();
         }
      }
   }
}
