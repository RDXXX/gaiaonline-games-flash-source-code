package com.rawfishsoftware.sushi
{
   import flash.net.LocalConnection;
   
   public class Logger
   {
       
      
      private var mess_in:Object;
      
      private var mess_out:Object;
      
      public var errors:Object;
      
      private var ref:Object;
      
      private var $d:String;
      
      private var $e:String;
      
      public function Logger(param1:*)
      {
         super();
         this.ref = param1;
         this.$d = this.ref.$d;
         this.$e = this.ref.$e;
         this.mess_in = {
            "m1":["idMessage","ID","","",""],
            "m5":["newMember","ID","name","teamID","roomID","platform","!data"],
            "m6":["memberUpdate","ID","!data"],
            "m7":["serverRestart"],
            "m8":["masterClient"],
            "m9":["slaveClient"],
            "m10":["chatMessage","senderID","routing","","message"],
            "m11":["removeMember","ID","teamID","roomID"],
            "m16":["sessionUpdate","!data"],
            "m17":["sessionIndexUpdate","$data"],
            "m19":["pluginAnswer","","pluginID","!data"],
            "m21":["changeRoom","ID","newRoomID","oldRoomID","!data"],
            "m23":["removeRoom","roomID"],
            "m25":["newMob","mobID","roomID","creatorID","!data"],
            "m26":["mobUpdate","mobID","!data"],
            "m27":["removeMob","mobID"],
            "m30":["newRoom","roomID","password","name","","!data"],
            "m34":["waitingQueue","queue"],
            "m36":["memberNameChanged","memberID","newName"],
            "m38":["roomUpdate","roomID","!data"],
            "m39":["lockRoom","roomID","value"],
            "m40":["teamUpdate","teamID","!data"],
            "m43":["changeTeam","userID","oldTeamID","newTeamID"],
            "m49":["beSpectator","value"],
            "m52":["memberSearchResult","","!resultList"],
            "m53":["userMessage","messageID","","routing","targetID","!data"],
            "m54":["memberIndexUpdate","memberID","$data"],
            "m57":["isBadwordAnswer","","result"],
            "m60":["mobIndexUpdate","mobID","$data"],
            "m64":["in/excludeMember","memberID","value"],
            "m65":["kickMember","memberID"],
            "m67":["challengeRequest","challengeID","challengerID","!participantIDs"],
            "m68":["acceptChallenge","userID","challengeID","value"],
            "m69":["startChallenge","challengeID","roomID","!order"],
            "m73":["play","userID"],
            "m72":["cancelChallenge","challengeID","status"],
            "m74":["teamIndexUpdate","teamID","$data"],
            "m75":["roomIndexUpdate","roomID","$data"],
            "m86":["sendObject","routing","targetID","object"],
            "m87":["serverError","message"]
         };
         this.mess_out = {
            "m2":["clientSpeed","time"],
            "m3":["netSpeed","time"],
            "m4":["receiveMyUpdates","value"],
            "m6":["meUpdate","","!data"],
            "m10":["chatMessage","myID","routing","targetUserID","message"],
            "m11":["removeMe","myID"],
            "m14":["getMemberList","roomID"],
            "m15":["mobSilentUpdate","mobID","!data"],
            "m16":["sessionUpdate","!data"],
            "m17":["sessionIndexUpdate","$data"],
            "m19":["callPlugin","","pluginID","!data"],
            "m20":["changeRoom","","myID","roomID","password","!data"],
            "m22":["createRoom","","myID","password","name","roomTemplate","!clientIdList"],
            "m25":["createMob","mobID","roomID","delete","!data"],
            "m26":["mobUpdate","mobID","!data"],
            "m27":["removeMob","mobID"],
            "m28":["leaveSession",""],
            "m29":["loadSessionList","","game"],
            "m31":["meSilentUpdate","","!data"],
            "m36":["changeName","","","newName"],
            "m38":["roomUpdate","roomID","!data"],
            "m39":["lockRoom","roomID","lock"],
            "m40":["teamUpdate","teamID","!data"],
            "m41":["mobIndexUpdateEval|Conditional","mobID","%data"],
            "m42":["changeTeam","","userID","oldTeamID","newTeamID"],
            "m45":["joinSession","","sessionID","teamID","roomID","password","name","!data"],
            "m47":["initMob","mobID","roomID","delete","!data"],
            "m48":["beSpectator","","value"],
            "m50":["teamIndexUpdateEval|Conditional","teamID","%data"],
            "m51":["searchClient","","!names"],
            "m53":["userMessage","messageID","","routing","targetID","!data"],
            "m54":["meIndexUpdate","myID","$data"],
            "m57":["isBadword","","word"],
            "m58":["roomIndexUpdateEval|Conditional","roomID","%data"],
            "m59":["sessionIndexUpdateEval|Conditional","%data"],
            "m60":["mobIndexUpdate","mobID","$data"],
            "m64":["in/excludeMember","memberID","value"],
            "m66":["requestChallenge","","","roomTemplate","timeout","minUsers","!participantIDs"],
            "m68":["acceptChallenge","userID","challengeID","value"],
            "m70":["startChallenge","challengeID","!order"],
            "m71":["nextMember","challengeID"],
            "m72":["cancelChallenge","challengeID"],
            "m74":["teamIndexUpdate","teamID","$data"],
            "m75":["roomIndexUpdate","roomID","$data"],
            "m86":["sendObject","routing","targetID","object"],
            "m87":["enableLogging","value"]
         };
         this.errors = ["ok","create room failed","room full","name contains badword","team full","name used","user is not allowed to enter room","room doesn\'t exist","failed","game not found","server full","room-template not found","challenge born","queued","wrong password"];
      }
      
      public function log(param1:*, param2:*) : *
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         if(typeof param1 == "string")
         {
            _loc3_ = param1.split(this.$e);
            _loc4_ = _loc3_.length;
            _loc7_ = this.$d;
            param1 = 0;
            while(param1 < _loc4_)
            {
               _loc5_ = _loc3_[param1].split(_loc7_);
               this.$log(_loc5_,param2);
               param1++;
            }
         }
         else
         {
            this.$log(param1,param2);
         }
      }
      
      private function $log(param1:*, param2:*) : *
      {
         var _loc4_:LocalConnection = null;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         var _loc11_:* = undefined;
         var _loc12_:* = undefined;
         var _loc13_:* = undefined;
         var _loc3_:* = "";
         if(param2 == "SERVER")
         {
            _loc3_ = this.mess_in["m" + param1[0]];
         }
         else if(param2 == "FLASH")
         {
            _loc3_ = this.mess_out["m" + param1[0]];
         }
         else if(param2 == "STATUS")
         {
            _loc4_ = new LocalConnection();
            try
            {
               _loc4_.send("_SUSHIOutput","echo","<b>ID" + this.ref.me.id + ":SERVER:</b> " + param1);
            }
            catch(e:*)
            {
            }
         }
         if(_loc3_)
         {
            _loc5_ = "";
            _loc6_ = "";
            _loc7_ = _loc6_ + "\'" + _loc3_[0] + "\'" + _loc5_ + " ";
            _loc9_ = param1.length;
            _loc8_ = 1;
            while(_loc8_ < _loc9_)
            {
               if(_loc3_[_loc8_] != "")
               {
                  _loc10_ = _loc3_[_loc8_].substring(0,1);
                  if(_loc10_ != "$" && _loc10_ != "%" && _loc10_ != "!")
                  {
                     _loc7_ = _loc7_ + (_loc6_ + _loc3_[_loc8_] + ":" + _loc5_ + param1[_loc8_] + " ");
                  }
                  else
                  {
                     if(_loc10_ == "!")
                     {
                        _loc11_ = _loc3_[_loc8_].slice(1,this.length(_loc3_[_loc8_]));
                        _loc7_ = _loc7_ + (_loc6_ + _loc11_ + ":" + _loc5_ + "[" + param1.slice(_loc8_,_loc9_).join(",") + "]");
                     }
                     else if(_loc10_ == "$")
                     {
                        _loc7_ = _loc7_ + (_loc6_ + "data:" + _loc5_ + "[");
                        _loc12_ = _loc8_;
                        while(_loc12_ < _loc9_)
                        {
                           _loc7_ = _loc7_ + (param1[_loc12_] + ":" + param1[_loc12_ + 1] + " ");
                           _loc12_ = _loc12_ + 2;
                        }
                        _loc7_ = _loc7_ + "]";
                     }
                     else if(_loc10_ == "%")
                     {
                        if(_loc9_ - _loc8_ == 3)
                        {
                           _loc13_ = param1[_loc8_ + 1];
                           if(_loc13_ == "/" || _loc13_ == "+" || _loc13_ == "-" || _loc13_ == "*")
                           {
                              _loc13_ = _loc13_ + "=";
                           }
                           _loc7_ = _loc7_ + (_loc6_ + "evaluate:" + _loc5_ + "[index" + param1[_loc8_] + _loc13_ + param1[_loc8_ + 2] + "]");
                        }
                        else
                        {
                           _loc13_ = param1[_loc8_ + 1];
                           if(_loc13_ == "/" || _loc13_ == "+" || _loc13_ == "-" || _loc13_ == "*")
                           {
                              _loc13_ = _loc13_ + "=";
                           }
                           _loc7_ = _loc7_ + (_loc6_ + "conditional:" + _loc5_ + "[" + param1[_loc8_] + _loc13_ + param1[_loc8_ + 2] + " if " + param1[_loc8_ + 3] + param1[_loc8_ + 4] + param1[_loc8_ + 5] + "]");
                        }
                     }
                     break;
                  }
               }
               _loc8_++;
            }
            _loc4_ = new LocalConnection();
            try
            {
               _loc4_.send("_SUSHIOutput","echo","<b>ID" + this.ref.me.id + ":" + param2 + ":</b> " + _loc7_);
               return;
            }
            catch(e:*)
            {
               return;
            }
         }
      }
      
      private function length(param1:String) : int
      {
         return param1.length;
      }
   }
}
