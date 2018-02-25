package com.gaiaonline.battle.newghibuffs
{
   import com.gaiaonline.battle.ApplicationInterfaces.ILinkManager;
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.gateway.BattleEvent;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.gateway.BattleMessage;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class GhiBuffsUpdater extends EventDispatcher
   {
       
      
      private var _linkMaager:ILinkManager = null;
      
      private var _gateway:BattleGateway = null;
      
      private var _uiFramework:IUIFramework = null;
      
      private var tempGhiBuffsArray:Array;
      
      private var ghiBuffsLoadCount:Number = 0;
      
      private var ghiBuffsInited:Boolean = false;
      
      public function GhiBuffsUpdater(gateway:BattleGateway, uiFramework:IUIFramework, linkManager:ILinkManager)
      {
         tempGhiBuffsArray = new Array();
         super();
         _gateway = gateway;
         _uiFramework = uiFramework;
         _linkMaager = linkManager;
      }
      
      public function updateGhiBuffs() : void
      {
         var msg:BattleMessage = null;
         if(this._uiFramework.loadUserItems)
         {
            msg = new BattleMessage("getGhiInfo",null);
            msg.addEventListener(BattleEvent.CALL_BACK,onGhiBuffsCallback);
            this._gateway.sendMsg(msg);
         }
         else
         {
            doneLoadingGhiBuffs();
         }
      }
      
      public function loadPlayerGhiBuffs() : void
      {
         var obj:Object = null;
         var ghiBuff:GhiBuff = null;
         if(this.ghiBuffsLoadCount < this.tempGhiBuffsArray.length)
         {
            obj = this.tempGhiBuffsArray[this.ghiBuffsLoadCount];
            if(obj != null)
            {
               if(GhiBuffsLoadManager.contain(obj.rid))
               {
                  this.ghiBuffsLoadCount = this.ghiBuffsLoadCount + 1;
                  this.loadPlayerGhiBuffs();
               }
               else
               {
                  ghiBuff = GhiBuffsLoadManager.loadBuff(obj);
                  ghiBuff.addEventListener(GhiBuff.LOADED,onGhiBuffLoaded);
                  this.ghiBuffsLoadCount = this.ghiBuffsLoadCount + 1;
               }
            }
            else
            {
               this.ghiBuffsLoadCount = this.ghiBuffsLoadCount + 1;
               this.loadPlayerGhiBuffs();
            }
         }
         else
         {
            this.tempGhiBuffsArray.length = 0;
            this.ghiBuffsLoadCount = 0;
            this.ghiBuffsInited = true;
            this.doneLoadingGhiBuffs();
         }
      }
      
      private function onGhiBuffLoaded(e:Event) : void
      {
         GhiBuff(e.target).removeEventListener(GhiBuff.LOADED,onGhiBuffLoaded);
         this.loadPlayerGhiBuffs();
      }
      
      private function doneLoadingGhiBuffs() : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.GHI_BUFFS_LOADED,{}));
      }
      
      private function onGhiBuffsCallback(evt:BattleEvent) : void
      {
         BattleMessage(evt.target).removeEventListener(BattleEvent.CALL_BACK,onGhiBuffsCallback);
         GhiBuffsLoadManager.clearCache();
         if(evt.battleMessage.responseObj)
         {
            this.tempGhiBuffsArray = evt.battleMessage.responseObj as Array;
         }
         else
         {
            this.tempGhiBuffsArray.length = 0;
         }
         this.ghiBuffsLoadCount = 0;
         this.loadPlayerGhiBuffs();
      }
   }
}
