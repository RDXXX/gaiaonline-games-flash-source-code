class classes.main.BuildTrain
{
   function BuildTrain(pClass)
   {
      this.parentClass = pClass;
      this.retry = 0;
      this.loadTrainstation();
   }
   function loadTrainstation()
   {
      var thisClass = this;
      var _loc4_ = new Object();
      _loc4_.onLoadError = function(target_mc, errorCode, httpStatus)
      {
         thisClass.retryServer(target_mc,errorCode,httpStatus);
      };
      _loc4_.onLoadStart = function(target_mc)
      {
         _root.loadBar.bar._xscale = 0;
         _root.loadBar.info = "Loading Trainstation Map";
      };
      _loc4_.onLoadProgress = function(target_mc, bytesLoaded, bytesTotal)
      {
         _root.loadBar.bar._xscale = bytesLoaded / bytesTotal * 100;
      };
      _loc4_.onLoadInit = function(target_mc)
      {
         _root.loadBar.bar._xscale = 0;
         _root.loadBar.info = "";
         thisClass.checkCompleteLoad();
      };
      var _loc5_ = new MovieClipLoader();
      _loc5_.addListener(_loc4_);
      if(parseInt(_global.eventID) == _global.EVENT_XMAS)
      {
         _loc5_.loadClip(_global.filePath + "maps/barton_christmas/trainstationTerrain.swf",_global.gCanvas);
      }
      else if(parseInt(_global.eventID) == _global.EVENT_WINTER)
      {
         _loc5_.loadClip(_global.filePath + "maps/barton_winter/trainstationTerrain.swf",_global.gCanvas);
      }
      else
      {
         _loc5_.loadClip(_global.filePath + "maps/barton_standard/trainstationTerrain.swf",_global.gCanvas);
      }
   }
   function retryServer(target_mc, errorCode, httpStatus)
   {
      if(this.retry <= 3)
      {
         this.loadTrainstation();
      }
      else
      {
         this.parentClass.errorMsg("Trainstation Map",errorCode,httpStatus);
      }
      this.retry = this.retry + 1;
   }
   function checkCompleteLoad()
   {
      _global.gBroadcaster.addListener(this);
   }
   function run()
   {
      if(_global.gCanvas.clipping_canvas)
      {
         _global.gBroadcaster.removeListener(this);
         this.setTrain();
      }
   }
   function setTrain()
   {
      _root.ui_mc.mapInfo.mapTitle = "Barton Trainstation";
      _root.ui_mc.navArrows.setMapSize(768,768);
      _root.ui_mc.navArrows.clearCallback(ui.JumpPoints.ALL);
      _root.ui_mc.navArrows.disable(ui.JumpPoints.ALL);
      _root.ui_mc.navArrows.enable(ui.JumpPoints.SOUTH);
      _root.ui_mc.navArrows.setCallback(ui.JumpPoints.SOUTH,_global.uiCtrl.dirState,[true],_global.uiCtrl);
      _global.gCanvas.createEmptyMovieClip("flying_canvas",5);
      _global.gCanvas.createEmptyMovieClip("chat_mc",6);
      this.parentClass.nextSequence();
   }
}
