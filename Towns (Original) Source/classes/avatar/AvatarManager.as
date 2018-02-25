class classes.avatar.AvatarManager
{
   var shadowUrl = "npc/characters/shadow.swf";
   var maxAvLoad = 5000;
   static var FRONT = 1;
   static var ME = -1;
   static var MEMBERS = -2;
   static var ALL = -3;
   function AvatarManager()
   {
      this.maxAvLoad = _global.avMax == undefined?this.maxAvLoad:_global.avMax;
      this.maxAvLoadCounter = 0;
      this.gsc = new classes.avatar.GameServerConnector();
      _global.gsc = this.gsc;
      this.avServerUrl = "http://" + _global.avatarHost + ".gaiaonline.com/gaia/members/";
      this.avPool = new Object();
      this.addProperty("me",this.getMyAvatar,null);
   }
   function makeMe()
   {
      trace("[AvMan] makeMe");
      this.addAvToPool(this.getMySID(),_global.myUserData[2]);
   }
   function makeAllMembers()
   {
      var _loc5_ = undefined;
      var _loc3_ = undefined;
      var _loc6_ = undefined;
      var _loc4_ = undefined;
      _loc5_ = this.gsc.getMemberIDs(this.gsc.myRoom());
      _loc6_ = _loc5_.length;
      var _loc2_ = 0;
      while(_loc2_ < _loc6_)
      {
         _loc3_ = _loc5_[_loc2_];
         if(_loc3_ != this.gsc.myID())
         {
            _loc4_ = this.gsc.getMemberAvUrl(_loc3_,4);
            if(_loc4_)
            {
               this.addAvToPool(_loc3_,_loc4_);
            }
         }
         _loc2_ = _loc2_ + 1;
      }
   }
   function addAvToPool(sid, avRaw)
   {
      trace("add to pool " + sid + "  raw=" + avRaw);
      var _loc4_ = avRaw.split("_");
      var _loc3_ = _loc4_[0];
      var _loc7_ = _loc4_[4];
      var _loc10_ = Number(_loc4_[2]);
      var _loc9_ = _loc4_[1];
      var _loc8_ = Number(_loc4_[3].charAt(0));
      var _loc11_ = Number(_loc4_[3].charAt(1));
      var _loc6_ = 0;
      if(_loc10_ >= 3 && _loc7_ != undefined)
      {
         _loc3_ = this.avServerUrl + _loc3_ + "_full.swf?" + _loc7_;
         if(_loc10_ == 4)
         {
            _loc6_ = 1 & _global.SUPPORT_FLY;
         }
      }
      else if(_loc6_ == 1)
      {
         _loc3_ = "shadowufo.swf";
      }
      else
      {
         _loc3_ = this.avServerUrl + _loc3_ + "_full.swf?" + _loc7_;
      }
      trace(_loc3_);
      var _loc12_ = this.gsc.getName(sid);
      if(sid == this.getMySID())
      {
         this.avPool["m" + sid] = new classes.avatar.MyAvatar(sid,_loc3_,_loc9_,_loc8_,_loc11_,_loc6_,false);
      }
      else
      {
         var _loc13_ = this.checkAvLimit("add");
         this.avPool["m" + sid] = new classes.avatar.MemberAvatar(sid,_loc3_,_loc9_,_loc8_,_loc11_,_loc6_,false);
      }
   }
   function checkAvLimit(action)
   {
      var _loc2_ = false;
      switch(action)
      {
         case "add":
            this.maxAvLoadCounter = this.maxAvLoadCounter + 1;
            break;
         case "remove":
            this.maxAvLoadCounter = this.maxAvLoadCounter - 1;
            break;
         case "removeAll":
            this.maxAvLoadCounter = 0;
      }
      if(this.maxAvLoadCounter >= this.maxAvLoad)
      {
         this.maxAvLoadCounter = this.maxAvLoad - 1;
         _loc2_ = true;
      }
      return _loc2_;
   }
   function removeAll()
   {
      this.checkAvLimit("removeAll");
      _global.miniMenu.remove();
      delete _global.miniMenu;
      var _loc3_ = undefined;
      for(var _loc3_ in this.avPool)
      {
         this.avPool[_loc3_].destroy();
         delete this.avPool.register3;
      }
   }
   function tellAllAvatar(todo, arg)
   {
   }
   function onNewMember(id, teamID, roomID, platform, data)
   {
      if(roomID == this.gsc.myRoom())
      {
         var _loc2_ = this.gsc.getMemberAvUrl(id,4);
         if(_loc2_)
         {
            this.addAvToPool(id,_loc2_);
         }
      }
   }
   function onMemberChangesRoom(id, newRoom, oldRoom, data)
   {
      if(oldRoom == this.gsc.myRoom())
      {
         this.avPool["m" + id].destroy();
         delete this.avPool."m" + id;
      }
      if(newRoom == this.gsc.myRoom())
      {
         var _loc3_ = this.gsc.getMemberAvUrl(id,4);
         if(_loc3_)
         {
            this.addAvToPool(id,_loc3_);
         }
      }
   }
   function onRemoveMember(id, teamID, roomID)
   {
      if(roomID == this.gsc.myRoom())
      {
         if(this.avPool["m" + id].getIsShadow() == false)
         {
            this.checkAvLimit("remove");
         }
         this.avPool["m" + id].destroy();
         delete this.avPool."m" + id;
      }
   }
   function onMemberKicked(id)
   {
      if(this.avPool["m" + id] != undefined)
      {
         this.avPool["m" + id].destroy();
         delete this.avPool."m" + id;
         this.checkAvLimit("remove");
      }
   }
   function getAvatar(id)
   {
      return this.avPool["m" + id];
   }
   function getMyAvatar()
   {
      return this.avPool["m" + this.getMySID()];
   }
   function getMySID()
   {
      return !(this.gsc.myID() == undefined || this.gsc.myID() == -1)?this.gsc.myID():0;
   }
   function resetListeners()
   {
      this.gsc.resetListeners(this);
   }
   static function getAvatarManager()
   {
      _global.miniMenu = new classes.environment.MiniMenu("member",4545);
      if(classes.avatar.AvatarManager.avMan == null)
      {
         classes.avatar.AvatarManager.avMan = new classes.avatar.AvatarManager();
      }
      return classes.avatar.AvatarManager.avMan;
   }
}
