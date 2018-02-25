class classes.chat.SushiConnection
{
   var serverTries = 0;
   var TOTAL_SERVER_TRIES = 10;
   var SERVER_RETRY_PAUSE = 1500;
   var sessionTries = 0;
   var TOTAL_SESSION_TRIES = 8;
   var SESSION_RETRY_PAUSE = 5000;
   var roomTries = 0;
   var TOTAL_ROOM_TRIES = 4;
   var ROOM_RETRY_PAUSE = 1000;
   var TARGET_ROOM_OCCUPANCY = 8;
   var lastZipInstance = 5;
   var zipInstance = 1;
   var needToReInit = false;
   function SushiConnection(pClass)
   {
      this.parentClass = pClass;
      this.sushi = _global.sushi;
      trace("[SushiConnection] User Data: " + _global.myUserData.join(","));
      this.userName = _global.myUserData[1];
      this.avURL = _global.myUserData[2];
      this.userLvl = _global.myUserData[3];
      this.gaiaID = _global.myUserData[0];
      this.gaiaSessionID = _global.gaiaSessionID;
      this.roomName = _global.mapData[1];
      this.serverID = _global.mapData[6];
      this.sessionID = _global.mapData[7];
      this.roomID = _global.mapData[8];
      this.serverIP = _global.mapData[11];
      this.serverPort = _global.mapData[12];
      this.oldServerID = _global.mapDataOld[6];
      this.loadingMap = true;
      this.sushi.event.onDisconnect.addListener(this);
      this.gotoServer();
   }
   function destroy()
   {
      this.sushi.event.onDisconnect.removeListener(this);
   }
   function onDisconnect()
   {
      this.oldServerID = -1;
      this.clearPauseProc();
      this.retryPause = setInterval(this,"retryServer",this.SERVER_RETRY_PAUSE * 8);
   }
   function gotoServer()
   {
      if(this.sushi.connectionType == "")
      {
         this.oldServerID = -1;
      }
      if(this.oldServerID != this.serverID)
      {
         if(this.sushi.connectionType != "")
         {
            this.sushi.disconnectFromServer();
         }
         _root.loadBar.info = "Connecting to Town server: Joining Server";
         trace("[SushiConnection] ----- JOINING SERVER  ----------- (" + this.serverIP + " | " + this.serverIP + ")");
         this.serverTries = this.serverTries + 1;
         this.sushi.connectToServer("SOCKET",this.serverIP,int(this.serverPort),"GaiaTown",this.onJoinServer,this);
      }
      else
      {
         trace("[SushiConnection] ----- SAME SERVER  ----------- (" + this.serverIP + " | " + this.serverIP + ")");
         this.findRoom();
      }
   }
   function onJoinServer(error)
   {
      switch(error)
      {
         case 0:
            this.serverTries = 0;
            _root.loadBar.bar._xscale = 25;
            _root.loadBar.info = "Connecting to Town server: Joining Session";
            this.joinSession();
            break;
         case 1:
         default:
         case 2:
         default:
         case 3:
         default:
            trace("[SushiConnection] ----- Server Connection Failed (" + error + ")");
            _root.loadBar.info = "Connecting to Town server: Joining Server Failed";
            if(this.serverTries <= this.TOTAL_SERVER_TRIES)
            {
               this.clearPauseProc();
               if(this.loadingMap)
               {
                  this.retryPause = setInterval(this,"retryServer",this.SERVER_RETRY_PAUSE * this.serverTries);
               }
               else
               {
                  this.retryPause = setInterval(this,"retryServer",this.SERVER_RETRY_PAUSE * this.serverTries);
               }
               break;
            }
            this.parentClass.errorMsg("Town Server","Joining Server Failed","Try reloading Gaia Towns. Report this if it fails the second time.");
            break;
      }
   }
   function authCallback(info)
   {
      if(info == "1")
      {
         this.findRoom();
      }
      else
      {
         _root.loadBar.info = "Connecting to Town server: Joining Session Failed: Invalid User";
      }
   }
   function joinSession()
   {
      if(this.sushi.me.session != -1)
      {
         _root.loadBar.info = "Connecting to Town server: Joining Session Failed";
         trace("[SushiConnection] ----- OOPS!! I\'m already in a sushi session (this is probably a logic bug) --<cleanup performed>---------");
         this.sushi.me.leaveSession();
      }
      trace("[SushiConnection] ----- JOIN SESSION (lobby) -----------");
      this.sessionTries = this.sessionTries + 1;
      var _loc4_ = ["-1","-1","-1","",this.avURL,this.userName,this.gaiaID,"",this.userLvl,!_global.isMiniAvatar?"0":"1",_global.gaiaSessionID];
      this.sushi.me.joinSession(this.gaiaID,1,1,1,_loc4_,this.onJoinSession,this);
   }
   function onJoinSession(error)
   {
      switch(error)
      {
         case 0:
            _root.loadBar.bar._xscale = 50;
            this.sessionTries = 0;
            this.findRoom();
            break;
         case 4:
            _root.loadBar.info = "Connecting to Town server: Joining Session Failed: Already in Towns";
            trace("[SushiConnection] ----- Session Failed (" + error + ") -name collision-");
            this.parentClass.errorMsg("Town Server","Joining Session Failed","You are already logged in to towns. Please close all other towns windows. If you have already closed all towns windows, wait one minute and try again.");
            break;
         case 1:
         default:
         case 2:
         default:
         case 3:
         default:
            _root.loadBar.info = "Connecting to Town server: Joining Session Failed";
            trace("[SushiConnection] ----- Session Failed (" + error + ")");
            this.parentClass.errorMsg("Town Server","Joining Session Failed","Try reloading Gaia Towns. Report this if it fails the second time.");
      }
   }
   function findRoom()
   {
      var _loc4_ = _global.mapData[1].split("_");
      _root.loadBar.info = "Connecting to Town server: Finding Zipcode " + _loc4_[1];
      trace("[SushiConnection] ----- FIND ROOM ----------- (" + this.roomName + ")");
      this.roomTries = this.roomTries + 1;
      this.findRoomID(this.roomName);
   }
   function findRoomID(rmName)
   {
      var _loc3_ = this.sushi.session.getRoomIDs();
      var _loc2_ = 0;
      while(_loc2_ < _loc3_.length)
      {
         if(this.sushi.room.getName(_loc3_[_loc2_]) == rmName)
         {
            this.onRoomFound(_loc3_[_loc2_]);
            return undefined;
         }
         _loc2_ = _loc2_ + 1;
      }
      this.onRoomFound("-1");
   }
   function onRoomFound(roomNum)
   {
      var _loc4_ = this.sushi.room.getNumberOfMembers(roomNum);
      trace("[SushiConnection] Room found! " + this.roomName);
      if(_global.connectionType == "auto" && !_global.isTeleport)
      {
         if(_loc4_ < this.TARGET_ROOM_OCCUPANCY || _loc4_ == undefined)
         {
            this.needToReInit = true;
            if(this.lastZipInstance >= 9)
            {
               _global.jumpZip = undefined;
               _root.stream.destroySequence();
               _root.stream.loadSequence("autoConnect");
               return undefined;
            }
            var _loc5_ = this.roomName.split("_" + this.lastZipInstance).join("_" + this.zipInstance);
            _global.mapData[1] = _loc5_;
            _global.jumpZip = this.roomName.split("gaiahood_").join("");
            this.roomName = _loc5_;
            this.lastZipInstance = this.zipInstance;
            this.zipInstance = this.zipInstance + 1;
            this.findRoom();
            return undefined;
         }
         if(this.needToReInit)
         {
            _global.connectionType = null;
            this.needToReInit = false;
            _loc5_ = this.roomName.split("_" + this.lastZipInstance).join("_" + this.zipInstance);
            _global.mapData[1] = _loc5_;
            _global.jumpZip = this.roomName.split("gaiahood_").join("");
            this.roomName = _loc5_;
            this.lastZipInstance = this.zipInstance;
            this.zipInstance = this.zipInstance + 1;
            _root.stream.loadSequence("town");
            return undefined;
         }
      }
      this.roomID = roomNum;
      if(roomNum == "-1")
      {
         this.createRoom();
      }
      else
      {
         this.changeRoom();
      }
   }
   function createRoom()
   {
      var _loc4_ = _global.mapData[1].split("_");
      _root.loadBar.info = "Connecting to Town server: Create Zipcode " + _loc4_[1] + " instance";
      trace("[SushiConnection] ----- CREATING ROOM NAME: " + this.roomName);
      this.sushi.me.createRoom(this.roomName,"gaia",this.onNewRoom,this);
   }
   function onNewRoom(error, id)
   {
      switch(error)
      {
         case 0:
            this.roomID = id;
            trace("[SushiConnection] ----- NEW ROOM ----------- (" + this.roomID + ")");
            this.roomTries = 0;
            this.changeRoom();
            break;
         case 1:
            trace("[SushiConnection] ----- Create Room Failed (" + error + ")");
            if(this.roomTries <= this.TOTAL_ROOM_TRIES)
            {
               this.clearPauseProc();
               this.retryPause = setInterval(this,"retryRoom",this.ROOM_RETRY_PAUSE);
            }
            else
            {
               this.parentClass.errorMsg("Town Server","Joining Zipcode Failed","Try reloading Gaia Towns. Report this if it fails the second time.");
            }
            break;
         case 2:
         default:
            trace("[SushiConnection] ----- Create Room Failed (" + error + ")");
            this.parentClass.errorMsg("Town Server","Create Zipcode Failed","Try reloading Gaia Towns. Report this if it fails the second time.");
      }
   }
   function changeRoom()
   {
      var _loc4_ = _global.mapData[1].split("_");
      _root.loadBar.info = "Connecting to Town server: Joining Zipcode " + _loc4_[1];
      if(this.sushi.me.room == this.roomID)
      {
         this.saveUserInfo();
         trace("[SushiConnection] ----- OOPS!! I\'m already in this room ----------- (" + this.roomID + ")");
      }
      else
      {
         trace("[SushiConnection] ----- CHANGING ROOM ----------- (" + this.roomID + ")");
         var _loc5_ = ["-1","-1","-1","",this.avURL,this.userName,this.gaiaID,"",this.userLvl,!_global.isMiniAvatar?"0":"1",""];
         this.sushi.room.lock(this.roomID,0);
         this.sushi.me.changeRoom(this.roomID,_loc5_,this.onRoomChanged,this);
      }
   }
   function onRoomChanged(error)
   {
      switch(error)
      {
         case 0:
            _root.loadBar.bar._xscale = 75;
            if(this.loadingMap == false)
            {
               _root.ui_mc.resetSushiListners();
               _root.resetSushiListners();
            }
            this.roomTries = 0;
            this.saveUserInfo();
            break;
         case 3:
            trace("[SushiConnection] ----- Change Room Failed (" + error + ")");
            if(this.roomTries <= this.TOTAL_ROOM_TRIES)
            {
               this.clearPauseProc();
               this.retryPause = setInterval(this,"retryRoom",this.ROOM_RETRY_PAUSE);
            }
            else
            {
               this.parentClass.errorMsg("Town Server","Joining Zipcode Failed","Try reloading Gaia Towns. Report this if it fails the second time.");
            }
            break;
         case 1:
         default:
         case 2:
         default:
         case 4:
         default:
            trace("[SushiConnection] ----- Change Room Failed (" + error + ")");
            this.parentClass.errorMsg("Town Server","Joining Zipcode Failed","Try reloading Gaia Towns. Report this if it fails the second time.");
      }
   }
   function saveUserInfo()
   {
      this.oldServerIP = this.serverIP;
      if(_root.loadBar.bar._xscale != 100)
      {
         _root.loadBar.bar._xscale = 100;
      }
      _root.loadBar.info = "Connecting to Town server: Saving Player Location";
      this.parentClass.nextSequence();
   }
   function writeFinished()
   {
      if(this.loadingMap == true)
      {
         this.loadingMap = false;
         this.parentClass.nextSequence();
      }
   }
   function gotoTrain()
   {
      trace("[SushiConnection] ----- BACK TO TRAINSTATION -----");
      _root.stream.destroySequence();
      _global.scene = "toTrain";
      _root.stream.loadSequence(_global.scene);
   }
   function clearPauseProc()
   {
      if(this.retryPause != null)
      {
         clearInterval(this.retryPause);
         this.retryPause = null;
      }
   }
   function retryServer()
   {
      this.clearPauseProc();
      this.gotoServer();
   }
   function retrySession()
   {
      this.clearPauseProc();
      this.joinSession();
   }
   function retryRoom()
   {
      this.clearPauseProc();
      this.findRoom();
   }
}
