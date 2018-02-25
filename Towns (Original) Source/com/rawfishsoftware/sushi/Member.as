class com.rawfishsoftware.sushi.Member
{
   var name = "member";
   function Member(r)
   {
      this.ref = r;
      this.d = this.ref.$d;
      this.e = this.ref.$e;
      this.$init();
   }
   function $init()
   {
      this.list = {};
   }
   function getTeam(memberID)
   {
      return this.list["_" + memberID].team;
   }
   function getName(memberID)
   {
      return this.ref.$memberIDs["x" + memberID];
   }
   function getName_list(memberIDs)
   {
      var _loc4_ = [];
      var _loc2_ = undefined;
      _loc2_ = 0;
      while(_loc2_ < memberIDs.length)
      {
         _loc4_.push(this.getName(memberIDs[_loc2_]));
         _loc2_ = _loc2_ + 1;
      }
      return _loc4_;
   }
   function getID(memberName)
   {
      return this.ref.$memberNames["x" + memberName];
   }
   function getObject(memberID)
   {
      return this.list["_" + memberID];
   }
   function getData(memberID)
   {
      return this.list["_" + memberID].data.slice();
   }
   function getRoom(memberID)
   {
      return this.list["_" + memberID].room;
   }
   function getPlatform(memberID)
   {
      return this.list["_" + memberID].platform;
   }
   function isSpectator(memberID)
   {
      return this.list["_" + memberID].spectator;
   }
   function chat(targetMemberID, message)
   {
      this.ref.$sts = this.ref.$sts + ("10" + this.d + this.ref.me.id + this.d + "0" + this.d + targetMemberID + this.d + message + this.e);
   }
   function registerEvents(memberID, object)
   {
      this.list["_" + memberID].$class = object;
   }
   function degisterEvents(memberID, object)
   {
      this.list["_" + memberID].$class = null;
   }
   function setDataIndexCallback(memberID, index, callback, scope)
   {
      var _loc2_ = this.list["_" + memberID];
      if(!_loc2_.__cb)
      {
         _loc2_.__cb = [];
      }
      _loc2_.__cb["_" + index] = {cb:callback,sc:scope};
   }
   function clearDataIndexCallback(memberID, index)
   {
      var _loc3_ = this.list["_" + memberID];
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
   function clearAllDataIndexCallbacks(memberID)
   {
      var _loc2_ = this.list["_" + memberID];
      delete register2.__cb;
   }
}
