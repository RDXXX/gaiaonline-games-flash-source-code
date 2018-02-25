package com.rawfishsoftware.sushi
{
   public class Session
   {
       
      
      private var ref;
      
      public var teams:Array;
      
      public var rooms:Array;
      
      public var members:Array;
      
      public var sessionList:Array;
      
      public var data:Array;
      
      public var id:Number;
      
      public var name:String;
      
      private var d:String;
      
      private var e:String;
      
      private var $cb:Array;
      
      public var __cb:Array;
      
      public function Session(param1:Object)
      {
         super();
         this.ref = param1;
         if(this.ref && this.ref.$d != undefined)
         {
            this.d = this.ref.$d;
         }
         if(this.ref && this.ref.$e != undefined)
         {
            this.e = this.ref.$e;
         }
         this.$init();
      }
      
      public function $init() : void
      {
         this.teams = [];
         this.rooms = [];
         this.members = [];
         this.data = [];
         this.$cb = [];
      }
      
      public function getSessionList() : Array
      {
         return this.sessionList;
      }
      
      public function update(param1:Array) : void
      {
         var _loc2_:String = param1.join(this.d).toString();
         this.ref.$reb(param1,this.data);
         this.ref.$sts = this.ref.$sts + ("16" + this.d + _loc2_ + this.e);
      }
      
      public function indexUpdate(param1:Array) : void
      {
         var _loc2_:String = param1.join(this.d).toString();
         var _loc3_:Number = this.d.length;
         var _loc4_:* = this.data;
         var _loc5_:* = 0;
         while(_loc5_ < _loc3_)
         {
            _loc4_[param1[_loc5_]] = param1[_loc5_ + 1];
            _loc5_ = _loc5_ + 2;
         }
         this.ref.$sts = this.ref.$sts + ("17" + this.d + _loc2_ + this.e);
      }
      
      public function indexUpdateEval(param1:Array) : void
      {
         this.ref.$sts = this.ref.$sts + ("59" + this.d + param1.join(this.d).toString() + this.e);
      }
      
      public function indexUpdateConditional(param1:Array, param2:Function, param3:Object) : *
      {
         var _loc4_:* = ++this.ref.$cbid;
         this.ref.$cblist[_loc4_] = {
            "event":param2,
            "action":6,
            "obj":this,
            "index":param1[0],
            "value":param1[1],
            "scope":param3
         };
         this.ref.$sts = this.ref.$sts + ("59" + this.d + param1.join(this.d) + this.d + this.ref.$cbid + this.e);
      }
      
      public function getTeamIDs() : Array
      {
         return this.teams.slice();
      }
      
      public function getTeamNames() : Array
      {
         var _loc1_:* = this.teams.length;
         var _loc2_:* = [];
         while(_loc1_--)
         {
            _loc2_.push(this.ref.team.list["_" + this.teams[_loc1_]].name);
         }
         return _loc2_;
      }
      
      public function getMemberNames() : Array
      {
         var _loc1_:* = this.members.length;
         var _loc2_:* = [];
         while(_loc1_--)
         {
            _loc2_.push(this.ref.member.getName(this.members[_loc1_]));
         }
         return _loc2_;
      }
      
      public function getData() : Array
      {
         return this.data;
      }
      
      public function getName() : String
      {
         return this.name;
      }
      
      public function getRoomIDs() : Array
      {
         return this.rooms.slice();
      }
      
      public function getMemberIDs() : Array
      {
         return this.members.slice();
      }
      
      public function getNumberOfRooms() : Number
      {
         return this.rooms.length;
      }
      
      public function getNumberOfTeams() : Number
      {
         return this.teams.length;
      }
      
      public function getNumberOfMembers() : Number
      {
         return this.members.length;
      }
      
      public function chat(param1:String) : void
      {
         this.ref.$sts = this.ref.$sts + ("10" + this.d + this.ref.me.id + this.d + "2" + this.d + "0" + this.d + param1 + this.e);
      }
      
      public function setDataIndexCallback(param1:Number, param2:Function, param3:Object) : void
      {
         if(!this.__cb)
         {
            this.__cb = [];
         }
         this.__cb["_" + param1] = {
            "cb":param2,
            "sc":param3
         };
      }
      
      public function clearDataIndexCallback(param1:Number) : void
      {
         delete this.__cb["_" + param1];
         var _loc2_:* = this.data.length;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         while(_loc4_ < _loc2_)
         {
            if(this.__cb["_" + _loc4_])
            {
               _loc3_++;
               break;
            }
            _loc4_++;
         }
         if(!_loc3_)
         {
            this.__cb = null;
         }
      }
      
      public function clearAllDataIndexCallbacks() : void
      {
         this.__cb = null;
      }
      
      public function removeMember(param1:int) : int
      {
         var _loc2_:uint = this.members.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.members[_loc3_] == param1)
            {
               this.members = this.members.slice(0,_loc3_).concat(this.members.slice(_loc3_ + 1));
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
   }
}
