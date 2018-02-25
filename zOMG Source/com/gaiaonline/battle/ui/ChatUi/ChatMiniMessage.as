package com.gaiaonline.battle.ui.ChatUi
{
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import fl.transitions.Tween;
   import fl.transitions.TweenEvent;
   import fl.transitions.easing.Regular;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Timer;
   
   public class ChatMiniMessage extends MovieClip
   {
       
      
      private var shape:Shape;
      
      private var fadeTween:Tween;
      
      public var txtMsg:TextField = null;
      
      private var aliveTimer:Timer;
      
      private var sp:Sprite;
      
      public function ChatMiniMessage(mText:String, mWidth:int)
      {
         shape = new Shape();
         sp = new Sprite();
         aliveTimer = new Timer(3000,1);
         super();
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this.txtMsg = new TextField();
         this.txtMsg.autoSize = TextFieldAutoSize.LEFT;
         this.txtMsg.wordWrap = true;
         this.txtMsg.multiline = true;
         this.txtMsg.width = mWidth - 28;
         this.txtMsg.htmlText = mText;
         this.txtMsg.selectable = false;
         this.shape.graphics.beginFill(0,0.35);
         this.shape.graphics.drawRect(0,0,mWidth - 23,this.txtMsg.textHeight + 2);
         this.shape.graphics.endFill();
         this.addChild(this.shape);
         this.txtMsg.x = 2;
         this.txtMsg.y = 2;
         this.txtMsg.cacheAsBitmap = true;
         this.addChild(this.txtMsg);
         this.aliveTimer.addEventListener(TimerEvent.TIMER_COMPLETE,fadeAndDie,false,0,true);
         this.aliveTimer.start();
      }
      
      private function fadeAndDie(t:TimerEvent) : void
      {
         this.fadeTween = new Tween(this,"alpha",Regular.easeInOut,1,0,10,false);
         this.fadeTween.addEventListener(TweenEvent.MOTION_FINISH,messageDie,false,0,true);
      }
      
      private function messageDie(t:TweenEvent) : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.CHAT_MINI_MESSAGE_END,{"message":this}));
      }
      
      public function stopAll() : void
      {
         if(this.fadeTween != null)
         {
            this.fadeTween.stop();
            this.fadeTween = null;
         }
         if(this.aliveTimer != null)
         {
            this.aliveTimer.stop();
            this.aliveTimer = null;
         }
      }
   }
}
