class classes.avatar.MemberAvatar extends classes.avatar.GenericAvatar
{
   function MemberAvatar(sid, avData, gender, fLegs, bLegs, fly, avShadow)
   {
      super(sid,avData,gender,fLegs,bLegs,fly,avShadow);
      if(_global.myToyManager.hasBall("soccer",_global.myUserData[1]))
      {
         this.sendDelay = setInterval(this,"sendToyUpdate",3000,"soccer");
      }
      if(_global.myToyManager.hasBall("beach",_global.myUserData[1]))
      {
         this.sendDelay = setInterval(this,"sendToyUpdate",3000,"beach");
      }
      if(_global.myToyManager.hasCone(_global.myUserData[1]))
      {
         this.sendDelay = setInterval(this,"sendToyUpdate",3000,"cones");
      }
      var _loc4_ = this.gsc.getMemberData(this.avServerID);
      if(_loc4_ != null)
      {
         this.gsc.regEvent(this.avServerID,this);
         if(_loc4_[0] == "-1")
         {
            _loc4_[0] = "-50:-50";
            _loc4_[1] = "-50:-50";
            _loc4_[2] = classes.avatar.GenericAvatar.STAND;
         }
         this.updateMember(this.avServerID,_loc4_);
      }
   }
   function sendToyUpdate(type)
   {
      clearInterval(this.sendDelay);
      _global.myToyManager.toyNotify(type);
   }
   function onUpdateMember(memberID, data)
   {
      var _loc2_ = this.gsc.getMemberData(memberID);
      this.updateMember(memberID,_loc2_);
   }
   function updateMember(memberID, data)
   {
      if(data != null)
      {
         var _loc3_ = data[0];
         var _loc4_ = data[1];
         var _loc8_ = undefined;
         var _loc7_ = undefined;
         var _loc2_ = undefined;
         var _loc9_ = undefined;
         var _loc6_ = undefined;
         _loc2_ = _loc3_.indexOf(":");
         this.avClip._x = Number(_loc3_.substring(0,_loc2_));
         this.avClip._y = Number(_loc3_.substring(_loc2_ + 1));
         _loc9_ = data[2] & classes.avatar.GenericAvatar.WALK + classes.avatar.GenericAvatar.STAND + classes.avatar.GenericAvatar.SIT;
         _loc6_ = data[2] & classes.avatar.GenericAvatar.FRONT + classes.avatar.GenericAvatar.BACK + classes.avatar.GenericAvatar.RIGHT + classes.avatar.GenericAvatar.LEFT;
         switch(_loc9_)
         {
            case classes.avatar.GenericAvatar.SIT:
               this.sitDown(_loc6_);
               break;
            case classes.avatar.GenericAvatar.STAND:
               this.standUp(_loc6_);
               break;
            case classes.avatar.GenericAvatar.WALK:
               _loc2_ = _loc4_.indexOf(":");
               _loc8_ = Number(_loc4_.substring(0,_loc2_));
               _loc7_ = Number(_loc4_.substring(_loc2_ + 1));
               if(this.isOnRink && _loc3_ == _loc4_)
               {
                  this.walkTo(_loc8_,_loc7_,_loc6_);
               }
               else
               {
                  this.walkTo(_loc8_,_loc7_);
               }
               break;
            default:
               trace("[MemberAvatar] ERROR: unexpected member data!");
         }
      }
   }
   function ignoreUserAnimation()
   {
      if(this.avClip._alpha == 100)
      {
         var thisAv = this;
         var _loc4_ = new Object();
         var _loc3_ = new MovieClipLoader();
         _loc4_.onLoadStart = function(target_mc)
         {
            target_mc._xscale = target_mc._yscale = _global.area.avScale;
            target_mc.onEnterFrame = function()
            {
               if(this._currentframe == this._totalframes)
               {
                  thisAv.playFx("poof","top",thisAv.ignoreUser());
                  delete this.onEnterFrame;
                  this.unloadMovie();
               }
            };
         };
         _loc3_.addListener(_loc4_);
         _loc3_.loadClip(_global.filePath + "effects/fireBall.swf",this.topFXLayer);
      }
   }
   function ignoreUser()
   {
      _global.ignoreUserManager.addUserToIgnoreList(this.gaiaID,this.avServerID);
   }
   function doAction(action)
   {
      switch(action)
      {
         case "over":
            _global.targetAvatar = this;
            _global.miniMenu.showMiniMenu(this.avServerID,this.gaiaID,this.avClip,this.avConfig.avScale,this.gaiaName);
            break;
         case "press":
            break;
         case "out":
            _global.targetAvatar = null;
      }
   }
   function destroy()
   {
      _global.miniMenu.hideMenu();
      this.gsc.deregEvent(this.avServerID);
      _global.gBroadcaster.removeListener(this);
      _global.myToyManager.removeBalls(this.avServerID);
      _global.myToyManager.removeCones(this.avServerID);
      this.avClip.removeMovieClip();
      false;
   }
   function run()
   {
      this.move();
   }
}
