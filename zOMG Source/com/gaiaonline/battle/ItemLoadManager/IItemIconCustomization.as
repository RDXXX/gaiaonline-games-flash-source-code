package com.gaiaonline.battle.ItemLoadManager
{
   public interface IItemIconCustomization
   {
       
      
      function getDefaultTooltip(param1:ItemIcon) : String;
      
      function getItemUpdateEventType() : String;
      
      function getLockedSlotTooltipText() : String;
   }
}
