class classes.avatar.GenericAvatar
{
   var gaiaID = null;
   var isOnRink = false;
   var orientation = classes.avatar.GenericAvatar.RIGHT + classes.avatar.GenericAvatar.FRONT;
   var action = classes.avatar.GenericAvatar.STAND;
   var WALK_SPEED = 6;
   var vX = 0;
   var vY = 0;
   var lastT = 0;
   var bobPointer = 0;
   var isAvLoaded = false;
   var isPoolInSet = true;
   var isPoolOutSet = false;
   var avatarToAttack = "miss";
   var isMiniAvatar = false;
   var doorX = -1;
   var doorY = -1;
   var _z = 0;
   static var ELEVATION = 0;
   static var FRONT = 1;
   static var BACK = 0;
   static var RIGHT = 2;
   static var LEFT = 0;
   static var WALK = 8;
   static var STAND = 4;
   static var SIT = 0;
   static var DIRECTIONS = classes.avatar.GenericAvatar.RIGHT + classes.avatar.GenericAvatar.LEFT + classes.avatar.GenericAvatar.FRONT + classes.avatar.GenericAvatar.BACK;
   static var ACTIONS = classes.avatar.GenericAvatar.WALK + classes.avatar.GenericAvatar.STAND + classes.avatar.GenericAvatar.SIT;
   static var BUFFER = 5;
   static var FRAME_LENGTH = 41.666666666666664;
   static var ORIGIN_Y = -139;
   static var avReady = false;
   function GenericAvatar(sid, avatarURL, gender, fLegs, bLegs, fly, avShadow)
   {
      this.avConfig = new classes.avatar.AvatarConfig();
      this.gsc = new classes.avatar.GameServerConnector();
      this.avFollower = new classes.avatar.AvatarFollowers();
      this.avURL = avatarURL;
      classes.avatar.GenericAvatar.initGenericAvatarGlobals();
      this.avFLegs = fLegs;
      this.avBLegs = bLegs;
      this.avServerID = sid;
      this.avFly = fly & _global.SUPPORT_FLY;
      if(_global.scene == "home" || _global.scene == "toHome")
      {
         this.avFly = 0;
      }
      this.initAvClip();
      if(avShadow == false)
      {
         this.isThisShadow = false;
         this.loadAvatar(avatarURL);
      }
      else
      {
         this.isThisShadow = true;
         var _loc4_ = this.avFly != 1?"shadow.swf":"shadowufo.swf";
         this.loadAvatar(_loc4_);
      }
      var _loc3_ = this.gsc.getMemberData(this.avServerID);
      if(_loc3_)
      {
         this.gaiaID = _loc3_[6];
         this.gaiaName = _loc3_[5];
         this.isMiniAvatar = this.stringToBoolean(_loc3_[9]);
      }
      if(_global.scene == "train" && _global.isMiniAvatar)
      {
         this.isMiniAvatar = true;
      }
   }
   function stringToBoolean(val)
   {
      if(typeof val == "boolean")
      {
         return val;
      }
      if(val == "true")
      {
         return true;
      }
      return false;
   }
   function initAvClip()
   {
      if(this.avFly != 1)
      {
         this.avClip = classes.avatar.GenericAvatar.WORLD.clipping_canvas.createEmptyMovieClip("avatar" + this.avServerID,classes.avatar.GenericAvatar.WORLD.clipping_canvas.getNextHighestDepth());
      }
      else
      {
         this.avClip = classes.avatar.GenericAvatar.WORLD.flying_canvas.createEmptyMovieClip("avatar" + this.avServerID,classes.avatar.GenericAvatar.WORLD.flying_canvas.getNextHighestDepth());
      }
      var _loc4_ = this.avServerID != this.getMySID()?this.gsc.getName(this.avServerID):_global.myUserData[1];
      var _loc5_ = this.gsc.getMemberData(this.avServerID);
      var _loc3_ = this.avServerID != this.getMySID()?_loc5_ == null?8:_loc5_[8]:_global.myUserData[3];
      if(_loc4_ == "B5")
      {
         _loc3_ = "99";
      }
      if(_loc3_ == "99" && _loc4_ != "B5")
      {
         _loc3_ = "8";
      }
      this.avFollower.initNameFollower(this.avClip,_loc4_,_loc3_);
      this.topFXLayer = this.avClip.createEmptyMovieClip("topFX",100);
      this.backFXLayer = this.avClip.createEmptyMovieClip("backFX",20);
      this.avClip.createEmptyMovieClip("avatarContainer",50);
      this.avClip.avatarContainer._xscale = this.avClip.avatarContainer._yscale = this.avConfig.avScale;
      this.avImage = this.avClip.avatarContainer.createEmptyMovieClip("image",1);
      this.emoteBubble = new classes.environment.EmoteBubble(this.avClip,"emotes/emotes.swf",this.avConfig.avScale);
      this.range = new classes.range.Range(this.avClip,75,0,0);
      this.feet = new classes.range.Range(this.avClip,27);
      trace("init av clip=" + this.avClip);
   }
   function getMySID()
   {
      return !(this.gsc.myID() == undefined || this.gsc.myID() == -1)?this.gsc.myID():0;
   }
   function loadAvatar(avatarURL)
   {
      this.isAvLoaded = false;
      var thisAv = this;
      var avUrl = avatarURL;
      var _loc3_ = new Object();
      var _loc2_ = new MovieClipLoader();
      _loc3_.onLoadStart = function(target_mc)
      {
         target_mc.hasSpecialItem = thisAv.isMiniAvatar;
         target_mc.avUrl = avUrl;
         target_mc.avClass = thisAv;
         thisAv.setTint();
      };
      _loc2_.addListener(_loc3_);
      _loc2_.loadClip("avatar/avatar.swf",this.avImage);
      this.moveToStart();
   }
   function loadComplete()
   {
      this.isAvLoaded = true;
      if(this.gaiaID)
      {
         _global.ignoreUserManager.shouldIgnoreUser(this.gaiaID,this.avServerID);
      }
      this.setPose();
      this.avClip.avatarContainer.image._waterMask._visible = false;
      this.checkPool();
      this.checkIceRink();
      if(this.isMiniAvatar)
      {
         this.WALK_SPEED = this.avConfig.miniAvSpeed;
      }
   }
   function playFx(theFx, fxLayer, callback)
   {
      var _loc6_ = _global.filePath + "effects/" + theFx + ".swf";
      var _loc5_ = fxLayer != "top"?this.backFXLayer:this.topFXLayer;
      var _loc7_ = this;
      var _loc4_ = new Object();
      var _loc3_ = new MovieClipLoader();
      _loc4_.onLoadStart = function(target_mc)
      {
         target_mc._xscale = target_mc._yscale = _global.area.avScale;
         target_mc.onEnterFrame = function()
         {
            if(this._currentframe == this._totalframes)
            {
               delete this.onEnterFrame;
               this.unloadMovie();
               if(callback != null)
               {
                  callback();
               }
            }
         };
      };
      _loc3_.addListener(_loc4_);
      _loc3_.loadClip(_loc6_,_loc5_);
   }
   function displayTextBubble(content)
   {
      var _loc3_ = 0;
      switch(_global.scene)
      {
         case "home":
         case "toHome":
            _loc3_ = -20;
            break;
         case "train":
         default:
         case "toTrain":
         default:
         case "town":
         default:
         case "toMap":
         default:
            _loc3_ = 15;
      }
      _global.textBubble.AddText(this.avClip.nameTag.text,this.avClip,content,1,0,_loc3_);
   }
   function displayWhisperTextBubble(content)
   {
      var _loc2_ = 0;
      switch(_global.scene)
      {
         case "home":
         case "toHome":
            _loc2_ = -20;
            break;
         case "train":
         default:
         case "toTrain":
         default:
         case "town":
         default:
         case "toMap":
         default:
            _loc2_ = 15;
      }
   }
   function destroy()
   {
      this.gsc.removeListeners(this);
      _global.gBroadcaster.removeListener(this);
      this.avClip.removeMovieClip();
      this.emoteBubble.remove();
      delete this.emoteBubble;
      delete this.range;
      delete this.feet;
   }
   function moveToStart()
   {
      this.avClip._x = this.avConfig.startX;
      this.avClip._y = this.avConfig.startY;
      this.resetWalkData();
   }
   function moveTo(toX, toY, direction)
   {
      this.avClip._x = toX;
      this.avClip._y = toY;
      this.setPose(direction,classes.avatar.GenericAvatar.WALK);
   }
   function walkTo(toX, toY, direction)
   {
      if(!this.isAvLoaded)
      {
         return undefined;
      }
      trace("WALK TO =" + toX + "-" + toY);
      trace("sid=" + this.getMySID());
      this.doorX = toX;
      this.doorY = toY;
      var _loc3_ = undefined;
      var _loc7_ = undefined;
      this.lastX = this.avClip._x;
      this.lastY = this.avClip._y;
      _global.gBroadcaster.removeListener(this);
      _global.gBroadcaster.addListener(this);
      this.targetX = toX;
      this.targetY = toY;
      _loc3_ = this.calcAngle(toX,toY);
      this.vX = Math.cos(_loc3_) * this.WALK_SPEED;
      this.vY = Math.sin(_loc3_) * this.WALK_SPEED;
      if(isNaN(direction))
      {
         direction = this.calcOrientation(_loc3_);
      }
      this.setPose(direction,classes.avatar.GenericAvatar.WALK);
      this.lastT = getTimer();
   }
   function rotateTo(toX, toY)
   {
      var _loc2_ = undefined;
      var _loc6_ = undefined;
      var _loc3_ = undefined;
      _loc2_ = this.calcAngle(toX,toY);
      _loc3_ = this.calcOrientation(_loc2_);
      this.setPose(_loc3_);
   }
   function calcAngle(toX, toY)
   {
      var _loc5_ = undefined;
      var _loc4_ = undefined;
      var _loc3_ = undefined;
      var _loc2_ = 6.283185307179586;
      _loc5_ = toX - this.avClip._x;
      _loc4_ = toY - this.avClip._y;
      _loc3_ = Math.atan2(_loc4_,_loc5_);
      return (_loc3_ + _loc2_) % _loc2_;
   }
   function calcOrientation(angle)
   {
      var _loc2_ = Math.floor(2 * angle / 3.141592653589793);
      this.currentPos = classes.avatar.GenericAvatar.POSES[_loc2_];
      return classes.avatar.GenericAvatar.POSES[_loc2_];
   }
   function getDirection()
   {
      return this.currentPos;
   }
   function onIce()
   {
      return classes.avatar.GenericAvatar.ICERINK.iceRink.iceHitMarker.hitTest(this.avClip._x + this.vX + classes.avatar.GenericAvatar.WORLD._x,this.avClip._y + this.vY + classes.avatar.GenericAvatar.WORLD._y,1) && this.avFly != 1;
   }
   function checkIceRink()
   {
      if(this.onIce())
      {
         this.isOnRink = true;
         this.walkTo(this.avClip._x,this.avClip._y,this.orientation);
      }
      else
      {
         this.isOnRink = false;
      }
   }
   function onPool()
   {
      return _global.POOL && classes.avatar.GenericAvatar.POOL.poolClip.poolHitMarker.hitTest(this.avClip._x + this.vX + classes.avatar.GenericAvatar.WORLD._x,this.avClip._y + this.vY + classes.avatar.GenericAvatar.WORLD._y,1) && this.avFly != 1;
   }
   function checkPool()
   {
      if(this.onPool())
      {
         var _loc4_ = _global.gCanvas.clipping_canvas.pool;
         var _loc8_ = _loc4_.poolBitmapData;
         var _loc7_ = this.avClip._x - _loc4_._x;
         var _loc6_ = this.avClip._y - _loc4_._y;
         var _loc5_ = _global.poolMgr.getBitmapData(_loc7_,_loc6_);
         this.avClip.avatarContainer.image._waterMask._visible = true;
         this.avClip.avatarContainer.image._av.setMask(this.avClip.avatarContainer.image._waterMask);
         this.avClip.avatarContainer.image.attachMovie("backAnim","backAnim",2);
         this.avClip.avatarContainer.image.attachMovie("frontAnim","frontAnim",20);
         if(!this.avClip.avatarContainer.image.splash)
         {
            this.avClip.avatarContainer.image.attachMovie("diveSplash","splash",30);
         }
         var _loc9_ = _loc5_;
         this.avClip.avatarContainer.image._av._y = _loc5_;
         this.avClip.avatarContainer.image.dropShadow._visible = false;
         if(_global.gAvMan.getMyAvatar().avClip == this.avClip && !this.isPoolInSet)
         {
            _global.isInPool = true;
            _global.myToyManager.inPool();
            _root.ui_mc.uiArea.emoteLauncher.setPoolIcons(true);
         }
         this.isPoolInSet = true;
         this.isPoolOutSet = false;
      }
   }
   function move()
   {
      var _loc4_ = undefined;
      var _loc6_ = undefined;
      if(this.action == classes.avatar.GenericAvatar.WALK)
      {
         if(this.avImage.avParts.waist._currentframe == 11)
         {
            this.avImage.avParts.waist.gotoAndPlay(8);
            this.avImage.avParts.legs.gotoAndPlay(12);
            this.avImage.avParts.feet.gotoAndPlay(16);
            this.bobPointer = 0;
         }
         else
         {
            this.bobPointer = this.bobPointer + 1;
         }
      }
      this.avImage._y = 0 + this.bobPointer;
      _loc4_ = getTimer();
      while(_loc4_ - this.lastT > 0)
      {
         if(this.onIce())
         {
            this.isOnRink = true;
         }
         else
         {
            this.isOnRink = false;
         }
         if(this.onPool())
         {
            var _loc5_ = _global.gCanvas.clipping_canvas.pool;
            var _loc10_ = _loc5_.poolBitmapData;
            var _loc9_ = this.avClip._x - _loc5_._x;
            var _loc8_ = this.avClip._y - _loc5_._y;
            var _loc7_ = _global.poolMgr.getBitmapData(_loc9_,_loc8_);
            this.avClip.avatarContainer.image._waterMask._visible = true;
            this.avClip.avatarContainer.image._av.setMask(this.avClip.avatarContainer.image._waterMask);
            this.avClip.avatarContainer.image.attachMovie("backAnim","backAnim",2);
            this.avClip.avatarContainer.image.attachMovie("frontAnim","frontAnim",20);
            if(!this.avClip.avatarContainer.image.splash)
            {
               this.avClip.avatarContainer.image.attachMovie("diveSplash","splash",30);
            }
            var _loc11_ = _loc7_;
            this.avClip.avatarContainer.image._av._y = _loc7_;
            this.avClip.avatarContainer.image.dropShadow._visible = false;
            if(_global.gAvMan.getMyAvatar().avClip == this.avClip && !this.isPoolInSet)
            {
               _global.isInPool = true;
               _global.myToyManager.inPool();
               _root.ui_mc.uiArea.emoteLauncher.setPoolIcons(true);
            }
            this.isPoolInSet = true;
            this.isPoolOutSet = false;
         }
         else if(this.avFly != 1)
         {
            if(_global.gAvMan.getMyAvatar().avClip == this.avClip && !this.isPoolOutSet)
            {
               _root.ui_mc.uiArea.emoteLauncher.setPoolIcons(false);
               _global.isInPool = false;
               _global.myToyManager.outOfPool();
            }
            this.isPoolInSet = false;
            this.isPoolOutSet = true;
            this.avClip.avatarContainer.image._av._y = 0;
            this.avClip.avatarContainer.image._waterMask._visible = false;
            this.avClip.avatarContainer.image._av.setMask(null);
            this.avClip.avatarContainer.image.backAnim.removeMovieClip();
            this.avClip.avatarContainer.image.frontAnim.removeMovieClip();
            this.avClip.avatarContainer.image.dropShadow._visible = true;
            this.avClip.avatarContainer.image.splash.removeMovieClip();
         }
         if(this.avClip._x + this.vX >= 1024 || this.avClip._y + this.vY >= 1024 || this.avClip._x + this.vX <= 0 || this.avClip._y + this.vY <= 0)
         {
            this.stopMove();
            this.lastT = _loc4_;
         }
         else if(classes.avatar.GenericAvatar.COLLISION.hitTest(this.avClip._x + this.vX + classes.avatar.GenericAvatar.WORLD._x,this.avClip._y + this.vY + classes.avatar.GenericAvatar.WORLD._y,1) && this.avFly != 1)
         {
            this.stopMove();
            this.lastT = _loc4_;
         }
         else if(this.avClip._x + classes.avatar.GenericAvatar.BUFFER > this.targetX && this.avClip._x - classes.avatar.GenericAvatar.BUFFER < this.targetX && this.avClip._y + classes.avatar.GenericAvatar.BUFFER > this.targetY && this.avClip._y - classes.avatar.GenericAvatar.BUFFER < this.targetY)
         {
            this.stopMove();
            this.lastT = _loc4_;
         }
         else
         {
            _loc4_ = getTimer();
            _loc6_ = (_loc4_ - this.lastT) / classes.avatar.GenericAvatar.FRAME_LENGTH;
            if(_loc6_ >= 1)
            {
               this.avClip._x = this.avClip._x + this.vX;
               this.avClip._y = this.avClip._y + this.vY;
               this.lastT = this.lastT + classes.avatar.GenericAvatar.FRAME_LENGTH;
            }
            else
            {
               this.avClip._x = this.avClip._x + this.vX * _loc6_;
               this.avClip._y = this.avClip._y + this.vY * _loc6_;
               this.lastT = _loc4_;
            }
         }
      }
   }
   function sitDown(direction)
   {
      this.resetWalkData();
      this.setPose(direction,classes.avatar.GenericAvatar.SIT);
      this.avClip.avatarContainer.image._av.gotoAndStop("sitFront");
      _global.textBubble.Refresh(this.avClip.nameTag.text);
   }
   function standUp(direction)
   {
      this.avClip.avatarContainer.image._av.gotoAndStop("front");
      this.resetWalkData();
      this.setPose(direction,classes.avatar.GenericAvatar.STAND);
      _global.textBubble.Refresh(this.avClip.nameTag.text);
   }
   function stopMove()
   {
      if(!this.isOnRink)
      {
         this.resetWalkData();
         this.setPose();
      }
      else
      {
         this.bobPointer = 0;
         this.avImage._y = 0;
      }
   }
   function resetWalkData()
   {
      if(this.action == classes.avatar.GenericAvatar.WALK)
      {
         _global.gBroadcaster.removeListener(this);
         this.bobPointer = 0;
         this.avImage._y = 0;
         this.vX = this.vY = 0;
         this.action = classes.avatar.GenericAvatar.STAND;
      }
      this.avClip.avatarContainer.image.lowerHalf._visible = false;
      this.avClip.avatarContainer.image._av._rotation = 0;
   }
   function setPose(direction, newAction)
   {
      var _loc2_ = this.avImage;
      var _loc3_ = undefined;
      if(isNaN(direction))
      {
         direction = this.orientation;
      }
      else
      {
         this.orientation = direction;
      }
      if(isNaN(newAction))
      {
         newAction = this.action;
      }
      else
      {
         this.action = newAction;
      }
      switch(direction + newAction & (~classes.avatar.GenericAvatar.RIGHT))
      {
         case classes.avatar.GenericAvatar.STAND + classes.avatar.GenericAvatar.FRONT:
            _loc3_ = 2;
            _loc2_.showSpecialItem();
            break;
         case classes.avatar.GenericAvatar.STAND + classes.avatar.GenericAvatar.BACK:
            _loc3_ = 4;
            _loc2_.hideSpecialItem();
            break;
         case classes.avatar.GenericAvatar.WALK + classes.avatar.GenericAvatar.FRONT:
            _loc3_ = 3;
            _loc2_.showSpecialItem();
            break;
         case classes.avatar.GenericAvatar.WALK + classes.avatar.GenericAvatar.BACK:
            _loc3_ = 5;
            _loc2_.hideSpecialItem();
            break;
         case classes.avatar.GenericAvatar.SIT + classes.avatar.GenericAvatar.FRONT:
            _loc3_ = 6;
            _loc2_.showSpecialItem();
            break;
         case classes.avatar.GenericAvatar.SIT + classes.avatar.GenericAvatar.BACK:
            _loc3_ = 7;
            _loc2_.hideSpecialItem();
      }
      _loc2_.avParts.body.gotoAndStop(_loc3_);
      _loc2_.touchAreaDirection(_loc3_);
      if(direction & classes.avatar.GenericAvatar.RIGHT)
      {
         _loc2_.faceRight();
      }
      else
      {
         _loc2_.faceLeft();
      }
      if(direction & classes.avatar.GenericAvatar.FRONT)
      {
         if(this.avFLegs == 0)
         {
            _loc2_.lowerHalf.swapDepths(101);
         }
         else
         {
            _loc2_.lowerHalf.swapDepths(99);
         }
      }
      else if(this.avBLegs == 0)
      {
         _loc2_.lowerHalf.swapDepths(101);
      }
      else
      {
         _loc2_.lowerHalf.swapDepths(99);
      }
      if(newAction == classes.avatar.GenericAvatar.SIT)
      {
         _loc2_.avParts.body._y = classes.avatar.GenericAvatar.ORIGIN_Y + 20 - this._z;
         _loc2_.avParts.touch._y = - this._z;
      }
      else
      {
         _loc2_.avParts.lowerBody._y = _loc0_ = classes.avatar.GenericAvatar.ORIGIN_Y - this._z;
         _loc2_.avParts.body._y = _loc0_;
         _loc2_.avParts.touch._y = - this._z;
      }
      if(newAction == classes.avatar.GenericAvatar.WALK)
      {
         _loc2_.avParts.lowerBody._visible = true;
         _loc2_.avParts.waist.gotoAndPlay(8);
         _loc2_.avParts.legs.gotoAndPlay(12);
         _loc2_.avParts.feet.gotoAndPlay(16);
      }
      else
      {
         _loc2_.avParts.waist.gotoAndStop(1);
         _loc2_.avParts.legs.gotoAndStop(1);
         _loc2_.avParts.feet.gotoAndStop(1);
         _loc2_.avParts.lowerBody._visible = false;
      }
   }
   function setTint()
   {
      if(_global.mapData[10].indexOf("alt") == -1 || _global.mapData[10] == undefined)
      {
         _global.gst.tintMe(this.avClip.avatarContainer);
      }
   }
   function getClip()
   {
      return this.avClip;
   }
   function getX()
   {
      return this.avClip._x;
   }
   function getY()
   {
      return this.avClip._y;
   }
   function getXY()
   {
      var _loc2_ = new Object();
      _loc2_._x = this.avClip._x;
      _loc2_._y = this.avClip._y;
      return _loc2_;
   }
   function getIsShadow()
   {
      return this.isThisShadow;
   }
   function SetZ(Value)
   {
      this._z = Value;
      if(this.action == classes.avatar.GenericAvatar.SIT)
      {
         this.avImage.avParts.body._y = classes.avatar.GenericAvatar.ORIGIN_Y + 20 - this._z;
         this.avImage.avParts.touch._y = - this._z;
         this.avImage.avParts.lowerBody._y = classes.avatar.GenericAvatar.ORIGIN_Y + 20 - this._z;
      }
      else
      {
         this.avImage.avParts.body._y = classes.avatar.GenericAvatar.ORIGIN_Y - this._z;
         this.avImage.avParts.touch._y = - this._z;
         this.avImage.avParts.lowerBody._y = classes.avatar.GenericAvatar.ORIGIN_Y - this._z;
      }
      if(this._z < 0)
      {
         this.avImage.SetMask();
      }
      else
      {
         this.avImage.RemoveMask();
      }
   }
   function getAvatarActiveState()
   {
      return _global.myToyManager.isAvatarActive();
   }
   function initiateAction(type, isReset, icon)
   {
      if(_global.myToyManager.isAvatarActive() == undefined)
      {
         _global.myToyManager.setAvatarActive(false);
      }
      var _loc4_ = _global.myToyManager.isAvatarActive();
      if(!_loc4_ || isReset)
      {
         this.currentToyType = type;
         var _loc5_ = _global.gAvMan.getMyAvatar().avServerID;
         _global.myToyManager.initToyEvent(type,this.avClip,this.gsc,_loc5_);
      }
      else
      {
         _global.myToyManager.cleanUpToy();
         _global.myToyManager.setActivityType(null);
         if(this.currentToyType == type)
         {
            _global.myToyManager.sendDisableToServer(this.currentToyType,false);
         }
         else
         {
            _global.myToyManager.sendDisableToServer(this.currentToyType,true);
            this.currentToyType = null;
            this.initiateAction(type,true,icon);
         }
      }
      this.previousIcon = icon;
   }
   function activateAvatarAction(actionArray)
   {
      var _loc2_ = 0;
      while(_loc2_ < 4)
      {
         actionArray[_loc2_] = Number(actionArray[_loc2_]);
         _loc2_ = _loc2_ + 1;
      }
      var _loc4_ = actionArray[4] != "miss"?_global.gAvMan.getAvatar(actionArray[4]).avClip:null;
      if(actionArray[7] == "disable")
      {
         _global.myToyManager.disableToy(actionArray);
      }
      else
      {
         _global.myToyManager.displayToyEvent(actionArray[0],actionArray[1],actionArray[2],actionArray[3],_loc4_,actionArray[5],actionArray[6],actionArray[7],actionArray[4],actionArray[7],actionArray[8],actionArray[9]);
      }
   }
   function setAvatarAttack(avToAttack)
   {
      if(avToAttack == "miss")
      {
         _global.myToyManager.rollOutMemberAvatar();
      }
      else
      {
         _global.myToyManager.rollOverMemberAvatar();
      }
      this.avatarToAttack = avToAttack;
   }
   function getAvatarAttack()
   {
      return this.avatarToAttack;
   }
   static function initGenericAvatarGlobals()
   {
      classes.avatar.GenericAvatar.WORLD = _global.gCanvas;
      classes.avatar.GenericAvatar.COLLISION = _global.gCanvas.mask_canvas;
      classes.avatar.GenericAvatar.POOL = _global.gCanvas.clipping_canvas.pool;
      classes.avatar.GenericAvatar.ICERINK = _global.gCanvas.clipping_canvas.iceRink;
      classes.avatar.GenericAvatar.POSES = new Array(classes.avatar.GenericAvatar.RIGHT + classes.avatar.GenericAvatar.FRONT,classes.avatar.GenericAvatar.LEFT + classes.avatar.GenericAvatar.FRONT,classes.avatar.GenericAvatar.LEFT + classes.avatar.GenericAvatar.BACK,classes.avatar.GenericAvatar.RIGHT + classes.avatar.GenericAvatar.BACK);
   }
}
