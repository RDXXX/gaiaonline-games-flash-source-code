class classes.main.BuildHome
{
   function BuildHome(pClass)
   {
      this.parentClass = pClass;
      _global.gBroadcaster.addListener(this);
      _root.ui_mc.navArrows.setMapSize(740,580);
      _root.ui_mc.navArrows.clearCallback(ui.JumpPoints.ALL);
      _root.ui_mc.navArrows.disable(ui.JumpPoints.ALL);
      _global.myToyManager.disableCurrentToy();
      _root.getURL("http://" + _root.gsiUrl + ".gaiaonline.com/launch/house?houseID=" + _global.gHouseOwnerId,"_self");
   }
   function run()
   {
      var _loc5_ = _global.gCanvas.getBytesLoaded();
      var _loc4_ = _global.gCanvas.getBytesTotal();
      _root.loadBar.totalbyte = _loc5_ + " " + _loc4_;
      _root.loadBar.bar._xscale = this.curProgress + _loc5_ / _loc4_ * 100;
      if(_loc5_ == _loc4_ && _loc4_ != 0)
      {
         if(_global.gCanvas._currentframe != 0)
         {
            _global.gBroadcaster.removeListener(this);
            _global.gCanvas.createEmptyMovieClip("chat_mc",9394);
            this.parentClass.nextSequence();
         }
      }
   }
}
