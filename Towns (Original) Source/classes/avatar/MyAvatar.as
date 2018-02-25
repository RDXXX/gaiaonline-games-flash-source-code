class classes.avatar.MyAvatar extends classes.avatar.GenericAvatar
{
   var borderX = 175;
   var borderTop = 250;
   var borderBot = 150;
   var walkLock = false;
   var updateIntervalSet = 24;
   var updateInterval = classes.avatar.MyAvatar.prototype.updateIntervalSet;
   var updateFlag = false;
   var keyFlag = -1;
   function MyAvatar(sid, avatarURL, gender, fLegs, bLegs, fly, avShadow)
   {
      super(sid,avatarURL,gender,fLegs,bLegs,fly,avShadow);
      Mouse.addListener(this);
      Key.addListener(this);
      this.mapMaxX = this.mapMaxY = 0;
      this.mapMinX = this.avConfig.viewWidth - this.avConfig.mapWidth;
      this.mapMinY = this.avConfig.viewHeight - this.avConfig.mapHeight;
      this.initLocation();
      this.initAdjustMap();
      _root.ui_mc.navArrows.updateLoc();
      var _loc5_ = classes.avatar.MyAvatar.oldAction != undefined?classes.avatar.MyAvatar.oldAction:classes.avatar.GenericAvatar.STAND;
      var _loc6_ = classes.avatar.MyAvatar.oldOrientation != undefined?classes.avatar.MyAvatar.oldOrientation:classes.avatar.GenericAvatar.RIGHT + classes.avatar.GenericAvatar.FRONT;
      this.setPose(_loc6_,_loc5_);
      this.resetTargetXY();
      if(_global.myToyManager.hasBall("soccer",_global.myUserData[1]))
      {
         clearInterval(this.sendDelay);
         this.sendDelay = setInterval(this,"sendToyUpdate",1500,"soccer");
      }
      if(_global.myToyManager.hasBall("beach",_global.myUserData[1]))
      {
         clearInterval(this.sendDelay);
         this.sendDelay = setInterval(this,"sendToyUpdate",1500,"beach");
      }
      _global.myToyManager.unlock("fireBall");
   }
   function sendToyUpdate(type)
   {
      clearInterval(this.sendDelay);
      _global.myToyManager.toyNotify(type);
   }
   function destroy()
   {
      classes.avatar.MyAvatar.oldAction = this.action != classes.avatar.GenericAvatar.WALK?this.action:classes.avatar.GenericAvatar.STAND;
      classes.avatar.MyAvatar.oldOrientation = this.orientation;
      Mouse.removeListener(this);
      Key.removeListener(this);
      super.destroy();
   }
   function sendAll()
   {
      var _loc2_ = Math.round(this.avClip._x) + ":" + Math.round(this.avClip._y);
      var _loc4_ = Math.round(this.targetX) + ":" + Math.round(this.targetY);
      var _loc3_ = String(this.action + this.orientation);
      if(this.oldFrom != _loc2_ || this.oldTo != _loc4_ || this.oldPose != _loc3_)
      {
         this.oldFrom = _loc2_;
         this.oldTo = _loc4_;
         this.oldPose = _loc3_;
         this.gsc.update(_loc2_,_loc4_,_loc3_);
      }
   }
   function initLocation()
   {
      if(classes.avatar.MyAvatar.oldEdge == undefined)
      {
         this.moveToStart();
      }
      else
      {
         this.moveToEdge(classes.avatar.MyAvatar.oldX,classes.avatar.MyAvatar.oldY,classes.avatar.MyAvatar.oldEdge);
         classes.avatar.MyAvatar.oldX = null;
         classes.avatar.MyAvatar.oldY = null;
         classes.avatar.MyAvatar.oldEdge = null;
      }
   }
   function moveToEdge(dataX, dataY, slideAxis)
   {
      var _loc2_ = undefined;
      var _loc4_ = undefined;
      this.resetWalkData();
      this.avClip._x = dataX;
      this.avClip._y = dataY;
      _loc4_ = 512 - this.avClip[slideAxis];
      _loc2_ = _loc4_ / Math.abs(_loc4_);
      while(classes.avatar.GenericAvatar.COLLISION.hitTest(this.avClip._x + classes.avatar.GenericAvatar.WORLD._x,this.avClip._y + classes.avatar.GenericAvatar.WORLD._y,true))
      {
         this.avClip[slideAxis] = this.avClip[slideAxis] + 20 * _loc2_;
      }
   }
   function run()
   {
      this.move();
      if(this.updateFlag)
      {
         this.updateFlag = false;
         this.sendAll();
      }
      else if(!(this.updateInterval = this.updateInterval - 1))
      {
         var _loc3_ = Math.round(this.avClip._x) + ":" + Math.round(this.avClip._y);
         if(this.oldFrom != _loc3_)
         {
            this.oldFrom = _loc3_;
            this.gsc.silentUpdate(int(this.avClip._x) + ":" + int(this.avClip._y));
         }
         this.updateInterval = this.updateIntervalSet;
      }
      this.adjustMap();
      _root.ui_mc.navArrows.updateLoc();
   }
   function initAdjustMap()
   {
      classes.avatar.GenericAvatar.WORLD._y = - this.avClip._y - this.avConfig.viewHeight / 2;
      classes.avatar.GenericAvatar.WORLD._x = - this.avClip._x - this.avConfig.viewWidth / 2;
      if(classes.avatar.GenericAvatar.WORLD._x < this.mapMinX)
      {
         classes.avatar.GenericAvatar.WORLD._x = this.mapMinX;
      }
      else if(classes.avatar.GenericAvatar.WORLD._x > this.mapMaxX)
      {
         classes.avatar.GenericAvatar.WORLD._x = this.mapMaxX;
      }
      if(classes.avatar.GenericAvatar.WORLD._y < this.mapMinY)
      {
         classes.avatar.GenericAvatar.WORLD._y = this.mapMinY;
      }
      else if(classes.avatar.GenericAvatar.WORLD._y > this.mapMaxY)
      {
         classes.avatar.GenericAvatar.WORLD._y = this.mapMaxY;
      }
   }
   function adjustMap()
   {
      var _loc3_ = classes.avatar.GenericAvatar.WORLD._x + this.avClip._x;
      var _loc2_ = classes.avatar.GenericAvatar.WORLD._y + this.avClip._y;
      var _loc4_ = this.avConfig.viewWidth - this.borderX;
      var _loc5_ = this.avConfig.viewHeight - this.borderBot;
      if(_loc3_ > _loc4_)
      {
         classes.avatar.GenericAvatar.WORLD._x = Math.max(Math.round(_loc4_ - this.avClip._x),this.mapMinX);
      }
      else if(_loc3_ < this.borderX)
      {
         classes.avatar.GenericAvatar.WORLD._x = Math.min(Math.round(this.borderX - this.avClip._x),this.mapMaxX);
      }
      if(_loc2_ > _loc5_)
      {
         classes.avatar.GenericAvatar.WORLD._y = Math.max(Math.round(_loc5_ - this.avClip._y),this.mapMinY);
      }
      else if(_loc2_ < this.borderTop)
      {
         classes.avatar.GenericAvatar.WORLD._y = Math.min(Math.round(this.borderTop - this.avClip._y),this.mapMaxY);
      }
   }
   function sitDown(direction)
   {
      super.sitDown(direction);
      this.resetTargetXY();
   }
   function standUp(direction)
   {
      super.standUp(direction);
      this.resetTargetXY();
   }
   function rotateTo(toX, toY)
   {
      super.rotateTo(toX,toY);
      this.resetTargetXY();
   }
   function resetTargetXY()
   {
      this.targetX = this.avClip._x;
      this.targetY = this.avClip._y;
      this.sendAll();
   }
   function lockWalking(setLock)
   {
      if(setLock == true)
      {
         this.stopMove();
         this.walkLock = true;
      }
      else
      {
         this.walkLock = false;
      }
   }
   function stopMove()
   {
      var _loc4_ = undefined;
      super.stopMove();
      this.updateFlag = false;
      this.resetTargetXY();
      _loc4_ = _root.ui_mc.navArrows.isTouching(this.feet);
      switch(_loc4_)
      {
         case ui.JumpPoints.NORTH:
            classes.avatar.MyAvatar.oldX = this.avClip._x;
            classes.avatar.MyAvatar.oldY = 1004;
            classes.avatar.MyAvatar.oldEdge = "_x";
            break;
         case ui.JumpPoints.SOUTH:
            classes.avatar.MyAvatar.oldX = this.avClip._x;
            classes.avatar.MyAvatar.oldY = 150;
            classes.avatar.MyAvatar.oldEdge = "_x";
            break;
         case ui.JumpPoints.EAST:
            classes.avatar.MyAvatar.oldX = 15;
            classes.avatar.MyAvatar.oldY = this.avClip._y;
            classes.avatar.MyAvatar.oldEdge = "_y";
            break;
         case ui.JumpPoints.WEST:
            classes.avatar.MyAvatar.oldX = 1009;
            classes.avatar.MyAvatar.oldY = this.avClip._y;
            classes.avatar.MyAvatar.oldEdge = "_y";
      }
      if(_loc4_ != null)
      {
         _root.ui_mc.navArrows.trigger(_loc4_);
      }
   }
   function onMouseUp()
   {
      if(_global.isAvatarBusy)
      {
         _global.myToyManager.mouseUpEvent();
      }
   }
   function onMouseDown()
   {
      if(_global.isAvatarBusy)
      {
         var _loc4_ = _global.myToyManager.getActivityType();
         var _loc7_ = [this.avClip._x,this.avClip._y - 50,_global.gCanvas._xmouse,_global.gCanvas._ymouse,this.avatarToAttack,_loc4_,this.avClip,this.avServerID];
         _global.myToyManager.activateToy(this.gsc,_loc7_,_loc4_);
         this.rotateTo(classes.avatar.GenericAvatar.WORLD._xmouse,classes.avatar.GenericAvatar.WORLD._ymouse);
      }
      else if(this.walkLock == false)
      {
         var _loc5_ = _root._xmouse;
         var _loc6_ = _root._ymouse;
         if(!_root.ui_mc.uiArea.hitTest(_loc5_,_loc6_,1))
         {
            this.updateFlag = true;
            if(this.action != classes.avatar.GenericAvatar.SIT)
            {
               this.walkTo(classes.avatar.GenericAvatar.WORLD._xmouse,classes.avatar.GenericAvatar.WORLD._ymouse);
            }
            else
            {
               this.rotateTo(classes.avatar.GenericAvatar.WORLD._xmouse,classes.avatar.GenericAvatar.WORLD._ymouse);
            }
         }
      }
   }
   function onKeyDown()
   {
      if(this.walkLock == false)
      {
         this.updateFlag = true;
         if(Key.isDown(37) && this.keyFlag != 7)
         {
            this.keyFlag = 7;
            if(this.action != classes.avatar.GenericAvatar.SIT)
            {
               this.walkTo(0,this.avClip._y);
            }
            else
            {
               this.rotateTo(0,this.avClip._y);
            }
         }
         else if(Key.isDown(38) && this.keyFlag != 1)
         {
            this.keyFlag = 1;
            if(this.action != classes.avatar.GenericAvatar.SIT)
            {
               this.walkTo(this.avClip._x,0);
            }
            else
            {
               this.rotateTo(this.avClip._x,0);
            }
         }
         else if(Key.isDown(39) && this.keyFlag != 3)
         {
            this.keyFlag = 3;
            if(this.action != classes.avatar.GenericAvatar.SIT)
            {
               this.walkTo(this.avConfig.mapWidth,this.avClip._y);
            }
            else
            {
               this.rotateTo(this.avConfig.mapWidth,this.avClip._y);
            }
         }
         else if(Key.isDown(40) && this.keyFlag != 5)
         {
            this.keyFlag = 5;
            if(this.action != classes.avatar.GenericAvatar.SIT)
            {
               this.walkTo(this.avClip._x,this.avConfig.mapHeight);
            }
            else
            {
               this.rotateTo(this.avClip._x,this.avConfig.mapHeight);
            }
         }
      }
   }
   function onKeyUp()
   {
      switch(Key.getCode())
      {
         case 37:
         case 38:
         case 39:
         case 40:
            break;
         default:
      }
      if(this.action != classes.avatar.GenericAvatar.SIT)
      {
         this.sendAll();
      }
      this.stopMove();
      this.keyFlag = -1;
   }
}
