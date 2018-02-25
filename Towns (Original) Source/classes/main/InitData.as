class classes.main.InitData
{
   function InitData(pClass)
   {
      this.parentClass = pClass;
      this.retry50 = this.retry109 = 0;
      this.getInitData();
      if(!_global.myToyManager)
      {
         _global.myToyManager = classes.Toys.Toys.getInstance();
         var _loc3_ = new classes.Toys.SoccerBall();
         var _loc7_ = new classes.Toys.BeachBall();
         var _loc8_ = new classes.Toys.WaterBalloon();
         var _loc11_ = new classes.Toys.WaterGun();
         var _loc13_ = new classes.Toys.Pee();
         var _loc12_ = new classes.Toys.CandyBar();
         var _loc10_ = new classes.Toys.Eggs();
         var _loc9_ = new classes.Toys.ToiletPaper();
         var _loc5_ = new classes.Toys.SnowBalls();
         var _loc6_ = new classes.Toys.FireBall();
         var _loc4_ = new classes.Toys.Cones();
         _global.myToyManager.registerToyInstance("soccerBall",_loc3_,false,true);
         _global.myToyManager.registerToyInstance("beachBall",_loc7_,false,true);
         _global.myToyManager.registerToyInstance("cones",_loc4_,false,true);
         _global.myToyManager.registerToyInstance("waterBalloon",_loc8_,false,true);
         _global.myToyManager.registerToyInstance("waterGun",_loc11_,false,true);
         _global.myToyManager.registerToyInstance("pee",_loc13_,false,true);
         _global.myToyManager.registerToyInstance("candyBar",_loc12_,false,true);
         _global.myToyManager.registerToyInstance("eggs",_loc10_,false,true);
         _global.myToyManager.registerToyInstance("toiletPaper",_loc9_,false,true);
         _global.myToyManager.registerToyInstance("snowBalls",_loc5_,false,true);
         _global.myToyManager.registerToyInstance("fireBall",_loc6_,false,true);
      }
      else
      {
         _global.myToyManager.disableCurrentToy();
      }
   }
   function getInitData()
   {
      var _loc3_ = _global.gsiMethod.queue(50,[],this.initSeqData,this);
      _global.gsiMethod.queue(109,[],_loc3_);
      _global.gsiMethod.queue(10,["avatar_cdn"],_loc3_);
      _global.gsiMethod.queue(115,[],_loc3_);
      _global.gsiMethod.send();
   }
   function guestData(user)
   {
      _global.scene = "train";
      _global.myUserData = [0,user,0,0,1,-1,-1,-1,-1,1];
      this.parentClass.loadSequence("guest");
   }
   function initSeqData(noErr, info, thisClass)
   {
      stop();
      _root.loadBar.info = "";
      _root.loadBar._visible = false;
      if(info[0].success == true && info[1].success == true && info[2].success == true)
      {
         thisClass.retry50 = thisClass.retry109 = 0;
         var _loc7_ = info[0].data;
         this.formatLevelColors(info[3].data);
         if(_loc7_[1].length == 0)
         {
            this.parentClass.errorMsg("50","NA","There are no Town servers to connect to.");
         }
         else
         {
            _global.serverList = info[0].data;
            _global.gaiaSessionID = info[1].data;
            _global.gsiMethod.invoke(2051,[_global.gaiaSessionID],this.questCallback,this);
            _global.ignoreUserManager = new classes.main.IgnoreUserManager();
            var _loc8_ = info[2].data;
            thisClass.selectAvatarHost(_loc8_);
         }
      }
      else if(info[0].success == false)
      {
         if(thisClass.retry50 <= 3)
         {
            thisClass.getInitData();
         }
         else
         {
            this.parentClass.errorMsg("50","Banned User","Cannot load Town server listing.");
         }
         thisClass.retry50 = thisClass.retry50 + 1;
      }
      else if(info[1].success == false)
      {
         var _loc6_ = info[1].data;
         switch(_loc6_[0])
         {
            case "-3":
            case "-4":
            case "-7":
               break;
            default:
               if(thisClass.retry109 <= 3)
               {
                  thisClass.getInitData();
               }
               else
               {
                  this.parentClass.errorMsg("109",_loc6_[0],_loc6_[1]);
               }
               thisClass.retry109 = thisClass.retry109 + 1;
         }
         this.logging = new classes.main.LogIn(thisClass);
      }
   }
   function questCallback(noErr, info, thisClass)
   {
      this.keepAliveTracker = setInterval(this,"sessionUpdate",120000,thisClass);
      if(info[0] == "1")
      {
         _global.isMiniAvatar = true;
      }
      else
      {
         _global.isMiniAvatar = false;
      }
   }
   function sessionUpdate(refObject)
   {
      _global.gsiMethod.invoke("107",[_global.gaiaSessionID],this.sessionKeepAlive_cb,this);
   }
   function sessionKeepAlive_cb(noErr, info, thisClass)
   {
      if(info[0] == -4 || info[0] == "-4")
      {
         clearInterval(this.keepAliveTracker);
         _global.sushi.disconnectFromServer();
         this.parentClass.errorMsg("Session Expired","Session Expired","It appears as if your session has expired.  Please try logging in again.");
      }
   }
   function formatLevelColors(colors)
   {
      var _loc5_ = colors.length;
      var _loc4_ = new Array();
      var _loc2_ = 0;
      while(_loc2_ < _loc5_)
      {
         if(colors[_loc2_][1] == "#000000" || colors[_loc2_][1] == undefined)
         {
            colors[_loc2_][1] = "0xFFFFFF";
         }
         else
         {
            colors[_loc2_][1] = "0x" + colors[_loc2_][1].slice(1,7);
         }
         _loc4_[colors[_loc2_][0]] = [];
         _loc4_[colors[_loc2_][0]].push(colors[_loc2_][1]);
         _loc2_ = _loc2_ + 1;
      }
      _global.levelColors = _loc4_;
   }
   function loggedIn(user)
   {
      delete this.logging;
      user != undefined?this.guestData(user):this.getInitData();
   }
   function errorMsg(meth, errCode, errMsg)
   {
      this.parentClass.errorMsg(meth,errCode,errMsg);
   }
   function selectAvatarHost(rawServerData)
   {
      var _loc8_ = rawServerData.length;
      var _loc4_ = new Array();
      var _loc5_ = undefined;
      var _loc3_ = undefined;
      var _loc6_ = undefined;
      var _loc7_ = undefined;
      _loc6_ = 0;
      while(_loc6_ < _loc8_)
      {
         _loc5_ = rawServerData[_loc6_];
         if(_loc5_[0] == "avatar")
         {
            _loc3_ = parseInt(_loc5_[2]);
            if(_loc4_[_loc3_] == undefined)
            {
               _loc4_[_loc3_] = new Array();
            }
            _loc4_[_loc3_].push(new Array(_loc5_[1],_loc5_[3]));
         }
         _loc6_ = _loc6_ + 1;
      }
      this.avatarServers = new Array();
      _loc3_ = 4;
      while(_loc3_ > 0)
      {
         while(_loc4_[_loc3_].length != 0 && _loc4_[_loc3_] != undefined)
         {
            _loc7_ = Math.floor(Math.random() * _loc4_[_loc3_].length);
            this.avatarServers.push(_loc4_[_loc3_].splice(_loc7_,1)[0]);
         }
         _loc3_ = _loc3_ - 1;
      }
      this.currentServer = -1;
      _global.avatarHost = rawServerData[0][1];
      this.parentClass.nextSequence();
   }
   function checkAvatarServers()
   {
      _root.loadBar._visible = true;
      if(_root.loadBar.bar._xscale != 100)
      {
         _root.loadBar.bar._xscale = 100;
      }
      _root.loadBar.info = "Checking Avatar Servers";
      this.testNextServer();
   }
   function testNextServer()
   {
      var thisClass = this;
      var _loc5_ = undefined;
      var _loc4_ = undefined;
      var _loc3_ = undefined;
      var avQty;
      this.currentServer = this.currentServer + 1;
      if(this.currentServer < this.avatarServers.length - 1)
      {
         _loc3_ = this.avatarServers[this.currentServer][0];
         avQty = parseInt(this.avatarServers[this.currentServer][1]);
         _root.loadBar.info = "Checking Avatar Server: " + _loc3_;
         _loc4_ = new Object();
         _loc4_.server = _loc3_;
         _loc4_.avQty = avQty;
         _loc4_.dead = false;
         _loc4_.onLoadInit = function(target_mc)
         {
            if(this.dead == false)
            {
               clearInterval(thisClass.pingTimer);
               thisClass.foundServer(this.server,this.avQty);
            }
         };
         _loc5_ = new MovieClipLoader();
         _loc5_.addListener(_loc4_);
         _root.aDomain.createEmptyMovieClip(_loc3_,_root.aDomain.getNextHighestDepth());
         _loc5_.loadClip("http://" + _loc3_ + ".gaiaonline.com/pingMarker.swf?X=" + new Date().getTime(),_root.aDomain[_loc3_]);
         this.pingTimer = setInterval(this,"healthCheck",5000,_loc4_);
      }
      else
      {
         _loc3_ = this.avatarServers[this.avatarServers.length - 1][0];
         avQty = parseInt(this.avatarServers[this.avatarServers.length - 1][1]);
         this.foundServer(_loc3_,avQty);
      }
   }
   function healthCheck(oldListener)
   {
      clearInterval(this.pingTimer);
      oldListener.dead = true;
      this.testNextServer();
   }
   function foundServer(theServer, avMaxQty)
   {
      _global.avatarHost = theServer;
      _global.avMax = avMaxQty;
      _root.loadBar.bar._xscale = 0;
      _root.loadBar.info = "";
      this.parentClass.nextSequence();
   }
}
