package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.ApplicationInterfaces.ILinkManager;
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.Loot.Orbs;
   import com.gaiaonline.battle.newactors.ActorManager;
   import com.gaiaonline.battle.newactors.BaseActor;
   import com.gaiaonline.battle.newrings.Ring;
   import com.gaiaonline.battle.newrings.RingLoadManager;
   import com.gaiaonline.battle.ui.uiitemdisplay.ItemDisplay;
   import com.gaiaonline.battle.utils.DisplayObjectAttacher;
   import flash.display.MovieClip;
   
   public class UiRingInventory extends MovieClip
   {
       
      
      public var ringItemDisplay:ItemDisplay;
      
      public var ringUpgradeController:UiRingUpgrade;
      
      private var _uiFramework:IUIFramework = null;
      
      public var ringUpgrade:MovieClip;
      
      private var _linkManager:ILinkManager = null;
      
      public var ringInfo:UiRingInfo;
      
      private var _ringUpgradeAttacher:DisplayObjectAttacher;
      
      public function UiRingInventory()
      {
         super();
      }
      
      public static function getChargeStepFromChargeLevel(chargeLevel:Number) : Number
      {
         return Math.round(chargeLevel * 10 - Math.floor(chargeLevel) * 10);
      }
      
      public static function getUpgradeCostFromChargeLevel(chargeLevel:Number) : Orbs
      {
         var orbs:Orbs = new Orbs(0,0);
         if(chargeLevel < Orbs.MAX_CHARGEORB_LEVEL)
         {
            orbs.increase(new Orbs(0,Math.floor(chargeLevel)));
         }
         else if(chargeLevel < Orbs.MAX_SHADOWORB_LEVEL)
         {
            orbs.increase(new Orbs(Orbs.SHADOWORB_PER_STEP * Math.floor(chargeLevel - Orbs.MAX_CHARGEORB_LEVEL + 1),0));
         }
         return orbs;
      }
      
      public static function getSalvageGainFromChargeLevel(chargeLevel:Number) : Orbs
      {
         var orbs:Orbs = new Orbs(0,0);
         var chargeOrbLevel:Number = Math.min(Orbs.MAX_CHARGEORB_LEVEL,chargeLevel);
         var shadowOrbLevel:Number = Math.max(0,Math.min(Orbs.MAX_SHADOWORB_LEVEL,chargeLevel) - Orbs.MAX_CHARGEORB_LEVEL);
         var shadowInt:Number = Math.floor(shadowOrbLevel);
         var shadowStep:Number = 10 * (shadowOrbLevel - shadowInt);
         var chargeOrbs:Number = Math.max(1,Math.ceil((chargeOrbLevel - 1) * 5));
         var shadowOrbs:Number = shadowInt * (shadowInt + 1) * 5 * Orbs.SHADOWORB_PER_STEP;
         shadowOrbs = shadowOrbs + shadowStep * (shadowInt + 1) * Orbs.SHADOWORB_PER_STEP;
         shadowOrbs = shadowOrbs / 2;
         return new Orbs(shadowOrbs,chargeOrbs);
      }
      
      public static function getChargeStepFromRingSlot(slot:int) : Number
      {
         var chargeLevel:Number = ActorManager.getInstance().myActor.rings[slot].chargeLevel;
         return getChargeStepFromChargeLevel(chargeLevel);
      }
      
      public function setRingInfo(ringId:String, slot:int, upgraded:Boolean = false) : void
      {
         var r:Ring = null;
         var chargeLevel:Number = NaN;
         var desc:String = null;
         var obj:Object = null;
         var si:int = 0;
         var cost:Orbs = null;
         var gain:Orbs = null;
         var containBool:Boolean = RingLoadManager.contain(ringId);
         var ringSlot:Object = ActorManager.getInstance().myActor.rings[slot];
         var myActor:BaseActor = ActorManager.getInstance().myActor;
         if(ringId && RingLoadManager.contain(ringId) && ActorManager.getInstance().myActor.rings[slot] != null)
         {
            r = RingLoadManager.getRing(ringId);
            chargeLevel = ActorManager.getInstance().myActor.rings[slot].chargeLevel;
            desc = r.description;
            if(ActorManager.getInstance().myActor.rings[slot].bonusDesc != null)
            {
               desc = ActorManager.getInstance().myActor.rings[slot].bonusDesc + "\n -----------\n" + r.description;
            }
            obj = new Object();
            obj.ringId = r.ringId;
            obj.ringImageUrl = r.iconUrl;
            obj.ringName = r.name;
            obj.description = desc;
            obj.chargeLevel = Math.round(chargeLevel * 10) / 10;
            obj.chargeStep = getChargeStepFromChargeLevel(chargeLevel);
            obj.stats = new Array();
            for(si = 0; si < r.stats.length; si++)
            {
               obj.stats.push({
                  "label":r.stats[si].lable,
                  "value":r.stats[si].value
               });
            }
            this.ringInfo.setRingInfo(obj);
            cost = getUpgradeCostFromChargeLevel(chargeLevel);
            gain = getSalvageGainFromChargeLevel(chargeLevel);
            this.ringUpgrade.setRingInfo(slot,cost,gain,chargeLevel,obj.ringName,upgraded);
         }
      }
      
      public function showRingUpgrade(visible:Boolean) : void
      {
         _ringUpgradeAttacher.attached = visible;
         this.ringUpgrade.setOveralCl(ActorManager.getInstance().myActor.conLevel);
      }
      
      public function clearRingInfo() : void
      {
         this.ringUpgrade.setRingInfo(-1,new Orbs(0,0),Orbs.ZERO,0,"");
         var objEmpty:Object = new Object();
         objEmpty.ringId = null;
         objEmpty.ringImageUrl = null;
         objEmpty.ringName = "";
         objEmpty.description = "";
         objEmpty.chargeLevel = 0;
         objEmpty.chargeStep = 0;
         objEmpty.stats = new Array();
         this.ringInfo.setRingInfo(objEmpty);
      }
      
      public function init(uiFramework:IUIFramework, linkManager:ILinkManager) : void
      {
         this.ringUpgradeController = new UiRingUpgrade();
         this._uiFramework = uiFramework;
         this._linkManager = linkManager;
         this.ringUpgrade.init(uiFramework,linkManager);
         this.ringInfo.init(uiFramework);
         this.ringItemDisplay.init(this._uiFramework.assetFactory);
         this.ringItemDisplay.numColumn = 8;
         this.ringItemDisplay.extraRows = 1;
         this.ringItemDisplay.minimumRows = 7;
         this.ringItemDisplay.startIndex = 8;
         this._ringUpgradeAttacher = new DisplayObjectAttacher(this.ringUpgrade);
      }
   }
}
