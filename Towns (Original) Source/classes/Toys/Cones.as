class classes.Toys.Cones extends classes.Toys.Toys
{
   var START_THROWS = 4;
   var throwsRemaining = classes.Toys.Cones.prototype.START_THROWS;
   var isOn = false;
   var isOutOfBounds = false;
   var MAX_CONES = 16;
   var coneArray = [];
   function Cones()
   {
      super();
   }
   function initVars()
   {
      this.coneArray = [];
      this.CONES_HOLDER = _global.conesClip;
      this.coolMeter = undefined;
   }
   function initEvent(av, gsc, avId)
   {
      trace("CONES TEST INIT EVENT");
      this.crossHairClip = this.CONES_HOLDER.crossHairClip;
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
      var _loc3_ = actionInfo[7];
      actionInfo[8] = this.randRange(0,3);
      actionInfo[9] = this.randRange(0,3);
      this.turnOffMeter(_loc3_);
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
   }
   function setIsOutOfBounds(boundsBoolean)
   {
      this.isOutOfBounds = boundsBoolean;
   }
   function displayEvent(mc, isMove, endX, endY, §null§, thisAvatar, thisAvatarID, var1, coneClip)
   {
      var mcLoc = eval(coneClip);
      if(typeof mcLoc == "movieclip")
      {
         mcLoc._x = endX;
         mcLoc._y = endY;
         _global.myToyManager.replaceMyCone(mcLoc,endX,endY,thisAvatarID);
         var instance = coneClip.split("_")[3];
         trace("UPDATE CONE  " + instance);
         this.updateConeArray(thisAvatarID,endX,endY,instance);
         return undefined;
      }
      if(this["coneInstances" + thisAvatarID] == undefined)
      {
         this["coneInstances" + thisAvatarID] = 1;
      }
      else
      {
         this["coneInstances" + thisAvatarID] = this["coneInstances" + thisAvatarID] + 1;
      }
      if(this["coneInstances" + thisAvatarID] > this.START_THROWS || this.coneArray.length > this.MAX_CONES)
      {
         return undefined;
      }
      var i = 0;
      while(i < this.coneArray.length)
      {
         trace("SAME CONE TEST" + endX);
         trace("SAME CONE TEST" + this.coneArray[i].x);
         if(thisAvatarID == this.coneArray[i].id && endX == this.coneArray[i].x && endY == this.coneArray[i].y)
         {
            trace("SAME CONE FOUND");
            return undefined;
         }
         i++;
      }
      if(thisAvatarID == _global.gAvMan.getMyAvatar().avServerID)
      {
         this.trayIconMc.toy_txt.text = this.throwsRemaining = this.throwsRemaining - 1;
         var isMyCone = true;
      }
      var newCone = this.CONES_HOLDER.dropCone(endX,endY,thisAvatarID,this["coneInstances" + thisAvatarID],isMyCone);
      this.coneArray.push({id:thisAvatarID,x:endX,y:endY,instance:this["coneInstances" + thisAvatarID]});
      if(isMyCone)
      {
         _global.myToyManager.setConeState(true,_global.myUserData[1]);
         _global.myToyManager.addToMyCones(newCone,endX,endY,thisAvatarID);
         if(this.throwsRemaining <= 0)
         {
            this.disableThisToy();
            _global.uiCtrl.disableToy("cones");
            _global.balloonActive = false;
         }
      }
   }
   function updateConeArray(id, x, y, instance)
   {
      var _loc2_ = 0;
      while(_loc2_ < this.coneArray.length)
      {
         trace("UPDATE CONE ARRAY " + instance);
         trace("UPDATE CONE ARRAY " + this.coneArray[_loc2_].instance);
         if(this.coneArray[_loc2_].id == id && this.coneArray[_loc2_].instance == instance)
         {
            this.coneArray[_loc2_].x = x;
            this.coneArray[_loc2_].y = y;
         }
         _loc2_ = _loc2_ + 1;
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
      _global.uiCtrl.enableToy("cones");
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
   function removeTheseCones(id)
   {
      for(var _loc3_ in this.CONES_HOLDER)
      {
         if(_loc3_.indexOf(id) != -1)
         {
            this.CONES_HOLDER[_loc3_].removeMovieClip();
         }
      }
   }
}
