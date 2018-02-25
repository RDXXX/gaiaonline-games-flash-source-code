package com.gaiaonline.battle.ItemLoadManager
{
   public class GameItemIconCustomization implements IItemIconCustomization
   {
      
      private static var _instance:GameItemIconCustomization = null;
       
      
      public function GameItemIconCustomization(singletonEnforcer:SingletonEnforcer#149)
      {
         super();
         if(singletonEnforcer == null)
         {
            throw new Error("GameItemIconCustomization is a singleton!");
         }
      }
      
      public static function getInstance() : IItemIconCustomization
      {
         if(!_instance)
         {
            _instance = new GameItemIconCustomization(new SingletonEnforcer#149());
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

class SingletonEnforcer#149
{
    
   
   function SingletonEnforcer#149()
   {
      super();
   }
}
