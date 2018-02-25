class com.rawfishsoftware.sushi.Me
{
   function Me(r)
   {
      this.ref = r;
      this.d = this.ref.$d;
      this.e = this.ref.$e;
      this.$init();
   }
   function $init()
   {
      this.data = [];
      this.id = this.room = this.session = this.team = -1;
      this.name = "";
      this.$mobid = this.$tempcbid = 0;
      this.spectator = this.master = this.moderator = 0;
   }
   function joinSession(name, sessionID, teamID, roomID, data, callback, scope)
   {
      this.name = name;
      this.ref.$cblist[this.ref.$cbid = this.ref.$cbid + 1] = {data:data,cbid:this.ref.$cbid,event:callback,teamToGo:teamID,roomToGo:roomID,sessionToGo:sessionID,action:4,scope:scope};
      this.ref.$nocb = false;
      this.ref.session.data = [];
      this.ref.$sts = this.ref.$sts + ("45" + this.d + this.ref.$cbid + this.d + sessionID + this.d + teamID + this.d + roomID + this.d + "" + this.d + name + this.d + data.join(this.d) + this.e);
   }
   function joinSessionPassword(name, password, sessionID, teamID, roomID, data, callback, scope)
   {
      this.name = name;
      this.ref.$cblist[this.ref.$cbid = this.ref.$cbid + 1] = {data:data,cbid:this.ref.$cbid,event:callback,teamToGo:teamID,roomToGo:roomID,sessionToGo:sessionID,action:4,scope:scope};
      this.ref.$nocb = false;
      this.ref.session.data = [];
      this.ref.$sts = this.ref.$sts + ("45" + this.d + this.ref.$cbid + this.d + sessionID + this.d + teamID + this.d + roomID + this.d + password + this.d + name + this.d + data.join(this.d) + this.e);
   }
   function leaveSession()
   {
      this.ref.$sts = this.ref.$sts + ("28" + this.d + this.e);
      this.ref.$init();
   }
   function changeName(newName, callback, scope)
   {
      this.ref.$cblist[this.ref.$cbid = this.ref.$cbid + 1] = {event:callback,newName:newName,action:8,scope:scope};
      this.ref.$sts = this.ref.$sts + ("36" + this.d + this.ref.$cbid + this.d + this.id + this.d + newName + this.e);
   }
   function changeTeam(newTeamID, callback, scope)
   {
      this.ref.$cblist[this.ref.$cbid = this.ref.$cbid + 1] = {event:callback,toGo:newTeamID,action:5,scope:scope};
      this.ref.$sts = this.ref.$sts + ("42" + this.d + this.ref.$cbid + this.d + this.id + this.d + this.team + this.d + newTeamID + this.e);
   }
   function createRoom(roomName, templateName, callback, scope)
   {
      this.ref.$cblist[this.ref.$cbid = this.ref.$cbid + 1] = {event:callback,toGo:-1,action:3,scope:scope};
      this.ref.$nocb = false;
      var _loc2_ = [];
      this.ref.$sts = this.ref.$sts + ("22" + this.d + this.ref.$cbid + this.d + this.id + this.d + "" + this.d + roomName + this.d + templateName + this.d + _loc2_.join("\x01") + this.e);
   }
   function createRoomPassword(roomName, password, templateName, callback, scope)
   {
      this.ref.$cblist[this.ref.$cbid = this.ref.$cbid + 1] = {event:callback,toGo:-1,action:3,scope:scope};
      this.ref.$nocb = false;
      var _loc2_ = [];
      this.ref.$sts = this.ref.$sts + ("22" + this.d + this.ref.$cbid + this.d + this.id + this.d + password + this.d + roomName + this.d + templateName + this.d + _loc2_.join("\x01") + this.e);
   }
   function createPrivateRoom(roomName, templateName, memberIDs, callback, scope)
   {
      this.ref.$cblist[this.ref.$cbid = this.ref.$cbid + 1] = {event:callback,toGo:-1,action:3,scope:scope};
      this.ref.$nocb = false;
      memberIDs.push(this.ref.me.id);
      this.ref.$sts = this.ref.$sts + ("22" + this.d + this.ref.$cbid + this.d + this.id + this.d + "" + this.d + roomName + this.d + templateName + this.d + memberIDs.join("\x01") + this.e);
   }
   function createPrivateRoomPassword(roomName, password, templateName, memberIDs, callback, scope)
   {
      this.ref.$cblist[this.ref.$cbid = this.ref.$cbid + 1] = {event:callback,toGo:-1,action:3,scope:scope};
      this.ref.$nocb = false;
      memberIDs.push(this.ref.me.id);
      this.ref.$sts = this.ref.$sts + ("22" + this.d + this.ref.$cbid + this.d + this.id + this.d + password + this.d + roomName + this.d + templateName + this.d + memberIDs.join("\x01") + this.e);
   }
   function changeRoom(roomID, dataArray, callback, scope)
   {
      this.ref.$cblist[this.ref.$cbid = this.ref.$cbid + 1] = {event:callback,toGo:roomID,action:2,data:dataArray,scope:scope};
      this.$roomToGo = roomID;
      this.ref.$sts = this.ref.$sts + ("20" + this.d + this.ref.$cbid + this.d + this.id + this.d + roomID + this.d + "" + this.d + dataArray.join(this.d) + this.e);
   }
   function changeRoomPassword(roomID, password, dataArray, callback, scope)
   {
      this.ref.$cblist[this.ref.$cbid = this.ref.$cbid + 1] = {event:callback,toGo:roomID,action:2,data:dataArray,scope:scope};
      this.$roomToGo = roomID;
      this.ref.$sts = this.ref.$sts + ("20" + this.d + this.ref.$cbid + this.d + this.id + this.d + roomID + this.d + password + this.d + dataArray.join(this.d) + this.e);
   }
   function update(dataArray)
   {
      this.ref.$reb(dataArray,this.data);
      this.ref.$update(this.ref.member,"6",this.id,dataArray);
   }
   function silentUpdate(dataArray)
   {
      this.ref.$reb(dataArray,this.data);
      this.ref.$update(this.ref.member,"31",this.id,dataArray);
   }
   function indexUpdate(dataArray)
   {
      this.ref.$ireb(dataArray,this.data);
      this.ref.$indexUpdate(this.ref.member,"54",this.id,dataArray);
   }
   function createMob(roomID, deleteOnExit, dataArray)
   {
      this.$mobid = this.$mobid + 1;
      var _loc2_ = this.id + "m" + this.$mobid;
      this.ref.mob.list["_" + _loc2_] = {id:_loc2_,room:roomID,data:dataArray,$lu:"",$liu:""};
      this.ref.room.list["_" + roomID].mobs.push(_loc2_);
      this.ref.$sts = this.ref.$sts + ("25" + this.d + _loc2_ + this.d + roomID + this.d + "1" + this.d + deleteOnExit + this.d + dataArray.join(this.d) + this.e);
      return _loc2_;
   }
   function beSpectator(status, callback, scope)
   {
      this.ref.$cblist[this.ref.$cbid = this.ref.$cbid + 1] = {event:callback,action:12,scope:scope,value:status};
      this.ref.$sts = this.ref.$sts + ("48" + this.d + this.ref.$cbid + this.d + status + this.e);
   }
}
