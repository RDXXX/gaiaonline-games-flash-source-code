class com.rawfishsoftware.sushi.Room
{
   var $cb = null;
   var $sc = null;
   function Room(r)
   {
      this.ref = r;
      this.d = this.ref.$d;
      this.e = this.ref.$e;
      this.$init();
   }
   function $init()
   {
      this.list = new Array();
   }
   function update(roomID, dataArray)
   {
      this.ref.$update(this,"38",roomID,dataArray);
   }
   function indexUpdate(roomID, dataArray)
   {
      this.ref.$indexUpdate(this,"75",roomID,dataArray);
   }
   function getMemberList(roomID, callback, scope)
   {
      this.ref.$sts = this.ref.$sts + ("14" + this.d + roomID + this.e);
      this.$cb = callback;
      this.$sc = scope;
   }
   function indexUpdateEval(roomID, dataArray)
   {
      this.ref.$indexUpdateEval(this,"58",roomID,dataArray);
   }
   function indexUpdateConditional(roomID, dataArray, callback, scope)
   {
      this.ref.$indexUpdateConditional(this,"58",roomID,dataArray,callback,scope);
   }
   function getName(roomID)
   {
      return this.list["_" + roomID].name;
   }
   function getName_list(roomIDs)
   {
      var _loc4_ = [];
      var _loc2_ = undefined;
      _loc2_ = 0;
      while(_loc2_ < roomIDs.length)
      {
         _loc4_.push(this.getName(roomIDs[_loc2_]));
         _loc2_ = _loc2_ + 1;
      }
      return _loc4_;
   }
   function checkMemberID(roomID, memberID)
   {
      var _loc3_ = this.list["_" + roomID].members;
      var _loc2_ = undefined;
      var _loc4_ = _loc3_.length;
      _loc2_ = 0;
      while(_loc2_ < _loc4_)
      {
         if(memberID == _loc3_[_loc2_])
         {
            return true;
         }
         _loc2_ = _loc2_ + 1;
      }
      return false;
   }
   function getMemberIDs(roomID)
   {
      return this.list["_" + roomID].members.slice();
   }
   function getNumberOfMobs()
   {
      return this.list["_" + this.ref.me.room].mobs.length;
   }
   function getNumberOfMembers(roomID)
   {
      return this.list["_" + roomID].members.length;
   }
   function lock(roomID, lock)
   {
      this.ref.$sts = this.ref.$sts + ("39" + this.d + roomID + this.d + lock + this.e);
   }
   function isLocked(roomID)
   {
      return this.list["_" + roomID].locked;
   }
   function getNumberOfTeamMembers(roomID, teamID)
   {
      var _loc4_ = 0;
      var _loc8_ = undefined;
      var _loc2_ = undefined;
      var _loc3_ = this.list["_" + roomID].members;
      var _loc6_ = _loc3_.length;
      var _loc5_ = this.ref.member;
      _loc2_ = 0;
      while(_loc2_ < _loc6_)
      {
         if(_loc5_.list["_" + _loc3_[_loc2_]].team == teamID)
         {
            _loc4_ = _loc4_ + 1;
         }
         _loc2_ = _loc2_ + 1;
      }
      return _loc4_;
   }
   function getMemberNames(roomID)
   {
      var _loc3_ = [];
      var _loc4_ = this.list["_" + roomID].members;
      var _loc2_ = undefined;
      var _loc5_ = _loc4_.length;
      _loc2_ = 0;
      while(_loc2_ < _loc5_)
      {
         _loc3_.push(this.ref.member.getName(_loc4_[_loc2_]));
         _loc2_ = _loc2_ + 1;
      }
      return _loc3_;
   }
   function getTeamMemberNames(roomID, teamID)
   {
      var _loc4_ = [];
      var _loc5_ = this.list["_" + roomID].members;
      var _loc2_ = undefined;
      var _loc6_ = _loc5_.length;
      var _loc7_ = this.ref.member;
      var _loc3_ = undefined;
      _loc2_ = 0;
      while(_loc2_ < _loc6_)
      {
         _loc3_ = _loc7_.list["_" + _loc5_[_loc2_]];
         if(_loc3_.team == teamID)
         {
            _loc4_.push(_loc3_.name);
         }
         _loc2_ = _loc2_ + 1;
      }
      return _loc4_;
   }
   function getTeamMemberIds(roomID, teamID)
   {
      var _loc4_ = [];
      var _loc5_ = this.list["_" + roomID].members;
      var _loc2_ = undefined;
      var _loc6_ = _loc5_.length;
      var _loc7_ = this.ref.member;
      var _loc3_ = undefined;
      _loc2_ = 0;
      while(_loc2_ < _loc6_)
      {
         _loc3_ = _loc7_["_" + _loc5_[_loc2_]];
         if(_loc3_.team == teamID)
         {
            _loc4_.push(_loc3_.id);
         }
         _loc2_ = _loc2_ + 1;
      }
      return _loc4_;
   }
   function getLimit(roomID)
   {
      return this.list["_" + roomID].limit;
   }
   function getTeamLimit(roomID, teamID)
   {
      return this.list["_" + roomID].teamLimits[teamID];
   }
   function getWaitingQueue(roomID)
   {
      return this.list["_" + roomID].waitingQueue.slice();
   }
   function getMobIDs()
   {
      return this.list["_" + this.ref.me.room].mobs.slice();
   }
   function getData(roomID)
   {
      return this.list["_" + this.ref.me.room].data.slice();
   }
   function getObject(roomID)
   {
      return this.list["_" + this.ref.me.room];
   }
   function chat(targetRoomID, message)
   {
      this.ref.$sts = this.ref.$sts + ("10" + this.d + this.ref.me.id + this.d + "1" + this.d + targetRoomID + this.d + message + this.e);
   }
   function registerEvents(roomID, object)
   {
      this.list["_" + roomID].$class = object;
   }
   function degisterEvents(roomID, object)
   {
      this.list["_" + roomID].$class = null;
   }
   function setDataIndexCallback(roomID, index, callback, scope)
   {
      var _loc2_ = this.list["_" + roomID];
      if(!_loc2_.__cb)
      {
         _loc2_.__cb = [];
      }
      _loc2_.__cb["_" + index] = {cb:callback,sc:scope};
   }
   function clearDataIndexCallback(roomID, index)
   {
      var _loc3_ = this.list["_" + roomID];
      delete _loc3_.__cb."_" + index;
      var _loc5_ = _loc3_.data.length;
      var _loc4_ = 0;
      var _loc2_ = 0;
      while(_loc2_ < _loc5_)
      {
         if(_loc3_.__cb["_" + _loc2_])
         {
            _loc4_ = _loc4_ + 1;
            break;
         }
         _loc2_ = _loc2_ + 1;
      }
      if(!_loc4_)
      {
         delete register3.__cb;
      }
   }
   function clearAllDataIndexCallbacks(roomID)
   {
      var _loc2_ = this.list["_" + roomID];
      delete register2.__cb;
   }
   function hasPassword(roomID)
   {
      return this.list["_" + roomID].password;
   }
}
