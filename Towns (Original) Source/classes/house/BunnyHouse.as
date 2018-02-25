class classes.house.BunnyHouse
{
   static var houseCount = 1;
   function BunnyHouse(pClass)
   {
      this.parentClass = pClass;
      this.house = _global.gCanvas.clipping_canvas.house_1;
      this.bound = _global.gCanvas.mask_canvas.house_1;
      classes.house.BunnyHouse.houseCount = classes.house.BunnyHouse.houseCount + 1;
      this.house.createEmptyMovieClip("house" + classes.house.BunnyHouse.houseCount,1);
      this.loadHouse();
   }
   function loadHouse()
   {
      var thisClass = this;
      this.swfListener = new Object();
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
      var _loc4_ = new MovieClipLoader();
      _loc4_.addListener(this.swfListener);
      var _loc5_ = _global.filePath + "house/barton_standard/housebunny.swf";
      this.bound.loadMovie(_global.filePath + "house/barton_mask/housebunny.swf");
      if(_loc5_ != "")
      {
         _loc4_.loadClip(_loc5_,this.house);
      }
      else
      {
         this.parentClass.singleHomeLoaded();
      }
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
      this.range = new classes.range.Range(this.house,60,this.house.doorStep._x,this.house.doorStep._y);
      this.parentClass.singleHomeLoaded();
   }
   function showMenu()
   {
      var _loc3_ = this.range.testRange(_global.gAvMan.getMyAvatar().feet);
      if(_loc3_)
      {
         var thisClass = this;
         this.house.sensor.enabled = false;
         _global.uiCtrl.houseBunnyMenu();
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
   }
   function roomData(noErr, info, thisClass)
   {
      var _loc3_ = info.length != 2?false:true;
      if(_loc3_)
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
}
