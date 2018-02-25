class com.rawfishsoftware.sushi.SushiAPI
{
   var fps = 0;
   var speedFac = 1;
   var ping = -1;
   var LIMIT = 0;
   var logging = false;
   var $sts = "";
   var $$fps = 0;
   var $pon = false;
   var $smode = -1;
   var $netTimer = -1;
   var $pint = null;
   var $majorVersion = 2;
   var $minorVersion = 2;
   var $subVersion = 4;
   function SushiAPI()
   {
      this.$d = "\x02";
      this.$e = "\x03";
      this.session = new com.rawfishsoftware.sushi.Session(this);
      this.me = new com.rawfishsoftware.sushi.Me(this);
      this.member = new com.rawfishsoftware.sushi.Member(this);
      this.mob = new com.rawfishsoftware.sushi.Mob(this);
      this.room = new com.rawfishsoftware.sushi.Room(this);
      this.team = new com.rawfishsoftware.sushi.Team(this);
      this.challenge = new com.rawfishsoftware.sushi.Challenge(this);
      this.event = new com.rawfishsoftware.sushi.Event(this);
      this.logger = new com.rawfishsoftware.sushi.Logger(this);
      this.serial = new com.rawfishsoftware.sushi.Serializer();
      this.$speedCheck();
      this.$init();
      this.session.sessionList = [];
      this.connectionType = "";
      this.me.$init();
      this.$fps = 0;
   }
   function connectToServer()
   {
      if(arguments[0].toUpperCase() == "SOCKET")
      {
         this.connectToServerSocket(arguments[1],arguments[2],arguments[3],arguments[4],arguments[5]);
      }
      else if(arguments[0].toUpperCase() == "HTTP")
      {
         this.connectToServerHTTP(arguments[1],arguments[2],arguments[3],arguments[4]);
      }
   }
   function connectToServerSocket(ip, port, game, callback, scope)
   {
      this.$smode = 1;
      this.ip = ip;
      this.port = port;
      this.$game = game;
      this.$cb = callback;
      this.$sc = scope;
      this.$socket = new com.rawfishsoftware.sushi.SushiSocket(ip,port,this);
   }
   function connectToServerHTTP(ip, game, callback, scope)
   {
      this.$smode = 0;
      this.ip = ip;
      this.$game = game;
      this.$cb = callback;
      this.$sc = scope;
      this.$http = new com.rawfishsoftware.sushi.SushiHTTP(ip,this);
   }
   function disconnectFromServer()
   {
      if(this.$smode)
      {
         this.$socket.close();
         _root.$$sushimc.swapDepths(0);
         _root.$$sushimc.removeMovieClip();
         this.$init();
      }
      else
      {
         var _loc3_ = new LoadVars();
         _loc3_.i = this.me.id;
         _loc3_.m = "11" + this.$d + this.me.id + this.$e;
         _root.$$sushimc.swapDepths(0);
         _root.$$sushimc.removeMovieClip();
         this.$init();
         _loc3_.onLoad = function(s)
         {
         };
         _loc3_.sendAndLoad(this.$http.ip,_loc3_,"POST");
      }
      this.session.sessionList = [];
      this.connectionType = "";
      this.me.$init();
   }
   function sendUserMessage(messageID, routing, targetID, dataArray)
   {
      this.$sts = this.$sts + ("53" + this.$d + messageID + this.$d + this.me.id + this.$d + routing + this.$d + targetID + this.$d + dataArray.join(this.$d) + this.$e);
   }
   function getFPS(fps)
   {
      this.$fps = fps;
   }
   function loadSessionList(gameName, callback, scope)
   {
      this.$cblist[this.$cbid = this.$cbid + 1] = {event:callback,action:7,scope:scope};
      this.$sts = this.$sts + ("29" + this.$d + this.$cbid + this.$d + gameName + this.$e);
   }
   function getSessionList()
   {
      return this.session.sessionList;
   }
   function setPollingInterval(frames)
   {
      this.$pollFreq = frames;
   }
   function getPollingInterval()
   {
      return this.$pollFreq;
   }
   function searchMember(memberName, callback, scope)
   {
      this.$cblist[this.$cbid = this.$cbid + 1] = {event:callback,scope:scope};
      this.$sts = this.$sts + ("51" + this.$d + this.$cbid + this.$d + memberName + this.$e);
   }
   function isBadWord(word, callback, scope)
   {
      this.$cblist[this.$cbid = this.$cbid + 1] = {event:callback,scope:scope};
      this.$sts = this.$sts + ("57" + this.$d + this.$cbid + this.$d + word + this.$e);
   }
   function callPlugin(pluginID, parameters, callback, scope)
   {
      this.$cblist[this.$cbid = this.$cbid + 1] = {event:callback,scope:scope};
      this.$sts = this.$sts + ("19" + this.$d + this.$cbid + this.$d + pluginID + this.$d + parameters.join(this.$d) + this.$e);
   }
   function receiveMyUpdates(status)
   {
      this.$sts = this.$sts + ("4" + this.$d + int(status) + this.$e);
   }
   function encodeObject(objectToEncode)
   {
      return this.serial.serialize(objectToEncode);
   }
   function decodeObject(stringToDecode)
   {
      return this.serial.unserialize(stringToDecode);
   }
   function sendObject(routing, targetID, objectToSend)
   {
      this.$sts = this.$sts + ("86" + this.$d + routing + this.$d + targetID + this.$d + this.serial.serialize(objectToSend) + this.$e);
   }
   function getVersion()
   {
      return this.$majorVersion + "." + this.$minorVersion + "." + this.$subVersion;
   }
   function echo()
   {
      var _loc2_ = new LocalConnection();
      _loc2_.send("_SUSHIOutput","echo",arguments);
   }
   function getMemberList(roomID)
   {
      if(roomID == undefined)
      {
         roomID = "";
      }
      this.$sts = this.$sts + ("14" + this.$d + roomID + this.$e);
   }
   function enableLogging(value)
   {
      this.logging = value;
      if(this.connectionType != "")
      {
         this.$sts = this.$sts + ("87" + this.$d + Number(value) + this.$e);
      }
   }
   function $init()
   {
      this.$cb = null;
      this.$sc = null;
      this.$memberIDs = {x0:"Administrator"};
      this.$memberNames = {xAdministrator:0};
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
   function $p($x)
   {
      var _loc71_ = $x.split(this.$e);
      var _loc72_ = _loc71_.length - 1;
      var _loc38_ = undefined;
      var _loc12_ = undefined;
      var _loc4_ = undefined;
      _loc38_ = 0;
      while(_loc38_ < _loc72_)
      {
         _loc12_ = _loc71_[_loc38_].split(this.$d);
         if(this.logging)
         {
            this.logger.log(_loc12_,"SERVER");
         }
         _loc4_ = parseInt(_loc12_[0]);
         if(_loc4_ == 6)
         {
            this.$onUpdate(this.member,_loc12_,this.event.onUpdateMember);
         }
         else if(_loc4_ == 26)
         {
            this.$onUpdate(this.mob,_loc12_,this.event.onUpdateMob);
         }
         else if(_loc4_ == 54)
         {
            this.$onIndexUpdate(this.member,_loc12_,this.event.onIndexUpdateMember);
         }
         else if(_loc4_ == 60)
         {
            this.$onIndexUpdate(this.mob,_loc12_,this.event.onIndexUpdateMob);
         }
         else if(_loc4_ == 40)
         {
            this.$onUpdate(this.team,_loc12_,this.event.onUpdateTeam);
         }
         else if(_loc4_ == 38)
         {
            this.$onUpdate(this.room,_loc12_,this.event.onUpdateRoom);
         }
         else if(_loc4_ == 17)
         {
            var _loc42_ = _loc12_.slice(1,_loc12_.length);
            var _loc43_ = _loc42_.length;
            var _loc65_ = this.session.data;
            var _loc21_ = undefined;
            var _loc27_ = this.session.__cb;
            var _loc7_ = 0;
            while(_loc7_ < _loc43_)
            {
               _loc21_ = _loc42_[_loc7_];
               _loc65_[_loc21_] = _loc42_[_loc7_ + 1];
               if(_loc27_)
               {
                  var _loc18_ = _loc27_["_" + _loc21_];
                  if(_loc18_)
                  {
                     _loc18_.cb.apply(_loc18_.sc,[_loc42_[_loc7_ + 1]]);
                  }
               }
               _loc7_ = _loc7_ + 2;
            }
            this.event.onIndexUpdateSession.$call(_loc42_);
         }
         else if(_loc4_ == 75)
         {
            this.$onIndexUpdate(this.room,_loc12_,this.event.onIndexUpdateRoom);
         }
         else if(_loc4_ == 74)
         {
            this.$onIndexUpdate(this.team,_loc12_,this.event.onIndexUpdateTeam);
         }
         else if(_loc4_ == 25)
         {
            var _loc48_ = _loc12_[1];
            var room = parseInt(_loc12_[2]);
            var _loc44_ = parseInt(_loc12_[3]);
            var _loc51_ = _loc12_.slice(4,_loc12_.length);
            if(this.mob.list["_" + _loc48_] == null)
            {
               var _loc6_ = this.mob.list["_" + _loc48_] = {id:_loc48_,room:room,member:_loc44_};
               this.room.list["_" + room].mobs.push(_loc48_);
            }
            this.mob.list["_" + _loc48_].data = _loc51_;
            if(this.$nocb)
            {
               this.event.onNewMob.$call(_loc48_,_loc44_,_loc51_);
            }
         }
         else if(_loc4_ == 27)
         {
            _loc48_ = _loc12_[1];
            var _loc24_ = this.mob.list["_" + _loc48_].room;
            this.$removeValue(this.room.list["_" + _loc24_].mobs,_loc48_);
            delete this.mob.list."_" + _loc48_;
            this.event.onRemoveMob.$call(_loc48_);
         }
         else if(_loc4_ == 21)
         {
            _loc48_ = int(_loc12_[1]);
            if(_loc48_ != this.me.id)
            {
               var _loc19_ = int(_loc12_[2]);
               var _loc6_ = int(_loc12_[3]);
               _loc42_ = _loc12_.slice(4,_loc12_.length);
               _loc24_ = this.room.list["_" + _loc6_];
               var _loc10_ = 0;
               while(_loc10_ < _loc24_.mobs.length)
               {
                  delete this.mob.list."_" + _loc24_.mobs[_loc10_];
                  _loc10_ = _loc10_ + 1;
               }
               _loc24_.mobs = [];
               this.$removeValue(_loc24_.members,_loc48_);
               this.room.list["_" + _loc19_].members.push(_loc48_);
               this.member.list["_" + _loc48_].room = _loc19_;
               this.$reb(_loc42_,this.member.list["_" + _loc48_].data);
               this.event.onMemberChangesRoom.$call(_loc48_,_loc19_,_loc6_,_loc42_);
               this.echo("removeMember");
               if(this.challenge.id && _loc6_ == this.challenge.room)
               {
                  this.$removeValue(this.challenge.$challengers,_loc48_);
                  this.echo("remove from challengerlist:" + this.challenge.$challengers + " " + _loc48_);
               }
            }
         }
         else if(_loc4_ == 53)
         {
            _loc42_ = _loc12_.slice(5,_loc12_.length);
            this.event.onUserMessage.$call(_loc12_[1],int(_loc12_[2]),int(_loc12_[3]),int(_loc12_[4]),_loc42_);
         }
         else if(_loc4_ == 5)
         {
            var _loc28_ = int(_loc12_[1]);
            var _loc30_ = _loc12_[2];
            var _loc45_ = int(_loc12_[3]);
            var _loc37_ = int(_loc12_[4]);
            var _loc55_ = _loc12_[5];
            var _loc50_ = _loc12_.slice(6,_loc12_.length);
            this.room.list["_" + _loc37_].members.push(_loc28_);
            this.session.members.push(_loc28_);
            this.$memberIDs["x" + _loc28_] = _loc30_;
            this.$memberNames["x" + _loc30_] = _loc28_;
            this.team.list["_" + _loc45_].members.push(_loc28_);
            this.member.list["_" + _loc28_] = {id:_loc28_,name:_loc30_,room:_loc37_,team:_loc45_,data:_loc50_,platform:_loc55_,challenger:0,spectator:0};
            this.event.onNewMember.$call(_loc28_,_loc45_,_loc37_,_loc55_,_loc50_);
         }
         else if(_loc4_ == 16)
         {
            _loc42_ = _loc12_.slice(1,_loc12_.length);
            _loc65_ = this.session.data;
            _loc27_ = this.session.__cb;
            var _loc56_ = _loc42_.length;
            _loc7_ = 0;
            while(_loc7_ < _loc56_)
            {
               _loc65_[_loc7_] = _loc42_[_loc7_];
               if(_loc27_)
               {
                  _loc18_ = _loc27_["_" + _loc7_];
                  if(_loc18_)
                  {
                     _loc18_.cb.apply(_loc18_.sc,[_loc42_[_loc7_]]);
                  }
               }
               _loc7_ = _loc7_ + 1;
            }
            if(this.$nocb)
            {
               this.event.onUpdateSession.$call(_loc48_,_loc42_);
            }
         }
         else if(_loc4_ == 10)
         {
            this.event.onChatMessage.$call(int(_loc12_[1]),int(_loc12_[2]),int(_loc12_[3]),_loc12_[4]);
         }
         else if(_loc4_ == 11)
         {
            _loc28_ = int(_loc12_[1]);
            _loc45_ = int(_loc12_[2]);
            var room = int(_loc12_[3]);
            _loc30_ = this.member.getName(_loc28_);
            if(this.challenge.id)
            {
               this.$removeValue(this.challenge.$challengers,_loc28_);
            }
            this.session.members.removeValue(_loc28_);
            this.$removeValue(this.room.list["_" + room].members,_loc28_);
            this.$removeValue(this.team.list["_" + _loc45_].members,_loc28_);
            this.$removeValue(this.session.members,_loc28_);
            this.event.onRemoveMember.$call(_loc28_,_loc45_,room);
            delete this.$memberIDs."x" + _loc28_;
            delete this.$memberNames."x" + _loc30_;
         }
         else if(_loc4_ == 86)
         {
            this.event.onObjectReceived.$call(int(_loc12_[1]),int(_loc12_[2]),this.serial.unserialize(_loc12_[3]));
         }
         else if(_loc4_ == 62)
         {
            this.ping = getTimer() - this.$netTimer;
         }
         else if(_loc4_ == 49)
         {
            _loc48_ = int(_loc12_[1]);
            var _loc41_ = int(_loc12_[2]);
            this.member.list["_" + _loc48_].spectator = _loc41_;
            this.event.onBeSpectator.$call(_loc48_,_loc41_);
         }
         else if(_loc4_ == 32)
         {
            var _loc9_ = "";
            var _loc63_ = 1;
            var _loc49_ = parseInt(_loc12_[1]);
            var _loc3_ = parseInt(_loc12_[2]);
            var _loc53_ = this.$cblist[_loc49_];
            var _loc69_ = _loc53_.action;
            if(!_loc3_)
            {
               if(_loc69_ == 2)
               {
                  if(this.logging)
                  {
                     _loc9_ = "\'changeRoom\' status:" + this.logger.errors[_loc3_];
                  }
                  this.$reb(_loc53_.data,this.me.data);
                  this.$removeValue(this.room.list["_" + this.me.room].members,this.me.id);
                  if(this.$toGo)
                  {
                     _loc53_.toGo = this.$toGo;
                  }
                  this.me.room = _loc53_.toGo;
                  this.room.list["_" + this.me.room].members.push(this.me.id);
                  this.mob.$iid = 0;
                  this.$nocb = true;
                  this.me.$roomToGo = null;
                  if(this.challenge.id && this.challenge.room != _loc53_.toGo)
                  {
                     this.challenge.id = 0;
                     this.challenge.$challengers = [];
                     this.me.moderator = 0;
                  }
                  this.$toGo = 0;
               }
               else if(_loc69_ == 3)
               {
                  if(this.logging)
                  {
                     _loc9_ = "\'createRoom\' status:" + this.logger.errors[_loc3_];
                  }
               }
               else if(_loc69_ == 4)
               {
                  if(this.logging)
                  {
                     _loc9_ = "\'joinSession\' status:" + this.logger.errors[_loc3_];
                  }
                  if(this.$toGo)
                  {
                     _loc53_.roomToGo = this.$toGo;
                  }
                  this.me.session = _loc53_.sessionToGo;
                  this.me.team = _loc53_.teamToGo;
                  this.me.room = _loc53_.roomToGo;
                  this.me.data = _loc53_.data;
                  _loc6_ = this.$tempTeamList["_" + this.me.session].teamList;
                  _loc56_ = _loc6_.length;
                  var _loc13_ = undefined;
                  _loc7_ = 0;
                  while(_loc7_ < _loc56_)
                  {
                     this.session.teams.push(_loc6_[_loc7_].id);
                     _loc13_ = this.team.list["_" + _loc6_[_loc7_].id] = {};
                     this.team.list["_" + _loc6_[_loc7_].id] = {}.limit = _loc6_[_loc7_].limit;
                     this.team.list["_" + _loc6_[_loc7_].id] = {}.name = _loc6_[_loc7_].name;
                     this.team.list["_" + _loc6_[_loc7_].id] = {}.id = _loc6_[_loc7_].id;
                     this.team.list["_" + _loc6_[_loc7_].id] = {}.members = [];
                     _loc7_ = _loc7_ + 1;
                  }
                  this.room.list["_" + this.me.room].members.push(this.me.id);
                  this.session.members.push(this.me.id);
                  this.$memberIDs["x" + this.me.id] = this.me.name;
                  this.$memberNames["x" + this.me.name] = this.me.id;
                  this.member.list["_" + this.me.id] = {challenger:0,id:this.me.id,name:this.me.name,room:this.me.room,team:this.me.team,data:this.me.data,platform:"FLASH"};
                  _loc6_ = this.session.getMemberIDs();
                  _loc56_ = _loc6_.length;
                  _loc7_ = 0;
                  while(_loc7_ < _loc56_)
                  {
                     _loc65_ = _loc6_[_loc7_];
                     this.team.list["_" + this.member.getTeam(_loc65_)].members.push(_loc65_);
                     _loc7_ = _loc7_ + 1;
                  }
                  _loc7_ = 0;
                  while(_loc7_ < this.session.sessionList.length)
                  {
                     _loc6_ = this.session.sessionList[_loc7_];
                     if(_loc6_.id == this.me.session)
                     {
                        break;
                     }
                     _loc7_ = _loc7_ + 1;
                  }
                  this.session.id = _loc6_.id;
                  this.session.name = _loc6_.name;
                  this.$nocb = true;
               }
               else if(_loc69_ == 5)
               {
                  if(this.logging)
                  {
                     _loc9_ = "\'changeTeam\' status:" + this.logger.errors[_loc3_];
                  }
                  this.$removeValue(this.team.list["_" + this.me.team].members,this.me.id);
                  this.me.team = _loc53_.toGo;
                  this.team["_" + this.me.team].members.push(this.me.id);
               }
               else if(_loc69_ == 6)
               {
                  _loc53_.obj.data[_loc53_.index] = _loc53_.value;
               }
               else if(_loc69_ == 12)
               {
                  if(this.logging)
                  {
                     _loc9_ = "\'beSpectator\' status:" + this.logger.errors[_loc3_];
                  }
                  this.me.spectator = _loc53_.value;
               }
               else if(_loc69_ == 8)
               {
                  if(this.logging)
                  {
                     _loc9_ = "\'changeName\' status:" + this.logger.errors[_loc3_];
                  }
                  _loc19_ = _loc53_.newName;
                  delete this.$memberNames."x" + this.me.name;
                  this.$memberNames["x" + _loc19_] = this.me.id;
                  this.me.name = this.member.list["_" + this.me.id].name = this.$memberIDs["x" + this.me.id] = _loc19_;
               }
            }
            else
            {
               if(_loc3_ == 10)
               {
                  if(this.logging)
                  {
                     this.logger.log("Server is full!","STATUS");
                  }
                  this.$cb.apply(this.$sc,[3]);
                  this.$cb = this.$sc = null;
                  this.disconnectFromServer();
               }
               if(_loc69_ == 7)
               {
                  if(this.logging)
                  {
                     _loc9_ = "\'loadSessionList\' status:" + this.logger.errors[_loc3_];
                  }
                  _loc3_ = 2;
               }
               else if(_loc69_ == 3)
               {
                  if(_loc3_ == 11)
                  {
                     if(this.logging)
                     {
                        _loc9_ = "\'createRoom\' status:" + this.logger.errors[_loc3_];
                     }
                     _loc3_ = 2;
                  }
               }
               else if(_loc69_ == 4)
               {
                  if(this.logging)
                  {
                     _loc9_ = "\'joinSession\' status:" + this.logger.errors[_loc3_];
                  }
                  if(_loc3_ == 3)
                  {
                     _loc3_ = 1;
                  }
                  else if(_loc3_ == 4)
                  {
                     _loc3_ = 2;
                  }
                  else if(_loc3_ == 2)
                  {
                     _loc3_ = 3;
                  }
                  else if(_loc3_ == 5)
                  {
                     _loc3_ = 4;
                  }
                  else if(_loc3_ == 14)
                  {
                     _loc3_ = 5;
                  }
               }
               else if(_loc69_ == 2)
               {
                  if(this.logging)
                  {
                     _loc9_ = "\'changeRoom\' status:" + this.logger.errors[_loc3_];
                  }
                  if(_loc3_ == 2)
                  {
                     _loc3_ = 1;
                  }
                  else if(_loc3_ == 6)
                  {
                     _loc3_ = 2;
                  }
                  else if(_loc3_ == 7)
                  {
                     _loc3_ = 3;
                  }
                  else if(_loc3_ == 13)
                  {
                     _loc63_ = 0;
                     _loc3_ = 4;
                  }
                  else if(_loc3_ == 14)
                  {
                     _loc3_ = 5;
                  }
               }
               else if(_loc69_ == 6)
               {
                  if(this.logging)
                  {
                     _loc9_ = "\'indexUpdateConditional\' status:" + this.logger.errors[_loc3_];
                  }
                  _loc3_ = 1;
               }
               else if(_loc69_ == 10)
               {
                  if(_loc3_ == 12)
                  {
                     if(this.logging)
                     {
                        _loc9_ = "\'requestChallenge\' status:" + this.logger.errors[_loc3_];
                     }
                     this.challenge.id = int(_loc12_[3]);
                     this.me.moderator = 1;
                     _loc3_ = 0;
                     this.challenge.$template = _loc53_.template;
                     this.challenge.$timeout = _loc53_.timeout;
                     this.challenge.$minMembers = _loc53_.minMembers;
                  }
                  else
                  {
                     if(this.logging)
                     {
                        _loc9_ = "\'requestChallenge\' status:" + this.logger.errors[_loc3_];
                     }
                     this.challenge.id = 0;
                     _loc3_ = 1;
                  }
               }
               else if(_loc69_ == 12)
               {
                  if(this.logging)
                  {
                     _loc9_ = "\'beSpectator\' status:" + this.logger.errors[_loc3_];
                  }
                  if(_loc3_ == 8)
                  {
                     _loc3_ = 1;
                  }
               }
               else if(_loc69_ == 8)
               {
                  if(this.logging)
                  {
                     _loc9_ = "\'changeName\' status:" + this.logger.errors[_loc3_];
                  }
                  if(_loc3_ == 5)
                  {
                     _loc3_ = 1;
                  }
                  else if(_loc3_ == 3)
                  {
                     _loc3_ = 2;
                  }
               }
            }
            if(this.logging)
            {
               this.logger.log(_loc9_,"STATUS");
            }
            _loc53_.event.apply(_loc53_.scope,_loc12_.length != 4?[_loc3_]:[_loc3_,parseInt(_loc12_[3])]);
            if(_loc63_)
            {
               delete this.$cblist.register49;
            }
         }
         else if(_loc4_ == 19)
         {
            _loc49_ = parseInt(_loc12_[1]);
            _loc53_ = this.$cblist[_loc49_];
            _loc53_.event.apply(_loc53_.scope,_loc12_.slice(3,_loc12_.length));
            delete this.$cblist.register49;
         }
         else if(_loc4_ == 30)
         {
            var _loc26_ = int(_loc12_[1]);
            var _loc35_ = parseInt(_loc12_[2]);
            var _loc29_ = 0;
            _loc30_ = _loc12_[3];
            var _loc16_ = _loc12_[4].split("\x04");
            _loc56_ = _loc16_.length;
            var _loc20_ = [];
            _loc42_ = [];
            _loc42_ = _loc12_.slice(5,_loc12_.length);
            _loc10_ = 0;
            while(_loc10_ < _loc56_)
            {
               _loc29_ = _loc20_[_loc16_[_loc10_]] = int(_loc16_[_loc10_ + 1]);
               _loc10_ = _loc10_ + 2;
            }
            this.session.rooms.push(_loc26_);
            this.room.list["_" + _loc26_] = {data:_loc42_,mobs:[],members:[],waitingQueue:[],locked:0,id:_loc26_,limit:_loc20_[_loc16_[_loc10_]] = int(_loc16_[_loc10_ + 1]),name:_loc30_,teamLimits:_loc20_,password:_loc35_};
            !_loc42_.length?this.event.onNewRoom.$call(_loc26_,_loc30_,_loc20_[_loc16_[_loc10_]] = int(_loc16_[_loc10_ + 1])):this.event.onNewRoom.$call(_loc26_,_loc30_,_loc20_[_loc16_[_loc10_]] = int(_loc16_[_loc10_ + 1]),_loc42_);
         }
         else if(_loc4_ == 23)
         {
            var room = int(_loc12_[1]);
            this.$removeValue(this.session.rooms,room);
            delete this.room.list."_" + room;
            this.event.onRemoveRoom.$call(room);
         }
         else if(_loc4_ == 34)
         {
            this.room.list["_" + this.me.$roomToGo].waitingQueue = [];
            if(_loc12_[1] != null)
            {
               _loc42_ = _loc12_.slice(1,_loc12_.length);
               this.room.list["_" + this.me.$roomToGo].waitingQueue = _loc42_;
               this.event.onUpdateWaitingQueue.$call(this.me.$roomToGo,_loc42_);
            }
         }
         else if(_loc4_ == 67)
         {
            this.challenge.id = int(_loc12_[1]);
            _loc12_.push(this.me.id);
            _loc65_ = _loc12_.slice(3,_loc12_.length);
            this.event.onChallengeRequest.$call(int(_loc12_[2]),_loc65_);
         }
         else if(_loc4_ == 69)
         {
            this.challenge.$challengers = _loc12_.slice(3,_loc12_.length);
            this.challenge.room = int(_loc12_[2]);
            this.event.onStartChallenge.$call(int(_loc12_[2]));
         }
         else if(_loc4_ == 73)
         {
            this.event.onPlay.$call(int(_loc12_[1]));
         }
         else if(_loc4_ == 68)
         {
            if(this.challenge.id == _loc12_[2])
            {
               this.event.onAnswerChallengeRequest.$call(int(_loc12_[1]),int(_loc12_[3]));
            }
         }
         else if(_loc4_ == 72)
         {
            if(this.challenge.id == int(_loc12_[1]))
            {
               this.challenge.id = 0;
               this.challenge.$challengers = [];
               this.me.moderator = 0;
               this.event.onCancelChallenge.$call(int(_loc12_[2]));
            }
         }
         else if(_loc4_ == 18)
         {
            if(this.me.id == int(_loc12_[1]))
            {
               this.me.moderator = 1;
            }
            this.event.onModeratorChanged.$call(int(_loc12_[1]));
         }
         else if(_loc4_ == 64)
         {
            !int(_loc12_[2])?this.event.onExcludeMember.$call(int(_loc12_[1])):this.event.onIncludeMember.$call(int(_loc12_[1]));
         }
         else if(_loc4_ == 24)
         {
            this.$toGo = int(_loc12_[1]);
         }
         else if(_loc4_ == 36)
         {
            _loc28_ = _loc12_[1];
            _loc30_ = _loc12_[2];
            delete this.$memberNames."x" + _loc30_;
            this.$memberNames["x" + _loc30_] = _loc28_;
            this.member.list["_" + _loc28_].name = this.$memberIDs["x" + _loc28_] = _loc30_;
            this.event.onMemberNameChanged.$call(int(_loc28_),_loc30_);
         }
         else if(_loc4_ == 39)
         {
            this.room.list["_" + _loc12_[1]].locked = int(_loc12_[2]);
            this.event.onRoomLocked.$call(int(_loc12_[1]),int(_loc12_[2]));
         }
         else if(_loc4_ == 8)
         {
            this.me.master = 1;
            this.event.onMaster.$call();
         }
         else if(_loc4_ == 9)
         {
            this.me.master = 0;
            this.event.onSlave.$call();
         }
         else if(_loc4_ == 43)
         {
            _loc48_ = parseInt(_loc12_[1]);
            if(_loc48_ != this.me.id)
            {
               var _loc36_ = int(_loc12_[3]);
               var _loc59_ = int(_loc12_[2]);
               this.$removeValue(this.team.list["_" + _loc59_].members,_loc48_);
               this.team.list["_" + _loc36_].members.push(_loc48_);
               this.member.list["_" + _loc48_].team = _loc36_;
               this.event.onMemberChangesTeam.$call(_loc48_,_loc59_,_loc36_);
            }
         }
         else if(_loc4_ == 52)
         {
            _loc53_ = this.$cblist[_loc12_[1]];
            if(_loc12_[2] == -1)
            {
               _loc53_.event.apply(_loc53_.scope,[0]);
            }
            else
            {
               var _loc31_ = [];
               _loc56_ = _loc12_.length;
               _loc7_ = 2;
               while(_loc7_ < _loc56_)
               {
                  if(_loc12_[_loc7_] != -1)
                  {
                     _loc31_.push({id:_loc12_[_loc7_],session:_loc12_[_loc7_ + 1],team:_loc12_[_loc7_ + 2],room:_loc12_[_loc7_ + 3],spectator:0});
                  }
                  _loc7_ = _loc7_ + 4;
               }
               _loc53_.event.apply(_loc53_.scope,[_loc31_]);
            }
         }
         else if(_loc4_ == 56)
         {
            this.event.onSystemMessage.$call(_loc12_[1]);
         }
         else if(_loc4_ == 1)
         {
            if(this.connectionType == "HTTP")
            {
               this.$http.lv.i = this.me.id = parseInt(_loc12_[1]);
               this.$http.lv.s = parseInt(_loc12_[2]);
            }
            else
            {
               this.me.id = parseInt(_loc12_[1]);
            }
         }
         else if(_loc4_ == 2)
         {
            this.$cblist[this.$cbid = this.$cbid + 1] = {event:this.$cb,action:7,scope:this.$sc};
            this.$sts = this.$sts + ("29" + this.$d + this.$cbid + this.$d + this.$game + this.$e);
            this.$sts = this.$sts + ("3" + this.$d + (getTimer() - this.$netTimer) + this.$e);
            if(this.logging)
            {
               this.$sts = this.$sts + ("87" + this.$d + "1" + this.$e);
            }
         }
         else if(_loc4_ == 35)
         {
            var _loc29_ = 0;
            var _loc17_ = undefined;
            var _loc32_ = _loc12_.length;
            _loc19_ = 1;
            var _loc64_ = undefined;
            var _loc34_ = undefined;
            _loc20_ = [];
            var _loc33_ = undefined;
            var _loc66_ = undefined;
            var _loc68_ = 0;
            while(_loc19_ < _loc32_)
            {
               _loc19_;
               _loc48_ = parseInt(_loc12_[_loc19_++]);
               _loc19_;
               _loc35_ = parseInt(_loc12_[_loc19_++]) != 1?false:true;
               _loc19_;
               _loc66_ = parseInt(_loc12_[_loc19_++]);
               _loc19_;
               _loc64_ = parseInt(_loc12_[_loc19_++]);
               _loc19_;
               _loc34_ = _loc12_[_loc19_++];
               _loc19_;
               _loc33_ = parseInt(_loc12_[_loc19_++]);
               _loc19_;
               _loc16_ = _loc12_[_loc19_++].split("\x04");
               _loc56_ = _loc16_.length;
               _loc20_ = [];
               _loc10_ = 0;
               while(_loc10_ < _loc56_)
               {
                  _loc29_ = _loc29_ + (_loc20_[_loc16_[_loc10_]] = parseInt(_loc16_[_loc10_ + 1]));
                  _loc10_ = _loc10_ + 2;
               }
               this.session.rooms.push(_loc48_);
               _loc17_ = this.room.list["_" + _loc48_] = {data:[],mobs:[],members:[],waitingQueue:[],locked:_loc33_,id:_loc48_,limit:_loc29_,name:_loc34_,teamLimits:_loc20_,password:_loc35_};
               while(_loc12_[_loc19_].charCodeAt(0) != 1 && _loc19_ < _loc32_)
               {
                  this.room.list["_" + _loc48_] = {data:[],mobs:[],members:[],waitingQueue:[],locked:_loc33_,id:_loc48_,limit:_loc29_,name:_loc34_,teamLimits:_loc20_,password:_loc35_}.data.push(_loc12_[_loc19_]);
                  _loc19_ = _loc19_ + 1;
               }
               _loc19_ = _loc19_ + 1;
               _loc29_ = 0;
            }
         }
         else if(_loc4_ == 7)
         {
            if(!this.$smode)
            {
               this.event.onDisconnect.$call();
            }
            _root.$$sushimc.swapDepths(0);
            _root.$$sushimc.removeMovieClip();
            this.$init();
            this.event.onServerRestart.$call();
         }
         else if(_loc4_ == 65)
         {
            _loc48_ = int(_loc12_[1]);
            if(_loc48_ == this.me.id && !this.$smode)
            {
               _root.$$sushimc.swapDepths(0);
               _root.$$sushimc.removeMovieClip();
               this.$init();
            }
            this.event.onMemberKicked.$call(_loc48_);
         }
         else if(_loc4_ == 77)
         {
            this.event.onBadwordDetected.$call();
         }
         else if(_loc4_ == 57)
         {
            _loc49_ = parseInt(_loc12_[1]);
            _loc53_ = this.$cblist[_loc49_];
            _loc53_.event.apply(_loc53_.scope,[parseInt(_loc12_[2])]);
            delete this.$cblist.register49;
         }
         else if(_loc4_ == 61)
         {
            if(this.connectionType == "SOCKET")
            {
               this.$pint = setInterval(this,"$ping",parseInt(_loc12_[1]));
            }
         }
         else if(_loc4_ == 44)
         {
            var _loc67_ = true;
            _loc19_ = 2;
            var _loc25_ = undefined;
            var _loc5_ = undefined;
            var _loc8_ = undefined;
            var _loc11_ = undefined;
            _loc32_ = _loc12_.length;
            var _loc60_ = this.$cblist[_loc12_[1]];
            this.session.sessionList = [];
            var _loc22_ = undefined;
            while(_loc19_ < _loc32_)
            {
               _loc19_;
               _loc25_ = parseInt(_loc12_[_loc19_++]);
               _loc5_ = {};
               var _loc14_ = 0;
               var _loc15_ = 0;
               _loc5_.teamList = [];
               _loc19_;
               _loc5_.name = _loc12_[_loc19_++];
               _loc19_;
               _loc5_.version = _loc12_[_loc19_++];
               _loc5_.id = _loc25_;
               this.session.sessionList.push(_loc5_);
               _loc22_ = this.$tempTeamList["_" + _loc25_] = {};
               this.$tempTeamList["_" + _loc25_] = {}.teamList = [];
               do
               {
                  _loc8_ = {};
                  _loc11_ = {};
                  _loc19_;
                  _loc48_ = _loc11_.id = _loc8_.id = parseInt(_loc12_[_loc19_++]);
                  this.$ttid[_loc11_.id = _loc8_.id = parseInt(_loc12_[_loc19_++])] = [];
                  _loc19_;
                  _loc8_.name = _loc11_.name = _loc12_[_loc19_++];
                  _loc19_;
                  _loc14_ = _loc14_ + (_loc8_.activeMembers = parseInt(_loc12_[_loc19_++]));
                  _loc19_;
                  _loc15_ = _loc15_ + (_loc11_.limit = _loc8_.limit = parseInt(_loc12_[_loc19_++]));
                  _loc5_.teamList.push(_loc8_);
                  this.$tempTeamList["_" + _loc25_] = {}.teamList.push(_loc11_);
               }
               while(_loc12_[_loc19_].charCodeAt(0) != 1);
               
               _loc5_.activeMembers = _loc14_;
               _loc5_.limit = _loc15_;
               _loc14_ = 0;
               _loc15_ = 0;
               _loc5_.data = [];
               _loc19_ = _loc19_ + 1;
               do
               {
                  _loc19_;
                  _loc5_.data.push(_loc12_[_loc19_++]);
               }
               while(_loc12_[_loc19_].charCodeAt(0) != 1);
               
               _loc19_ = _loc19_ + 1;
            }
            _loc60_.event.apply(_loc60_.scope,[0]);
            delete this.$cblist._loc12_[1];
         }
         else if(_loc4_ == 33)
         {
            if(_loc12_[1] != null)
            {
               _loc56_ = _loc12_.length - 6;
               var _loc23_ = undefined;
               _loc7_ = 0;
               while(_loc7_ <= _loc56_)
               {
                  var _loc48_ = parseInt(_loc12_[_loc7_ + 4]);
                  _loc23_ = parseInt(_loc12_[_loc7_ + 1]);
                  _loc24_ = parseInt(_loc12_[_loc7_ + 2]);
                  _loc19_ = _loc12_[_loc7_ + 5];
                  _loc32_ = parseInt(_loc12_[_loc7_ + 3]);
                  var _loc17_ = _loc12_[_loc7_ + 6];
                  this.session.members.push(_loc48_);
                  this.room.list["_" + _loc24_].members.push(_loc48_);
                  this.team.list["_" + _loc23_].members.push(_loc48_);
                  this.$memberIDs["x" + _loc48_] = _loc19_;
                  this.$memberNames["x" + _loc19_] = _loc48_;
                  this.member.list["_" + _loc48_] = {challenger:0,id:_loc48_,name:_loc19_,room:_loc24_,data:[],team:_loc23_,platform:_loc17_,spectator:_loc32_};
                  _loc7_ = _loc7_ + 6;
               }
               if(room.$cb)
               {
                  room.$cb.apply(room.$sc,[0]);
                  room.$cb = room.$sc = null;
               }
            }
         }
         _loc38_ = _loc38_ + 1;
      }
   }
   function $speedCheck()
   {
      var _loc8_ = getTimer();
      var _loc7_ = "0,00,00000000000000,00,0000,00,0,0,0#0,000,0,000000000,0,000#0,0,0000,0,000#0,0000,00000000000,0,0#0,00000000,00#000,00#0,0,000#0,00,00000000000,00#0,00,0000,000#0,0,0000#00,0000,0#";
      var _loc5_ = undefined;
      var _loc6_ = undefined;
      var _loc3_ = undefined;
      var _loc2_ = undefined;
      var _loc4_ = undefined;
      _loc5_ = 0;
      while(_loc5_ <= 400)
      {
         _loc3_ = _loc7_.split("#");
         _loc4_ = _loc3_.length;
         _loc2_ = 0;
         while(_loc2_ < _loc4_)
         {
            _loc6_ = _loc3_[_loc2_].split(",");
            _loc2_ = _loc2_ + 1;
         }
         _loc5_ = _loc5_ + 1;
      }
      this.$clientSpeed = getTimer() - _loc8_;
   }
   function $reb(a, d)
   {
      var _loc1_ = undefined;
      var _loc2_ = a.length;
      _loc1_ = 0;
      while(_loc1_ < _loc2_)
      {
         d[_loc1_] = a[_loc1_];
         _loc1_ = _loc1_ + 1;
      }
   }
   function $update(o, j, id, d)
   {
      var _loc2_ = d.join(this.$d);
      this.$reb(d,o.list["_" + id].data);
      this.$sts = this.$sts + (j + this.$d + id + this.$d + _loc2_ + this.$e);
   }
   function $silentUpdate(o, j, id, d)
   {
      var _loc3_ = d.join(this.$d);
      var _loc2_ = o.list["_" + id];
      this.$reb(d,_loc2_.data);
      this.$sts = this.$sts + (j + this.$d + id + this.$d + _loc3_ + this.$e);
   }
   function $indexUpdate(o, j, id, d)
   {
      var _loc6_ = d.join(this.$d);
      var _loc4_ = d.length;
      var _loc5_ = o.list["_" + id].data;
      var _loc2_ = undefined;
      _loc2_ = 0;
      while(_loc2_ < _loc4_)
      {
         _loc5_[d[_loc2_]] = d[_loc2_ + 1];
         _loc2_ = _loc2_ + 2;
      }
      this.$sts = this.$sts + (j + this.$d + id + this.$d + _loc6_ + this.$e);
   }
   function $indexUpdateEval(o, j, id, d)
   {
      this.$sts = this.$sts + (j + this.$d + id + this.$d + d.join(this.$d) + this.$e);
   }
   function $indexUpdateConditional(o, j, id, d, cb, sc)
   {
      this.$cblist[this.$cbid = this.$cbid + 1] = {event:cb,action:6,obj:o.list["_" + id],index:d[0],value:d[1],scope:sc};
      this.$sts = this.$sts + (j + this.$d + id + this.$d + d.join(this.$d) + this.$d + this.$cbid + this.$e);
   }
   function $onUpdate(o, p, cb)
   {
      var _loc5_ = p[1];
      var _loc4_ = p.slice(2,p.length);
      var _loc10_ = o.list["_" + _loc5_];
      var _loc7_ = _loc10_.data;
      var _loc2_ = undefined;
      var _loc8_ = _loc4_.length;
      var _loc6_ = _loc10_.__cb;
      _loc2_ = 0;
      while(_loc2_ < _loc8_)
      {
         _loc7_[_loc2_] = _loc4_[_loc2_];
         if(_loc6_)
         {
            var _loc3_ = _loc6_["_" + _loc2_];
            if(_loc3_)
            {
               if(o != this.mob)
               {
                  _loc3_.cb.apply(_loc3_.sc,[int(_loc5_),_loc4_[_loc2_]]);
               }
               else
               {
                  _loc3_.cb.apply(_loc3_.sc,[_loc5_,_loc4_[_loc2_]]);
               }
            }
         }
         _loc2_ = _loc2_ + 1;
      }
      if(this.$nocb)
      {
         cb.$call(_loc5_,_loc4_);
      }
   }
   function $onIndexUpdate(o, p, cb)
   {
      var _loc6_ = p[1];
      var _loc4_ = p.slice(2,p.length);
      var _loc9_ = _loc4_.length;
      var _loc11_ = o.list["_" + _loc6_];
      var _loc8_ = _loc11_.data;
      var _loc7_ = _loc11_.__cb;
      var _loc2_ = 0;
      while(_loc2_ < _loc9_)
      {
         var _loc5_ = _loc4_[_loc2_];
         _loc8_[_loc5_] = _loc4_[_loc2_ + 1];
         if(_loc7_)
         {
            var _loc3_ = _loc7_["_" + _loc5_];
            if(_loc3_)
            {
               if(o != this.mob)
               {
                  _loc3_.cb.apply(_loc3_.sc,[int(_loc6_),_loc4_[_loc2_ + 1]]);
               }
               else
               {
                  _loc3_.cb.apply(_loc3_.sc,[_loc6_,_loc4_[_loc2_ + 1]]);
               }
            }
         }
         _loc2_ = _loc2_ + 2;
      }
      cb.$call(_loc6_,_loc4_);
   }
   function $removeValue()
   {
      var _loc3_ = arguments[0];
      var _loc4_ = arguments[1];
      var _loc2_ = _loc3_.length;
      _loc2_ = _loc3_.length;
      while(_loc2_ >= 0)
      {
         if(_loc3_[_loc2_] == _loc4_)
         {
            _loc3_.splice(_loc2_,1);
            return true;
         }
         _loc2_ = _loc2_ - 1;
      }
      return false;
   }
   function $ping()
   {
      this.$netTimer = getTimer();
      this.$sts = this.$sts + ("62" + this.$d + this.$e);
   }
   function $getFPS()
   {
      this.fps = -1000 / (this.$$fps - (this.$$fps = getTimer()));
      this.speedFac = this.$fps / this.fps;
   }
   function $dump(o)
   {
      var _loc2_ = undefined;
      trace("**************************************************");
      this.echo("**************************************************");
      trace("Dump:");
      this.echo("Dump:");
      for(var _loc2_ in o)
      {
         trace(_loc2_ + " => " + o[_loc2_]);
         this.echo(_loc2_ + " => " + o[_loc2_]);
      }
      trace("**************************************************");
      this.echo("**************************************************");
   }
}
