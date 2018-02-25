class classes.house.TownHouse
{
   static var houseCount = 1;
   function TownHouse(pClass, home, hData)
   {
      this.parentClass = pClass;
      var thisClass = this;
      var houseLoc = "house_" + hData[3];
      this.retry = 0;
      this.housePlot = home;
      this.niceZip = this.housePlot + "" + _global.mapData[0].substring(0,1) + " Barton " + _global.mapData[0].substr(2,8);
      this.houseZipCode = this.housePlot + "" + _global.mapData[0];
      this.houseData = hData;
      var style = parseInt(hData[4]);
      this.house = eval("_global.gCanvas.clipping_canvas." + houseLoc);
      this.bound = eval("_global.gCanvas.mask_canvas." + houseLoc);
      classes.house.TownHouse.houseCount = classes.house.TownHouse.houseCount + 1;
      this.house.createEmptyMovieClip("house" + classes.house.TownHouse.houseCount,1);
      this.loadHouse(style);
   }
   function loadHouse(style)
   {
      var thisClass = this;
      var currentStyle = style;
      this.swfListener = new Object();
      this.swfListener.onLoadError = function(target_mc, errorCode, httpStatus)
      {
         thisClass.retryServer(target_mc,errorCode,httpStatus,currentStyle);
      };
      this.swfListener.onLoadStart = function(target_mc)
      {
         _root.loadBar.bar._xscale = 0;
         _root.loadBar.info = "Loading Homes: " + thisClass.niceZip;
      };
      this.swfListener.onLoadProgress = function(target_mc, bytesLoaded, bytesTotal)
      {
         _root.loadBar.bar._xscale = bytesLoaded / bytesTotal * 100;
      };
      this.swfListener.onLoadInit = function(target_mc)
      {
         _root.loadBar.bar._xscale = 0;
         _root.loadBar.info = "";
         thisClass.retry = 0;
         thisClass.houseSetUp();
      };
      var _loc5_ = new MovieClipLoader();
      _loc5_.addListener(this.swfListener);
      var _loc4_ = "";
      switch(style)
      {
         case 1:
            _loc4_ = "";
            break;
         case 2:
            _loc4_ = "house/vacant.swf";
            break;
         case 9:
            _loc4_ = "house/reserved.swf";
            break;
         case 10:
            _loc4_ = "house/reserved.swf";
            break;
         default:
            _loc4_ = this.setHouseEventStyle(style);
            this.bound.loadMovie(_global.filePath + "house/barton_mask/" + style + ".swf");
      }
      if(_loc4_ != "")
      {
         _loc5_.loadClip(_loc4_,this.house);
      }
      else
      {
         this.parentClass.doneLoad();
      }
   }
   function setHouseEventStyle(style)
   {
      var _loc2_ = undefined;
      switch(parseInt(_global.eventID))
      {
         case _global.EVENT_HALLOWEEN:
            _loc2_ = _global.filePath + "house/barton_holloween/" + style + ".swf";
            break;
         case _global.EVENT_WINTER:
            _loc2_ = _global.filePath + "house/barton_winter/" + style + ".swf";
            break;
         case _global.EVENT_XMAS:
            _loc2_ = _global.filePath + "house/barton_christmas/" + style + ".swf";
            break;
         default:
            _loc2_ = _global.filePath + "house/barton_standard/" + style + ".swf";
      }
      return _loc2_;
   }
   function retryServer(target_mc, errorCode, httpStatus, style)
   {
      if(this.retry <= 3)
      {
         this.loadHouse(style);
      }
      this.parentClass.errorMsg(target_mc,errorCode,httpStatus);
      this.retry = this.retry + 1;
   }
   function houseSetUp()
   {
      this.house.sensor.ref = this;
      this.house.sensor.onPress = function()
      {
         this.ref.showMenu();
      };
      this.range = new classes.range.Range(this.house,30,this.house.doorStep._x,this.house.doorStep._y);
      if(_global.gHouseId == this.houseData[3])
      {
         _global.gCanvas.clipping_canvas.startPoint._x = 0 + (this.house._x + this.house.doorStep._x);
         _global.gCanvas.clipping_canvas.startPoint._y = 0 + (this.house._y + this.house.doorStep._y);
         _global.gHouseId = 0;
      }
      if(this.houseData[1] == _global.myUserData[0])
      {
         if(_global.myUserData[10] > 0)
         {
            this.house.mailbox.gotoAndStop(2);
         }
         this.mailRange = new classes.range.Range(this.house,30,this.house.mailbox._x,this.house.mailbox._y);
         this.house.mailbox.ref = this;
         this.house.mailbox.onPress = function()
         {
            this.ref.showMail();
         };
      }
      if(parseInt(_global.eventID) == _global.EVENT_HALLOWEEN)
      {
         this.holloweenHouse = new classes.house.HolloweenHouse(this.housePlot,this.house,this.houseData);
      }
      else if(parseInt(_global.eventID) == _global.EVENT_XMAS)
      {
         this.christmasHouse = new classes.house.ChristmasHouse(this.housePlot,this.house,this.houseData);
      }
      this.parentClass.doneLoad();
   }
   function showMail()
   {
      var _loc3_ = this.mailRange.testRange(_global.gAvMan.getMyAvatar().feet);
      if(_loc3_)
      {
         this.house.mailbox.gotoAndStop(1);
         getURL("http://www.gaiaonline.com/profile/privmsg.php?folder=inbox&sid=" + _global.gaiaSessionID,"mail","GET");
      }
   }
   function showMenu()
   {
      var _loc3_ = this.range.testRange(_global.gAvMan.getMyAvatar().feet);
      if(_loc3_)
      {
         var thisClass = this;
         this.house.sensor.enabled = false;
         _global.uiCtrl.menu(this.house,true,this.houseData,this.houseZipCode);
         this.house.onEnterFrame = function()
         {
            var _loc3_ = thisClass.range.testRange(_global.gAvMan.getMyAvatar().feet);
            if(_loc3_ == false)
            {
               delete this.onEnterFrame;
               thisClass.hideMenu();
            }
         };
      }
   }
   function hideMenu()
   {
      this.house.sensor.enabled = true;
      _global.uiCtrl.menu(this.house,false);
   }
   function enterHome()
   {
      _global.gAvMan.getMyAvatar().lockWalking(true);
      _global.gHouseOwnerId = this.houseData[1];
      _global.gHouseId = this.housePlot;
      _global.gHouseOwnerName = this.houseData[2];
      trace("x on enterHome=" + _global.gAvMan.getMyAvatar().getX());
      trace("y on enterHome=" + _global.gAvMan.getMyAvatar().getY());
      var _loc4_ = new classes.controllers.JumpController();
      _loc4_.rememberStart(_global.gAvMan.getMyAvatar().getX(),_global.gAvMan.getMyAvatar().getY());
      var _loc3_ = _global.mapData[0] + "S" + _global.gHouseOwnerId + "#" + _global.gHouseOwnerName;
      _global.gsiMethod.invoke(391,[_loc3_,_global.gaiaSessionID],this.roomData,this);
   }
   function roomData(noErr, info, thisClass)
   {
      if(parseInt(_global.myUserData[3]) >= 50)
      {
         this.enteringHome();
      }
      else
      {
         var _loc4_ = info.length != 2?false:true;
         if(_loc4_)
         {
            if(info[1] != 0)
            {
               thisClass.lockedHome();
            }
            else
            {
               this.enteringHome();
            }
         }
         else if(info[4] != 0)
         {
            thisClass.lockedHome();
         }
         else
         {
            this.enteringHome();
         }
      }
   }
   function lockedHome()
   {
      _global.gAvMan.getMyAvatar().emoteBubble.playCollectEmote("characters","lock");
      _global.gAvMan.getMyAvatar().lockWalking(false);
   }
   function enteringHome()
   {
      var _loc3_ = Number(getVersion().split(" ")[1].split(",")[0]);
      if(_loc3_ < 8)
      {
         _global.gAvMan.getMyAvatar().displayTextBubble("Download Flash Player 8 to view this house. http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash");
         _root.ui_mc.historyPanel.echo("Download Flash Player 8 to view this house. http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash\n");
         _global.gAvMan.getMyAvatar().lockWalking(false);
      }
      else
      {
         _root.stream.destroySequence();
         _global.scene = "toHome";
         _root.stream.loadSequence(_global.scene);
      }
   }
   function establishHome()
   {
      var _loc3_ = this.housePlot + _global.mapData[0];
      if(this.houseData[4] == 2)
      {
         _global.gsiMethod.invoke(319,[_loc3_,_global.gaiaSessionID],this.moveInResult,this);
      }
      else
      {
         _global.gsiMethod.invoke(318,[_loc3_,_global.gaiaSessionID],this.moveInResult,this);
      }
   }
   function moveInResult(noErr, info, thisClass)
   {
      if(noErr == true)
      {
         _global.gsc.sendUserMessage("300",1,parseInt(_global.sushi.me.room),[thisClass.housePlot,info]);
      }
      else
      {
         _global.gAvMan.getMyAvatar().emoteBubble.playEmote(2,"poed");
      }
   }
   function showNewHouse(theData)
   {
      var _loc2_ = theData.split(",");
      this.houseData[0] = _loc2_[0];
      this.houseData[1] = _loc2_[1];
      this.houseData[2] = _loc2_[2];
      var _loc3_ = this.houseData[4] = _loc2_[5];
      this.setInHouse(this.houseData[4] = _loc2_[5]);
   }
   function setInHouse(style)
   {
      this.house.unloadMovie();
      delete this.range;
      var thisClass = this;
      var _loc4_ = new Object();
      _loc4_.onLoadInit = function(target_mc)
      {
         thisClass.house.sensor.ref = thisClass;
         thisClass.house.sensor.onPress = function()
         {
            this.ref.showMenu();
         };
         thisClass.range = new classes.range.Range(thisClass.house,30,thisClass.house.doorStep._x,thisClass.house.doorStep._y);
      };
      var _loc3_ = new MovieClipLoader();
      _loc3_.addListener(_loc4_);
      _loc3_.loadClip(_global.filePath + "house/barton_standard/" + style + ".swf",this.house);
   }
   function remove()
   {
      this.house.removeMovieClip();
      this.bound.unloadMovie();
      delete this.range;
      false;
   }
   function lights(lightOn, lightLayer, num)
   {
      if(lightOn == true)
      {
         switch(this.houseData[4])
         {
            case "1":
            case "2":
            case "9":
            case "10":
               break;
            default:
               var lighting = eval(lightLayer + ".light" + num);
               if(lighting == undefined)
               {
                  lighting = lightLayer.attachMovie("light","light" + num,lightLayer.getNextHighestDepth());
                  lighting._x = lightLayer._x + (this.house._x + this.house.lamp._x);
                  lighting._y = lightLayer._y + (this.house._y + this.house.lamp._y);
               }
         }
      }
      else
      {
         lightLayer.unloadMovie();
      }
   }
}
