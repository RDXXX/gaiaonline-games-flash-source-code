class com.rawfishsoftware.sushi.Session
{
   function Session(r)
   {
      this.ref = r;
      this.d = this.ref.$d;
      this.e = this.ref.$e;
      this.$init();
   }
   function $init()
   {
      this.teams = [];
      this.rooms = [];
      this.members = [];
      this.data = [];
      this.$cb = [];
   }
   function getSessionList()
   {
      return this.sessionList;
   }
   function update(dataArray)
   {
      var _loc2_ = dataArray.join(this.d).toString();
      this.ref.$reb(dataArray,this.data);
      this.ref.$sts = this.ref.$sts + ("16" + this.d + _loc2_ + this.e);
   }
   function indexUpdate(dataArray)
   {
      var _loc6_ = dataArray.join(this.d).toString();
      var _loc4_ = this.d.length;
      var _loc5_ = this.data;
      var _loc2_ = 0;
      while(_loc2_ < _loc4_)
      {
         _loc5_[dataArray[_loc2_]] = dataArray[_loc2_ + 1];
         _loc2_ = _loc2_ + 2;
      }
      this.ref.$sts = this.ref.$sts + ("17" + this.d + _loc6_ + this.e);
   }
   function indexUpdateEval(dataArray)
   {
      this.ref.$sts = this.ref.$sts + ("59" + this.d + dataArray.join(this.d).toString() + this.e);
   }
   function indexUpdateConditional(dataArray, callback, scope)
   {
      this.ref.$cblist[this.ref.$cbid = this.ref.$cbid + 1] = {event:callback,action:6,obj:this,index:dataArray[0],value:dataArray[1],scope:scope};
      this.ref.$sts = this.ref.$sts + ("59" + this.d + dataArray.join(this.d) + this.d + this.ref.$cbid + this.e);
   }
   function getTeamIDs()
   {
      return this.teams.slice();
   }
   function getTeamNames()
   {
      var _loc2_ = this.teams.length;
      var _loc3_ = [];
      while(true)
      {
         _loc2_;
         if(_loc2_--)
         {
            _loc3_.push(this.ref.team.list["_" + this.teams[_loc2_]].name);
            continue;
         }
         break;
      }
      return _loc3_;
   }
   function getMemberNames()
   {
      var _loc2_ = this.members.length;
      var _loc3_ = [];
      while(true)
      {
         _loc2_;
         if(_loc2_--)
         {
            _loc3_.push(this.ref.member.getName(this.members[_loc2_]));
            continue;
         }
         break;
      }
      return _loc3_;
   }
   function getData()
   {
      return this.data;
   }
   function getName()
   {
      return this.name;
   }
   function getRoomIDs()
   {
      return this.rooms.slice();
   }
   function getMemberIDs()
   {
      return this.members.slice();
   }
   function getNumberOfRooms()
   {
      return this.rooms.length;
   }
   function getNumberOfTeams()
   {
      return this.teams.length;
   }
   function getNumberOfMembers()
   {
      return this.members.length;
   }
   function chat(message)
   {
      this.ref.$sts = this.ref.$sts + ("10" + this.d + this.ref.me.id + this.d + "2" + this.d + "0" + this.d + message + this.e);
   }
   function setDataIndexCallback(index, callback, scope)
   {
      if(!this.__cb)
      {
         this.__cb = [];
      }
      this.__cb["_" + index] = {cb:callback,sc:scope};
   }
   function clearDataIndexCallback(index)
   {
      delete this.__cb."_" + index;
      var _loc4_ = this.data.length;
      var _loc3_ = 0;
      var _loc2_ = 0;
      while(_loc2_ < _loc4_)
      {
         if(this.__cb["_" + _loc2_])
         {
            _loc3_ = _loc3_ + 1;
            break;
         }
         _loc2_ = _loc2_ + 1;
      }
      if(!_loc3_)
      {
         delete this.__cb;
      }
   }
   function clearAllDataIndexCallbacks()
   {
      delete this.__cb;
   }
}
