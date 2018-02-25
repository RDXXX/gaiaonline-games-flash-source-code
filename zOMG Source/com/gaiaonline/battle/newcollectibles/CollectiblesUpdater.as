package com.gaiaonline.battle.newcollectibles
{
   import com.gaiaonline.battle.ApplicationInterfaces.ILinkManager;
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.gateway.BattleEvent;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.gateway.BattleMessage;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class CollectiblesUpdater extends EventDispatcher
   {
       
      
      private var _gateway:BattleGateway = null;
      
      private var _uiFramework:IUIFramework = null;
      
      private var tempCollectiblesArray:Array;
      
      private var collectiblesLoadCount:Number = 0;
      
      private var _linkManager:ILinkManager = null;
      
      public function CollectiblesUpdater(gateway:BattleGateway, uiFramework:IUIFramework, linkManager:ILinkManager)
      {
         tempCollectiblesArray = new Array();
         super();
         _gateway = gateway;
         _uiFramework = uiFramework;
         _linkManager = linkManager;
      }
      
      public function updateCollectibles() : void
      {
         var msg:BattleMessage = null;
         if(this._uiFramework.loadUserItems)
         {
            msg = new BattleMessage("getCollectables",null);
            msg.addEventListener(BattleEvent.CALL_BACK,onCollectiblesCallback);
            this._gateway.sendMsg(msg);
         }
         else
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.COLLECTIBLES_LOADED,{}));
         }
      }
      
      private function onCollectibleLoaded(e:Event) : void
      {
         Collectible(e.target).removeEventListener(Collectible.LOADED,onCollectibleLoaded);
         this.loadPlayerCollectibles();
      }
      
      private function doneLoadingCollectibles() : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.COLLECTIBLES_LOADED,{}));
      }
      
      private function onCollectiblesCallback(evt:BattleEvent) : void
      {
         BattleMessage(evt.target).removeEventListener(BattleEvent.CALL_BACK,onCollectiblesCallback);
         if(evt.battleMessage.responseObj)
         {
            this.tempCollectiblesArray = evt.battleMessage.responseObj as Array;
         }
         else
         {
            this.tempCollectiblesArray.length = 0;
         }
         this.collectiblesLoadCount = 0;
         this.loadPlayerCollectibles();
      }
      
      private function loadPlayerCollectibles() : void
      {
         var obj:Object = null;
         var collectible:Collectible = null;
         if(this.collectiblesLoadCount < this.tempCollectiblesArray.length)
         {
            obj = this.tempCollectiblesArray[this.collectiblesLoadCount];
            if(obj != null)
            {
               if(CollectiblesLoadManager.contain(obj.id))
               {
                  this.collectiblesLoadCount = this.collectiblesLoadCount + 1;
                  this.loadPlayerCollectibles();
               }
               else
               {
                  collectible = CollectiblesLoadManager.loadCollectible(this._uiFramework,this._linkManager,obj);
                  collectible.addEventListener(Collectible.LOADED,onCollectibleLoaded);
                  this.collectiblesLoadCount = this.collectiblesLoadCount + 1;
               }
            }
            else
            {
               this.collectiblesLoadCount = this.collectiblesLoadCount + 1;
               this.loadPlayerCollectibles();
            }
         }
         else
         {
            this.tempCollectiblesArray.length = 0;
            this.collectiblesLoadCount = 0;
            this.doneLoadingCollectibles();
         }
      }
   }
}
