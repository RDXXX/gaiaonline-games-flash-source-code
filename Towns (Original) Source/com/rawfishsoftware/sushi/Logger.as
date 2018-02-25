class com.rawfishsoftware.sushi.Logger
{
   function Logger(r)
   {
      this.ref = r;
      this.$d = this.ref.$d;
      this.$e = this.ref.$e;
      this.mess_in = {m1:["idMessage","ID","","",""],m5:["newMember","ID","name","teamID","roomID","platform","!data"],m6:["memberUpdate","ID","!data"],m7:["serverRestart"],m8:["masterClient"],m9:["slaveClient"],m10:["chatMessage","senderID","routing","","message"],m11:["removeMember","ID","teamID","roomID"],m16:["sessionUpdate","!data"],m17:["sessionIndexUpdate","$data"],m19:["pluginAnswer","","pluginID","!data"],m21:["changeRoom","ID","newRoomID","oldRoomID","!data"],m23:["removeRoom","roomID"],m25:["newMob","mobID","roomID","creatorID","!data"],m26:["mobUpdate","mobID","!data"],m27:["removeMob","mobID"],m30:["newRoom","roomID","password","name","","!data"],m34:["waitingQueue","queue"],m36:["memberNameChanged","memberID","newName"],m38:["roomUpdate","roomID","!data"],m39:["lockRoom","roomID","value"],m40:["teamUpdate","teamID","!data"],m43:["changeTeam","userID","oldTeamID","newTeamID"],m49:["beSpectator","value"],m52:["memberSearchResult","","!resultList"],m53:["userMessage","messageID","","routing","targetID","!data"],m54:["memberIndexUpdate","memberID","$data"],m57:["isBadwordAnswer","","result"],m60:["mobIndexUpdate","mobID","$data"],m64:["in/excludeMember","memberID","value"],m65:["kickMember","memberID"],m67:["challengeRequest","challengeID","challengerID","!participantIDs"],m68:["acceptChallenge","userID","challengeID","value"],m69:["startChallenge","challengeID","roomID","!order"],m73:["play","userID"],m72:["cancelChallenge","challengeID","status"],m74:["teamIndexUpdate","teamID","$data"],m75:["roomIndexUpdate","roomID","$data"],m86:["sendObject","routing","targetID","object"],m87:["serverError","message"]};
      this.mess_out = {m2:["clientSpeed","time"],m3:["netSpeed","time"],m4:["receiveMyUpdates","value"],m6:["meUpdate","","!data"],m10:["chatMessage","myID","routing","targetUserID","message"],m11:["removeMe","myID"],m14:["getMemberList","roomID"],m15:["mobSilentUpdate","mobID","!data"],m16:["sessionUpdate","!data"],m17:["sessionIndexUpdate","$data"],m19:["callPlugin","","pluginID","!data"],m20:["changeRoom","","myID","roomID","password","!data"],m22:["createRoom","","myID","password","name","roomTemplate","!clientIdList"],m25:["createMob","mobID","roomID","delete","!data"],m26:["mobUpdate","mobID","!data"],m27:["removeMob","mobID"],m28:["leaveSession",""],m29:["loadSessionList","","game"],m31:["meSilentUpdate","","!data"],m36:["changeName","","","newName"],m38:["roomUpdate","roomID","!data"],m39:["lockRoom","roomID","lock"],m40:["teamUpdate","teamID","!data"],m41:["mobIndexUpdateEval|Conditional","mobID","%data"],m42:["changeTeam","","userID","oldTeamID","newTeamID"],m45:["joinSession","","sessionID","teamID","roomID","password","name","!data"],m47:["initMob","mobID","roomID","delete","!data"],m48:["beSpectator","","value"],m50:["teamIndexUpdateEval|Conditional","teamID","%data"],m51:["searchClient","","!names"],m53:["userMessage","messageID","","routing","targetID","!data"],m54:["meIndexUpdate","myID","$data"],m57:["isBadword","","word"],m58:["roomIndexUpdateEval|Conditional","roomID","%data"],m59:["sessionIndexUpdateEval|Conditional","%data"],m60:["mobIndexUpdate","mobID","$data"],m64:["in/excludeMember","memberID","value"],m66:["requestChallenge","","","roomTemplate","timeout","minUsers","!participantIDs"],m68:["acceptChallenge","userID","challengeID","value"],m70:["startChallenge","challengeID","!order"],m71:["nextMember","challengeID"],m72:["cancelChallenge","challengeID"],m74:["teamIndexUpdate","teamID","$data"],m75:["roomIndexUpdate","roomID","$data"],m86:["sendObject","routing","targetID","object"],m87:["enableLogging","value"]};
      this.errors = ["ok","create room failed","room full","name contains badword","team full","name used","user is not allowed to enter room","room doesn\'t exist","failed","game not found","server full","room-template not found","challenge born","queued","wrong password"];
   }
   function log(n, a)
   {
      if(typeof n == "string")
      {
         var _loc4_ = n.split(this.$e);
         var _loc6_ = _loc4_.length;
         var _loc3_ = undefined;
         var _loc8_ = undefined;
         var _loc5_ = this.$d;
         n = 0;
         while(n < _loc6_)
         {
            _loc3_ = _loc4_[n].split(_loc5_);
            this.$log(_loc3_,a);
            n = n + 1;
         }
      }
      else
      {
         this.$log(n,a);
      }
   }
   function $log(n, a)
   {
      var _loc8_ = "";
      if(a == "SERVER")
      {
         _loc8_ = this.mess_in["m" + n[0]];
      }
      else if(a == "FLASH")
      {
         _loc8_ = this.mess_out["m" + n[0]];
      }
      else if(a == "STATUS")
      {
         trace("SERVER: " + n);
         var _loc14_ = new LocalConnection();
         _loc14_.send("_SUSHIOutput","echo","<b>ID" + this.ref.me.id + ":SERVER:</b> " + n);
      }
      if(_loc8_)
      {
         var _loc9_ = "";
         var _loc10_ = "";
         var _loc5_ = _loc10_ + "\'" + _loc8_[0] + "\'" + _loc9_ + " ";
         var _loc2_ = undefined;
         var _loc11_ = n.length;
         _loc2_ = 1;
         while(_loc2_ < _loc11_)
         {
            if(_loc8_[_loc2_] != "")
            {
               var _loc7_ = _loc8_[_loc2_].substring(0,1);
               if(_loc7_ != "$" && _loc7_ != "%" && _loc7_ != "!")
               {
                  _loc5_ = _loc5_ + (_loc10_ + _loc8_[_loc2_] + ":" + _loc9_ + n[_loc2_] + " ");
               }
               else
               {
                  if(_loc7_ == "!")
                  {
                     var _loc12_ = _loc8_[_loc2_].slice(1,length(_loc8_[_loc2_]));
                     _loc5_ = _loc5_ + (_loc10_ + _loc12_ + ":" + _loc9_ + "[" + n.slice(_loc2_,_loc11_).join(",") + "]");
                  }
                  else if(_loc7_ == "$")
                  {
                     _loc5_ = _loc5_ + (_loc10_ + "data:" + _loc9_ + "[");
                     var _loc4_ = _loc2_;
                     while(_loc4_ < _loc11_)
                     {
                        _loc5_ = _loc5_ + (n[_loc4_] + ":" + n[_loc4_ + 1] + " ");
                        _loc4_ = _loc4_ + 2;
                     }
                     _loc5_ = _loc5_ + "]";
                  }
                  else if(_loc7_ == "%")
                  {
                     if(_loc11_ - _loc2_ == 3)
                     {
                        var _loc6_ = n[_loc2_ + 1];
                        if(_loc6_ == "/" || _loc6_ == "+" || _loc6_ == "-" || _loc6_ == "*")
                        {
                           _loc6_ = _loc6_ + "=";
                        }
                        _loc5_ = _loc5_ + (_loc10_ + "evaluate:" + _loc9_ + "[index" + n[_loc2_] + _loc6_ + n[_loc2_ + 2] + "]");
                     }
                     else
                     {
                        _loc6_ = n[_loc2_ + 1];
                        if(_loc6_ == "/" || _loc6_ == "+" || _loc6_ == "-" || _loc6_ == "*")
                        {
                           _loc6_ = _loc6_ + "=";
                        }
                        _loc5_ = _loc5_ + (_loc10_ + "conditional:" + _loc9_ + "[" + n[_loc2_] + _loc6_ + n[_loc2_ + 2] + " if " + n[_loc2_ + 3] + n[_loc2_ + 4] + n[_loc2_ + 5] + "]");
                     }
                  }
                  break;
               }
            }
            _loc2_ = _loc2_ + 1;
         }
         trace(a + ": " + _loc5_);
         _loc14_ = new LocalConnection();
         _loc14_.send("_SUSHIOutput","echo","<b>ID" + this.ref.me.id + ":" + a + ":</b> " + _loc5_);
      }
   }
}
