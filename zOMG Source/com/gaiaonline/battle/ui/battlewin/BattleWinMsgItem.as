package com.gaiaonline.battle.ui.battlewin
{
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Timer;
   
   public class BattleWinMsgItem extends MovieClip
   {
       
      
      private var _npcImg:Sprite;
      
      private var _mcContent:Sprite;
      
      private var _loadRetryTime:int = 5000;
      
      private var _btnExtend:MovieClip;
      
      public var index:int = 0;
      
      private var _txtTitle:TextField;
      
      private var _open:Boolean = true;
      
      private var _npcUrl:String;
      
      private var _txt:TextField;
      
      private var _mcBack:Sprite;
      
      public function BattleWinMsgItem()
      {
         super();
         this.mouseEnabled = false;
         this._mcBack = this.getChildByName("mcBack") as Sprite;
         this._mcBack.mouseEnabled = this._mcBack.mouseChildren = false;
         this._btnExtend = this.getChildByName("btnExtend") as MovieClip;
         this._btnExtend.mouseEnabled = this._btnExtend.mouseChildren = true;
         this._txtTitle = this.getChildByName("txtTitle") as TextField;
         this._txtTitle.mouseEnabled = false;
         this._mcContent = this.getChildByName("mcContent") as Sprite;
         this._mcContent.mouseEnabled = this._mcContent.mouseChildren = false;
         this._txt = this._mcContent.getChildByName("txt") as TextField;
         this._npcImg = this._mcContent.getChildByName("npcImg") as Sprite;
         this._btnExtend.addEventListener(MouseEvent.CLICK,onBtnClick);
         this._btnExtend.gotoAndStop(2);
      }
      
      private function onImgLoaded(evt:Event) : void
      {
         var l:LoaderInfo = evt.target as LoaderInfo;
         if(l != null && l.loader != null)
         {
            l.loader.x = 2;
            l.loader.y = 2;
            l.loader.width = l.loader.height = 40;
            this._npcImg.addChild(l.loader);
         }
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      private function onBtnClick(evt:MouseEvent) : void
      {
         this._open = !this._open;
         this.toggle();
         this.dispatchEvent(new Event("btnClick"));
      }
      
      private function toggle() : void
      {
         if(this._open)
         {
            this._txt.autoSize = TextFieldAutoSize.LEFT;
            this._mcBack.height = this._mcContent.height + 26;
            this._mcContent.visible = true;
            this._btnExtend.gotoAndStop(2);
            this._txtTitle.textColor = 16776960;
         }
         else
         {
            this._mcBack.height = 20;
            this._mcContent.visible = false;
            this._btnExtend.gotoAndStop(1);
            this._txtTitle.textColor = 9671484;
         }
      }
      
      public function update(title:String, txt:String = null, url:String = null, npcName:String = null) : void
      {
         this._txtTitle.text = title;
         if(txt != null)
         {
            this._txt.text = txt;
         }
         this._txt.autoSize = TextFieldAutoSize.LEFT;
         this._mcBack.height = this._mcContent.height + 26;
         while(this._npcImg.numChildren > 0)
         {
            this._npcImg.removeChildAt(0);
         }
         if(url != null)
         {
            this._npcUrl = String(url).replace(/_flip.png|.png/,"_48x48.gif");
            this.loadImg(this._npcUrl);
         }
      }
      
      public function set open(v:Boolean) : void
      {
         if(this._open != v)
         {
            this._open = v;
            this.toggle();
         }
      }
      
      private function onIoError(evt:IOErrorEvent) : void
      {
         var timer:Timer = new Timer(this._loadRetryTime,1);
         timer.addEventListener(TimerEvent.TIMER_COMPLETE,onLoadTimer,false,0,true);
         timer.start();
         this._loadRetryTime = this._loadRetryTime * 2;
      }
      
      private function onLoadTimer(evt:TimerEvent) : void
      {
         Timer(evt.target).removeEventListener(TimerEvent.TIMER_COMPLETE,onLoadTimer);
         if(this._npcUrl != null)
         {
            this.loadImg(this._npcUrl);
         }
      }
      
      private function loadImg(url:String) : void
      {
         var l:Loader = new Loader();
         l.contentLoaderInfo.addEventListener(Event.COMPLETE,onImgLoaded);
         l.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onIoError);
         l.load(new URLRequest(url));
      }
   }
}
