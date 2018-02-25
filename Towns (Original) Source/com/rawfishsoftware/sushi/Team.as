class com.rawfishsoftware.sushi.Team
{
   function Team(r)
   {
      this.ref = r;
      this.d = this.ref.$d;
      this.e = this.ref.$e;
      this.$init();
   }
   function $init()
   {
      this.list = [];
   }
   function update(teamID, dataArray)
   {
      this.ref.$update(this,"40",teamID,dataArray);
   }
   function indexUpdate(teamID, dataArray)
   {
      this.ref.$indexUpdate(this,"74",teamID,dataArray);
   }
   function indexUpdateEval(teamID, dataArray)
   {
      this.ref.$indexUpdateEval(this,"50",teamID,dataArray);
   }
   function indexUpdateConditional(teamID, dataArray, callback, scope)
   {
      this.ref.$indexUpdateConditional(this,"50",teamID,dataArray,callback,scope);
   }
   function getMemberIDs(teamID)
   {
      return this.list["_" + teamID].members;
   }
   function getName_list(teamIDs)
   {
      var _loc4_ = [];
      var _loc2_ = undefined;
      _loc2_ = 0;
      while(_loc2_ < teamIDs.length)
      {
         _loc4_.push(this.getName(teamIDs[_loc2_]));
         _loc2_ = _loc2_ + 1;
      }
      return _loc4_;
   }
   function getName(teamID)
   {
      return this.list["_" + teamID].name;
   }
   function getNumberOfMemberIDs(teamID)
   {
      return this.list["_" + teamID].members.length;
   }
   function getMemberNames(teamID)
   {
      var _loc4_ = this.list["_" + teamID].members;
      var _loc2_ = _loc4_.length;
      var _loc3_ = [];
      while(true)
      {
         _loc2_;
         if(_loc2_--)
         {
            _loc3_.push(this.ref.member["_" + _loc4_[_loc2_]].name);
            continue;
         }
         break;
      }
      return _loc3_;
   }
   function getLimit(teamID)
   {
      return this.list["_" + teamID].limit;
   }
   function getData(teamID)
   {
      return this.list["_" + teamID].data;
   }
   function getObject(teamID)
   {
      return this.list["_" + teamID];
   }
   function chat(targetTeamID, message)
   {
      this.ref.$sts = this.ref.$sts + ("10" + this.d + this.ref.me.id + this.d + "3" + this.d + targetTeamID + this.d + message + this.e);
   }
   function roomChat(targetTeamID, message)
   {
      this.ref.$sts = this.ref.$sts + ("10" + this.d + this.ref.me.id + this.d + "4" + this.d + targetTeamID + this.d + message + this.e);
   }
   function checkMemberID(teamID, memberID)
   {
      var _loc3_ = this.list["_" + teamID].members;
      var _loc2_ = undefined;
      var _loc4_ = _loc3_.length;
      var _loc5_ = undefined;
      _loc2_ = 0;
      while(_loc2_ < _loc4_)
      {
         if(_loc5_ == _loc3_[_loc2_])
         {
            return true;
         }
         _loc2_ = _loc2_ + 1;
      }
      return false;
   }
   function registerEvents(teamID, object)
   {
      this.list["_" + teamID].$class = object;
   }
   function deregisterEvents(teamID)
   {
      this.list["_" + teamID].$class = null;
   }
   function setDataIndexCallback(teamID, index, callback, scope)
   {
      var _loc2_ = this.list["_" + teamID];
      if(!_loc2_.__cb)
      {
         _loc2_.__cb = new Array();
      }
      _loc2_.__cb["_" + index] = {cb:callback,sc:scope};
   }
   function clearDataIndexCallback(teamID, index)
   {
      var _loc3_ = this.list["_" + teamID];
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
   function clearAllDataIndexCallbacks(teamID)
   {
      var _loc2_ = this.list["_" + teamID];
      delete register2.__cb;
   }
}
