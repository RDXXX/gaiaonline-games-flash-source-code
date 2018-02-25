package com.gaiaonline.battle.ItemLoadManager
{
   import com.gaiaonline.battle.GlobalTexts;
   import com.gaiaonline.battle.newactors.ActorManager;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   
   public class RingItemIconCustomization implements IItemIconCustomization
   {
      
      private static var _instance:RingItemIconCustomization = null;
       
      
      public function RingItemIconCustomization(singletonEnforcer:SingletonEnforcer#129)
      {
         super();
         if(singletonEnforcer == null)
         {
            throw new Error("RingItemIconCustomization is a singleton!");
         }
      }
      
      public static function getInstance() : IItemIconCustomization
      {
         if(!_instance)
         {
            _instance = new RingItemIconCustomization(new SingletonEnforcer#129());
         }
         return _instance;
      }
      
      public function getItemUpdateEventType() : String
      {
         return GlobalEvent.RING_UPDATE_DONE;
      }
      
      public function getDefaultTooltip(itemIcon:ItemIcon) : String
      {
         var itemLoader:IItemLoader = itemIcon.itemLoader;
         if(itemLoader != null && ActorManager.getInstance().myActor.rings[itemIcon.slot] != null)
         {
            return itemIcon.itemLoader.itemName;
         }
         return null;
      }
      
      public function getLockedSlotTooltipText() : String
      {
         return GlobalTexts.getLockedRingSlotText();
      }
   }
}

class SingletonEnforcer#129
{
    
   
   function SingletonEnforcer#129()
   {
      super();
   }
}
