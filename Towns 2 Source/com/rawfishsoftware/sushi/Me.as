package com.rawfishsoftware.sushi
{
   public class Me
   {
       
      
      private var ref;
      
      public var id:Number;
      
      public var session:Number;
      
      public var team:Number;
      
      public var $mobid:Number;
      
      public var $tempcbid:Number;
      
      public var room:Number;
      
      public var $roomToGo:Number;
      
      public var spectator:Number;
      
      public var master:Number;
      
      public var moderator:Number;
      
      public var name:String;
      
      public var data:Array;
      
      private var d:String;
      
      private var e:String;
      
      public function Me(param1:Object)
      {
         super();
         this.ref = param1;
         this.d = this.ref.$d;
         this.e = this.ref.$e;
         this.$init();
      }
      
      public function $init() : void
      {
         this.data = [];
         this.id = this.room = this.session = this.team = -1;
         this.name = "";
         this.$mobid = this.$tempcbid = 0;
         this.spectator = this.master = this.moderator = 0;
      }
      
      public function joinSession(param1:String, param2:Number, param3:Number, param4:Number, param5:Array, param6:Function, param7:Object) : void
      {
         this.name = param1;
         var _loc8_:* = ++this.ref.$cbid;
         this.ref.$cblist[_loc8_] = {
            "data":param5,
            "cbid":this.ref.$cbid,
            "event":param6,
            "teamToGo":param3,
            "roomToGo":param4,
            "sessionToGo":param2,
            "action":4,
            "scope":param7
         };
         this.ref.$nocb = false;
         this.ref.session.data = [];
         this.ref.$sts = this.ref.$sts + ("45" + this.d + this.ref.$cbid + this.d + param2 + this.d + param3 + this.d + param4 + this.d + "" + this.d + param1 + this.d + param5.join(this.d) + this.e);
      }
      
      public function joinSessionPassword(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Array, param7:Function, param8:Object) : void
      {
         this.name = param1;
         var _loc9_:* = ++this.ref.$cbid;
         this.ref.$cblist[_loc9_] = {
            "data":param6,
            "cbid":this.ref.$cbid,
            "event":param7,
            "teamToGo":param4,
            "roomToGo":param5,
            "sessionToGo":param3,
            "action":4,
            "scope":param8
         };
         this.ref.$nocb = false;
         this.ref.session.data = [];
         this.ref.$sts = this.ref.$sts + ("45" + this.d + this.ref.$cbid + this.d + param3 + this.d + param4 + this.d + param5 + this.d + param2 + this.d + param1 + this.d + param6.join(this.d) + this.e);
      }
      
      public function leaveSession() : void
      {
         this.ref.$sts = this.ref.$sts + ("28" + this.d + this.e);
         this.ref.$init();
      }
      
      public function changeName(param1:String, param2:Function, param3:Object) : void
      {
         var _loc4_:* = ++this.ref.$cbid;
         this.ref.$cblist[_loc4_] = {
            "event":param2,
            "newName":param1,
            "action":8,
            "scope":param3
         };
         this.ref.$sts = this.ref.$sts + ("36" + this.d + this.ref.$cbid + this.d + this.id + this.d + param1 + this.e);
      }
      
      public function changeTeam(param1:Number, param2:Function, param3:Object) : void
      {
         var _loc4_:* = ++this.ref.$cbid;
         this.ref.$cblist[_loc4_] = {
            "event":param2,
            "toGo":param1,
            "action":5,
            "scope":param3
         };
         this.ref.$sts = this.ref.$sts + ("42" + this.d + this.ref.$cbid + this.d + this.id + this.d + this.team + this.d + param1 + this.e);
      }
      
      public function createRoom(param1:String, param2:String, param3:Function, param4:Object) : void
      {
         var _loc6_:* = ++this.ref.$cbid;
         this.ref.$cblist[_loc6_] = {
            "event":param3,
            "toGo":-1,
            "action":3,
            "scope":param4
         };
         this.ref.$nocb = false;
         var _loc5_:Array = [];
         this.ref.$sts = this.ref.$sts + ("22" + this.d + this.ref.$cbid + this.d + this.id + this.d + "" + this.d + param1 + this.d + param2 + this.d + _loc5_.join(this.chr(1)) + this.e);
      }
      
      public function createRoomPassword(param1:String, param2:String, param3:String, param4:Function, param5:Object) : void
      {
         var _loc7_:* = ++this.ref.$cbid;
         this.ref.$cblist[_loc7_] = {
            "event":param4,
            "toGo":-1,
            "action":3,
            "scope":param5
         };
         this.ref.$nocb = false;
         var _loc6_:Array = [];
         this.ref.$sts = this.ref.$sts + ("22" + this.d + this.ref.$cbid + this.d + this.id + this.d + param2 + this.d + param1 + this.d + param3 + this.d + _loc6_.join(this.chr(1)) + this.e);
      }
      
      public function createPrivateRoom(param1:String, param2:String, param3:Array, param4:Function, param5:Object) : void
      {
         var _loc6_:* = ++this.ref.$cbid;
         this.ref.$cblist[_loc6_] = {
            "event":param4,
            "toGo":-1,
            "action":3,
            "scope":param5
         };
         this.ref.$nocb = false;
         param3.push(this.ref.me.id);
         this.ref.$sts = this.ref.$sts + ("22" + this.d + this.ref.$cbid + this.d + this.id + this.d + "" + this.d + param1 + this.d + param2 + this.d + param3.join(this.chr(1)) + this.e);
      }
      
      public function createPrivateRoomPassword(param1:String, param2:String, param3:String, param4:Array, param5:Function, param6:Object) : void
      {
         var _loc7_:* = ++this.ref.$cbid;
         this.ref.$cblist[_loc7_] = {
            "event":param5,
            "toGo":-1,
            "action":3,
            "scope":param6
         };
         this.ref.$nocb = false;
         param4.push(this.ref.me.id);
         this.ref.$sts = this.ref.$sts + ("22" + this.d + this.ref.$cbid + this.d + this.id + this.d + param2 + this.d + param1 + this.d + param3 + this.d + param4.join(this.chr(1)) + this.e);
      }
      
      public function changeRoom(param1:Number, param2:Array, param3:Function, param4:Object) : void
      {
         var _loc5_:* = ++this.ref.$cbid;
         this.ref.$cblist[_loc5_] = {
            "event":param3,
            "toGo":param1,
            "action":2,
            "data":param2,
            "scope":param4
         };
         this.$roomToGo = param1;
         this.ref.$sts = this.ref.$sts + ("20" + this.d + this.ref.$cbid + this.d + this.id + this.d + param1 + this.d + "" + this.d + param2.join(this.d) + this.e);
      }
      
      public function changeRoomPassword(param1:Number, param2:String, param3:Array, param4:Function, param5:Object) : void
      {
         var _loc6_:* = ++this.ref.$cbid;
         this.ref.$cblist[_loc6_] = {
            "event":param4,
            "toGo":param1,
            "action":2,
            "data":param3,
            "scope":param5
         };
         this.$roomToGo = param1;
         this.ref.$sts = this.ref.$sts + ("20" + this.d + this.ref.$cbid + this.d + this.id + this.d + param1 + this.d + param2 + this.d + param3.join(this.d) + this.e);
      }
      
      public function update(param1:Array) : void
      {
         this.ref.$reb(param1,this.data);
         this.ref.$update(this.ref.member,"6",this.id,param1);
      }
      
      public function silentUpdate(param1:Array) : void
      {
         this.ref.$reb(param1,this.data);
         this.ref.$update(this.ref.member,"31",this.id,param1);
      }
      
      public function indexUpdate(param1:Array) : void
      {
         this.ref.$reb(param1,this.data);
         this.ref.$indexUpdate(this.ref.member,"54",this.id,param1);
      }
      
      public function createMob(param1:Number, param2:Number, param3:Array) : String
      {
         var _loc4_:* = this.id + "m" + this.$mobid++;
         this.ref.mob.list["_" + _loc4_] = {
            "id":_loc4_,
            "room":param1,
            "data":param3,
            "$lu":"",
            "$liu":""
         };
         this.ref.room.list["_" + param1].mobs.push(_loc4_);
         this.ref.$sts = this.ref.$sts + ("25" + this.d + _loc4_ + this.d + param1 + this.d + "1" + this.d + param2 + this.d + param3.join(this.d) + this.e);
         return _loc4_;
      }
      
      public function beSpectator(param1:Number, param2:Function, param3:Object) : void
      {
         var _loc4_:* = ++this.ref.$cbid;
         this.ref.$cblist[_loc4_] = {
            "event":param2,
            "action":12,
            "scope":param3,
            "value":param1
         };
         this.ref.$sts = this.ref.$sts + ("48" + this.d + this.ref.$cbid + this.d + param1 + this.e);
      }
      
      private function chr(param1:int) : String
      {
         return String.fromCharCode(param1);
      }
   }
}
