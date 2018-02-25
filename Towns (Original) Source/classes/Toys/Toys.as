class classes.Toys.Toys extends MovieClip
{
   var toyInstances = {};
   var isAvatarFlying = false;
   var isToysDisabled = false;
   var doesHaveBall = false;
   var toysOnTray = new Array();
   function Toys()
   {
      super();
   }
   function registerToyInstance(toyID, toyInstance, isLimited, hasCrossHairs)
   {
      this.toyInstances[toyID] = {instance:toyInstance,isLimited:isLimited,hasCrossHairs:hasCrossHairs};
   }
   function initToyVars()
   {
      this.myConeArray = [];
      this.soccerBallIcon = _root.ui_mc.uiArea.soccerBall;
      this.beachBallIcon = _root.ui_mc.uiArea.beachBall;
      this.coneIcon = _root.ui_mc.uiArea.cones;
      for(var _loc3_ in this.toyInstances)
      {
         this.toyInstances[_loc3_].instance.initVars();
      }
   }
   function setToyUI(toy, mcPath)
   {
      this.toyInstances[toy].instance.setUI(mcPath);
   }
   function hideAllToys()
   {
      this.disableCurrentToy();
   }
   function activateToy(gsc, actionInfo, type)
   {
      this.GSC_REF = gsc;
      this.toyInstances[type].instance.fireToy(gsc,actionInfo);
   }
   function isAvatarActive()
   {
      return _global.isAvatarBusy;
   }
   function setAvatarActive(isThrowing)
   {
      _global.isAvatarBusy = isThrowing;
   }
   function setConeState(state, id)
   {
      _global["doesHaveCone" + id] = state;
   }
   function hasCone(id)
   {
      return _global["doesHaveCone" + id];
   }
   function setBallState(type, state, id)
   {
      if(type.length)
      {
         type = type.toLowerCase();
         type[0] = type[0].toUpperCase();
      }
      _global["doesHave" + type + "Ball" + id] = state;
   }
   function hasBall(type, id)
   {
      if(type.length)
      {
         type = type.toLowerCase();
         type[0] = type[0].toUpperCase();
      }
      return _global["doesHave" + type + "Ball" + id];
   }
   function killTheToy(avServerID)
   {
      var _loc2_ = Number(avServerID);
      this.toyInstances.waterGun.instance.killToy(avServerID);
   }
   function cleanUpToy()
   {
      var _loc3_ = [_global.gAvMan.getMyAvatar().avServerID];
      this.GSC_REF.killTheWaterGun(_loc3_);
      this.toyInstances[this.currentActivity].instance.cleanUpToy(_global.gAvMan.getMyAvatar().avServerID);
   }
   function displayToyEvent(startX, startY, endX, endY, avAttack, type, myAvatar, myAvatarId, memberAvatarId, memberServerId, color, shape)
   {
      var _loc3_ = _global.gAvMan.getMyAvatar().avServerID;
      if(this.isToysDisabled && _loc3_ != memberServerId)
      {
         return undefined;
      }
      this.toyInstances[type].instance.displayEvent(startX,startY,endX,endY,avAttack,myAvatar,myAvatarId,memberAvatarId,color,shape);
   }
   function setActivityType(type)
   {
      this.currentActivity = type;
   }
   function toyNotify(type)
   {
      if(type == "cones")
      {
         var _loc3_ = 0;
         while(_loc3_ < this.myConeArray.length)
         {
            var _loc4_ = [this.myConeArray[_loc3_].x,this.myConeArray[_loc3_].y,this.myConeArray[_loc3_].x,this.myConeArray[_loc3_].y,null,"cones",_global.gAvMan.getMyAvatar().avServerID,_global.gAvMan.getMyAvatar().avServerID];
            this.GSC_REF.broadcastAvatarToy(_loc4_);
            _loc3_ = _loc3_ + 1;
         }
      }
      else
      {
         this.toyInstances[type].instance.initEvent();
      }
   }
   function replaceMyCone(mc, x, y, avId)
   {
      var _loc2_ = 0;
      while(_loc2_ < this.myConeArray.length)
      {
         if(this.myConeArray[_loc2_].mc == mc)
         {
            this.myConeArray[_loc2_].x = x;
            this.myConeArray[_loc2_].y = y;
         }
         _loc2_ = _loc2_ + 1;
      }
   }
   function addToMyCones(mc, x, y, avId)
   {
      this.myConeArray.push({mc:mc,x:x,y:y,id:avId});
   }
   function initToyEvent(type, var1, var2, var3)
   {
      if(type == this.currentActivity)
      {
         this.disableCurrentToy();
         return undefined;
      }
      this.setActivityType(type);
      if(type != "soccerBall" && type != "beachBall")
      {
         this.setAvatarActive(true);
      }
      _global.snackStand.hideMenu();
      this.toyInstances[type].instance.initEvent(var1,var2,var3);
      if(this.toyInstances[this.currentActivity].isLimited)
      {
         this.removeFromShopMenu(this.currentActivity);
      }
   }
   function isAvail(type)
   {
      var _loc2_ = 0;
      while(_loc2_ < this.toysOnTray.length)
      {
         if(this.toysOnTray[_loc2_] == type)
         {
            var _loc3_ = this.toyInstances[type].instance.getRemainingShots();
            if(_loc3_ <= 0)
            {
               return true;
            }
            return false;
         }
         _loc2_ = _loc2_ + 1;
      }
      return true;
   }
   function unlock(type)
   {
      var _loc3_ = 0;
      while(_loc3_ < this.toysOnTray.length)
      {
         if(this.toysOnTray[_loc3_] == type)
         {
            var _loc5_ = this.toyInstances[type].instance.getRemainingShots();
            if(_loc5_ <= 0)
            {
               this.reActivateToy(type);
            }
            return false;
         }
         _loc3_ = _loc3_ + 1;
      }
      _global.uiCtrl.addToy(type);
      this.toysOnTray.push(type);
      return true;
   }
   function reActivateToy(type)
   {
      this.toyInstances[type].instance.reActivateThisToy();
   }
   function sendDisableToServer(type, swap, gsc, memberAvId, memberAvClip, isDisconnect)
   {
      if(memberAvId != undefined)
      {
         var _loc4_ = memberAvId;
         var _loc3_ = memberAvClip;
      }
      else
      {
         _loc4_ = _global.gAvMan.getMyAvatar().avServerID;
         _loc3_ = _global.gAvMan.getMyAvatar().avClip;
      }
      var _loc6_ = [null,null,null,null,_loc3_,type,null,"disable",_loc4_];
      if(!swap && !isDisconnect)
      {
         this.setAvatarActive(false);
      }
      if(type == "spiderWeb")
      {
         if(this.GSC_REF == undefined)
         {
            this.GSC_REF = gsc;
         }
         this.GSC_REF.broadcastAvatarToy(_loc6_);
      }
      else
      {
         this.toyInstances[type].instance.disableThisToy();
      }
   }
   function disableMyToys(avId, avClip)
   {
      if(this.lastActivity == "spiderWeb" || this.currentActivity == "spiderWeb")
      {
         this.sendDisableToServer(this.lastActivity,false,this.GSC_REF,avId,avClip);
      }
   }
   function getActivityType()
   {
      return this.currentActivity;
   }
   function setOverIcon(isOver)
   {
      this.isCursorOverIcon = isOver;
   }
   function isOverIcon()
   {
      return this.isCursorOverIcon;
   }
   function pauseToy()
   {
      if(_global.isAvatarBusy && this.toyInstances[this.currentActivity].hasCrossHairs)
      {
         Mouse.show();
         this.toyInstances[this.currentActivity].instance.hideCrossHairs();
         this.toyInstances[this.currentActivity].instance.setIsOutOfBounds(true);
         this.setOverIcon(true);
      }
   }
   function restartToy()
   {
      if(_global.isAvatarBusy && this.toyInstances[this.currentActivity].hasCrossHairs)
      {
         Mouse.hide();
         this.toyInstances[this.currentActivity].instance.showCrossHairs();
         this.toyInstances[this.currentActivity].instance.setIsOutOfBounds(false);
         this.setOverIcon(false);
      }
   }
   function disableToy(actionArray)
   {
      var _loc3_ = actionArray[4];
      var _loc4_ = actionArray[8];
      var _loc5_ = actionArray[5];
      this.toyInstances[_loc5_].instance.disableThisToy(_loc3_,_loc4_);
   }
   function disableCurrentToy()
   {
      _global.snackStand.hideMenu();
      if(this.currentActivity != undefined)
      {
         this.sendDisableToServer(this.currentActivity,false);
         this.lastActivity = this.currentActivity;
         this.currentActivity = null;
      }
   }
   function sitAvatarDown(avId)
   {
      _global.gAvMan.getAvatar(avId).sitDown(0);
   }
   function standAvatarUp(avId)
   {
      _global.gAvMan.getAvatar(avId).standUp(1);
   }
   function playMemberEmote(bub, emoteType, targetAvatar, isToy)
   {
      _global.gAvMan.getAvatar(targetAvatar).emoteBubble.playEmote(bub,emoteType,isToy);
   }
   function rollOverMemberAvatar()
   {
      this.toyInstances[this.currentActivity].instance.rollOverMemberAvatar();
   }
   function rollOutMemberAvatar()
   {
      this.toyInstances[this.currentActivity].instance.rollOutMemberAvatar();
   }
   function removeFromShopMenu(type)
   {
      var _loc2_ = 0;
      while(_loc2_ < _global.snackMenuArray.length)
      {
         if(_global.snackMenuArray[_loc2_].type == type)
         {
            _global.snackMenuArray.splice(_loc2_,1);
            break;
         }
         _loc2_ = _loc2_ + 1;
      }
   }
   function setToysDisabled(setToy)
   {
      this.isToysDisabled = setToy;
   }
   function removeBalls(id)
   {
      this.toyInstances.soccerBall.instance.removeThisBall(id);
      this.toyInstances.beachBall.instance.removeThisBall(id);
   }
   function removeCones(id)
   {
      this.toyInstances.cones.instance.removeTheseCones(id);
   }
   function enableCrossHairs(crossHairClip)
   {
      this.currentCrossHair = crossHairClip;
      this.mouseListener = new Object();
      var _loc4_ = this;
      this.mouseListener.isOut = false;
      this.mouseListener.onMouseMove = function()
      {
         crossHairClip._x = _global.gCanvas._xmouse;
         crossHairClip._y = _global.gCanvas._ymouse;
         if(_root._ymouse > 550)
         {
            _global.myToyManager.pauseToy();
            this.isOut = true;
         }
         else if(this.isOut)
         {
            _global.myToyManager.restartToy();
            this.isOut = false;
         }
      };
      Mouse.addListener(this.mouseListener);
      this.showCrossHairs();
      Mouse.hide();
   }
   function showCrossHairs()
   {
      this.currentCrossHair._visible = true;
   }
   function hideCrossHairs()
   {
      this.currentCrossHair._visible = false;
   }
   function removeCrossHairs()
   {
      this.mouseListener.onMouseMove = null;
      Mouse.show();
      Mouse.removeListener(this.mouseListener);
      this.toyInstances[this.currentActivity].instance.hideCrossHairs();
   }
   function biggerNum(num1, num2)
   {
      if(num1 > num2)
      {
         return num1;
      }
      return num2;
   }
   function randRange(minNum, maxNum)
   {
      var _loc1_ = Math.ceil(Math.random() * (maxNum - minNum + 1)) + (minNum - 1);
      return _loc1_;
   }
   function outOfPool()
   {
      this.toyInstances.pee.instance.killToy();
      this.toyInstances.candyBar.instance.killToy();
      this.soccerBallIcon.hotspot.enabled = true;
      this.soccerBallIcon._alpha = 100;
      this.beachBallIcon.hotspot.enabled = true;
      this.beachBallIcon._alpha = 100;
   }
   function inPool()
   {
      this.soccerBallIcon.hotspot.enabled = false;
      this.soccerBallIcon._alpha = 50;
      this.beachBallIcon.hotspot.enabled = false;
      this.beachBallIcon._alpha = 50;
   }
   static function getInstance()
   {
      if(classes.Toys.Toys.instance == undefined)
      {
         classes.Toys.Toys.instance = new classes.Toys.Toys();
      }
      return classes.Toys.Toys.instance;
   }
}
