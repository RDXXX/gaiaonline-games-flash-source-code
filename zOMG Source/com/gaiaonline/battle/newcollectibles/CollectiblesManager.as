package com.gaiaonline.battle.newcollectibles
{
   import com.gaiaonline.battle.newrings.ItemIconBase;
   import com.gaiaonline.battle.ui.UiCollectiblesHolder;
   
   public class CollectiblesManager
   {
       
      
      private var _itemHash:Object;
      
      private var _collectiblesHolder:UiCollectiblesHolder = null;
      
      public function CollectiblesManager(collectiblesHolder:UiCollectiblesHolder)
      {
         _itemHash = new Object();
         super();
         _collectiblesHolder = collectiblesHolder;
      }
      
      private function alreadyAdded(id:String) : Boolean
      {
         return _itemHash[id] != undefined;
      }
      
      private function addIcon(icon:ItemIconBase, tooltipText:String = null) : void
      {
         if(alreadyAdded(icon.id))
         {
            return;
         }
         var index:uint = getSlotNumForIcon(icon);
         addItemToSlot(icon,index,tooltipText);
         var id:String = icon.id;
         _itemHash[id] = index;
      }
      
      public function refresh(collectibles:Object) : void
      {
         var collectible:Collectible = null;
         var icon:CollectibleIcon = null;
         for each(collectible in collectibles)
         {
            if(!alreadyAdded(collectible.id) && collectible.bitmap)
            {
               icon = new CollectibleIcon(collectible.bitmap);
               icon.id = collectible.id;
               icon.position = collectible.position;
               addIcon(icon,collectible.name);
            }
         }
      }
      
      private function addItemToSlot(icon:ItemIconBase, index:uint, tooltipText:String = null) : void
      {
         _collectiblesHolder.addItemToSlot(icon,index,tooltipText);
         icon.position = index;
      }
      
      private function getSlotNumForIcon(icon:ItemIconBase) : uint
      {
         var maxIndexUsed:uint = 0;
         var index:String = null;
         var i:int = 0;
         if(icon.position > -1)
         {
            return icon.position;
         }
         maxIndexUsed = 0;
         for each(index in _itemHash)
         {
            i = parseInt(index);
            if(i > maxIndexUsed)
            {
               maxIndexUsed = i;
            }
         }
         return maxIndexUsed + 1;
      }
      
      public function dispose() : void
      {
         _itemHash = null;
         _collectiblesHolder = null;
      }
   }
}
