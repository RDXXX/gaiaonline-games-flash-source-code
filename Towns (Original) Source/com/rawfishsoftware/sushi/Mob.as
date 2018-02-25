class com.rawfishsoftware.sushi.Mob
{
   function Mob(r)
   {
      this.ref = r;
      this.d = this.ref.$d;
      this.e = this.ref.$e;
      this.$init();
   }
   function $init()
   {
      this.list = [];
      this.$iid = 0;
   }
   function update(mobID, dataArray)
   {
      this.ref.$update(this,"26",mobID,dataArray);
   }
   function silentUpdate(mobID, dataArray)
   {
      this.ref.$update(this,"15",mobID,dataArray);
   }
   function indexUpdate(mobID, dataArray)
   {
      this.ref.$indexUpdate(this,"60",mobID,dataArray);
   }
   function indexUpdateEval(mobID, dataArray)
   {
      this.ref.$indexUpdateEval(this,"41",mobID,dataArray);
   }
   function indexUpdateConditional(mobID, dataArray, callback, scope)
   {
      this.ref.$indexUpdateConditional(this,"41",mobID,dataArray,callback,scope);
   }
   function remove(mobID)
   {
      this.ref.$sts = this.ref.$sts + ("27" + this.d + mobID + this.e);
      var _loc2_ = this.list["_" + mobID].room;
      this.ref.$removeValue(this.ref.room.list["_" + _loc2_].mobs,mobID);
      trace("list:" + this.ref.room.list["_" + _loc2_].mobs);
      delete this.list."_" + mobID;
   }
   function getMember(mobID)
   {
      return this.list["_" + mobID].member;
   }
   function getRoom(mobID)
   {
      return this.list["_" + mobID].room;
   }
   function getObject(mobID)
   {
      return this.list["_" + mobID];
   }
   function getData(mobID)
   {
      return this.list["_" + mobID].data;
   }
   function init(roomID, deleteOnExit, dataArray)
   {
      var _loc2_ = (this.$iid = this.$iid + 1) + "m" + roomID;
      var _loc3_ = !deleteOnExit?0:1;
      if(this.list["_" + _loc2_] == null)
      {
         this.list["_" + _loc2_] = {id:_loc2_,room:roomID,data:dataArray,member:this.ref.me.id};
         if(this.ref.me.master)
         {
            this.ref.$sts = this.ref.$sts + ("47" + this.d + _loc2_ + this.d + roomID + this.d + _loc3_ + this.d + dataArray.join(this.d) + this.e);
         }
      }
      return _loc2_;
   }
   function registerEvents(mobID, object)
   {
      this.list["_" + mobID].$class = object;
   }
   function deregisterEvents(mobID)
   {
      this.list["_" + mobID].$class = null;
   }
   function setDataIndexCallback(mobID, index, callback, scope)
   {
      var _loc2_ = this.list["_" + mobID];
      if(!_loc2_.__cb)
      {
         _loc2_.__cb = [];
      }
      _loc2_.__cb["_" + index] = {cb:callback,sc:scope};
   }
   function clearDataIndexCallback(mobID, index)
   {
      var _loc3_ = this.list["_" + mobID];
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
   function clearAllDataIndexCallbacks(mobID)
   {
      var _loc2_ = this.list["_" + mobID];
      delete register2.__cb;
   }
}
