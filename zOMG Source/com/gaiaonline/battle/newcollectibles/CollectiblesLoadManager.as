package com.gaiaonline.battle.newcollectibles
{
   import com.gaiaonline.battle.ApplicationInterfaces.ILinkManager;
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   
   public class CollectiblesLoadManager
   {
      
      public static var collectibles:Object = new Object();
      
      private static var _linkManager:ILinkManager = null;
       
      
      public function CollectiblesLoadManager()
      {
         super();
      }
      
      public static function contain(id:String) : Boolean
      {
         return collectibles[id] != null;
      }
      
      public static function loadCollectible(uiFramework:IUIFramework, linkManager:ILinkManager, obj:Object) : Collectible
      {
         CollectiblesLoadManager._linkManager = linkManager;
         var id:String = obj.id;
         if(collectibles[id] == null)
         {
            collectibles[id] = new Collectible(obj.id,obj.name,obj.icon,CollectiblesLoadManager._linkManager.getLink("images"));
            if(obj.collectiblePosition != null)
            {
               Collectible(collectibles[id]).position = obj.collectiblePosition;
            }
         }
         var cl:CollectibleLoader = new CollectibleLoader();
         cl.load(uiFramework.loaderContextFactory,CollectiblesLoadManager._linkManager,collectibles[id]);
         return collectibles[id];
      }
   }
}
