class classes.Toys.SnowBalls extends classes.Toys.Toys
{
   var START_THROWS = 40;
   var throwsRemaining = classes.Toys.SnowBalls.prototype.START_THROWS;
   var isOn = false;
   var isOutOfBounds = false;
   var allowed = false;
   function SnowBalls()
   {
      super();
   }
   function initVars()
   {
      var _loc3_ = parseInt(_global.eventID);
      this.allowed = _loc3_ == _global.EVENT_XMAS || _loc3_ == _global.EVENT_WINTER;
      this.SNOWBALL_HOLDER = _global.snowBallClip;
      this.coolMeter = undefined;
   }
   function initEvent(av, gsc, avId)
   {
      this.crossHairClip = this.SNOWBALL_HOLDER.crossHairClip;
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
      this.trayIconMc.toy_txt.text = this.throwsRemaining;
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
      this["ballInstances" + id] = undefined;
   }
   function setIsOutOfBounds(boundsBoolean)
   {
      this.isOutOfBounds = boundsBoolean;
   }
   function displayEvent(startX, startY, endX, endY, avAttack, thisAvatar, thisAvatarID, §null§, color, shape)
   {
      if(this.allowed)
      {
         if(this["ballInstances" + thisAvatarID] == undefined)
         {
            this["ballInstances" + thisAvatarID] = 1;
         }
         else
         {
            this["ballInstances" + thisAvatarID] = this["ballInstances" + thisAvatarID] + 1;
         }
         if(this["ballInstances" + thisAvatarID] > this.START_THROWS)
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
            _global.uiCtrl.disableToy("snowBalls");
         }
         this.SNOWBALL_HOLDER.fireSnowBall(startX,startY + 15,endX,endY,color,shape);
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
      this.throwsRemaining = this.START_THROWS;
      this.trayIconMc.toy_txt.text = this.throwsRemaining;
      _global.uiCtrl.enableToy("snowBalls");
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
