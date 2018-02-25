class classes.Toys.FireBall extends classes.Toys.Toys
{
   var isOn = false;
   var isOutOfBounds = false;
   function FireBall()
   {
      super();
   }
   function initVars()
   {
      var _loc3_ = parseInt(_global.eventID);
      this.FIREBALL_HOLDER = _global.fireBallClip;
      this.coolMeter = undefined;
   }
   function initEvent(av, gsc, avId)
   {
      this.crossHairClip = this.FIREBALL_HOLDER.crossHairClip;
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
   function setUI(trayMc)
   {
      this.trayIconMc = trayMc;
   }
   function fireToy(gsc, actionInfo)
   {
      trace(" TESTING THROW " + this["isThrowOn" + memberId]);
      var memberId = actionInfo[7];
      if(this["isThrowOn" + memberId] == undefined)
      {
         this["isThrowOn" + memberId] = true;
      }
      if(!this["isThrowOn" + memberId])
      {
         return undefined;
      }
      actionInfo[8] = this.randRange(0,3);
      actionInfo[9] = this.randRange(0,3);
      this.turnOffMeter(memberId);
      this.isToyKilled = false;
      this.isOn = true;
      if(!this.isOutOfBounds)
      {
         _global.gAvMan.getMyAvatar().activateAvatarAction(actionInfo);
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
   }
   function setIsOutOfBounds(boundsBoolean)
   {
      this.isOutOfBounds = boundsBoolean;
   }
   function displayEvent(startX, startY, endX, endY, avAttack, thisAvatar, thisAvatarID, §null§, color, shape)
   {
      this.FIREBALL_HOLDER.fireFireBall(startX,startY + 15,endX,endY,this.setFire);
   }
   function setFire()
   {
      if(_global.targetAvatar)
      {
         _global.targetAvatar.ignoreUserAnimation();
      }
   }
   function disableThisToy()
   {
      this.trayIconMc.gotoAndStop("off");
      _global.myToyManager.removeCrossHairs();
      _global.myToyManager.setAvatarActive(false);
      _global.myToyManager.setActivityType(null);
   }
   function reActivateThisToy()
   {
      _global.uiCtrl.enableToy("fireBall");
   }
   function getRemainingShots()
   {
      return 100;
   }
   function hideCrossHairs()
   {
      this.crossHairClip._visible = false;
   }
   function showCrossHairs()
   {
      this.crossHairClip._visible = true;
   }
   function rollOverMemberAvatar()
   {
      this.crossHairClip._alpha = 100;
   }
   function rollOutMemberAvatar()
   {
      this.crossHairClip._alpha = 100;
   }
}
