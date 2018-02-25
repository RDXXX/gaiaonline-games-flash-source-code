class classes.main.BuildTown
{
   var loadSeq = new Array(classes.main.BuildTown.prototype.layout,classes.main.BuildTown.prototype.terrain,classes.main.BuildTown.prototype.setLayout,classes.main.BuildTown.prototype.arrows);
   function BuildTown(pClass)
   {
      _global.ignoreUserManager.resetIgnoreData();
      this.parentClass = pClass;
      var thisClass = this;
      this.retry = 0;
      this.niceZip = _global.mapData[0].substring(0,1) + " Barton " + _global.mapData[0].substr(2,8);
      _global.uiCtrl.showSoccerBall();
      var _loc4_ = _global.mapData[0].substr(2,8);
      this.poolID = _loc4_.charAt(5);
      this.swfListener = new Object();
      this.swfListener.onLoadError = function(target_mc, errorCode, httpStatus)
      {
         thisClass.retryServer(target_mc,errorCode,httpStatus);
      };
      this.swfListener.onLoadStart = function(target_mc)
      {
         _root.loadBar.bar._xscale = 0;
      };
      this.swfListener.onLoadProgress = function(target_mc, bytesLoaded, bytesTotal)
      {
         _root.loadBar.bar._xscale = bytesLoaded / bytesTotal * 100;
      };
      this.swfListener.onLoadInit = function(target_mc)
      {
         _root.loadBar.bar._xscale = 0;
         _root.loadBar.info = "";
         thisClass.nextSequence();
      };
      this.seqPointer = 0;
      this.loadSeq[this.seqPointer].call(this);
   }
   function retryServer(target_mc, errorCode, httpStatus)
   {
      if(this.retry <= 3)
      {
         this.loadSeq[this.seqPointer].call(this);
      }
      this.errDisplay(target_mc,errorCode,httpStatus);
      this.retry = this.retry + 1;
   }
   function nextSequence()
   {
      this.seqPointer = this.seqPointer + 1;
      this.loadSeq[this.seqPointer].call(this);
   }
   function errDisplay(mc, errorCode, httpStatus)
   {
      var _loc2_ = "";
      switch(mc)
      {
         case _level0.canvas_mc:
            _loc2_ = "Loading Towns Map Environment Failed";
            break;
         case _level0.canvas_mc.mapTerrain:
            _loc2_ = "Loading Towns Map Terrain Failed";
      }
      httpStatus = httpStatus + ("\nTown Address: " + this.niceZip);
      this.parentClass.errorMsg(_loc2_,errorCode,httpStatus);
   }
   function layout()
   {
      _root.loadBar.info = "Loading " + this.niceZip + ": Map Environment";
      var _loc4_ = new MovieClipLoader();
      _loc4_.addListener(this.swfListener);
      var _loc5_ = this.isChessRoom();
      _global.isInChess = _loc5_;
      switch(parseInt(_global.eventID))
      {
         case _global.EVENT_WINTER:
            _loc4_.loadClip(_global.filePath + "maps/barton_winter/rural_environment.swf",_global.gCanvas);
            break;
         case _global.EVENT_HALLOWEEN:
            if(_global.isInChess)
            {
               _loc4_.loadClip(_global.filePath + "maps/barton_standard/rural_environment.swf",_global.gCanvas);
               _root.ui_mc.mapInfo.eventHalloweenInv._visible = false;
            }
            else
            {
               _loc4_.loadClip(_global.filePath + "maps/barton_holloween/rural_environment.swf",_global.gCanvas);
               _root.ui_mc.mapInfo.eventHalloweenInv._visible = true;
            }
            break;
         case _global.EVENT_XMAS:
            _loc4_.loadClip(_global.filePath + "maps/barton_christmas/rural_environment.swf",_global.gCanvas);
            break;
         case _global.EVENT_SUMMER:
            _global.POOL = true;
            if(_global.isInChess)
            {
               _loc4_.loadClip(_global.filePath + "maps/barton_standard/rural_environment.swf",_global.gCanvas);
            }
            else
            {
               _loc4_.loadClip(_global.filePath + "maps/barton_summer/rural_environment.swf",_global.gCanvas);
            }
            break;
         default:
            _loc4_.loadClip(_global.filePath + "maps/barton_standard/rural_environment.swf",_global.gCanvas);
      }
   }
   function terrain()
   {
      _root.loadBar.info = "Loading " + this.niceZip + ": Map Terrain";
      _global.gCanvas.createEmptyMovieClip("mapTerrain",2);
      var _loc4_ = new MovieClipLoader();
      _loc4_.addListener(this.swfListener);
      if(_global.isInChess)
      {
         if(_global.sponsorshipEvent == "madagascar2")
         {
            _loc4_.loadClip(_global.filePath + "maps/barton_standard/rural_terrain_madagascar.swf",_global.gCanvas.mapTerrain);
         }
         else
         {
            _loc4_.loadClip(_global.filePath + "maps/barton_winter/rural_terrain_chess.swf",_global.gCanvas.mapTerrain);
         }
      }
      else
      {
         switch(parseInt(_global.eventID))
         {
            case 10:
               _loc4_.loadClip(_global.filePath + "maps/barton_holloween/rural_terrain_" + _global.mapData[13] + ".swf",_global.gCanvas.mapTerrain);
               break;
            case _global.EVENT_XMAS:
               _loc4_.loadClip(_global.filePath + "maps/barton_christmas/rural_terrain_" + _global.mapData[13] + ".swf",_global.gCanvas.mapTerrain);
               break;
            case _global.EVENT_WINTER:
               _loc4_.loadClip(_global.filePath + "maps/barton_winter/rural_terrain_" + _global.mapData[13] + ".swf",_global.gCanvas.mapTerrain);
               break;
            default:
               if(_global.mapData[13] == 1)
               {
                  if(_global.sponsorshipEvent == "housebunny")
                  {
                     _loc4_.loadClip(_global.filePath + "maps/barton_standard/rural_terrain_1_house.swf",_global.gCanvas.mapTerrain);
                  }
                  else
                  {
                     _loc4_.loadClip(_global.filePath + "maps/barton_standard/rural_terrain_" + _global.mapData[13] + ".swf",_global.gCanvas.mapTerrain);
                  }
                  break;
               }
               _loc4_.loadClip(_global.filePath + "maps/barton_standard/rural_terrain_" + _global.mapData[13] + ".swf",_global.gCanvas.mapTerrain);
               break;
         }
      }
   }
   function isChessRoom()
   {
      var _loc2_ = 0;
      while(_loc2_ < _global.chessRoomArray.length)
      {
         if(_global.mapData[10] == _global.chessRoomArray[_loc2_] && _global.mapHomeData.length < 6)
         {
            return true;
         }
         _loc2_ = _loc2_ + 1;
      }
      return false;
   }
   function loadToys()
   {
      _global.beaconClip = _global.gCanvas.createEmptyMovieClip("beaconHolder",_global.gCanvas.getNextHighestDepth());
      var _loc10_ = new MovieClipLoader();
      _loc10_.loadClip(_global.filePath + "toys/commonAssets/beacon.swf",_global.beaconClip);
      _global.soccerBallClip = _global.gCanvas.clipping_canvas.createEmptyMovieClip("soccerBallHolder",_global.gCanvas.clipping_canvas.getNextHighestDepth());
      var _loc3_ = new MovieClipLoader();
      _loc3_.loadClip(_global.filePath + "toys/items/soccerBall.swf",_global.soccerBallClip);
      _global.beachBallClip = _global.gCanvas.clipping_canvas.createEmptyMovieClip("beachBallHolder",_global.gCanvas.clipping_canvas.getNextHighestDepth());
      _loc3_.loadClip(_global.filePath + "toys/items/beachBall.swf",_global.beachBallClip);
      _global.waterBalloonClip = _global.gCanvas.createEmptyMovieClip("waterBalloonClip",_global.gCanvas.getNextHighestDepth());
      _global.waterBalloonCrosshairs = _global.gCanvas.createEmptyMovieClip("waterBalloonCrossHairs",500);
      var _loc2_ = new MovieClipLoader();
      _loc2_.loadClip(_global.filePath + "toys/items/waterBalloon.swf",_global.waterBalloonClip);
      _loc2_.loadClip(_global.filePath + "toys/items/waterBalloon.swf",_global.waterBalloonCrosshairs);
      _global.waterBalloonClip._visible = false;
      _global.waterGunClip = _global.gCanvas.createEmptyMovieClip("waterGunClip",501);
      var _loc9_ = new MovieClipLoader();
      _loc9_.loadClip(_global.filePath + "toys/items/waterGun.swf",_global.waterGunClip);
      _global.toiletPaperClip = _global.gCanvas.createEmptyMovieClip("toiletPaperClip",_global.gCanvas.getNextHighestDepth());
      _global.toiletPaperCrosshairs = _global.gCanvas.createEmptyMovieClip("toiletPaperCrossHairs",600);
      var _loc4_ = new MovieClipLoader();
      _loc4_.loadClip(_global.filePath + "toys/items/toiletPaper.swf",_global.toiletPaperClip);
      _loc4_.loadClip(_global.filePath + "toys/items/toiletPaper.swf",_global.toiletPaperCrosshairs);
      _global.toiletPaperClip._visible = false;
      _global.eggClip = _global.gCanvas.createEmptyMovieClip("eggClip",_global.gCanvas.getNextHighestDepth());
      _global.eggCrosshairs = _global.gCanvas.createEmptyMovieClip("eggCrossHairs",600);
      var _loc5_ = new MovieClipLoader();
      _loc5_.loadClip(_global.filePath + "toys/items/eggs.swf",_global.eggClip);
      _loc5_.loadClip(_global.filePath + "toys/items/eggs.swf",_global.eggCrosshairs);
      _global.eggClip._visible = false;
      _global.snowBallClip = _global.gCanvas.createEmptyMovieClip("snowBallClip",_global.gCanvas.getNextHighestDepth());
      _global.snowBallCrosshairs = _global.gCanvas.createEmptyMovieClip("snowBallCrossHairs",600);
      var _loc7_ = new MovieClipLoader();
      _loc7_.loadClip(_global.filePath + "toys/items/snowBalls.swf",_global.snowBallClip);
      _loc7_.loadClip(_global.filePath + "toys/items/snowBalls.swf",_global.snowBallCrosshairs);
      _global.snowBallClip._visible = false;
      _global.conesClip = _global.gCanvas.mapTerrain.createEmptyMovieClip("cones",_global.gCanvas.getNextHighestDepth());
      _global.conesrosshairs = _global.gCanvas.mapTerrain.createEmptyMovieClip("conesCrossHairs",600);
      var _loc8_ = new MovieClipLoader();
      _loc8_.loadClip(_global.filePath + "toys/items/cones.swf",_global.conesClip);
      _loc8_.loadClip(_global.filePath + "toys/items/cones.swf",_global.conesCrosshairs);
      _global.conesClip._visible = false;
      _global.fireBallClip = _global.gCanvas.createEmptyMovieClip("fireBallClip",_global.gCanvas.getNextHighestDepth());
      _global.fireBallCrossHairs = _global.gCanvas.createEmptyMovieClip("fireBallCrossHairs",600);
      var _loc6_ = new MovieClipLoader();
      _loc6_.loadClip(_global.filePath + "toys/items/fireBall.swf",_global.fireBallClip);
      _loc6_.loadClip(_global.filePath + "toys/items/fireBall.swf",_global.fireBallCrossHairs);
      _global.fireBallClip._visible = false;
      _global.myToyManager.initToyVars();
   }
   function setLayout()
   {
      _root.loadBar.info = "Loading " + this.niceZip + ": Map Bulletin";
      var _loc7_ = _global.mapData[0].charAt(0) != "5"?parseInt(_global.mapData[14]) + 1:_global.mapData[14];
      _global.myToyManager.disableCurrentToy();
      _global.hasFountain = false;
      if(_global.isMiniAvatar)
      {
         _global.gsiMethod.invoke(2052,[_global.gaiaSessionID,0],this.setMiniAvatarCB);
      }
      if(_global.isInChess)
      {
         if(_global.sponsorshipEvent == "madagascar2")
         {
            _global.gCanvas.attachMovie("mask_madagascar","mask_canvas",1);
            _global.gCanvas.attachMovie("canvas_madagascar","clipping_canvas",3);
            _global.gCanvas.clipping_canvas.jeep.sensor.ref = this;
            _global.gCanvas.clipping_canvas.jeep.sensor.onPress = function()
            {
               this.ref.gotoProfile("15877776");
            };
            _root.ui_mc.uiArea.returnToTown._visible = false;
         }
         else
         {
            _global.gCanvas.attachMovie("mask_13","mask_canvas",1);
            _global.gCanvas.attachMovie("canvas_13","clipping_canvas",3);
            _root.ui_mc.uiArea.returnToTown._visible = false;
         }
      }
      else if(_global.isAltRoom)
      {
         _global.gsiMethod.invoke(4000,[_global.gaiaSessionID,503],this.questCallback);
         _global.gCanvas.attachMovie("mask_12","mask_canvas",1);
         _global.gCanvas.attachMovie("canvas_12","clipping_canvas",3);
         _root.ui_mc.uiArea.returnToTown._visible = true;
      }
      else if(_loc7_ == 1)
      {
         if(_global.sponsorshipEvent == "housebunny")
         {
            _global.gCanvas.attachMovie("mask_1_house","mask_canvas",1);
            _global.gCanvas.attachMovie("canvas_1_house","clipping_canvas",3);
         }
         else
         {
            _global.gCanvas.attachMovie("mask_1","mask_canvas",1);
            _global.gCanvas.attachMovie("canvas_1","clipping_canvas",3);
         }
         _root.ui_mc.uiArea.returnToTown._visible = false;
      }
      else
      {
         _global.gCanvas.attachMovie("mask_" + _loc7_,"mask_canvas",1);
         _global.gCanvas.attachMovie("canvas_" + _loc7_,"clipping_canvas",3);
         _root.ui_mc.uiArea.returnToTown._visible = false;
      }
      var _loc11_ = new classes.environment.Bulletin();
      _global.gCanvas.createEmptyMovieClip("forground",4);
      _global.gCanvas.createEmptyMovieClip("flying_canvas",5);
      _global.gCanvas.createEmptyMovieClip("chat_mc",6);
      _root.ui_mc.mapInfo.mapTitle = _global.mapData[10];
      if(_global.mapData[13] == 1)
      {
         if(parseInt(_global.eventID) == _global.EVENT_XMAS || parseInt(_global.eventID) == _global.EVENT_WINTER)
         {
            var _loc8_ = _global.gCanvas.clipping_canvas.createEmptyMovieClip("iceRink",_global.gCanvas.clipping_canvas.getNextHighestDepth());
            _loc8_.loadMovie(_global.filePath + "structures/iceRink.swf");
            _loc8_._x = 512;
            _loc8_._y = 442;
            _global.snackStandMgr = new structures.classes.Stands();
         }
         else if(_global.POOL)
         {
            if(this.poolID % 2 != 0)
            {
               var _loc10_ = "pool_1";
               _global.poolNum = 1;
            }
            else
            {
               _loc10_ = "pool_2";
               _global.poolNum = 2;
            }
            var _loc4_ = _global.gCanvas.clipping_canvas.createEmptyMovieClip("pool",_global.gCanvas.clipping_canvas.getNextHighestDepth());
            _global.poolMgr = new structures.classes.Pool();
            _global.poolMgr.init(_loc4_);
            _loc4_.loadMovie(_global.filePath + "structures/" + _loc10_ + ".swf");
            _loc4_._x = 512;
            _loc4_._y = 442;
            _global.snackStandMgr = new structures.classes.Stands();
            var _loc9_ = _global.gCanvas.forground.attachMovie("Torches","Torches",_global.gCanvas.forground.getNextHighestDepth());
            _loc9_._x = 495;
            _loc9_._y = 190;
         }
         else if(parseInt(_global.eventID) == 10)
         {
            var _loc5_ = _global.gCanvas.clipping_canvas.createEmptyMovieClip("graveyard",_global.gCanvas.clipping_canvas.getNextHighestDepth());
            _loc5_.loadMovie(_global.filePath + "structures/graveyard.swf");
            _loc5_._x = 512;
            _loc5_._y = 442;
         }
         else
         {
            var _loc6_ = _global.gCanvas.clipping_canvas.createEmptyMovieClip("fountain",_global.gCanvas.clipping_canvas.getNextHighestDepth());
            _loc6_.loadMovie(_global.filePath + "structures/fountain.swf");
            _loc6_._x = 512;
            _loc6_._y = 442;
            _global.hasFountain = true;
         }
         _global.myToyManager.showAllToys();
      }
      else
      {
         _global.myToyManager.hideAllToys();
      }
      this.loadToys();
      this.nextSequence();
   }
   function gotoProfile(id)
   {
      getURL("http://www.gaiaonline.com/profiles/" + id,"_blank");
   }
   function questCallback(noErr, info, thisClass)
   {
      if(info[0] == "1")
      {
         var _loc3_ = "trigger_key-spiderwick_movie_get_item";
         var _loc4_ = _global.gsiMethod.queue(1125,[_global.gaiaSessionID,11,_loc3_],this.itemGrantedCallBack,this);
         if(_global.isMiniAvatar)
         {
            _global.gsiMethod.invoke(2052,[_global.gaiaSessionID,0],this.setMiniAvatarCB);
         }
         _global.gsiMethod.send();
         _global.gCanvas.clipping_canvas.beeNPC.npcMessage = "So, how do you like the forest? Pretty sweet, huh? Anyway, you can hang out in here for as long as you\'d like. Click <a href=\'http://" + _global.domainURL + "/npc/talk?npc_id=129\' target=\'_blank\'><font color=\'#000099\'>here</font></a> to get your item!";
      }
      else
      {
         _global.gCanvas.clipping_canvas.beeNPC.npcMessage = "Back in the enchanted forest, huh? I don\'t blame you, it\'s a pretty great place to hang out. You can get back here whenever you want by watching the Spiderwick Chronicles trailer again, but I\'m afraid I\'ve run out of items to give you.";
      }
   }
   function setMiniAvatarCB()
   {
   }
   function itemGrantedCallBack(noErr, info, thisClass)
   {
   }
   function arrows()
   {
      var _loc5_ = _global.mapData[5][0];
      var _loc6_ = _global.mapData[5][1];
      var _loc8_ = _global.mapData[5][2];
      var _loc7_ = _global.mapData[5][3];
      var _loc4_ = function(nextZip)
      {
         _root.stream.destroySequence();
         _global.scene = "toMap";
         _global.jumpZip = nextZip;
         _root.stream.loadSequence(_global.scene);
         _global.uiCtrl.dirState(false);
      };
      _root.ui_mc.navArrows.disable();
      _root.ui_mc.navArrows.setMapSize(1024,1024);
      if(_loc5_.length < 8 || _loc5_ == undefined)
      {
         _root.ui_mc.navArrows.disable(ui.JumpPoints.NORTH);
         _root.ui_mc.navArrows.clearCallback(ui.JumpPoints.NORTH);
      }
      else
      {
         _root.ui_mc.navArrows.enable(ui.JumpPoints.NORTH);
         _root.ui_mc.navArrows.setCallback(ui.JumpPoints.NORTH,_loc4_,[_loc5_]);
      }
      if(_loc6_.length < 8 || _loc6_ == undefined)
      {
         _root.ui_mc.navArrows.disable(ui.JumpPoints.SOUTH);
         _root.ui_mc.navArrows.clearCallback(ui.JumpPoints.SOUTH);
      }
      else
      {
         _root.ui_mc.navArrows.enable(ui.JumpPoints.SOUTH);
         _root.ui_mc.navArrows.setCallback(ui.JumpPoints.SOUTH,_loc4_,[_loc6_]);
      }
      if(_loc8_.length < 8 || _loc8_ == undefined)
      {
         _root.ui_mc.navArrows.disable(ui.JumpPoints.EAST);
         _root.ui_mc.navArrows.clearCallback(ui.JumpPoints.EAST);
      }
      else
      {
         _root.ui_mc.navArrows.enable(ui.JumpPoints.EAST);
         _root.ui_mc.navArrows.setCallback(ui.JumpPoints.EAST,_loc4_,[_loc8_]);
      }
      if(_loc7_.length < 8 || _loc7_ == undefined)
      {
         _root.ui_mc.navArrows.disable(ui.JumpPoints.WEST);
         _root.ui_mc.navArrows.clearCallback(ui.JumpPoints.WEST);
      }
      else
      {
         _root.ui_mc.navArrows.enable(ui.JumpPoints.WEST);
         _root.ui_mc.navArrows.setCallback(ui.JumpPoints.WEST,_loc4_,[_loc7_]);
      }
      if(_global.isAltRoom)
      {
         _root.ui_mc.navArrows.disable(ui.JumpPoints.ALL);
      }
      else
      {
         _root.ui_mc.navArrows.enable(ui.JumpPoints.ALL);
      }
      this.parentClass.nextSequence();
   }
}
