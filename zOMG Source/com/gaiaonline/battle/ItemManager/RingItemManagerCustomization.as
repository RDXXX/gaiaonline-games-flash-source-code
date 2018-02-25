package com.gaiaonline.battle.ItemManager
{
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   
   public class RingItemManagerCustomization implements IItemManagerCustomization
   {
       
      
      public function RingItemManagerCustomization()
      {
         super();
      }
      
      public function getSelectabilityEvent() : String
      {
         return GlobalEvent.ALLOW_RING_SELECTABILITY;
      }
   }
}
