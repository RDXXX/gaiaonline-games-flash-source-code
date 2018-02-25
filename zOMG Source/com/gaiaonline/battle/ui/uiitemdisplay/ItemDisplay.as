package com.gaiaonline.battle.ui.uiitemdisplay
{
   import com.gaiaonline.battle.ApplicationInterfaces.IAssetFactory;
   import com.gaiaonline.battle.ItemLoadManager.ItemIcon;
   import com.gaiaonline.battle.ui.components.ScrollBarVer;
   import com.gaiaonline.battle.ui.uiactionbar.SlotBorderFl;
   import com.gaiaonline.battle.utils.BattleUtils;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class ItemDisplay extends MovieClip
   {
       
      
      public var scrollBar:ScrollBarVer;
      
      private var _selection:DisplayObject = null;
      
      public var startIndex:int = 0;
      
      private var _extraRows:int = -1;
      
      private var _selectedSlot:int = -1;
      
      public var itemsContainer:MovieClip;
      
      private var _rowSpace:int = 1;
      
      private var _render:Boolean = false;
      
      private var _numCol:int = 8;
      
      private var _itemHeight:Number = 28;
      
      private var _items:Object;
      
      private var _colSpace:int = 1;
      
      private var _minimumRows:int = 0;
      
      private var scrollMask:Sprite;
      
      private var _globalToLocalHelper:Point;
      
      private var _lastIndex:int = -1;
      
      private var _assetFactory:IAssetFactory = null;
      
      private var _itemWidth:Number = 28;
      
      public function ItemDisplay()
      {
         _items = new Object();
         _globalToLocalHelper = new Point(NaN,NaN);
         super();
         this.scrollBar.height = this.height;
         this.scaleX = this.scaleY = 1;
         this.scrollMask = new Sprite();
         this.scrollMask.graphics.lineStyle(0);
         this.scrollMask.graphics.beginFill(255);
         this.scrollMask.graphics.drawRect(0,0,10,10);
         this.scrollMask.graphics.endFill();
         this.addChild(this.scrollMask);
         this.itemsContainer.mask = this.scrollMask;
         this.addEventListener(Event.ADDED_TO_STAGE,onAddedToStage,false,0,true);
         this.addEventListener(Event.REMOVED_FROM_STAGE,onRemoveFromStage,false,0,true);
      }
      
      public function get minimumRows() : int
      {
         return this._minimumRows;
      }
      
      public function get rowSpacing() : int
      {
         return this._rowSpace;
      }
      
      public function set minimumRows(v:int) : void
      {
         this._minimumRows = v;
         if(this._minimumRows > 0 && this._extraRows < 0)
         {
            this._extraRows = 0;
         }
         this._render = true;
      }
      
      public function set rowSpacing(v:int) : void
      {
         this._rowSpace = v;
         this._render = true;
      }
      
      private function itemSlotFromSlot(slot:int) : ItemSlot
      {
         return ItemSlot(this._items[slot - this.startIndex]);
      }
      
      public function clearAll() : void
      {
         var itemSlot:ItemSlot = null;
         var ic:ItemIcon = null;
         for each(itemSlot in this._items)
         {
            ic = itemSlot.removeItemIcon();
            if(ic != null)
            {
               ic.dispose();
            }
            ic = null;
         }
         removeSelectionRing();
         while(this.itemsContainer.numChildren > 0)
         {
            this.itemsContainer.removeChildAt(0);
         }
         DisplayObjectUtils.ClearAllChildrens(this.itemsContainer,2);
         this._lastIndex = -1;
         BattleUtils.cleanObject(this._items);
         this._render = true;
      }
      
      public function get columnSpacing() : int
      {
         return this._colSpace;
      }
      
      public function init(assetFactory:IAssetFactory) : void
      {
         this._assetFactory = assetFactory;
      }
      
      private function onAddedToStage(evt:Event) : void
      {
         this.addEventListener(Event.ENTER_FRAME,onFrame);
         this._render = true;
      }
      
      public function selectSlot(slot:int) : void
      {
         var slotObj:DisplayObject = null;
         if(this._items[slot - this.startIndex] != null)
         {
            if(!_selection)
            {
               _selection = new SlotBorderFl();
            }
            slotObj = DisplayObject(this._items[slot - this.startIndex]);
            _selection.x = slotObj.x;
            _selection.y = slotObj.y;
            this.itemsContainer.addChild(_selection);
         }
         else
         {
            removeSelectionRing();
         }
      }
      
      public function set extraRows(v:int) : void
      {
         this._extraRows = v;
         this._render = true;
      }
      
      public function get extraRows() : int
      {
         return this._extraRows;
      }
      
      private function removeSelectionRing() : void
      {
         if(_selection)
         {
            this.itemsContainer.removeChild(_selection);
            _selection = null;
         }
      }
      
      public function set columnSpacing(v:int) : void
      {
         this._colSpace = v;
         this._render = true;
      }
      
      private function addSlot(index:int) : ItemSlot
      {
         var itemSlot:ItemSlot = new ItemSlot(this._assetFactory);
         var row:int = Math.floor(index / this._numCol);
         var col:int = Math.floor(index - row * this._numCol);
         itemSlot.x = col * (this._colSpace + this._itemWidth);
         itemSlot.y = row * (this._rowSpace + this._itemHeight);
         this.itemsContainer.addChild(itemSlot);
         this._items[index] = itemSlot;
         return this._items[index];
      }
      
      public function getSlotAt(x:int, y:int) : int
      {
         var i:int = 0;
         var itemSlot:ItemSlot = null;
         var nSlot:int = -1;
         var r:Rectangle = this.scrollMask.getBounds(this);
         this._globalToLocalHelper.x = x;
         this._globalToLocalHelper.y = y;
         var p:Point = this.globalToLocal(this._globalToLocalHelper);
         if(p.x >= r.left && p.x <= r.right && p.y >= r.top && p.y <= r.bottom)
         {
            i = 0;
            for each(itemSlot in this._items)
            {
               if(itemSlot.hitTestPoint(x,y,true))
               {
                  nSlot = i;
                  break;
               }
               i++;
            }
         }
         if(nSlot >= 0)
         {
            nSlot = nSlot + this.startIndex;
         }
         return nSlot;
      }
      
      private function onFrame(evt:Event) : void
      {
         if(this._render)
         {
            this.updateDisplay();
         }
      }
      
      public function playUpgrade(slot:int) : void
      {
         var itemSlot:ItemSlot = this._items[slot - this.startIndex] as ItemSlot;
         if(itemSlot != null)
         {
            itemSlot.playUpgrade();
         }
      }
      
      public function removeItemIcon(slot:int, delSlot:Boolean = false) : ItemIcon
      {
         var ic:ItemIcon = null;
         removeSelectionRing();
         slot = slot - this.startIndex;
         var itemSlot:ItemSlot = this._items[slot] as ItemSlot;
         if(itemSlot != null)
         {
            ic = itemSlot.removeItemIcon();
            if(delSlot)
            {
               delete this._items[slot];
            }
            this._render = true;
         }
         return ic;
      }
      
      private function updateDisplay() : void
      {
         var itemSlot:ItemSlot = null;
         var cRow:int = 0;
         var i:int = 0;
         var n:int = 0;
         var ii:int = 0;
         if(_selection)
         {
            this.itemsContainer.removeChild(_selection);
         }
         var lastIndex:int = -1;
         var ci:int = 0;
         for each(itemSlot in this._items)
         {
            if(itemSlot.getItemIcon() != null)
            {
               lastIndex = ci;
            }
            ci++;
         }
         if(this._extraRows >= 0)
         {
            lastIndex = lastIndex + this._extraRows * this._numCol;
            lastIndex = Math.ceil((lastIndex + 1) / this._numCol) * this._numCol - 1;
            cRow = Math.ceil((lastIndex + 1) / this._numCol);
            if(cRow < this._minimumRows)
            {
               lastIndex = this._minimumRows * this._numCol - 1;
            }
         }
         this._lastIndex = lastIndex;
         if(lastIndex < this.itemsContainer.numChildren - 1)
         {
            for(i = this.itemsContainer.numChildren; i > lastIndex + 1; i--)
            {
               this.itemsContainer.removeChildAt(this.itemsContainer.numChildren - 1);
               delete this._items[i];
            }
         }
         else if(lastIndex > this.itemsContainer.numChildren - 1)
         {
            n = this.itemsContainer.numChildren;
            for(ii = n; ii <= lastIndex; ii++)
            {
               this.addSlot(ii);
            }
         }
         var w:Number = this._numCol * (this._itemWidth + this._colSpace);
         var h:Number = this.scrollBar.height;
         if(this.scrollMask.width != Math.round(w) || this.scrollMask.height != Math.round(h))
         {
            this.scrollMask.height = Math.round(h);
            this.scrollMask.width = Math.round(w);
            this.scrollBar.init(this.itemsContainer,new Rectangle(0,0,w,h),false);
         }
         this.scrollBar.x = this._numCol * (this._itemWidth + this._colSpace);
         this.scrollBar.update();
         if(_selection)
         {
            this.itemsContainer.addChild(_selection);
         }
         this._render = false;
      }
      
      public function refresh() : void
      {
         this._render = true;
      }
      
      public function addItemIcon(itemIcon:ItemIcon, slot:int) : ItemIcon
      {
         var i:int = 0;
         slot = slot - this.startIndex;
         if(slot > this._lastIndex)
         {
            for(i = this._lastIndex + 1; i < slot; i++)
            {
               this.addSlot(i);
            }
            this._lastIndex = slot;
         }
         var itemSlot:ItemSlot = this._items[slot] as ItemSlot;
         if(itemSlot == null)
         {
            itemSlot = this.addSlot(slot);
         }
         this._render = true;
         return itemSlot.addItemIcon(itemIcon);
      }
      
      private function onRemoveFromStage(evt:Event) : void
      {
         this.removeEventListener(Event.ENTER_FRAME,onFrame);
      }
      
      public function playSoulBound(slot:int) : void
      {
         var itemSlot:ItemSlot = this._items[slot - this.startIndex] as ItemSlot;
         if(itemSlot != null)
         {
            itemSlot.playSoulBound();
         }
      }
      
      public function set numColumn(v:int) : void
      {
         this._numCol = v;
         this._render = true;
      }
      
      public function get numColumn() : int
      {
         return this._numCol;
      }
   }
}
