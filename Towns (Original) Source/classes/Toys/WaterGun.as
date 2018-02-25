class classes.Toys.WaterGun extends classes.Toys.Toys
{
   var START_THROWS = 30;
   var throwsRemaining = classes.Toys.WaterGun.prototype.START_THROWS;
   var isOutOfBounds = false;
   var isOn = false;
   var allowed = false;
   function WaterGun()
   {
      super();
   }
   function initVars()
   {
      this.allowed = _global.POOL;
      this.WATERGUN_HOLDER = _global.waterGunClip;
      this.coolMeter = undefined;
   }
   function setUI(trayMc)
   {
      this.trayIconMc = trayMc;
      this.trayIconMc.toy_txt.text = this.throwsRemaining;
   }
   function initEvent(av, gsc, avId)
   {
      this.crossHairClip = this.WATERGUN_HOLDER.crossHairClip;
      if(this.coolMeter == undefined)
      {
         this.coolMeter = this.crossHairClip.attachMovie("meter","meter",this.crossHairClip.getNextHighestDepth());
         this.coolMeter._width = 50;
         this.coolMeter._x = -23;
         this.coolMeter._y = 25;
      }
      this.trayIconMc.gotoAndStop("on");
      _global.myToyManager.enableCrossHairs(this.crossHairClip);
      _global.myToyManager.setAvatarActive(true);
   }
   function setIsOutOfBounds(boundsBoolean)
   {
      this.isOutOfBounds = boundsBoolean;
   }
   function fireToy(gsc, actionInfo)
   {
      var _loc2_ = actionInfo[7];
      if(this["isThrowOn" + _loc2_] == undefined)
      {
         this["isThrowOn" + _loc2_] = true;
      }
      if(!this["isThrowOn" + _loc2_])
      {
         return undefined;
      }
      this.turnOffMeter(_loc2_);
      this.isToyKilled = false;
      this.isOn = true;
      if(!this.isOutOfBounds)
      {
         gsc.broadcastAvatarToy(actionInfo);
      }
   }
   function turnOffMeter(memberId)
   {
      this["isThrowOn" + memberId] = false;
      this.crossHairClip.meter.power.gotoAndPlay("on");
      this["intervalId" + memberId] = setInterval(this,"resetThrow",2225,memberId);
   }
   function resetThrow(id)
   {
      clearInterval(this["intervalId" + id]);
      this["isThrowOn" + id] = true;
      this["gunInstances" + id] = undefined;
   }
   function disableThisToy()
   {
      this.trayIconMc.gotoAndStop("off");
      _global.myToyManager.removeCrossHairs();
      _global.myToyManager.setAvatarActive(false);
      _global.myToyManager.setActivityType(null);
   }
   function displayEvent(startX, startY, endX, endY, avAttack, thisAvatar, thisAvatarID)
   {
      if(this.allowed)
      {
         if(this["gunInstances" + thisAvatarID] == undefined)
         {
            this["gunInstances" + thisAvatarID] = 1;
         }
         else
         {
            this["gunInstances" + thisAvatarID] = this["gunInstances" + thisAvatarID] + 1;
         }
         if(this["gunInstances" + thisAvatarID] > this.START_THROWS)
         {
            return undefined;
         }
         if(thisAvatarID == _global.gAvMan.getMyAvatar().avServerID)
         {
            this.trayIconMc.toy_txt.text = this.throwsRemaining = this.throwsRemaining - 1;
         }
         if(this.throwsRemaining <= 0)
         {
            this.disableThisToy();
            _global.uiCtrl.disableToy("waterGun");
         }
         this.WATERGUN_HOLDER.newSquirt(startX,startY,endX,endY);
      }
   }
   function reActivateThisToy()
   {
      this.throwsRemaining = this.START_THROWS;
      this.trayIconMc.toy_txt.text = this.throwsRemaining;
      _global.uiCtrl.enableToy("waterGun");
   }
   function getRemainingShots()
   {
      return this.throwsRemaining;
   }
   function hideCrossHairs()
   {
      this.crossHairClip._visible = false;
   }
   function showCrossHairs()
   {
      this.crossHairClip._visible = true;
   }
}
