package com.gaiaonline.battle.ItemLoadManager
{
   public class ConsumableItemIconCustomization implements IItemIconCustomization
   {
      
      private static var _instance:ConsumableItemIconCustomization = null;
       
      
      public function ConsumableItemIconCustomization(singletonEnforcer:SingletonEnforcer#128)
      {
         super();
         if(singletonEnforcer == null)
         {
            throw new Error("ConsumableItemIconCustomization is a singleton!");
         }
      }
      
      public static function getInstance() : IItemIconCustomization
      {
         if(!_instance)
         {
            _instance = new ConsumableItemIconCustomization(new SingletonEnforcer#128());
         }
         return _instance;
      }
      
      public function getItemUpdateEventType() : String
      {
         return null;
      }
      
      public function getDefaultTooltip(itemIcon:ItemIcon) : String
      {
         return itemIcon.itemLoader.itemName;
      }
      
      public function getLockedSlotTooltipText() : String
      {
         return null;
      }
   }
}

class SingletonEnforcer#128
{
    
   
   function SingletonEnforcer#128()
   {
      super();
   }
}
