package com.gaiaonline.battle.newghibuffs
{
   import com.gaiaonline.battle.GlobalTexts;
   import com.gaiaonline.battle.ui.UiGhiHolder;
   import com.gaiaonline.battle.ui.UiGhiInfo;
   import com.gaiaonline.battle.ui.events.GhiHolderEvent;
   import com.gaiaonline.battle.utils.BattleUtils;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.text.TextField;
   
   public class GhiManager
   {
       
      
      private var _slotToIconMap:Object;
      
      private var _selectedSlot:int = -1;
      
      private var _noGhiTxt:TextField = null;
      
      private var _ghiHolder:UiGhiHolder = null;
      
      private var _nextSlotNum:uint = 0;
      
      private var _ghiInfo:UiGhiInfo = null;
      
      public function GhiManager(ghiHolder:UiGhiHolder, ghiInfo:UiGhiInfo, noGhiText:TextField)
      {
         _slotToIconMap = new Object();
         super();
         _ghiHolder = ghiHolder;
         _ghiHolder.addEventListener(GhiHolderEvent.GHI_MOUSE_DOWN,onSlotMouseDown,false,0,true);
         _ghiInfo = ghiInfo;
         _noGhiTxt = noGhiText;
         _noGhiTxt.text = GlobalTexts.getNoGhiText();
         setInfoVisible(false);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.GHI_BUFFS_LOADED,onGhiBuffsUpdated);
      }
      
      private function ensureItemSelected() : void
      {
         if(_selectedSlot == -1 && _nextSlotNum > 0)
         {
            this.setSelectedSlot(0);
            this.setGhiInfo(_slotToIconMap[0]);
         }
      }
      
      public function getSlotAt(x:Number, y:Number) : int
      {
         var slot:int = -1;
         if(_ghiHolder.visible == true)
         {
            slot = _ghiHolder.getSlotAt(x,y);
         }
         return slot;
      }
      
      private function addItemToSlot(icon:GhiBuffIcon, index:uint, tooltipText:String = null) : void
      {
         _ghiHolder.addItemToSlot(icon,index,tooltipText);
         icon.position = index;
      }
      
      private function onGhiBuffsUpdated(evt:GlobalEvent) : void
      {
         this.refresh(GhiBuffsLoadManager.ghiBuffs);
      }
      
      public function clearAll() : void
      {
         this.clearSelection();
         _nextSlotNum = 0;
         _ghiHolder.clearAll();
         BattleUtils.cleanObject(_slotToIconMap);
         setInfoVisible(false);
      }
      
      private function getSlotNumForIcon(icon:GhiBuffIcon) : uint
      {
         var slotNum:uint = this._nextSlotNum;
         _nextSlotNum++;
         return slotNum;
      }
      
      public function refresh(ghiBuffs:Array) : void
      {
         var buff:GhiBuff = null;
         var icon:GhiBuffIcon = null;
         this.clearAll();
         for each(buff in ghiBuffs)
         {
            if(buff.bitmap)
            {
               icon = new GhiBuffIcon(buff.bitmap);
               icon.id = buff.id;
               addIcon(icon,buff.name);
            }
         }
      }
      
      public function dispose() : void
      {
         _ghiHolder = null;
         _ghiInfo = null;
         _noGhiTxt = null;
         _slotToIconMap = null;
      }
      
      private function setInfoVisible(visible:Boolean) : void
      {
         _ghiInfo.visible = visible;
         _noGhiTxt.visible = !visible;
      }
      
      private function onSlotMouseDown(e:GhiHolderEvent) : void
      {
         var icon:GhiBuffIcon = e.ghiBuffIcon;
         setSelectedSlot(icon.position);
         setGhiInfo(icon);
      }
      
      public function setGhiInfo(icon:GhiBuffIcon) : void
      {
         var si:int = 0;
         var obj:Object = new Object();
         obj.ringId = icon.id;
         var buff:GhiBuff = GhiBuffsLoadManager.getBuff(obj.ringId);
         obj.ringImageUrl = buff.iconUrl;
         obj.ringName = buff.name;
         obj.description = buff.description;
         obj.stats = new Array();
         if(buff.stats)
         {
            for(si = 0; si < buff.stats.length; si++)
            {
               obj.stats.push({
                  "label":buff.stats[si].lable,
                  "value":buff.stats[si].value
               });
            }
         }
         _ghiInfo.setGhiInfo(obj);
         setInfoVisible(true);
      }
      
      public function addIcon(icon:GhiBuffIcon, tooltipText:String = null) : void
      {
         var index:uint = getSlotNumForIcon(icon);
         addItemToSlot(icon,index,tooltipText);
         _slotToIconMap[index] = icon;
         setInfoVisible(true);
         ensureItemSelected();
      }
      
      private function setSelectedSlot(slot:int) : void
      {
         _ghiHolder.clearSelectedSlot(_selectedSlot);
         _ghiHolder.setSelectedSlot(slot);
         _selectedSlot = slot;
      }
      
      public function clearSelection() : void
      {
         _ghiHolder.clearSelectedSlot(_selectedSlot);
         _selectedSlot = -1;
      }
   }
}
