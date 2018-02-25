class classes.environment.GST
{
   var initLoad = true;
   var unlockSequence = new Array(49,50,51,52,49,50,51,52);
   var offTint = new Array(100,0,100,0,100,0,100);
   var gsiToggle = 0;
   function GST(pClass)
   {
      Key.addListener(this);
      this.enteredSequence = new Array();
      this.parentClass = pClass;
      this.theTint = new Object();
      this.tintEnv = new classes.environment.TintEnvironment(_global.gCanvas.clipping_canvas);
      this.TIME_OUT = _root.ui_mc.mapInfo.gstTime;
      this.ICON_OUT = _root.ui_mc.mapInfo.gstIcon;
      Color.prototype.setTint = function(transTo)
      {
         var _loc2_ = new Object();
         _loc2_.ra = transTo[0];
         _loc2_.rb = transTo[1];
         _loc2_.ga = transTo[2];
         _loc2_.gb = transTo[3];
         _loc2_.ba = transTo[4];
         _loc2_.bb = transTo[5];
         _loc2_.aa = transTo[6];
         this.setTransform(_loc2_);
      };
      this.start();
      this.getServerTime();
   }
   function tintMe(tintClip)
   {
      this.tintEnv.tintMe(tintClip);
   }
   function setTime(time, icon)
   {
      if(time != undefined)
      {
         this.TIME_OUT.text = time + " GST";
      }
      if(icon != undefined)
      {
         this.ICON_OUT.gotoAndStop(icon);
      }
      this.checkTime(icon);
   }
   function setColor(theTintValues)
   {
      if(theTintValues != undefined)
      {
         this.theTint = theTintValues;
      }
      switch(_global.scene)
      {
         case "toHome":
         case "home":
            break;
         default:
            this.tintEnv.tintWorld(this.theTint);
            _root.b = new Color(_global.gCanvas.upper);
            _root.b.setTint(this.theTint);
            _root.c = new Color(_global.gCanvas.mapTerrain);
            _root.c.setTint(this.theTint);
      }
      _root.a = new Color(_global.gCanvas.mcBackgroundOverlay);
      _root.a.setTint(this.theTint);
   }
   function start()
   {
      this.interval = setInterval(this,"getServerTime",60000);
   }
   function stop()
   {
      clearInterval(this.interval);
   }
   function getServerTime()
   {
      _global.gsiMethod.invoke("341",[],this.gstDataResult,this);
   }
   function checkTime(dayValue)
   {
      var _loc3_ = dayValue != 3?false:true;
      var _loc2_ = 1;
      while(_loc2_ <= _global.gHomes.length)
      {
         _global.gHomes[_loc2_].lights(_loc3_,_global.gCanvas.forground,_loc2_);
         _loc2_ = _loc2_ + 1;
      }
   }
   function gstDataResult(noError, gstData, gstObject)
   {
      gstObject.currentInfo = gstData;
      var _loc5_ = parseInt(gstData[0]) + 1;
      var _loc6_ = gstData[2].split(",");
      gstObject.setTime(gstData[1],_loc5_);
      if(this.gsiToggle == 0)
      {
         gstObject.setColor(_loc6_);
      }
      if(this.initLoad == true)
      {
         this.initLoad = false;
         _root.loadBar.info = "";
         _root.loadBar._visible = false;
         gstObject.parentClass.nextSequence();
      }
   }
   function onKeyDown()
   {
      this.enteredSequence.push(Key.getCode());
      var _loc3_ = this.unlockSequence.length;
      var _loc4_ = 0;
      var _loc2_ = 0;
      while(_loc2_ < _loc3_)
      {
         if(this.enteredSequence[_loc2_] != this.unlockSequence[_loc2_])
         {
            if(this.enteredSequence[_loc2_] != undefined)
            {
               this.enteredSequence = new Array();
            }
         }
         _loc2_ = _loc2_ + 1;
      }
      if(this.enteredSequence.length == _loc3_)
      {
         this.enteredSequence = new Array();
         this.lights();
      }
   }
   function lights()
   {
      this.gsiToggle != 0?this.gstTintOn():this.gstTintOff();
      this.gsiToggle = this.gsiToggle != 0?0:1;
   }
   function gstTintOn()
   {
      var _loc7_ = this.currentInfo[2].split(",");
      this.setColor(_loc7_);
      var _loc5_ = _global.gCanvas.clipping_canvas;
      var _loc6_ = undefined;
      var _loc4_ = undefined;
      for(var _loc6_ in _loc5_)
      {
         _loc4_ = _loc5_[_loc6_];
         var _loc3_ = _loc4_ + "";
         _loc3_ = _loc3_.split(".");
         _loc3_ = _loc3_[3];
         if(_loc3_.substring(0,6) == "avatar")
         {
            this.tintEnv.tintThis(_loc4_,_loc7_);
         }
      }
   }
   function gstTintOff()
   {
      this.setColor(this.offTint);
      var _loc5_ = _global.gCanvas.clipping_canvas;
      var _loc6_ = undefined;
      var _loc4_ = undefined;
      for(var _loc6_ in _loc5_)
      {
         _loc4_ = _loc5_[_loc6_];
         var _loc3_ = _loc4_ + "";
         _loc3_ = _loc3_.split(".");
         _loc3_ = _loc3_[3];
         if(_loc3_.substring(0,6) == "avatar")
         {
            this.tintEnv.tintThis(_loc4_,this.offTint);
         }
      }
   }
}
