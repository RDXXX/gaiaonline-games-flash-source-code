class com.rawfishsoftware.sushi.Challenge
{
   function Challenge(r)
   {
      this.ref = r;
      this.d = this.ref.$d;
      this.e = this.ref.$e;
   }
   function $init()
   {
      this.id = 0;
      this.$challengers = [];
   }
   function request(roomTemplate, timeout, minMembers, memberIDs, callback, scope)
   {
      this.ref.$cblist[this.ref.$cbid = this.ref.$cbid + 1] = {event:callback,action:10,scope:scope,template:roomTemplate,timeout:timeout,minMembers:minMembers};
      this.ref.$sts = this.ref.$sts + ("66" + this.d + "-1" + this.d + this.ref.$cbid + this.d + roomTemplate + this.d + timeout + this.d + minMembers + this.d + memberIDs.join(this.d) + this.e);
   }
   function reChallenge(callback, scope)
   {
      this.ref.$cblist[this.ref.$cbid = this.ref.$cbid + 1] = {event:callback,action:10,scope:scope,template:this.$template,timeout:this.$timeout,minMembers:this.$minMembers};
      var _loc2_ = this.ref.room.getMemberIDs(this.ref.me.room).slice(0);
      this.ref.removeValue(_loc2_,this.ref.me.id);
      this.ref.$sts = this.ref.$sts + ("66" + this.d + this.id + this.d + this.ref.$cbid + this.d + this.$template + this.d + this.$timeout + this.d + this.$minMembers + this.d + _loc2_.join(this.d) + this.e);
   }
   function answerRequest(status)
   {
      this.ref.$sts = this.ref.$sts + ("68" + this.d + this.ref.me.id + this.d + this.id + this.d + status + this.e);
      if(!status)
      {
         this.id = 0;
         this.$challengers = [];
         this.ref.me.moderator = 0;
      }
   }
   function cancel()
   {
      this.ref.$sts = this.ref.$sts + ("72" + this.d + this.id + this.e);
      this.id = 0;
      this.$challengers = [];
      this.ref.me.moderator = 0;
   }
   function start(memberIDsOrder)
   {
      if(memberIDsOrder)
      {
         this.ref.$sts = this.ref.$sts + ("70" + this.d + this.id + this.d + memberIDsOrder.join(this.d) + this.e);
      }
      else
      {
         this.ref.$sts = this.ref.$sts + ("70" + this.d + this.id + this.e);
      }
   }
   function nextMember()
   {
      this.ref.$sts = this.ref.$sts + ("71" + this.d + this.id + this.e);
   }
   function includeMember(memberID)
   {
      this.ref.$sts = this.ref.$sts + ("64" + this.d + memberID + this.d + "1" + this.e);
   }
   function excludeMember(memberID)
   {
      this.ref.$sts = this.ref.$sts + ("64" + this.d + memberID + this.d + "0" + this.e);
   }
   function getMemberIDs()
   {
      return this.$challengers.slice();
   }
   function getMemberPosition(memberID)
   {
      var _loc3_ = this.$challengers.length;
      var _loc2_ = undefined;
      _loc2_ = 0;
      while(_loc2_ < _loc3_)
      {
         if(this.$challengers[_loc2_] == memberID)
         {
            return _loc2_;
         }
         _loc2_ = _loc2_ + 1;
      }
      return -1;
   }
}
