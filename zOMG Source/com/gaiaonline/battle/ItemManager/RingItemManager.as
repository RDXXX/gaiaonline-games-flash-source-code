package com.gaiaonline.battle.ItemManager
{
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.ui.uiactionbar.UiItemBar;
   import com.gaiaonline.battle.ui.uiitemdisplay.ItemDisplay;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.Sprite;
   
   public class RingItemManager extends ItemManager
   {
      
      private static var _instance:RingItemManager = null;
       
      
      private var _initted:Boolean = false;
      
      public function RingItemManager(se:SingletonEnforcer#97)
      {
         super();
         if(!se)
         {
            throw new Error("RingItemManager is a singleton; use getInstance()");
         }
         this.allowSameIdEquide = false;
         this.allowUnEquip = false;
      }
      
      public static function getInstance() : RingItemManager
      {
         if(!_instance)
         {
            _instance = new RingItemManager(new SingletonEnforcer#97());
         }
         return _instance;
      }
      
      override public function init(uiFramework:IUIFramework, itemManagerCustomization:IItemManagerCustomization, itemDisplay:ItemDisplay, itemBar:UiItemBar, dragLayer:Sprite) : void
      {
         if(this._initted)
         {
            throw new Error("RingItemManager already initted.");
         }
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.ALLOW_RING_USE,onAllowUse);
         super.init(uiFramework,itemManagerCustomization,itemDisplay,itemBar,dragLayer);
         this._initted = true;
      }
   }
}

class SingletonEnforcer#97
{
    
   
   function SingletonEnforcer#97()
   {
      super();
   }
}
