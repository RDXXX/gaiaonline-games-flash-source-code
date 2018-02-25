package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.ApplicationInterfaces.ILinkManager;
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.Globals;
   import com.gaiaonline.battle.ItemManager.ConsumableItemManager;
   import com.gaiaonline.battle.ItemManager.ItemManager;
   import com.gaiaonline.battle.ItemManager.RingItemManager;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.newactors.ActorManager;
   import com.gaiaonline.battle.ui.components.TabManager;
   import com.gaiaonline.battle.ui.events.UiEvents;
   import com.gaiaonline.battle.ui.uiactionbar.UiItemBar;
   import com.gaiaonline.battle.ui.uiactionbar.UiItemBarRotator;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class UiInventory extends MovieClip
   {
      
      public static var TAB_CHANGE:String = "UiInventoryTabChange";
      
      public static var TAB_RING:String = "btnRingInv";
      
      public static var TAB_RECIPES:String = "btnRecipes";
      
      public static var TAB_GAME:String = "btnGameItems";
      
      public static var TAB_CONSUMABLES:String = "btnConsumables";
       
      
      private var _tabIndices:Object;
      
      private var _consumablesBarForcedOpen:Boolean = false;
      
      private var _uiFramework:IUIFramework = null;
      
      public var tabBtns:MovieClip;
      
      private var _linkManager:ILinkManager = null;
      
      public var uiRingInventory:UiRingInventory;
      
      private var tabManager:TabManager;
      
      private var _ringBarForcedOpen:Boolean = false;
      
      private var _activeTab:String;
      
      public var uiRecipes:UiRecipes;
      
      public var uiConsumableItems:UiConsumableItems;
      
      public var uiGameItems:UiGameItems;
      
      public function UiInventory(uiFramework:IUIFramework, gateway:BattleGateway, linkManager:ILinkManager)
      {
         _tabIndices = new Object();
         super();
         this._uiFramework = uiFramework;
         this._linkManager = linkManager;
         this.uiGameItems.init(this._uiFramework,this._linkManager);
         this.uiRingInventory.init(this._uiFramework,this._linkManager);
         this.uiConsumableItems.init(this._uiFramework);
         this.uiRecipes.init(gateway,this._linkManager);
         this.initTabs();
         this.addEventListener(Event.ADDED_TO_STAGE,onAddedToStage,false,0,true);
         this.tabChildren = false;
         this.tabBtns.tabChildren = false;
      }
      
      private function onAddedToStage(evt:Event) : void
      {
         if(this.parent != null)
         {
            this.parent.addChildAt(this.tabBtns,this.parent.numChildren - 1);
         }
      }
      
      public function onClose() : void
      {
         if((this._ringBarForcedOpen || this._consumablesBarForcedOpen) && Globals.uiManager.actionBar)
         {
            Globals.uiManager.actionBar.itemBarRotator.expand(false);
         }
      }
      
      private function onTabActive(e:UiEvents) : void
      {
         if(this._activeTab != e.target.name)
         {
            activeTab = e.target.name;
         }
      }
      
      public function set activeTab(tabName:String) : void
      {
         var validName:Boolean = true;
         var collapseBar:Boolean = true;
         switch(tabName)
         {
            case TAB_RECIPES:
               this.uiRecipes.updateRecipeList();
               this.uiConsumableItems.itemDisplay.enabled = false;
               this.uiRingInventory.ringItemDisplay.enabled = false;
               break;
            case TAB_GAME:
               this.uiConsumableItems.itemDisplay.enabled = false;
               this.uiRingInventory.ringItemDisplay.enabled = false;
               break;
            case TAB_CONSUMABLES:
               ActorManager.getInstance().myActor.consumableManager.update();
               this.uiConsumableItems.itemDisplay.enabled = true;
               this.uiRingInventory.ringItemDisplay.enabled = false;
               if(ConsumableItemManager.getInstance().selectedSlot <= UiItemBar.MAX_BAR_SLOT_INDEX)
               {
                  if(Globals.uiManager.actionBar && !Globals.uiManager.actionBar.isBarOpen(UiItemBarRotator.CONSUMABLE_BAR))
                  {
                     Globals.uiManager.actionBar.showBar(UiItemBarRotator.CONSUMABLE_BAR);
                     this._consumablesBarForcedOpen = true;
                  }
                  collapseBar = false;
               }
               break;
            case TAB_RING:
               this.uiConsumableItems.itemDisplay.enabled = false;
               this.uiRingInventory.ringItemDisplay.enabled = true;
               if(ItemManager(RingItemManager.getInstance()).selectedSlot <= UiItemBar.MAX_BAR_SLOT_INDEX)
               {
                  if(Globals.uiManager.actionBar && !Globals.uiManager.actionBar.isBarOpen(UiItemBarRotator.RING_BAR))
                  {
                     Globals.uiManager.actionBar.showBar(UiItemBarRotator.RING_BAR);
                     this._ringBarForcedOpen = true;
                  }
                  collapseBar = false;
               }
               break;
            default:
               this.uiConsumableItems.itemDisplay.enabled = false;
               this.uiRingInventory.ringItemDisplay.enabled = false;
               validName = false;
         }
         if(collapseBar && Globals.uiManager.actionBar)
         {
            Globals.uiManager.actionBar.itemBarRotator.expand(false);
         }
         _activeTab = tabName;
         if(validName)
         {
            _activeTab = tabName;
            tabManager.setActive(_tabIndices[tabName]);
            this.dispatchEvent(new Event(TAB_CHANGE));
         }
      }
      
      private function initTabs() : void
      {
         this.tabManager = new TabManager(true);
         var index:int = this.tabManager.addTabs(this.tabBtns.btnRingInv,this.uiRingInventory,true);
         _activeTab = TAB_RING;
         _tabIndices[TAB_RING] = index;
         index = this.tabManager.addTabs(this.tabBtns.btnGameItems,this.uiGameItems);
         _tabIndices[TAB_GAME] = index;
         index = this.tabManager.addTabs(this.tabBtns.btnRecipes,this.uiRecipes);
         _tabIndices[TAB_RECIPES] = index;
         index = this.tabManager.addTabs(this.tabBtns.btnConsumables,this.uiConsumableItems);
         _tabIndices[TAB_CONSUMABLES] = index;
         this.tabBtns.btnRingInv.addEventListener(UiEvents.TAB_IS_ACTIVE,onTabActive,false,0,true);
         this.tabBtns.btnGameItems.addEventListener(UiEvents.TAB_IS_ACTIVE,onTabActive,false,0,true);
         this.tabBtns.btnRecipes.addEventListener(UiEvents.TAB_IS_ACTIVE,onTabActive,false,0,true);
         this.tabBtns.btnConsumables.addEventListener(UiEvents.TAB_IS_ACTIVE,onTabActive,false,0,true);
      }
      
      public function get activeTab() : String
      {
         return this._activeTab;
      }
   }
}
