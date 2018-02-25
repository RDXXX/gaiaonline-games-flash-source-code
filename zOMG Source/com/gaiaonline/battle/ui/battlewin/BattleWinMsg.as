package com.gaiaonline.battle.ui.battlewin
{
   import com.gaiaonline.battle.ui.AlertTypes;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import com.gaiaonline.utils.FrameTimer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class BattleWinMsg extends MovieClip
   {
       
      
      private var _itemsContainer:Sprite;
      
      private var _itemList:Array;
      
      private var _index:int = 0;
      
      private var _itemContainersScrollRect:Rectangle;
      
      private var _btnClose:SimpleButton;
      
      private var _lastIndex:int = 0;
      
      private var _btnMsg:MovieClip;
      
      private var _open:Boolean = false;
      
      private var _msgBox:MovieClip;
      
      private var _frameTimer:FrameTimer;
      
      private var _mesages:Dictionary;
      
      public function BattleWinMsg()
      {
         _itemsContainer = new Sprite();
         _mesages = new Dictionary(true);
         _itemContainersScrollRect = new Rectangle(0,0,350,150);
         _frameTimer = new FrameTimer(onFrame);
         super();
         this.tabEnabled = false;
         this.mouseEnabled = false;
         this._itemsContainer.mouseEnabled = false;
         this._itemsContainer.mouseChildren = true;
         this._btnMsg = this.getChildByName("btnMsg") as MovieClip;
         this._btnMsg.addEventListener(MouseEvent.CLICK,onBtnClick);
         this._btnMsg.visible = false;
         DisplayObjectUtils.stopAllMovieClips(this._btnMsg,1);
         this.addChildAt(this._itemsContainer,0);
         this.setItemsContainerScrollRect(this._itemContainersScrollRect);
         var c:Class = this.loaderInfo.applicationDomain.getDefinition("btnClose") as Class;
         this._btnClose = new c();
         this._btnClose.x = 266;
         this._btnClose.y = 2;
         this._btnClose.addEventListener(MouseEvent.CLICK,onBtnClick);
         this._itemsContainer.addChild(this._btnClose);
         this._frameTimer.startPerFrame();
         var filters:Array = [new DropShadowFilter(3,45,0,0.6,5,5)];
         this._itemsContainer.filters = filters;
      }
      
      private function onItemBtnClick(evt:Event) : void
      {
         if(BattleWinMsgItem(evt.target).open)
         {
            setOpen(BattleWinMsgItem(evt.target));
         }
         else
         {
            this.arange();
         }
      }
      
      public function setMsg(name:String, title:String, show:Boolean = true, txt:String = null, url:String = null, npcName:String = null) : void
      {
         var item:BattleWinMsgItem = null;
         var c:Class = null;
         if(show)
         {
            if(this._mesages[name] == null)
            {
               c = this.loaderInfo.applicationDomain.getDefinition("msgBoxItem") as Class;
               item = new c();
               this._mesages[name] = item;
               item.addEventListener("btnClick",onItemBtnClick);
               this._itemsContainer.addChildAt(item,0);
               item.index = this._index;
               this._index++;
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.ZONE_BROADCAST_START}));
            }
            else
            {
               item = this._mesages[name];
            }
            item.update(title,txt,url,npcName);
            setOpen(item);
         }
         else
         {
            this.removeItem(name);
         }
      }
      
      private function onBtnClick(evt:MouseEvent) : void
      {
         this._open = !this._open;
         if(this._open)
         {
            this.gotoAndPlay("in");
         }
         else
         {
            this.gotoAndPlay("out");
         }
      }
      
      private function setOpen(openItem:BattleWinMsgItem) : void
      {
         var item:BattleWinMsgItem = null;
         for each(item in this._mesages)
         {
            if(item != openItem)
            {
               item.open = false;
            }
         }
         this.arange();
      }
      
      private function onFrame() : void
      {
         var rect:Rectangle = null;
         var rect2:Rectangle = null;
         if(this._open && this._itemContainersScrollRect.y != 0)
         {
            rect = this._itemContainersScrollRect;
            rect.y = rect.y - this._itemContainersScrollRect.y / 4;
            if(rect.y / 4 < 1)
            {
               rect.y = 0;
            }
            this.setItemsContainerScrollRect(rect);
         }
         else if(!this._open && this._itemsContainer.numChildren > 0 && this._itemContainersScrollRect.y < this._itemsContainer.height + 5)
         {
            rect2 = this._itemContainersScrollRect;
            rect2.y = rect2.y + (this._itemsContainer.height + 5 - this._itemContainersScrollRect.y) / 4;
            if(rect2.y > this._itemsContainer.height)
            {
               rect2.y = this._itemsContainer.height + 5;
            }
            this.setItemsContainerScrollRect(rect2);
         }
      }
      
      private function setItemsContainerScrollRect(rect:Rectangle) : void
      {
         this._itemContainersScrollRect = rect;
         this._itemsContainer.scrollRect = this._itemContainersScrollRect;
      }
      
      private function removeItem(name:String) : void
      {
         var item:BattleWinMsgItem = null;
         if(this._mesages[name] != null)
         {
            item = this._mesages[name];
            this._itemsContainer.removeChild(item);
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.ZONE_BROADCAST_STOP}));
            delete this._mesages[name];
            this.arange();
         }
      }
      
      private function arange() : void
      {
         var openItem:BattleWinMsgItem = null;
         var item:BattleWinMsgItem = null;
         var i:int = 0;
         var sortedItem:BattleWinMsgItem = null;
         var yp:Number = 0;
         if(!_itemList)
         {
            _itemList = new Array();
         }
         else
         {
            _itemList.length = 0;
         }
         for each(item in this._mesages)
         {
            _itemList.push(item);
            if(item.open)
            {
               openItem = item;
            }
         }
         _itemList.sortOn("index",[Array.NUMERIC]);
         for(i = 0; i < _itemList.length; i++)
         {
            sortedItem = _itemList[i];
            sortedItem.y = yp;
            if(sortedItem.open)
            {
               yp = yp + (sortedItem.height - 1);
            }
            else
            {
               yp = yp + 20;
            }
         }
         var rect:Rectangle = this._itemContainersScrollRect;
         rect.height = yp;
         if(!this._open)
         {
            rect.y = yp;
         }
         this.setItemsContainerScrollRect(rect);
         if(this._lastIndex != this._index && !this._open)
         {
            this.gotoAndPlay("in");
            this._open = true;
            DisplayObjectUtils.startAllMovieClips(this._btnMsg);
            this._btnMsg.visible = true;
         }
         else if(this._itemsContainer.numChildren == 1)
         {
            this._open = false;
            this._btnMsg.visible = false;
            DisplayObjectUtils.stopAllMovieClips(this._btnMsg,1);
         }
         this._lastIndex = this._index;
      }
   }
}
