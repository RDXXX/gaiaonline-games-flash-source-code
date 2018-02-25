package com.gaiaonline.battle.ItemManager
{
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.ui.uiactionbar.UiItemBar;
   import com.gaiaonline.battle.ui.uiitemdisplay.ItemDisplay;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.Sprite;
   
   public class ConsumableItemManager extends ItemManager
   {
      
      private static var _instance:ConsumableItemManager = null;
       
      
      private var _initted:Boolean = false;
      
      public function ConsumableItemManager(se:SingletonEnforcer#105)
      {
         super();
         if(!se)
         {
            throw new Error("ConsumableItemManager is a singleton; use getInstance().");
         }
         this.allowSameIdEquide = true;
         this.allowUnEquip = true;
         this.allowEquip = true;
         this.displayNum = true;
      }
      
      public static function getInstance() : ConsumableItemManager
      {
         if(!_instance)
         {
            _instance = new ConsumableItemManager(new SingletonEnforcer#105());
         }
         return _instance;
      }
      
      override protected function onAllowUse(event:GlobalEvent) : void
      {
         if(this.itemBar != null)
         {
            this.itemBar.cureUsable = event.data.allowCure;
         }
         super.onAllowUse(event);
      }
      
      override public function init(uiFramework:IUIFramework, itemManagerCustomization:IItemManagerCustomization, itemDisplay:ItemDisplay, itemBar:UiItemBar, dragLayer:Sprite) : void
      {
         if(this._initted)
         {
            throw new Error("ConsumableItemManager already initted.");
         }
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.ALLOW_CONSUMABLE_USE,this.onAllowUse);
         super.init(uiFramework,itemManagerCustomization,itemDisplay,itemBar,dragLayer);
         this._initted = true;
      }
   }
}

class SingletonEnforcer#105
{
    
   
   function SingletonEnforcer#105()
   {
      super();
   }
}
