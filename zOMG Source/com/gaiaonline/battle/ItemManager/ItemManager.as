package com.gaiaonline.battle.ItemManager
{
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.ItemLoadManager.IItemLoader;
   import com.gaiaonline.battle.ItemLoadManager.ItemIcon;
   import com.gaiaonline.battle.ItemLoadManager.ItemLoadEvent;
   import com.gaiaonline.battle.ui.AlertTypes;
   import com.gaiaonline.battle.ui.UiSwapOrbs;
   import com.gaiaonline.battle.ui.uiactionbar.UiItemBar;
   import com.gaiaonline.battle.ui.uiitemdisplay.ItemDisplay;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class ItemManager extends EventDispatcher
   {
       
      
      public var itemBar:UiItemBar;
      
      private var _displayNum:Boolean = false;
      
      private var _allowSelectability:Boolean = true;
      
      private var _uiFramework:IUIFramework = null;
      
      private var _allowEquip:Boolean = true;
      
      private var _usable:Boolean = true;
      
      private var _selectedSlot:int = -1;
      
      public var allowDrag:Boolean = true;
      
      private var _cachedArray:Array;
      
      private var _currentDragger:ItemIcon = null;
      
      private var _allowSameIdEquide:Boolean = true;
      
      public var itemDisplay:ItemDisplay;
      
      private var _itemManagerCustomization:IItemManagerCustomization = null;
      
      private var _itemIconList:Object;
      
      private var _charging:Boolean = false;
      
      public var uiSwapOrbs:UiSwapOrbs;
      
      private var _allowUnEquip:Boolean = true;
      
      public var dragLayer:Sprite;
      
      public function ItemManager()
      {
         _itemIconList = new Object();
         _cachedArray = [];
         super();
      }
      
      public function unLockSlot(slot:int) : void
      {
         var itemIcon:ItemIcon = null;
         if(slot <= UiItemBar.MAX_BAR_SLOT_INDEX && this.itemBar != null)
         {
            this.itemBar.unLockSlot(slot);
            itemIcon = _itemIconList[slot];
            if(itemIcon != null)
            {
               itemIcon.setLocked(false);
            }
         }
      }
      
      public function startTimer(slot:int, length:int, allItemId:Boolean = true, startTime:Number = 0) : Boolean
      {
         var iic:ItemIcon = null;
         var ic:ItemIcon = this._itemIconList[slot];
         if(ic)
         {
            _cachedArray.length = 0;
            if(allItemId)
            {
               this.getAllWithItemId(ic.itemId,_cachedArray);
            }
            else
            {
               _cachedArray.push(ic);
            }
            for each(iic in _cachedArray)
            {
               if(iic.itemId == ic.itemId)
               {
                  iic.startTimer(length,startTime);
               }
            }
         }
         return ic != null;
      }
      
      public function get allowUnEquip() : Boolean
      {
         return this._allowUnEquip;
      }
      
      public function init(uiFramework:IUIFramework, itemManagerCustomization:IItemManagerCustomization, itemDisplay:ItemDisplay, itemBar:UiItemBar, dragLayer:Sprite) : void
      {
         this._uiFramework = uiFramework;
         this._itemManagerCustomization = itemManagerCustomization;
         this.itemDisplay = itemDisplay;
         this.itemBar = itemBar;
         this.dragLayer = dragLayer;
         if(this._itemManagerCustomization)
         {
            DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,_itemManagerCustomization.getSelectabilityEvent(),onAllowSelectability);
         }
      }
      
      public function isSlotLock(slot:int) : Boolean
      {
         return !!this.itemBar?Boolean(this.itemBar.isSlotLock(slot)):false;
      }
      
      public function clearAll() : void
      {
         var ic:ItemIcon = null;
         for each(ic in this._itemIconList)
         {
            this.removeItem(ic.slot);
         }
         if(this.itemDisplay != null)
         {
            this.itemDisplay.clearAll();
         }
         if(this.itemBar != null)
         {
            this.itemBar.clearAll();
         }
      }
      
      public function disableSlot(slot:int) : void
      {
         if(this._itemIconList[slot] != null)
         {
            ItemIcon(this._itemIconList[slot]).disable = true;
         }
      }
      
      public function getItemAt(slot:int) : ItemIcon
      {
         var ic:ItemIcon = this._itemIconList[slot];
         return ic;
      }
      
      private function onItemIconMouseDown(evt:MouseEvent) : void
      {
         var e:ItemManagerEvent = null;
         if(!this._allowSelectability)
         {
            return;
         }
         var ic:ItemIcon = evt.target as ItemIcon;
         this.selectedSlot = ic.slot;
         if(ic != null)
         {
            if(!ic.timer.running && ic.slot <= UiItemBar.MAX_BAR_SLOT_INDEX && !ic.disable && !this.itemBar.isSlotLock(ic.slot) && (this._usable || this.itemBar.isCure(ic.slot)))
            {
               e = new ItemManagerEvent(ItemManagerEvent.START_CHARGE);
               e.itemIcon = ic;
               this._charging = true;
               this.dispatchEvent(e);
            }
            ic.addEventListener(MouseEvent.MOUSE_UP,onItemIconMouseUp);
            ic.addEventListener(MouseEvent.MOUSE_OUT,onItemIconMouseOut);
         }
      }
      
      public function enableSlot(slot:int) : void
      {
         if(this._itemIconList[slot] != null)
         {
            ItemIcon(this._itemIconList[slot]).disable = false;
         }
      }
      
      public function set allowUnEquip(v:Boolean) : void
      {
         this._allowUnEquip = v;
      }
      
      private function onAllowSelectability(e:GlobalEvent) : void
      {
         this._allowSelectability = e.data;
      }
      
      private function completeDrag(slot:int) : void
      {
         if(_currentDragger)
         {
            _currentDragger.stage.removeEventListener(Event.MOUSE_LEAVE,onMouseLeave);
            _currentDragger.stopDrag();
            this.moveItem(_currentDragger.slot,slot);
            _currentDragger = null;
         }
      }
      
      private function moveItem(sSlot:int, eSlot:int) : void
      {
         var eic:ItemIcon = null;
         var i:int = 0;
         if(eSlot < 0 || eSlot == sSlot || this.itemBar.isSlotLock(eSlot) || this.itemBar.isSlotLock(sSlot))
         {
            this.cancelMove(sSlot,eSlot);
            return;
         }
         if(!this._allowEquip && (sSlot > UiItemBar.MAX_BAR_SLOT_INDEX && eSlot <= UiItemBar.MAX_BAR_SLOT_INDEX))
         {
            this.cancelMove(sSlot,eSlot);
            return;
         }
         if(!this._allowUnEquip && (sSlot <= UiItemBar.MAX_BAR_SLOT_INDEX && eSlot > UiItemBar.MAX_BAR_SLOT_INDEX || eSlot <= UiItemBar.MAX_BAR_SLOT_INDEX && sSlot > UiItemBar.MAX_BAR_SLOT_INDEX && this._itemIconList[eSlot] != null))
         {
            this.cancelMove(sSlot,eSlot);
            return;
         }
         if(!this._allowSameIdEquide && eSlot <= UiItemBar.MAX_BAR_SLOT_INDEX && sSlot > UiItemBar.MAX_BAR_SLOT_INDEX && this._itemIconList[sSlot] != null)
         {
            for(i = 0; i <= UiItemBar.MAX_BAR_SLOT_INDEX; i++)
            {
               if(this._itemIconList[i] != null && ItemIcon(this._itemIconList[i]).itemId == ItemIcon(this._itemIconList[sSlot]).itemId)
               {
                  this.cancelMove(sSlot,eSlot);
                  return;
               }
            }
         }
         var sic:ItemIcon = this._itemIconList[sSlot];
         if(eSlot <= UiItemBar.MAX_BAR_SLOT_INDEX && this.itemBar != null)
         {
            eic = this.itemBar.addItemIcon(sic,eSlot);
         }
         else if(this.itemDisplay != null)
         {
            eic = this.itemDisplay.addItemIcon(sic,eSlot);
         }
         sic.slot = eSlot;
         this._itemIconList[eSlot] = sic;
         if(eic != null)
         {
            if(sSlot <= UiItemBar.MAX_BAR_SLOT_INDEX && this.itemBar != null)
            {
               this.itemBar.addItemIcon(eic,sSlot);
            }
            else if(this.itemDisplay != null)
            {
               this.itemDisplay.addItemIcon(eic,sSlot);
            }
            eic.slot = sSlot;
            this._itemIconList[sSlot] = eic;
         }
         else
         {
            delete this._itemIconList[sSlot];
         }
         this.itemDisplay.refresh();
         this.selectedSlot = eSlot;
         var e:ItemManagerEvent = new ItemManagerEvent(ItemManagerEvent.ITEM_MOVE);
         e.params = {
            "startSlot":sSlot,
            "endSlot":eSlot
         };
         this.dispatchEvent(e);
      }
      
      protected function onAllowUse(event:GlobalEvent) : void
      {
         this._usable = event.data.allow;
         if(this.itemBar != null)
         {
            this.itemBar.usable = this._usable;
         }
      }
      
      protected function get allowSameIdEquide() : Boolean
      {
         return this._allowSameIdEquide;
      }
      
      private function onItemIconMouseOut(evt:MouseEvent) : void
      {
         var e:ItemManagerEvent = null;
         var ic:ItemIcon = evt.target as ItemIcon;
         if(ic != null)
         {
            ic.removeEventListener(MouseEvent.MOUSE_OUT,onItemIconMouseOut);
            if(ic.slot <= UiItemBar.MAX_BAR_SLOT_INDEX)
            {
               e = new ItemManagerEvent(ItemManagerEvent.CANCEL_CHARGE);
               e.itemIcon = ic;
               if(this._charging)
               {
                  this.dispatchEvent(e);
               }
            }
            if(this.allowDrag && this.dragLayer != null && !this.itemBar.isSlotLock(ic.slot))
            {
               ic.x = this.dragLayer.mouseX - 13;
               ic.y = this.dragLayer.mouseY - 13;
               this.dragLayer.addChild(ic);
               ic.startDrag(false);
               ic.stage.addEventListener(Event.MOUSE_LEAVE,onMouseLeave,false,0,true);
               _currentDragger = ic;
            }
         }
         this._charging = false;
      }
      
      public function resetTimer(slot:int, allItemId:Boolean = true) : void
      {
         var iic:ItemIcon = null;
         var ic:ItemIcon = this._itemIconList[slot];
         if(ic)
         {
            _cachedArray.length = 0;
            if(allItemId)
            {
               this.getAllWithItemId(ic.itemId,_cachedArray);
            }
            else
            {
               _cachedArray.push(ic);
            }
            for each(iic in _cachedArray)
            {
               if(iic.itemId == ic.itemId)
               {
                  iic.resetTimer();
               }
            }
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.GENERIC_FAIL}));
         }
      }
      
      public function removeItem(slot:int) : ItemIcon
      {
         var ic:ItemIcon = this._itemIconList[slot] as ItemIcon;
         if(slot <= UiItemBar.MAX_BAR_SLOT_INDEX && this.itemBar != null)
         {
            this.itemBar.removeItemIcon(slot);
         }
         else if(this.itemDisplay != null)
         {
            this.itemDisplay.removeItemIcon(slot);
         }
         if(ic != null)
         {
            if(ic.hasEventListener(MouseEvent.MOUSE_DOWN))
            {
               ic.removeEventListener(MouseEvent.MOUSE_DOWN,onItemIconMouseDown);
            }
            if(ic.hasEventListener(MouseEvent.MOUSE_UP))
            {
               ic.removeEventListener(MouseEvent.MOUSE_UP,onItemIconMouseUp);
            }
            if(ic.hasEventListener(MouseEvent.MOUSE_OUT))
            {
               ic.removeEventListener(MouseEvent.MOUSE_OUT,onItemIconMouseOut);
            }
         }
         this._uiFramework.tooltipManager.removeToolTip(this._itemIconList[slot]);
         delete this._itemIconList[slot];
         if(slot == _selectedSlot)
         {
            _selectedSlot = -1;
            ensureItemSelected();
         }
         return ic;
      }
      
      public function get selectedSlot() : int
      {
         return this._selectedSlot;
      }
      
      public function ensureItemSelected() : void
      {
         var lowestSlot:int = 0;
         var itemIcon:ItemIcon = null;
         if(this._selectedSlot == -1)
         {
            lowestSlot = int.MAX_VALUE;
            for each(itemIcon in _itemIconList)
            {
               if(itemIcon.slot < lowestSlot)
               {
                  lowestSlot = itemIcon.slot;
               }
            }
            if(lowestSlot < 8)
            {
               this.selectedSlot = lowestSlot;
            }
            else
            {
               this.selectedSlot = -1;
            }
         }
      }
      
      public function onItemLoaded(e:ItemLoadEvent) : void
      {
         var itemLoader:IItemLoader = IItemLoader(e.target);
         itemLoader.removeEventListener(ItemLoadEvent.ITEM_LOADED,onItemLoaded);
         ensureItemSelected();
      }
      
      private function detachMouseDownStuff(ic:DisplayObject) : void
      {
         ic.removeEventListener(MouseEvent.MOUSE_UP,onItemIconMouseUp);
         ic.removeEventListener(MouseEvent.MOUSE_OUT,onItemIconMouseOut);
      }
      
      private function getAllWithItemId(id:String, out:Array) : void
      {
         var iic:ItemIcon = null;
         for each(iic in this._itemIconList)
         {
            if(iic.itemId == id)
            {
               out.push(iic);
            }
         }
      }
      
      public function playUpgrade(slot:int) : void
      {
         if(slot > UiItemBar.MAX_BAR_SLOT_INDEX)
         {
            this.itemDisplay.playUpgrade(slot);
         }
         else
         {
            this.itemBar.playUpgrade(slot);
         }
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.RING_UPGRADE}));
      }
      
      public function hasItem(slot:int) : Boolean
      {
         return this._itemIconList[slot] != null && ItemIcon(this._itemIconList[slot]).itemLoader != null;
      }
      
      public function get selectedItem() : ItemIcon
      {
         return this._itemIconList[this._selectedSlot] as ItemIcon;
      }
      
      protected function set displayNum(v:Boolean) : void
      {
         var ic:ItemIcon = null;
         this._displayNum = v;
         for each(ic in this._itemIconList)
         {
            ic.displayNum = this._displayNum;
         }
      }
      
      public function isSlotValide(slot:int) : Boolean
      {
         if(slot > UiItemBar.MAX_BAR_SLOT_INDEX)
         {
            return false;
         }
         var ic:ItemIcon = this._itemIconList[slot] as ItemIcon;
         if(ic == null)
         {
            return false;
         }
         if(this.itemBar != null && this.itemBar.isSlotLock(slot))
         {
            return false;
         }
         if(this.itemBar != null && !this.itemBar.usable)
         {
            return false;
         }
         if(ic.disable)
         {
            return false;
         }
         if(ic.timer.running)
         {
            return false;
         }
         return true;
      }
      
      public function addItem(itemIcon:ItemIcon) : void
      {
         if(this.hasItem(itemIcon.slot))
         {
            this.updateItem(itemIcon.slot,itemIcon.itemId,itemIcon.quantity,itemIcon.SoulBound,itemIcon.itemLoader);
            return;
         }
         var checkItemSelected:Boolean = false;
         if(itemIcon.itemLoader != null && !itemIcon.itemLoader.loaded)
         {
            itemIcon.itemLoader.addEventListener(ItemLoadEvent.ITEM_LOADED,onItemLoaded,false,0,true);
         }
         else
         {
            checkItemSelected = true;
         }
         this._itemIconList[itemIcon.slot] = itemIcon;
         itemIcon.addEventListener(MouseEvent.MOUSE_DOWN,onItemIconMouseDown,false,0,true);
         itemIcon.displayNum = this.displayNum;
         if(itemIcon.slot <= UiItemBar.MAX_BAR_SLOT_INDEX && this.itemBar != null)
         {
            this.itemBar.addItemIcon(itemIcon,itemIcon.slot);
         }
         else if(this.itemDisplay != null)
         {
            this.itemDisplay.addItemIcon(itemIcon,itemIcon.slot);
         }
         if(checkItemSelected)
         {
            ensureItemSelected();
         }
      }
      
      protected function set allowEquip(v:Boolean) : void
      {
         this._allowEquip = v;
      }
      
      protected function set allowSameIdEquide(v:Boolean) : void
      {
         this._allowSameIdEquide = v;
      }
      
      private function onMouseLeave(e:Event) : void
      {
         detachMouseDownStuff(_currentDragger);
         completeDrag(-1);
      }
      
      public function lockSlot(slot:int) : void
      {
         var itemIcon:ItemIcon = null;
         if(slot <= UiItemBar.MAX_BAR_SLOT_INDEX && this.itemBar != null)
         {
            this.itemBar.lockSlot(slot);
            itemIcon = _itemIconList[slot];
            if(itemIcon != null)
            {
               itemIcon.setLocked(true);
            }
         }
      }
      
      protected function get displayNum() : Boolean
      {
         return this._displayNum;
      }
      
      protected function get allowEquip() : Boolean
      {
         return this._allowEquip;
      }
      
      public function get itemIconList() : Object
      {
         return this._itemIconList;
      }
      
      private function cancelMove(sSlot:int, eSlot:int) : void
      {
         if(sSlot <= UiItemBar.MAX_BAR_SLOT_INDEX && this.itemBar != null)
         {
            this.itemBar.addItemIcon(this._itemIconList[sSlot],sSlot);
         }
         else if(this.itemDisplay != null)
         {
            this.itemDisplay.addItemIcon(this._itemIconList[sSlot],sSlot);
         }
      }
      
      public function set selectedSlot(slot:int) : void
      {
         if(!this._allowSelectability)
         {
            return;
         }
         if(this._selectedSlot != slot)
         {
            if(this.itemBar)
            {
               this.itemBar.selectSlot(slot);
            }
            if(this.itemDisplay)
            {
               this.itemDisplay.selectSlot(slot);
            }
         }
         var e:ItemManagerEvent = new ItemManagerEvent(ItemManagerEvent.SELECTION_CHANGE);
         var selectionChanged:Boolean = this._selectedSlot != slot || this._selectedSlot == -1;
         e.params = {"selectionChanged":selectionChanged};
         e.itemIcon = this._itemIconList[slot];
         this.dispatchEvent(e);
         this._selectedSlot = slot;
      }
      
      private function onItemIconMouseUp(evt:MouseEvent) : void
      {
         var nSlot:int = 0;
         var e:ItemManagerEvent = null;
         var ic:ItemIcon = evt.target as ItemIcon;
         detachMouseDownStuff(ic);
         if(ic && ic == _currentDragger)
         {
            nSlot = -1;
            if(this.itemDisplay != null && this.itemDisplay.enabled)
            {
               nSlot = this.itemDisplay.getSlotAt(evt.stageX,evt.stageY);
            }
            if(nSlot < 0 && this.itemBar != null)
            {
               nSlot = this.itemBar.getSlotAt(evt.stageX,evt.stageY);
            }
            if(nSlot < 0 && this.uiSwapOrbs != null)
            {
               this.uiSwapOrbs.dropItemIcon(evt.stageX,evt.stageY,ic);
            }
            completeDrag(nSlot);
         }
         else if(ic.slot <= UiItemBar.MAX_BAR_SLOT_INDEX)
         {
            e = new ItemManagerEvent(ItemManagerEvent.STOP_CHARGE);
            e.itemIcon = ic;
            if(this._charging)
            {
               this.dispatchEvent(e);
            }
         }
         this._charging = false;
      }
      
      public function playSoulBound(slot:int) : void
      {
         if(slot > UiItemBar.MAX_BAR_SLOT_INDEX)
         {
            this.itemDisplay.playSoulBound(slot);
         }
         else
         {
            this.itemBar.playSoulBound(slot);
         }
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.RING_EQUIP}));
      }
      
      public function get usable() : Boolean
      {
         return this._usable;
      }
      
      public function updateItem(slot:int, itemId:String, quantity:int, soulbound:Boolean, cl:IItemLoader) : void
      {
         var ic:ItemIcon = null;
         if(this.hasItem(slot))
         {
            ic = this._itemIconList[slot];
            if(ic.itemId == itemId && ic.slot == slot)
            {
               ic.quantity = quantity;
               ic.SoulBound = soulbound;
            }
         }
      }
   }
}
