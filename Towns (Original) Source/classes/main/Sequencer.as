class classes.main.Sequencer
{
   var initTrain = new Array(classes.main.Sequencer.prototype.init,classes.main.Sequencer.prototype.player,classes.main.Sequencer.prototype.allowDomain,classes.main.Sequencer.prototype.gameEvent,classes.main.Sequencer.prototype.buildTrain,classes.main.Sequencer.prototype.gst,classes.main.Sequencer.prototype.mCtrl,classes.main.Sequencer.prototype.goPlay,classes.main.Sequencer.prototype.avatar,classes.main.Sequencer.prototype.npcSpawn,classes.main.Sequencer.prototype.autoScript,classes.main.Sequencer.prototype.updateUI);
   var initAuto = new Array(classes.main.Sequencer.prototype.auto,classes.main.Sequencer.prototype.player,classes.main.Sequencer.prototype.map,classes.main.Sequencer.prototype.gameEvent,classes.main.Sequencer.prototype.buildTown,classes.main.Sequencer.prototype.buildTownHomes,classes.main.Sequencer.prototype.gst,classes.main.Sequencer.prototype.joinSushi,classes.main.Sequencer.prototype.mCtrl,classes.main.Sequencer.prototype.goPlay,classes.main.Sequencer.prototype.avatar,classes.main.Sequencer.prototype.spawn,classes.main.Sequencer.prototype.npcSpawn);
   var toMap = new Array(classes.main.Sequencer.prototype.player,classes.main.Sequencer.prototype.map,classes.main.Sequencer.prototype.gameEvent,classes.main.Sequencer.prototype.buildTown,classes.main.Sequencer.prototype.buildTownHomes,classes.main.Sequencer.prototype.gst,classes.main.Sequencer.prototype.joinSushi,classes.main.Sequencer.prototype.mCtrl,classes.main.Sequencer.prototype.goPlay,classes.main.Sequencer.prototype.avatar,classes.main.Sequencer.prototype.spawn,classes.main.Sequencer.prototype.npcSpawn);
   var initTown = new Array(classes.main.Sequencer.prototype.init,classes.main.Sequencer.prototype.player,classes.main.Sequencer.prototype.allowDomain,classes.main.Sequencer.prototype.gameEvent,classes.main.Sequencer.prototype.map,classes.main.Sequencer.prototype.buildTown,classes.main.Sequencer.prototype.buildTownHomes,classes.main.Sequencer.prototype.gst,classes.main.Sequencer.prototype.joinSushi,classes.main.Sequencer.prototype.mCtrl,classes.main.Sequencer.prototype.goPlay,classes.main.Sequencer.prototype.avatar,classes.main.Sequencer.prototype.spawn,classes.main.Sequencer.prototype.npcSpawn,classes.main.Sequencer.prototype.updateUI);
   var initHome = new Array(classes.main.Sequencer.prototype.init,classes.main.Sequencer.prototype.player,classes.main.Sequencer.prototype.allowDomain,classes.main.Sequencer.prototype.gameEvent,classes.main.Sequencer.prototype.home,classes.main.Sequencer.prototype.map,classes.main.Sequencer.prototype.hCtrl,classes.main.Sequencer.prototype.buildHome,classes.main.Sequencer.prototype.gst,classes.main.Sequencer.prototype.joinSushi,classes.main.Sequencer.prototype.joinSubRoom,classes.main.Sequencer.prototype.goPlay,classes.main.Sequencer.prototype.avatar,classes.main.Sequencer.prototype.updateUI);
   var toTrain = new Array(classes.main.Sequencer.prototype.cleanupTown);
   var toHome = new Array(classes.main.Sequencer.prototype.player,classes.main.Sequencer.prototype.avatar,classes.main.Sequencer.prototype.gameEvent,classes.main.Sequencer.prototype.hCtrl,classes.main.Sequencer.prototype.buildHome,classes.main.Sequencer.prototype.gst,classes.main.Sequencer.prototype.joinSubRoom,classes.main.Sequencer.prototype.goPlay,classes.main.Sequencer.prototype.avatar);
   var initGuest = new Array(classes.main.Sequencer.prototype.buildTrain,classes.main.Sequencer.prototype.gst,classes.main.Sequencer.prototype.goPlay,classes.main.Sequencer.prototype.mCtrl,classes.main.Sequencer.prototype.avatar,classes.main.Sequencer.prototype.npcSpawn);
   function Sequencer(scene)
   {
      this.sushi = _global.sushi;
      this.theScene = scene;
      this.loadSequence(scene);
   }
   function loadSequence(scene)
   {
      trace("[Sequencer] Load Sequence: " + scene);
      this.seqPointer = 0;
      switch(scene)
      {
         case "train":
            this.path = this.initTrain;
            break;
         case "town":
            this.path = this.initTown;
            break;
         case "autoConnect":
            this.path = this.initAuto;
            this.splash();
            break;
         case "home":
            this.path = this.initHome;
            break;
         case "guest":
            this.path = this.initGuest;
            break;
         case "toTrain":
            this.path = this.toTrain;
            this.splash();
            break;
         case "toHome":
            this.path = this.toHome;
            this.houseTrans();
            break;
         case "toMap":
            this.path = this.toMap;
            this.splash();
      }
      this.path[0].call(this);
   }
   function splash()
   {
      _root.attachMovie("lBar","loadBar",10);
      _root.attachMovie("title","splash",9);
      _root.splash.onRollOver = function()
      {
      };
      _root.splash.useHandCursor = false;
      _root.loadBar.bar._xscale = 0;
      _root.loadBar._x = 220;
      _root.loadBar._y = 510;
   }
   function errorMsg(meth, errCode, errMsg)
   {
      _root.loadBar._visible = false;
      _root.attachMovie("errorPanel","errorPanel",6000);
      _root.errorPanel._x = Stage.width / 2;
      _root.errorPanel._y = 400;
      _root.errorPanel.info = "Method: " + meth + "\n";
      _root.errorPanel.info = _root.errorPanel.info + ("Error Code: " + errCode + "\n");
      _root.errorPanel.info = _root.errorPanel.info + ("Error: " + errMsg + "\n\n");
      _root.errorPanel.info = _root.errorPanel.info + "Please copy and paste the above message and send it to games@gaiaonline.com";
   }
   function houseTrans()
   {
      _root.attachMovie("lBar","loadBar",10);
      _root.attachMovie("houseTrans","splash",9);
      _root.splash.onRollOver = function()
      {
      };
      _root.splash.useHandCursor = false;
      _root.splash._x = Stage.width / 2;
      _root.splash._y = Stage.height / 2;
      _root.loadBar.bar._xscale = 0;
      _root.loadBar._x = 220;
      _root.loadBar._y = 510;
   }
   function nextSequence()
   {
      delete this.sequence;
      this.seqPointer = this.seqPointer + 1;
      this.path[this.seqPointer].call(this);
   }
   function init()
   {
      _root.loadBar._visible = true;
      if(_root.loadBar.bar._xscale != 100)
      {
         _root.loadBar.bar._xscale = 100;
      }
      _root.loadBar.info = "Retrieving Town server listing and Gaia Session ID";
      this.sequence = new classes.main.InitData(this);
   }
   function allowDomain()
   {
      trace("[Sequencer] ##### LOADING ALLOW DOMAIN ##### " + _global.avatarHost);
      System.security.allowDomain(_global.avatarHost + ".gaiaonline.com");
      var thisClass = this;
      _root.loadBar._visible = true;
      if(_root.loadBar.bar._xscale != 100)
      {
         _root.loadBar.bar._xscale = 100;
      }
      _root.loadBar.info = "Validating " + _global.avatarHost;
      var _loc5_ = new Object();
      _loc5_.onLoadInit = function(target_mc)
      {
         _root.loadBar.bar._xscale = 0;
         _root.loadBar.info = "";
         thisClass.nextSequence();
      };
      var _loc4_ = new MovieClipLoader();
      _loc4_.addListener(_loc5_);
      _loc4_.loadClip("http://" + _global.avatarHost + ".gaiaonline.com/allow_domain.swf",_root.aDomain);
   }
   function player()
   {
      trace("[Sequencer] ##### Player Data #####");
      _root.loadBar._visible = true;
      if(_root.loadBar.bar._xscale != 100)
      {
         _root.loadBar.bar._xscale = 100;
      }
      _root.loadBar.info = "Retrieving Event and Avatar Data";
      this.sequence = new classes.main.PlayerData(this);
   }
   function gameEvent()
   {
      trace("[Sequencer] ##### EVENT #####");
      _root.loadBar._visible = true;
      if(_root.loadBar.bar._xscale != 100)
      {
         _root.loadBar.bar._xscale = 100;
      }
      _root.loadBar.info = "Retrieving Site Event";
      this.sequence = new classes.main.EventData(this);
   }
   function alert(msg)
   {
      var _loc1_ = "javascript:alert(\'" + msg + "\');";
      getURL(_loc1_,"");
   }
   function checkJump()
   {
      var _loc4_ = new classes.controllers.JumpController();
      if(_root.dirFlag == 1)
      {
         _root.dirFlag = 0;
         _loc4_.setJumpFlag(true);
         _loc4_.setStart(_root.doorX,_root.doorY);
         _global.jumpZip = Number(_root.jumpTO);
         _global.scene = "toMap";
         _root.jumpTO = undefined;
         _global.uiCtrl.dirState();
         return undefined;
      }
      var _loc5_ = SharedObject.getLocal("gloc");
      trace("jumpZip=" + _loc5_.data.jumpZip);
      if(_root.jumpTO != undefined)
      {
         trace("JUMP TO");
         _loc4_.setJumpFlag(true);
         _loc4_.setStart(_root.doorX,_root.doorY);
         _global.jumpZip = Number(_root.jumpTO);
         trace("jumpTo=" + Number(_root.jumpTO));
         _global.scene = "toMap";
         this.loadSequence("toMap");
         _global.uiCtrl.dirState(false);
         _root.jumpTO = undefined;
      }
   }
   function map()
   {
      trace("[Sequencer] ##### Map Data #####");
      var _loc4_ = _global.jumpZip + "";
      trace("zipCode=" + _loc4_);
      var _loc5_ = _loc4_.substring(0,1) + " Barton " + _loc4_.substr(2,8);
      _root.loadBar._visible = true;
      if(_root.loadBar.bar._xscale != 100)
      {
         _root.loadBar.bar._xscale = 100;
      }
      _root.loadBar.info = "Retrieving " + _loc5_ + ": Data";
      if(_global.jumpZip == 0 || _global.jumpZip == undefined)
      {
         this.errorMsg("Zipcode Look up","NA","The current Zipcode \"" + _global.jumpZip + "\" cannot be found.");
      }
      else
      {
         this.sequence = new classes.main.MapData(this);
      }
   }
   function auto()
   {
      this.sequence = new classes.main.AutoConnect(this);
   }
   function home()
   {
      this.sequence = new classes.main.HomeData(this);
   }
   function buildEvent()
   {
      this.townEvent = new classes.main.BuildEvent(this);
   }
   function buildTrain()
   {
      trace("[Sequencer] ##### Build Trainstation #####");
      _root.loadBar._visible = true;
      _root.loadBar.bar._xscale = 0;
      _root.loadBar.info = "Loading Trainstation";
      this.sequence = new classes.main.BuildTrain(this);
   }
   function buildTown()
   {
      trace("[Sequencer] ##### Build Town #####");
      var _loc4_ = _global.mapData[0].substring(0,1) + " Barton " + _global.mapData[0].substr(2,8);
      _root.loadBar._visible = true;
      _root.loadBar.bar._xscale = 0;
      _root.loadBar.info = "Loading " + _loc4_ + ": Map";
      this.sequence = new classes.main.BuildTown(this);
   }
   function buildHome()
   {
      trace("save zip=" + _global.jumpZip);
      if(_global.jumpZip != "91137210")
      {
         var _loc3_ = SharedObject.getLocal("gloc");
         _loc3_.data.scene = _global.scene;
         _loc3_.data.jumpZip = _global.jumpZip;
         _loc3_.data.gHouseId = _global.gHouseId;
         _loc3_.data.jumpFlag = 1;
         _loc3_.flush();
      }
      this.sequence = new classes.main.BuildHome(this);
   }
   function buildTownHomes()
   {
      trace("[Sequencer] ##### Build Homes #####");
      var _loc4_ = _global.mapData[0].substring(0,1) + " Barton " + _global.mapData[0].substr(2,8);
      _root.loadBar._visible = true;
      _root.loadBar.bar._xscale = 0;
      _root.loadBar.info = "Loading " + _loc4_ + ": Homes";
      this.sequence = new classes.main.BuildTownHomes(this);
   }
   function gst()
   {
      if(_global.isAltRoom)
      {
         this.nextSequence();
         return undefined;
      }
      _root.loadBar._visible = true;
      if(_root.loadBar.bar._xscale != 100)
      {
         _root.loadBar.bar._xscale = 100;
      }
      _root.loadBar.info = "Retrieving Gaia Standard Time (GST)";
      _global.gst = new classes.environment.GST(this);
   }
   function autoScript()
   {
      this.sequence = new classes.main.AutoScript(this);
   }
   function joinSushi()
   {
      trace("[Sequencer] ##### Join Sushi #####");
      _root.loadBar._visible = true;
      _root.loadBar.bar._xscale = 0;
      _root.loadBar.info = "Connecting to Town server";
      this.sushiCon = new classes.chat.SushiConnection(this);
   }
   function joinSubRoom()
   {
      this.sushiSubCon = new classes.chat.SubChat(this);
   }
   function goPlay()
   {
      trace("[Sequencer] ##### goPlay #####");
      this.sequence = new classes.main.PlayGame(this);
      this.checkJump();
   }
   function mCtrl()
   {
      trace("[Sequencer] ##### Map Controller #####");
      _root.loadBar._visible = true;
      if(_root.loadBar.bar._xscale != 100)
      {
         _root.loadBar.bar._xscale = 100;
      }
      _root.loadBar.info = "Loading Map Controller";
      this.mapControl = new classes.environment.MapController(this);
   }
   function hCtrl()
   {
      _global.gMapController = new classes.environment.MapControllerHome(this);
   }
   function spawn()
   {
      trace("[Sequencer] ##### spawn #####");
      if(!_global.isAltRoom)
      {
         this.spawning = new classes.collectables.Spawn(this);
      }
   }
   function npcSpawn()
   {
      this.npc = new classes.npc.NPCGenarator(_global.scene,this);
   }
   function cleanupTown()
   {
      if(this.sushi.me.session != -1)
      {
         this.sushi.me.leaveSession();
      }
      if(this.sushi.connectionType != "")
      {
         this.sushi.disconnectFromServer();
      }
      for(var _loc3_ in _global)
      {
         delete _global.register3;
      }
      loadMovieNum("towns.swf",0,"GET");
   }
   function avatar()
   {
      trace("[Sequencer] ##### avatar #####");
      _global.gAvMan = classes.avatar.AvatarManager.getAvatarManager();
      _global.gAvMan.resetListeners();
      _global.gAvMan.makeAllMembers();
      _global.gAvMan.makeMe();
      if(this.jumpFlag == true)
      {
         var _loc3_ = SharedObject.getLocal("gloc");
      }
      this.nextSequence();
   }
   function destroySequence()
   {
      delete this.gTime;
      _global.gAvMan.removeAll();
      this.spawning.destroy();
      this.npc.destroy();
      this.mapControl.destroy();
      delete _global.gMapController;
      this.sushiCon.destroy();
      this.sushiSubCon.destroy();
      var _loc4_ = 0;
      while(_loc4_ < _global.gHomes.length)
      {
         _global.gHomes[_loc4_].remove();
         _loc4_ = _loc4_ + 1;
      }
      _global.gHomes = [];
      delete _global.gAvMan;
      delete this.spawning;
      delete this.npc;
      delete this.mapControl;
      delete this.sushiCon;
      delete this.sushiSubCon;
      _global.gCanvas.unloadMovie();
      this.sequence.destroy();
      _root.loadBar.bar._xscale = 0;
      delete this.sequence;
   }
   function updateUI()
   {
      var _loc3_ = _global.myUserData[0];
      var _loc8_ = _global.gaiaSessionID;
      var _loc7_ = 100251;
      var _loc5_ = 100426;
      var _loc6_ = 100425;
      var _loc4_ = _global.gsiMethod.queue(397,[_global.gaiaSessionID,_global.myUserData[0]],this.invGameData,this);
      _global.gsiMethod.queue(311,[_global.gaiaSessionID,_loc3_,_loc5_],_loc4_);
      _global.gsiMethod.queue(311,[_global.gaiaSessionID,_loc3_,_loc7_],_loc4_);
      _global.gsiMethod.queue(311,[_global.gaiaSessionID,_loc3_,_loc6_],_loc4_);
      _global.gsiMethod.send();
   }
   function invGameData(noErr, info, thisClass)
   {
      _global.completeListing = new Array();
      var _loc3_ = info[0].data;
      var _loc6_ = _loc3_[0];
      if(_loc6_ > 0)
      {
         _root.ui_mc.uiArea.toyBag._visible = true;
      }
      _loc3_ = info[1].data;
      var _loc8_ = _loc3_[0];
      if(_loc8_ > 0)
      {
         _root.ui_mc.uiArea.toyBag._visible = true;
      }
      _loc3_ = info[2].data;
      var _loc7_ = _loc3_[0];
      if(_loc7_ > 0)
      {
         _root.ui_mc.uiArea.toyBag._visible = true;
      }
      _loc3_ = info[3].data;
      var _loc5_ = _loc3_[0];
      if(_loc5_ > 0)
      {
         _root.ui_mc.uiArea.toyBag._visible = true;
      }
   }
   function makeAutoConnection()
   {
      _root.stream.destroySequence();
      _global.connectionType = "auto";
      _global.scene = "autoConnect";
      this.loadSequence(_global.scene);
   }
   function goToDirectory()
   {
      _global.uiCtrl.dirState();
   }
}
