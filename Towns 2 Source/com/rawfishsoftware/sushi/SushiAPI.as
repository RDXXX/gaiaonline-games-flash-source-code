package com.rawfishsoftware.sushi
{
   import com.gaiaworld.sushi.model.ChatModel;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.events.UncaughtErrorEvent;
   import flash.net.XMLSocket;
   import flash.utils.Timer;
   
   public class SushiAPI extends EventDispatcher
   {
      
      public static const SUSHI_ERROR:String = "sushiError";
       
      
      private var currentV;
      
      public var member:Member;
      
      public var me:Me;
      
      public var mob:Mob;
      
      public var session:Session;
      
      public var team:Team;
      
      public var room:Room;
      
      public var challenge:Challenge;
      
      public var event:com.rawfishsoftware.sushi.Event;
      
      var logger:Logger;
      
      var serial:Serializer;
      
      public var fps:Number = 0;
      
      public var speedFac:Number = 1;
      
      public var connectionType:String;
      
      public var ping:Number = -1;
      
      public var ip:String;
      
      public var port:Number;
      
      public var LIMIT:Number = 0;
      
      public var logging:Boolean = false;
      
      public var errorMessage:String = "";
      
      var $connected:uint = 0;
      
      var $d:String;
      
      var $e:String;
      
      var $sts:String = "";
      
      var $fps:Number;
      
      var $$fps:Number = 0;
      
      var $pon:Boolean = false;
      
      var $nocb:Boolean;
      
      var $smode:Number = -1;
      
      var $netTimer:Number = -1;
      
      var $toGo:Number;
      
      var $cbid:Number;
      
      var $pollFreq:Number;
      
      var $pf:Number;
      
      var $pint:Number;
      
      var $cb:Object;
      
      var $sc:Object;
      
      var $cblist:Object;
      
      var $tempTeamList:Object;
      
      var $memberIDs:Object;
      
      var $memberNames:Object;
      
      var $instance:Number;
      
      var $game:String;
      
      var $ttid:Array;
      
      var $clientSpeed:Number;
      
      var $socket:SushiSocket;
      
      var $majorVersion:Number = 2;
      
      var $minorVersion:Number = 2;
      
      var $subVersion:Number = 4;
      
      var timer:Timer;
      
      public function SushiAPI()
      {
         super();
         this.$d = this.chr(2);
         this.$e = this.chr(3);
         this.session = new Session(this);
         this.me = new Me(this);
         this.member = new Member(this);
         this.mob = new Mob(this);
         this.room = new Room(this);
         this.team = new Team(this);
         this.challenge = new Challenge(this);
         this.event = new com.rawfishsoftware.sushi.Event(this);
         this.logger = new Logger(this);
         this.serial = new Serializer();
         this.$speedCheck();
         this.$init();
         this.session.sessionList = [];
         this.connectionType = "";
         this.me.$init();
         this.$fps = 0;
         this.$ttid = new Array();
         this.timer = new Timer(1000);
         this.timer.addEventListener(TimerEvent.TIMER,this.onTimer);
      }
      
      private function onTimer(param1:TimerEvent) : void
      {
         this.$ping();
      }
      
      public function clearTraffic() : *
      {
         if(this.$socket)
         {
            this.$socket.clearTraffic();
         }
         this.$sts = "";
      }
      
      public function connectToServer(... rest) : XMLSocket
      {
         if(rest[0].toUpperCase() == "SOCKET")
         {
            return this.connectToServerSocket(rest[1],rest[2],rest[3],rest[4],rest[5]);
         }
         if(rest[0].toUpperCase() == "HTTP")
         {
            this.connectToServerHTTP(rest[1],rest[2],rest[3],rest[4]);
         }
         return null;
      }
      
      public function connectToServerSocket(param1:String, param2:Number, param3:String, param4:Function, param5:Object) : XMLSocket
      {
         this.$smode = 1;
         this.ip = param1;
         this.port = param2;
         this.$game = param3;
         this.$cb = param4;
         this.$sc = param5;
         this.$socket = new SushiSocket(param1,param2,this);
         return this.$socket;
      }
      
      public function connectToServerHTTP(param1:String, param2:String, param3:Function, param4:Object) : void
      {
         this.$smode = 0;
         this.ip = param1;
         this.$game = param2;
         this.$cb = param3;
         this.$sc = param4;
      }
      
      public function disconnectFromServer() : void
      {
         if(this.$smode)
         {
            this.errorMessage = "init error";
            this.dispatchEvent(new flash.events.Event(SUSHI_ERROR,true,false));
            this.$socket.close();
            this.$init();
         }
         this.session.sessionList = [];
         this.connectionType = "";
         this.me.$init();
      }
      
      public function sendUserMessage(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:ChatModel = ChatModel.getInstance();
         if(_loc4_.messageLock == false)
         {
            this.$sts = this.$sts + ("53" + this.$d + param1 + this.$d + this.me.id + this.$d + param2 + this.$d + param3 + this.$e);
         }
      }
      
      public function getFPS(param1:Number) : void
      {
         this.$fps = param1;
      }
      
      public function loadSessionList(param1:String, param2:Function, param3:Object) : void
      {
         var _loc4_:* = ++this.$cbid;
         this.$cblist[_loc4_] = {
            "event":param2,
            "action":7,
            "scope":param3
         };
         this.$sts = this.$sts + ("29" + this.$d + this.$cbid + this.$d + param1 + this.$e);
      }
      
      public function getSessionList() : Array
      {
         return this.session.sessionList;
      }
      
      public function setPollingInterval(param1:Number) : void
      {
         this.$pollFreq = param1;
      }
      
      public function getPollingInterval() : Number
      {
         return this.$pollFreq;
      }
      
      public function searchMember(param1:String, param2:Function, param3:Object) : void
      {
         var _loc4_:* = ++this.$cbid;
         this.$cblist[_loc4_] = {
            "event":param2,
            "scope":param3
         };
         this.$sts = this.$sts + ("51" + this.$d + this.$cbid + this.$d + param1 + this.$e);
      }
      
      public function isBadWord(param1:String, param2:Function, param3:Object) : void
      {
         var _loc4_:* = ++this.$cbid;
         this.$cblist[_loc4_] = {
            "event":param2,
            "scope":param3
         };
         this.$sts = this.$sts + ("57" + this.$d + this.$cbid + this.$d + param1 + this.$e);
      }
      
      public function callPlugin(param1:String, param2:Array, param3:Function, param4:Object) : void
      {
         var _loc5_:* = ++this.$cbid;
         this.$cblist[_loc5_] = {
            "event":param3,
            "scope":param4
         };
         this.$sts = this.$sts + ("19" + this.$d + this.$cbid + this.$d + param1 + this.$d + param2.join(this.$d) + this.$e);
      }
      
      public function receiveMyUpdates(param1:Boolean) : void
      {
         this.$sts = this.$sts + ("4" + this.$d + int(param1) + this.$e);
      }
      
      public function encodeObject(param1:Object) : String
      {
         return this.serial.serialize(param1);
      }
      
      public function decodeObject(param1:String) : Object
      {
         return this.serial.unserialize(param1);
      }
      
      public function sendObject(param1:Number, param2:Number, param3:Object) : void
      {
         this.$sts = this.$sts + ("86" + this.$d + param1 + this.$d + param2 + this.$d + this.serial.serialize(param3) + this.$e);
      }
      
      public function getVersion() : String
      {
         return this.$majorVersion + "." + this.$minorVersion + "." + this.$subVersion;
      }
      
      public function echo(... rest) : void
      {
      }
      
      public function getMemberList(param1:*) : void
      {
         if(param1 == undefined)
         {
            param1 = "";
         }
         this.$sts = this.$sts + ("14" + this.$d + param1 + this.$e);
      }
      
      public function enableLogging(param1:Boolean) : void
      {
         this.logging = param1;
         if(this.connectionType != "")
         {
            this.$sts = this.$sts + ("87" + this.$d + Number(param1) + this.$e);
         }
      }
      
      function $init() : void
      {
         this.$cb = null;
         this.$sc = null;
         this.$memberIDs = {"x0":"Administrator"};
         this.$memberNames = {"xAdministrator":0};
         this.$cbid = 0;
         this.$cblist = {};
         this.$tempTeamList = {};
         this.$pollFreq = 100;
         this.$nocb = true;
         this.$toGo = 0;
         this.member.$init();
         this.mob.$init();
         this.team.$init();
         this.session.$init();
         this.room.$init();
         this.challenge.$init();
         this.event.$init();
      }
      
      public function $p(param1:String) : void
      {
         var $n:Number = NaN;
         var $v:Number = NaN;
         var p:Array = null;
         var d:* = undefined;
         var len:int = 0;
         var m:* = undefined;
         var index:* = undefined;
         var c:* = undefined;
         var i:int = 0;
         var c2:* = undefined;
         var id:* = undefined;
         var room:* = undefined;
         var mem:* = undefined;
         var data:* = undefined;
         var o:* = undefined;
         var r:* = undefined;
         var n:* = undefined;
         var k:int = 0;
         var xid:* = undefined;
         var xname:* = undefined;
         var xteam:* = undefined;
         var xraum:* = undefined;
         var px:* = undefined;
         var xdata:* = undefined;
         var l:int = 0;
         var v:* = undefined;
         var out:String = null;
         var w:Number = NaN;
         var cbid:Number = NaN;
         var info:Number = NaN;
         var obj:* = undefined;
         var action:* = undefined;
         var objx:* = undefined;
         var roomID:* = undefined;
         var pw:* = undefined;
         var limit:* = undefined;
         var t1:* = undefined;
         var t2:* = undefined;
         var newteam:* = undefined;
         var oldteam:* = undefined;
         var ret:* = undefined;
         var q:* = undefined;
         var s:* = undefined;
         var wc:* = undefined;
         var nam:* = undefined;
         var lo:* = undefined;
         var numcl:* = undefined;
         var ok:* = undefined;
         var o1:* = undefined;
         var sid:* = undefined;
         var so:* = undefined;
         var to:* = undefined;
         var tn:* = undefined;
         var cb:* = undefined;
         var ttl:* = undefined;
         var am:* = undefined;
         var li:* = undefined;
         var t:* = undefined;
         var message:String = null;
         var $x:String = param1;
         var $k:Array = $x.split(this.$e);
         var $l:Number = $k.length - 1;
         $n = 0;
         while($n < $l)
         {
            p = $k[$n].split(this.$d);
            if(this.logging)
            {
               this.logger.log(p,"SERVER");
            }
            $v = parseInt(p[0]);
            this.currentV = $v;
            if($v == 6)
            {
               this.$onUpdate(this.member,p,this.event.onUpdateMember);
            }
            else if($v == 26)
            {
               this.$onUpdate(this.mob,p,this.event.onUpdateMob);
            }
            else if($v == 54)
            {
               this.$onIndexUpdate(this.member,p,this.event.onIndexUpdateMember);
            }
            else if($v == 60)
            {
               this.$onIndexUpdate(this.mob,p,this.event.onIndexUpdateMob);
            }
            else if($v == 40)
            {
               this.$onUpdate(this.team,p,this.event.onUpdateTeam);
            }
            else if($v == 38)
            {
               this.$onUpdate(this.room,p,this.event.onUpdateRoom);
            }
            else if($v == 17)
            {
               d = p.slice(1,p.length);
               len = d.length;
               m = this.session.data;
               c = this.session.__cb;
               i = 0;
               while(i < len)
               {
                  index = d[i];
                  m[index] = d[i + 1];
                  if(c)
                  {
                     c2 = c["_" + index];
                     if(c2)
                     {
                        c2.cb.apply(c2.sc,[d[i + 1]]);
                     }
                  }
                  i = i + 2;
               }
               this.event.onIndexUpdateSession.$call(d);
            }
            else if($v == 75)
            {
               this.$onIndexUpdate(this.room,p,this.event.onIndexUpdateRoom);
            }
            else if($v == 74)
            {
               this.$onIndexUpdate(this.team,p,this.event.onIndexUpdateTeam);
            }
            else if($v == 25)
            {
               id = p[1];
               room = parseInt(p[2]);
               mem = parseInt(p[3]);
               data = p.slice(4,p.length);
               if(this.mob.list["_" + id] == null)
               {
                  o = this.mob.list["_" + id] = {
                     "id":id,
                     "room":room,
                     "member":mem
                  };
                  this.room.list["_" + room].mobs.push(id);
               }
               this.mob.list["_" + id].data = data;
               if(this.$nocb)
               {
                  this.event.onNewMob.$call(id,mem,data);
               }
            }
            else if($v == 27)
            {
               if(p != null)
               {
                  id = p[1];
                  if(this.mob != null)
                  {
                     if(this.mob.list != null)
                     {
                        if(this.mob.list["_" + id] != null)
                        {
                           if(this.mob.list["_" + id].room != null)
                           {
                              r = this.mob.list["_" + id].room;
                              this.$removeValue(this.room.list["_" + r].mobs,id);
                              delete this.mob.list["_" + id];
                              this.event.onRemoveMob.$call(id);
                           }
                        }
                     }
                  }
               }
            }
            else if($v == 21)
            {
               id = int(p[1]);
               if(id != this.me.id)
               {
                  n = int(p[2]);
                  o = int(p[3]);
                  d = p.slice(4,p.length);
                  r = this.room.list["_" + o];
                  if(r.mobs && r.mobs.length != undefined)
                  {
                     k = 0;
                     while(k < r.mobs.length)
                     {
                        delete this.mob.list["_" + r.mobs[k]];
                        k++;
                     }
                  }
                  r.mobs = [];
                  this.$removeValue(r.members,id);
                  if(this.room != null)
                  {
                     if(this.room.list != null)
                     {
                        if(this.room.list["_" + n] != null)
                        {
                           if(this.room.list["_" + n].members != null)
                           {
                              this.room.list["_" + n].members.push(id);
                              this.member.list["_" + id].room = n;
                              this.$reb(d,this.member.list["_" + id].data);
                              this.event.onMemberChangesRoom.$call(id,n,o,d);
                              this.echo("removeMember");
                              if(this.challenge != null)
                              {
                                 if(this.challenge.id && o == this.challenge.room)
                                 {
                                    this.$removeValue(this.challenge.$challengers,id);
                                    this.echo("remove from challengerlist:" + this.challenge.$challengers + " " + id);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            else if($v == 53)
            {
               d = p.slice(5,p.length);
               this.event.onUserMessage.$call(p[1],int(p[2]),int(p[3]),int(p[4]),d);
            }
            else if($v == 5)
            {
               xid = int(p[1]);
               xname = p[2];
               xteam = int(p[3]);
               xraum = int(p[4]);
               px = p[5];
               xdata = p.slice(6,p.length);
               this.room.list["_" + xraum].members.push(xid);
               this.session.members.push(xid);
               this.$memberIDs["x" + xid] = xname;
               this.$memberNames["x" + xname] = xid;
               this.member.list["_" + xid] = {
                  "id":xid,
                  "name":xname,
                  "room":xraum,
                  "team":xteam,
                  "data":xdata,
                  "platform":px,
                  "challenger":0,
                  "spectator":0
               };
               this.event.onNewMember.$call(xid,xteam,xraum,px,xdata);
            }
            else if($v == 16)
            {
               d = p.slice(1,p.length);
               m = this.session.data;
               c = this.session.__cb;
               l = d.length;
               i = 0;
               while(i < l)
               {
                  m[i] = d[i];
                  if(c)
                  {
                     c2 = c["_" + i];
                     if(c2)
                     {
                        c2.cb.apply(c2.sc,[d[i]]);
                     }
                  }
                  i++;
               }
               if(this.$nocb)
               {
                  this.event.onUpdateSession.$call(id,d);
               }
            }
            else if($v == 10)
            {
               this.event.onChatMessage.$call(int(p[1]),int(p[2]),int(p[3]),p[4]);
            }
            else if($v == 11)
            {
               xid = int(p[1]);
               xteam = int(p[2]);
               room = int(p[3]);
               if(this.member != null && this.challenge != null)
               {
                  xname = this.member.getName(xid);
                  if(this.challenge.id)
                  {
                     this.$removeValue(this.challenge.$challengers,xid);
                  }
                  this.session.removeMember(xid);
                  if(this.room)
                  {
                     if(this.room.list["_" + room])
                     {
                        this.$removeValue(this.room.list["_" + room].members,xid);
                     }
                     if(this.team.list["_" + xteam])
                     {
                        this.$removeValue(this.team.list["_" + xteam].members,xid);
                     }
                  }
                  if(this.session)
                  {
                     if(this.session.members)
                     {
                        this.$removeValue(this.session.members,xid);
                     }
                  }
                  this.event.onRemoveMember.$call(xid,xteam,room);
                  delete this.$memberIDs["x" + xid];
                  delete this.$memberNames["x" + xname];
               }
            }
            else if($v == 86)
            {
               this.event.onObjectReceived.$call(int(p[1]),int(p[2]),this.serial.unserialize(p[3]));
            }
            else if($v == 62)
            {
               this.ping = this.getTimer() - this.$netTimer;
            }
            else if($v == 49)
            {
               id = int(p[1]);
               v = int(p[2]);
               this.member.list["_" + id].spectator = v;
               this.event.onBeSpectator.$call(id,v);
            }
            else if($v == 32)
            {
               out = "";
               w = 1;
               cbid = parseInt(p[1]);
               info = parseInt(p[2]);
               obj = this.$cblist[cbid];
               action = obj.action;
               if(!info)
               {
                  if(action == 2)
                  {
                     if(this.logging)
                     {
                        out = "\'changeRoom\' status:" + this.logger.errors[info];
                     }
                     this.$reb(obj.data,this.me.data);
                     this.$removeValue(this.room.list["_" + this.me.room].members,this.me.id);
                     if(this.$toGo)
                     {
                        obj.toGo = this.$toGo;
                     }
                     this.me.room = obj.toGo;
                     this.room.list["_" + this.me.room].members.push(this.me.id);
                     this.mob.$iid = 0;
                     this.$nocb = true;
                     this.me.$roomToGo = null;
                     if(this.challenge.id && this.challenge.room != obj.toGo)
                     {
                        this.challenge.id = 0;
                        this.challenge.$challengers = [];
                        this.me.moderator = 0;
                     }
                     this.$toGo = 0;
                  }
                  else if(action == 3)
                  {
                     if(this.logging)
                     {
                        out = "\'createRoom\' status:" + this.logger.errors[info];
                     }
                  }
                  else if(action == 4)
                  {
                     if(this.logging)
                     {
                        out = "\'joinSession\' status:" + this.logger.errors[info];
                     }
                     if(this.$toGo)
                     {
                        obj.roomToGo = this.$toGo;
                     }
                     this.me.session = obj.sessionToGo;
                     this.me.team = obj.teamToGo;
                     this.me.room = obj.roomToGo;
                     this.me.data = obj.data;
                     if(this.$tempTeamList != null)
                     {
                        if(this.me != null)
                        {
                           if(this.me.session)
                           {
                              if(this.$tempTeamList["_" + this.me.session] != null)
                              {
                                 try
                                 {
                                    o = this.$tempTeamList["_" + this.me.session].teamList;
                                 }
                                 catch(e:Error)
                                 {
                                 }
                              }
                           }
                        }
                     }
                     l = 0;
                     if(o != null)
                     {
                        try
                        {
                           l = o.length;
                        }
                        catch(e:Error)
                        {
                           l = 0;
                        }
                     }
                     else
                     {
                        l = 0;
                     }
                     i = 0;
                     while(i < l)
                     {
                        this.session.teams.push(o[i].id);
                        objx = this.team.list["_" + o[i].id] = {};
                        objx.limit = o[i].limit;
                        objx.name = o[i].name;
                        objx.id = o[i].id;
                        objx.members = new Array();
                        i++;
                     }
                     try
                     {
                        if(this.room != null)
                        {
                           if(this.room.list != null)
                           {
                              if(this.me.room)
                              {
                                 if(this.room.list["_" + this.me.room] != null)
                                 {
                                    if(this.room.list["_" + this.me.room].members != null)
                                    {
                                       this.room.list["_" + this.me.room].members.push(this.me.id);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     catch(e:Error)
                     {
                     }
                     this.session.members.push(this.me.id);
                     this.$memberIDs["x" + this.me.id] = this.me.name;
                     this.$memberNames["x" + this.me.name] = this.me.id;
                     this.member.list["_" + this.me.id] = {
                        "challenger":0,
                        "id":this.me.id,
                        "name":this.me.name,
                        "room":this.me.room,
                        "team":this.me.team,
                        "data":this.me.data,
                        "platform":"FLASH"
                     };
                     o = this.session.getMemberIDs();
                     try
                     {
                        l = o.length;
                     }
                     catch(e:Error)
                     {
                        l = 0;
                     }
                     try
                     {
                        this.session.id = o.id;
                        this.session.name = o.name;
                     }
                     catch(e:Error)
                     {
                        session.id = 0;
                        session.name = "none";
                     }
                     this.$nocb = true;
                  }
                  else if(action == 5)
                  {
                     if(this.logging)
                     {
                        out = "\'changeTeam\' status:" + this.logger.errors[info];
                     }
                     this.$removeValue(this.team.list["_" + this.me.team].members,this.me.id);
                     this.me.team = obj.toGo;
                     this.team["_" + this.me.team].members.push(this.me.id);
                  }
                  else if(action == 6)
                  {
                     obj.obj.data[obj.index] = obj.value;
                  }
                  else if(action == 12)
                  {
                     if(this.logging)
                     {
                        out = "\'beSpectator\' status:" + this.logger.errors[info];
                     }
                     this.me.spectator = obj.value;
                  }
                  else if(action == 8)
                  {
                     if(this.logging)
                     {
                        out = "\'changeName\' status:" + this.logger.errors[info];
                     }
                     n = obj.newName;
                     delete this.$memberNames["x" + this.me.name];
                     this.$memberNames["x" + n] = this.me.id;
                     this.me.name = this.member.list["_" + this.me.id].name = this.$memberIDs["x" + this.me.id] = n;
                  }
               }
               else
               {
                  if(info == 10)
                  {
                     if(this.logging)
                     {
                        this.logger.log("Server is full!","STATUS");
                     }
                     this.$cb.apply(this.$sc,[3]);
                     this.$cb = this.$sc = null;
                     this.disconnectFromServer();
                  }
                  if(action == 7)
                  {
                     if(this.logging)
                     {
                        out = "\'loadSessionList\' status:" + this.logger.errors[info];
                     }
                     info = 2;
                  }
                  else if(action == 3)
                  {
                     if(info == 11)
                     {
                        if(this.logging)
                        {
                           out = "\'createRoom\' status:" + this.logger.errors[info];
                        }
                        info = 2;
                     }
                  }
                  else if(action == 4)
                  {
                     if(this.logging)
                     {
                        out = "\'joinSession\' status:" + this.logger.errors[info];
                     }
                     if(info == 3)
                     {
                        info = 1;
                     }
                     else if(info == 4)
                     {
                        info = 2;
                     }
                     else if(info == 2)
                     {
                        info = 3;
                     }
                     else if(info == 5)
                     {
                        info = 4;
                     }
                     else if(info == 14)
                     {
                        info = 5;
                     }
                  }
                  else if(action == 2)
                  {
                     if(this.logging)
                     {
                        out = "\'changeRoom\' status:" + this.logger.errors[info];
                     }
                     if(info == 2)
                     {
                        info = 1;
                     }
                     else if(info == 6)
                     {
                        info = 2;
                     }
                     else if(info == 7)
                     {
                        info = 3;
                     }
                     else if(info == 13)
                     {
                        w = 0;
                        info = 4;
                     }
                     else if(info == 14)
                     {
                        info = 5;
                     }
                  }
                  else if(action == 6)
                  {
                     if(this.logging)
                     {
                        out = "\'indexUpdateConditional\' status:" + this.logger.errors[info];
                     }
                     info = 1;
                  }
                  else if(action == 10)
                  {
                     if(info == 12)
                     {
                        if(this.logging)
                        {
                           out = "\'requestChallenge\' status:" + this.logger.errors[info];
                        }
                        this.challenge.id = int(p[3]);
                        this.me.moderator = 1;
                        info = 0;
                        this.challenge.$template = obj.template;
                        this.challenge.$timeout = obj.timeout;
                        this.challenge.$minMembers = obj.minMembers;
                     }
                     else
                     {
                        if(this.logging)
                        {
                           out = "\'requestChallenge\' status:" + this.logger.errors[info];
                        }
                        this.challenge.id = 0;
                        info = 1;
                     }
                  }
                  else if(action == 12)
                  {
                     if(this.logging)
                     {
                        out = "\'beSpectator\' status:" + this.logger.errors[info];
                     }
                     if(info == 8)
                     {
                        info = 1;
                     }
                  }
                  else if(action == 8)
                  {
                     if(this.logging)
                     {
                        out = "\'changeName\' status:" + this.logger.errors[info];
                     }
                     if(info == 5)
                     {
                        info = 1;
                     }
                     else if(info == 3)
                     {
                        info = 2;
                     }
                  }
               }
               if(this.logging)
               {
                  this.logger.log(out,"STATUS");
               }
               obj.event.apply(obj.scope,p.length == 4?[info,parseInt(p[3])]:[info]);
               if(w)
               {
                  delete this.$cblist[cbid];
               }
            }
            else if($v == 19)
            {
               cbid = parseInt(p[1]);
               obj = this.$cblist[cbid];
               if(obj)
               {
                  obj.event.apply(obj.scope,p.slice(3,p.length));
               }
               delete this.$cblist[cbid];
            }
            else if($v == 30)
            {
               roomID = int(p[1]);
               pw = parseInt(p[2]);
               limit = 0;
               xname = p[3];
               t1 = p[4].split(this.chr(4));
               l = t1.length;
               t2 = [];
               d = [];
               d = p.slice(5,p.length);
               k = 0;
               while(k < l)
               {
                  limit = t2[t1[k]] = int(t1[k + 1]);
                  k = k + 2;
               }
               this.session.rooms.push(roomID);
               this.room.list["_" + roomID] = {
                  "data":d,
                  "mobs":[],
                  "members":[],
                  "waitingQueue":[],
                  "locked":0,
                  "id":roomID,
                  "limit":limit,
                  "name":xname,
                  "teamLimits":t2,
                  "password":pw
               };
               if(d.length)
               {
                  this.event.onNewRoom.$call(roomID,xname,limit,d);
               }
               else
               {
                  this.event.onNewRoom.$call(roomID,xname,limit);
               }
            }
            else if($v == 23)
            {
               room = int(p[1]);
               this.$removeValue(this.session.rooms,room);
               delete this.room.list["_" + room];
               this.event.onRemoveRoom.$call(room);
            }
            else if($v == 34)
            {
               this.room.list["_" + this.me.$roomToGo].waitingQueue = [];
               if(p[1] != null)
               {
                  d = p.slice(1,p.length);
                  this.room.list["_" + this.me.$roomToGo].waitingQueue = d;
                  this.event.onUpdateWaitingQueue.$call(this.me.$roomToGo,d);
               }
            }
            else if($v == 67)
            {
               this.challenge.id = int(p[1]);
               p.push(this.me.id);
               m = p.slice(3,p.length);
               this.event.onChallengeRequest.$call(int(p[2]),m);
            }
            else if($v == 69)
            {
               this.challenge.$challengers = p.slice(3,p.length);
               this.challenge.room = int(p[2]);
               this.event.onStartChallenge.$call(int(p[2]));
            }
            else if($v == 73)
            {
               this.event.onPlay.$call(int(p[1]));
            }
            else if($v == 68)
            {
               if(this.challenge.id == p[2])
               {
                  this.event.onAnswerChallengeRequest.$call(int(p[1]),int(p[3]));
               }
            }
            else if($v == 72)
            {
               if(this.challenge.id == int(p[1]))
               {
                  this.challenge.id = 0;
                  this.challenge.$challengers = [];
                  this.me.moderator = 0;
                  this.event.onCancelChallenge.$call(int(p[2]));
               }
            }
            else if($v == 18)
            {
               if(this.me.id == int(p[1]))
               {
                  this.me.moderator = 1;
               }
               this.event.onModeratorChanged.$call(int(p[1]));
            }
            else if($v == 64)
            {
               if(int(p[2]))
               {
                  this.event.onIncludeMember.$call(int(p[1]));
               }
               else
               {
                  this.event.onExcludeMember.$call(int(p[1]));
               }
            }
            else if($v == 24)
            {
               this.$toGo = int(p[1]);
            }
            else if($v == 36)
            {
               xid = p[1];
               xname = p[2];
               delete this.$memberNames["x" + xname];
               this.$memberNames["x" + xname] = xid;
               this.member.list["_" + xid].name = this.$memberIDs["x" + xid] = xname;
               this.event.onMemberNameChanged.$call(int(xid),xname);
            }
            else if($v == 39)
            {
               this.room.list["_" + p[1]].locked = int(p[2]);
               this.event.onRoomLocked.$call(int(p[1]),int(p[2]));
            }
            else if($v == 8)
            {
               this.me.master = 1;
               this.event.onMaster.$call();
            }
            else if($v == 9)
            {
               this.me.master = 0;
               this.event.onSlave.$call();
            }
            else if($v == 43)
            {
               id = parseInt(p[1]);
               if(id != this.me.id)
               {
                  newteam = int(p[3]);
                  oldteam = int(p[2]);
                  this.$removeValue(this.team.list["_" + oldteam].members,id);
                  this.team.list["_" + newteam].members.push(id);
                  this.member.list["_" + id].team = newteam;
                  this.event.onMemberChangesTeam.$call(id,oldteam,newteam);
               }
            }
            else if($v == 52)
            {
               obj = this.$cblist[p[1]];
               if(p[2] == -1)
               {
                  obj.event.apply(obj.scope,[0]);
               }
               else
               {
                  ret = [];
                  l = p.length;
                  i = 2;
                  while(i < l)
                  {
                     if(p[i] != -1)
                     {
                        ret.push({
                           "id":p[i],
                           "session":p[i + 1],
                           "team":p[i + 2],
                           "room":p[i + 3],
                           "spectator":0
                        });
                     }
                     i = i + 4;
                  }
                  obj.event.apply(obj.scope,[ret]);
               }
            }
            else if($v == 56)
            {
               this.event.onSystemMessage.$call(p[1]);
            }
            else if($v == 1)
            {
               if(this.connectionType != "HTTP")
               {
                  this.me.id = parseInt(p[1]);
               }
            }
            else if($v == 2)
            {
               this.$cblist[_loc3_] = {
                  "event":this.$cb,
                  "action":7,
                  "scope":this.$sc
               };
               this.$sts = this.$sts + ("29" + this.$d + this.$cbid + this.$d + this.$game + this.$e);
               this.$sts = this.$sts + ("3" + this.$d + (this.getTimer() - this.$netTimer) + this.$e);
               if(this.logging)
               {
                  this.$sts = this.$sts + ("87" + this.$d + "1" + this.$e);
               }
            }
            else if($v == 35)
            {
               limit = 0;
               s = p.length;
               n = 1;
               t2 = [];
               ok = 0;
               while(n < s)
               {
                  id = parseInt(p[n++]);
                  pw = parseInt(p[n++]) == 1?true:false;
                  numcl = parseInt(p[n++]);
                  wc = parseInt(p[n++]);
                  nam = p[n++];
                  lo = parseInt(p[n++]);
                  t1 = p[n++].split(this.chr(4));
                  l = t1.length;
                  t2 = [];
                  k = 0;
                  while(k < l)
                  {
                     limit = limit + (t2[t1[k]] = parseInt(t1[k + 1]));
                     k = k + 2;
                  }
                  this.session.rooms.push(id);
                  q = this.room.list["_" + id] = {
                     "data":[],
                     "mobs":[],
                     "members":[],
                     "waitingQueue":[],
                     "locked":lo,
                     "id":id,
                     "limit":limit,
                     "name":nam,
                     "teamLimits":t2,
                     "password":pw
                  };
                  while(p[n].charCodeAt(0) != 1 && n < s)
                  {
                     q.data.push(p[n]);
                     n++;
                  }
                  n++;
                  limit = 0;
               }
            }
            else if($v == 7)
            {
               if(!this.$smode)
               {
                  this.event.onDisconnect.$call();
               }
               this.$init();
               this.event.onServerRestart.$call();
            }
            else if($v == 65)
            {
               id = int(p[1]);
               if(id == this.me.id && !this.$smode)
               {
                  this.$init();
               }
               this.event.onMemberKicked.$call(id);
            }
            else if($v == 77)
            {
               this.event.onBadwordDetected.$call();
            }
            else if($v == 57)
            {
               cbid = parseInt(p[1]);
               obj = this.$cblist[cbid];
               obj.event.apply(obj.scope,[parseInt(p[2])]);
               delete this.$cblist[cbid];
            }
            else if($v == 61)
            {
               if(this.connectionType == "SOCKET")
               {
                  this.timer.stop;
                  this.timer.delay = parseInt(p[1]);
                  this.timer.start();
               }
            }
            else if($v == 44)
            {
               o1 = true;
               n = 2;
               s = p.length;
               cb = this.$cblist[p[1]];
               this.session.sessionList = [];
               while(n < s)
               {
                  sid = parseInt(p[n++]);
                  so = {};
                  am = 0;
                  li = 0;
                  so.teamList = [];
                  so.name = p[n++];
                  so.version = p[n++];
                  so.id = sid;
                  this.session.sessionList.push(so);
                  ttl = this.$tempTeamList["_" + sid] = {};
                  ttl.teamList = [];
                  do
                  {
                     to = {};
                     tn = {};
                     id = tn.id = to.id = parseInt(p[n++]);
                     this.$ttid[id] = [];
                     to.name = tn.name = p[n++];
                     am = am + (to.activeMembers = parseInt(p[n++]));
                     li = li + (tn.limit = to.limit = parseInt(p[n++]));
                     so.teamList.push(to);
                     ttl.teamList.push(tn);
                  }
                  while(p[n].charCodeAt(0) != 1);
                  
                  so.activeMembers = am;
                  so.limit = li;
                  am = 0;
                  li = 0;
                  so.data = [];
                  n++;
                  do
                  {
                     so.data.push(p[n++]);
                  }
                  while(p[n].charCodeAt(0) != 1);
                  
                  n++;
               }
               try
               {
                  cb.event.apply(cb.scope,[0]);
                  delete this.$cblist[p[1]];
               }
               catch(e:Error)
               {
                  this.errorMessage = e.message;
                  this.dispatchEvent(new flash.events.Event(SUSHI_ERROR,true,false));
                  this.$socket.close();
               }
            }
            else if($v == 33)
            {
               if(p[1] != null)
               {
                  l = p.length - 6;
                  i = 0;
                  while(i <= l)
                  {
                     id = parseInt(p[i + 4]);
                     t = parseInt(p[i + 1]);
                     r = parseInt(p[i + 2]);
                     n = p[i + 5];
                     s = parseInt(p[i + 3]);
                     q = p[i + 6];
                     this.session.members.push(id);
                     this.room.list["_" + r].members.push(id);
                     if(!this.team.list["_" + t])
                     {
                        this.team.list["_" + t] = new Object();
                     }
                     if(!this.team.list["_" + t].members)
                     {
                        this.team.list["_" + t].members = new Array();
                     }
                     this.team.list["_" + t].members.push(id);
                     this.$memberIDs["x" + id] = n;
                     this.$memberNames["x" + n] = id;
                     this.member.list["_" + id] = {
                        "challenger":0,
                        "id":id,
                        "name":n,
                        "room":r,
                        "data":[],
                        "team":t,
                        "platform":q,
                        "spectator":s
                     };
                     i = i + 6;
                  }
                  if(room && room.$cb)
                  {
                     room.$cb.apply(room.$sc,[0]);
                     room.$cb = room.$sc = null;
                  }
               }
            }
            else
            {
               message = $x.split(this.$e)[0];
               this.dispatchEvent(new CustomEvent(CustomEvent.CUSTOM_MESSAGE,message));
            }
            $n++;
         }
      }
      
      private function $speedCheck() : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc1_:Number = this.getTimer();
         var _loc2_:String = "0,00,00000000000000,00,0000,00,0,0,0#0,000,0,000000000,0,000#0,0,0000,0,000#0,0000,00000000000,0,0#0,00000000,00#000,00#0,0,000#0,00,00000000000,00#0,00,0000,000#0,0,0000#00,0000,0#";
         _loc3_ = 0;
         while(_loc3_ <= 400)
         {
            _loc5_ = _loc2_.split("#");
            _loc7_ = _loc5_.length;
            _loc6_ = 0;
            while(_loc6_ < _loc7_)
            {
               _loc4_ = _loc5_[_loc6_].split(",");
               _loc6_++;
            }
            _loc3_++;
         }
         this.$clientSpeed = this.getTimer() - _loc1_;
      }
      
      public function $reb(param1:Array, param2:Array) : void
      {
         var _loc3_:int = param1.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            param2[_loc4_] = param1[_loc4_];
            _loc4_++;
         }
      }
      
      public function $update(param1:Object, param2:String, param3:String, param4:Array) : void
      {
         var _loc5_:* = param4.join(this.$d);
         if(param1.list["_" + param3] != undefined)
         {
            this.$reb(param4,param1.list["_" + param3].data);
         }
         this.$sts = this.$sts + (param2 + this.$d + param3 + this.$d + _loc5_ + this.$e);
      }
      
      public function $silentUpdate(param1:Object, param2:String, param3:Number, param4:Array) : void
      {
         var _loc5_:* = param4.join(this.$d);
         var _loc6_:* = param1.list["_" + param3];
         this.$reb(param4,_loc6_.data);
         this.$sts = this.$sts + (param2 + this.$d + param3 + this.$d + _loc5_ + this.$e);
      }
      
      public function $indexUpdate(param1:Object, param2:String, param3:Number, param4:Array) : void
      {
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc5_:* = param4.join(this.$d);
         var _loc6_:int = param4.length;
         if(param1.list["_" + param3] != null)
         {
            _loc7_ = param1.list["_" + param3].data;
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc7_[param4[_loc8_]] = param4[_loc8_ + 1];
               _loc8_ = _loc8_ + 2;
            }
         }
         this.$sts = this.$sts + (param2 + this.$d + param3 + this.$d + _loc5_ + this.$e);
      }
      
      public function $indexUpdateEval(param1:Object, param2:String, param3:Number, param4:Array) : void
      {
         this.$sts = this.$sts + (param2 + this.$d + param3 + this.$d + param4.join(this.$d) + this.$e);
      }
      
      public function $indexUpdateConditional(param1:Object, param2:String, param3:Number, param4:Array, param5:Function, param6:Object) : void
      {
         var _loc7_:* = ++this.$cbid;
         this.$cblist[_loc7_] = {
            "event":param5,
            "action":6,
            "obj":param1.list["_" + param3],
            "index":param4[0],
            "value":param4[1],
            "scope":param6
         };
         this.$sts = this.$sts + (param2 + this.$d + param3 + this.$d + param4.join(this.$d) + this.$d + this.$cbid + this.$e);
      }
      
      public function $onUpdate(param1:Object, param2:Array, param3:Object) : void
      {
         var _loc11_:* = undefined;
         var _loc4_:* = param2[1];
         var _loc5_:* = param2.slice(2,param2.length);
         var _loc6_:* = param1.list["_" + _loc4_];
         if(!_loc6_)
         {
            _loc6_ = new Object();
         }
         if(!_loc6_.data)
         {
            _loc6_.data = new Array();
         }
         var _loc7_:* = _loc6_.data;
         var _loc8_:* = _loc5_.length;
         var _loc9_:* = _loc6_.__cb;
         var _loc10_:int = 0;
         while(_loc10_ < _loc8_)
         {
            _loc7_[_loc10_] = _loc5_[_loc10_];
            if(_loc9_)
            {
               _loc11_ = _loc9_["_" + _loc10_];
               if(_loc11_)
               {
                  if(param1 != this.mob)
                  {
                     _loc11_.cb.apply(_loc11_.sc,[int(_loc4_),_loc5_[_loc10_]]);
                  }
                  else
                  {
                     _loc11_.cb.apply(_loc11_.sc,[_loc4_,_loc5_[_loc10_]]);
                  }
               }
            }
            _loc10_++;
         }
         if(this.$nocb)
         {
            param3.$call(_loc4_,_loc5_);
         }
      }
      
      public function $onIndexUpdate(param1:Object, param2:Array, param3:Object) : void
      {
         var _loc11_:* = undefined;
         var _loc12_:* = undefined;
         var _loc4_:* = param2[1];
         var _loc5_:* = param2.slice(2,param2.length);
         var _loc6_:int = _loc5_.length;
         var _loc7_:* = param1.list["_" + _loc4_];
         var _loc8_:* = _loc7_.data;
         var _loc9_:* = _loc7_.__cb;
         var _loc10_:int = 0;
         while(_loc10_ < _loc6_)
         {
            _loc11_ = _loc5_[_loc10_];
            _loc8_[_loc11_] = _loc5_[_loc10_ + 1];
            if(_loc9_)
            {
               _loc12_ = _loc9_["_" + _loc11_];
               if(_loc12_)
               {
                  if(param1 != this.mob)
                  {
                     _loc12_.cb.apply(_loc12_.sc,[int(_loc4_),_loc5_[_loc10_ + 1]]);
                  }
                  else
                  {
                     _loc12_.cb.apply(_loc12_.sc,[_loc4_,_loc5_[_loc10_ + 1]]);
                  }
               }
            }
            _loc10_ = _loc10_ + 2;
         }
         param3.$call(_loc4_,_loc5_);
      }
      
      public function $removeValue(... rest) : Boolean
      {
         var _loc2_:* = rest[0];
         var _loc3_:* = rest[1];
         var _loc4_:* = _loc2_.length;
         _loc4_ = _loc2_.length;
         while(_loc4_ >= 0)
         {
            if(_loc2_[_loc4_] == _loc3_)
            {
               _loc2_.splice(_loc4_,1);
               return true;
            }
            _loc4_--;
         }
         return false;
      }
      
      public function $ping() : void
      {
         this.$netTimer = this.getTimer();
         this.$sts = this.$sts + ("62" + this.$d + this.$e);
      }
      
      public function $getFPS() : void
      {
         this.fps = -1000 / (this.$$fps - (this.$$fps = this.getTimer()));
         this.speedFac = this.$fps / this.fps;
      }
      
      public function $dump(param1:Object) : void
      {
         var _loc2_:* = undefined;
         this.echo("**************************************************");
         this.echo("Dump:");
         for(_loc2_ in param1)
         {
            this.echo(_loc2_ + " => " + param1[_loc2_]);
         }
         this.echo("**************************************************");
      }
      
      private function chr(param1:int) : String
      {
         return String.fromCharCode(param1);
      }
      
      private function getTimer() : int
      {
         return new Date().getTime();
      }
      
      function errorHandler(param1:UncaughtErrorEvent) : void
      {
         param1.preventDefault();
      }
   }
}
