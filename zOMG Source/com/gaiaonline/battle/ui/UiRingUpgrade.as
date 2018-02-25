package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.ApplicationInterfaces.ILinkManager;
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.GlobalTexts;
   import com.gaiaonline.battle.Globals;
   import com.gaiaonline.battle.Loot.Orbs;
   import com.gaiaonline.battle.newactors.ActorManager;
   import com.gaiaonline.battle.newactors.BaseActor;
   import com.gaiaonline.battle.newactors.BaseActorEvent;
   import com.gaiaonline.battle.ui.events.UiEvents;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class UiRingUpgrade extends MovieClip
   {
       
      
      private var _uiSwapOrbOpen:Boolean = false;
      
      public var txtOverallCl:TextField;
      
      private var dwUpgrade:DialogWindow;
      
      private var _uiFramework:IUIFramework = null;
      
      public var txtGainShadow:TextField;
      
      private var dwSalvage:DialogWindow;
      
      private var _selectedSlot:int = -1;
      
      private var _linkManager:ILinkManager = null;
      
      public var btnUpgrade:SimpleButton;
      
      public var txtGainCharge:TextField;
      
      public var btnSwapOrbs:SimpleButton;
      
      public var btnSalvage:SimpleButton;
      
      private var upgradeEnabledBeforeSalvage:Boolean;
      
      private var _ringMaxLevel:Number = NaN;
      
      private var _ringName:String;
      
      private var _cost:Orbs;
      
      public var icoCL:MovieClip;
      
      public var chargeUpgrade:MovieClip;
      
      private var preRingUpgradeUserConLevel:Number = NaN;
      
      private var totalOrbs:Orbs;
      
      public var shadowUpgrade:MovieClip;
      
      private var _gain:Orbs;
      
      public var txtCost:TextField;
      
      private var cl:Number = 10;
      
      public function UiRingUpgrade()
      {
         totalOrbs = new Orbs(0,0);
         _cost = new Orbs(0,0);
         _gain = new Orbs(0,0);
         super();
      }
      
      public function setRingInfo(slot:int, cost:Orbs, gain:Orbs, cl:Number, ringName:String, upgraded:Boolean = false) : void
      {
         var btnUpgradeEnabled:Boolean = false;
         var btnSalvageEnabled:Boolean = false;
         var msg:String = null;
         var upgradedToNextFullLevel:Boolean = upgraded && Math.floor(this.cl) < Math.floor(cl);
         var announceUpgrade:Boolean = upgradedToNextFullLevel && cl > this.preRingUpgradeUserConLevel;
         this.cl = cl;
         setGainText(gain);
         setCostText(cost);
         this._selectedSlot = slot;
         this._cost = cost;
         this._gain = gain;
         this._ringName = ringName;
         if(ActorManager.getInstance().myActor && !ActorManager.getInstance().myActor.isSlotLock(slot))
         {
            btnUpgradeEnabled = this.totalOrbs.gte(cost) && (_cost.darkOrbs > 0 || _cost.chargeOrbs > 0) && cl < Globals.MAX_LEVEL && !this._uiSwapOrbOpen;
            setButtonEnabled(this.btnUpgrade,btnUpgradeEnabled);
            if(this._selectedSlot < 0 || this._cost.lte(Orbs.ZERO))
            {
               this.txtCost.text = "N/A";
            }
            btnSalvageEnabled = (_gain.darkOrbs > 0 || _gain.chargeOrbs > 0) && !this._uiSwapOrbOpen;
            setButtonEnabled(this.btnSalvage,btnSalvageEnabled);
            setButtonEnabled(this.btnSwapOrbs,true);
         }
         else
         {
            disableButtons();
         }
         if(announceUpgrade)
         {
            msg = GlobalTexts.getRingUpgradeBroadcastMessage(this._ringName,cl);
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.CHAT_SEND,{
               "channel":"team",
               "msg":msg
            }));
         }
      }
      
      private function setTotal(total:Orbs) : void
      {
         var btnUpgradeEnabled:Boolean = false;
         var btnSalvageEnabled:Boolean = false;
         this.totalOrbs = total;
         if(!ActorManager.getInstance().myActor.isSlotLock(this._selectedSlot))
         {
            btnUpgradeEnabled = this.totalOrbs.gte(_cost) && (_cost.darkOrbs > 0 || _cost.chargeOrbs > 0) && cl < Globals.MAX_LEVEL && !this._uiSwapOrbOpen;
            setButtonEnabled(this.btnUpgrade,btnUpgradeEnabled);
            if(this._selectedSlot < 0 || this._cost.lte(Orbs.ZERO))
            {
               this.txtCost.text = "N/A";
            }
            btnSalvageEnabled = (_gain.darkOrbs > 0 || _gain.chargeOrbs > 0) && !this._uiSwapOrbOpen;
            setButtonEnabled(this.btnSalvage,btnSalvageEnabled);
         }
         else
         {
            disableButtons();
         }
      }
      
      private function onActorConLevelUpdated(e:BaseActorEvent) : void
      {
         setOveralCl(e.actor.conLevel);
      }
      
      private function onSwapOrbsClick(evt:MouseEvent) : void
      {
         this.dispatchEvent(new UiEvents(UiEvents.OPEN_UI_SWAP_ORBS,null));
         this.uiSwapOrbsOpen = true;
      }
      
      private function cleanUpSalvageWindow() : void
      {
         cleanUpDialogWindow(this.dwSalvage);
         this.dwSalvage = null;
      }
      
      public function init(uiFramework:IUIFramework, linkManager:ILinkManager) : void
      {
         this._uiFramework = uiFramework;
         this._linkManager = linkManager;
         this.setRingInfo(-1,new Orbs(0,0),new Orbs(0,0),0,"");
         this.icoCL.gotoAndStop("normal");
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.RING_MAX_LEVEL_UPDATE,onRingMaxLevelUpdate);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_DONE,onMapDone);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.PLAYER_CREATED,onPlayerCreated);
         this.setButtonEnabled(this.btnSwapOrbs,true);
         this._uiFramework.tooltipManager.addToolTip(this.btnSalvage,"Salvage a ring");
         this._uiFramework.tooltipManager.addToolTip(this.btnUpgrade,"Upgrade a ring");
         this._uiFramework.tooltipManager.addToolTip(this.btnSwapOrbs,"Swap CL between two rings \nonce every 24 hours");
      }
      
      public function set uiSwapOrbsOpen(v:Boolean) : void
      {
         this._uiSwapOrbOpen = v;
         if(this._uiSwapOrbOpen)
         {
            this.setButtonEnabled(this.btnSalvage,false);
            this.setButtonEnabled(this.btnUpgrade,false);
         }
      }
      
      private function setCostText(orbs:Orbs) : void
      {
         var useShadowOrbs:* = 0 < orbs.darkOrbs;
         this.txtCost.text = (!!useShadowOrbs?orbs.darkOrbs:orbs.chargeOrbs).toString();
         this.shadowUpgrade.visible = useShadowOrbs;
         this.chargeUpgrade.visible = !useShadowOrbs;
      }
      
      private function onMapDone(e:GlobalEvent) : void
      {
         var isNullChamber:Boolean = e.data.isNullChamber;
         if(!isNullChamber)
         {
            onSalvageDialogCancel(null);
            cleanUpUpgradeWindow();
         }
      }
      
      private function onSalvageClick(evt:MouseEvent) : void
      {
         if(this.btnSalvage.enabled)
         {
            this.upgradeEnabledBeforeSalvage = this.btnUpgrade.enabled;
            disableButtons();
            this.dwSalvage = DialogWindowFactory.getInstance().getNewDialogWindow(this._uiFramework,this._linkManager,DialogWindowTypes.NORMAL,200);
            setButtonEnabled(this.btnUpgrade,false);
            setButtonEnabled(this.btnSwapOrbs,false);
            this.dwSalvage.addEventListener("CLOSE",onSalvageDialogCancel,false,0,true);
            this.dwSalvage.addEventListener("OKAY",onSalvageDialogClose,false,0,true);
            this.dwSalvage.autoSize = true;
            this.dwSalvage.keepOnStage = true;
            this.dwSalvage.setHtmlText(GlobalTexts.salvageWarning);
            this.dwSalvage.setPosAtMouse();
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALLOW_RING_SELECTABILITY,false));
         }
      }
      
      private function onPlayerCreated(e:GlobalEvent) : void
      {
         var me:BaseActor = e.data.actor as BaseActor;
         this.setTotal(me.totalOrbs);
         me.addEventListener(BaseActorEvent.TOTAL_ORBS_UPDATED,this.onActorTotalOrbsUpdated,false,0,true);
      }
      
      private function onActorTotalOrbsUpdated(e:BaseActorEvent) : void
      {
         var me:BaseActor = e.target as BaseActor;
         this.setTotal(me.totalOrbs);
      }
      
      private function cleanUpDialogWindow(dw:DialogWindow) : void
      {
         if(dw && dw.isOpen())
         {
            dw.close();
            dw.removeEventListener("CLOSE",onSalvageDialogCancel);
            dw.removeEventListener("OKAY",onSalvageDialogClose);
         }
      }
      
      public function get uiSwapOrbsOpen() : Boolean
      {
         return this._uiSwapOrbOpen;
      }
      
      public function setOveralCl(overallCl:Number) : void
      {
         ActorManager.getInstance().myActor.addEventListener(BaseActorEvent.ACTOR_CON_LEVEL_UPDATED,onActorConLevelUpdated,false,0,true);
         this.txtOverallCl.text = UiManager.formatConLevel(overallCl);
      }
      
      private function onUpgradeClick(evt:MouseEvent) : void
      {
         var ringMaxLevel:Number = !!isNaN(this._ringMaxLevel)?Number(ActorManager.getInstance().myActor.ringMaxLevel):Number(this._ringMaxLevel);
         if(this.cl < ringMaxLevel)
         {
            if(this.btnUpgrade.enabled)
            {
               this.preRingUpgradeUserConLevel = ActorManager.getInstance().myActor.conLevel;
               this.dispatchEvent(new UiEvents(UiEvents.RING_UPGRADE,null));
            }
         }
         else
         {
            this.dwUpgrade = DialogWindowFactory.getInstance().getNewDialogWindow(this._uiFramework,this._linkManager,DialogWindowTypes.NORMAL,200);
            this.dwUpgrade.autoSize = true;
            this.dwUpgrade.setPosAtMouse();
            this.dwUpgrade.setHtmlText(GlobalTexts.ringAtMaxLevel);
         }
      }
      
      private function setGainText(gain:Orbs) : void
      {
         this.txtGainShadow.text = gain.darkOrbs.toString();
         this.txtGainCharge.text = gain.chargeOrbs.toString();
      }
      
      private function cleanUpUpgradeWindow() : void
      {
         cleanUpDialogWindow(this.dwUpgrade);
         this.dwUpgrade = null;
      }
      
      private function onSalvageDialogCancel(evt:Event) : void
      {
         setButtonEnabled(this.btnSalvage,true);
         setButtonEnabled(this.btnSwapOrbs,true);
         setButtonEnabled(this.btnUpgrade,this.upgradeEnabledBeforeSalvage);
         cleanUpSalvageWindow();
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALLOW_RING_SELECTABILITY,true));
      }
      
      public function refresh() : void
      {
         this.setRingInfo(this._selectedSlot,this._cost,this._gain,this.cl,this._ringName);
      }
      
      private function onSalvageDialogClose(evt:Event) : void
      {
         this.dispatchEvent(new UiEvents(UiEvents.RING_SALVAGE,null));
         cleanUpSalvageWindow();
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALLOW_RING_SELECTABILITY,true));
      }
      
      private function setButtonEnabled(btn:SimpleButton, enabled:Boolean) : void
      {
         btn.alpha = !!enabled?Number(1):Number(0.3);
         btn.enabled = enabled;
         var eventListenerFunction:Function = !!enabled?btn.addEventListener:btn.removeEventListener;
         if(btn == this.btnUpgrade)
         {
            this.upgradeEnabledBeforeSalvage = enabled;
            eventListenerFunction(MouseEvent.CLICK,onUpgradeClick);
         }
         else if(btn == this.btnSalvage)
         {
            eventListenerFunction(MouseEvent.CLICK,onSalvageClick);
         }
         else if(btn == this.btnSwapOrbs)
         {
            eventListenerFunction(MouseEvent.CLICK,onSwapOrbsClick);
         }
      }
      
      private function onRingMaxLevelUpdate(e:GlobalEvent) : void
      {
         this._ringMaxLevel = e.data.maxLevel;
      }
      
      public function disableButtons() : void
      {
         setButtonEnabled(this.btnUpgrade,false);
         setButtonEnabled(this.btnSalvage,false);
         setButtonEnabled(this.btnSwapOrbs,false);
      }
   }
}
