class classes.environment.MiniMenu
{
   static var count = 0;
   function MiniMenu(owner, layerDepth)
   {
      this.xOffset = 0;
      this.yOffset = 100;
      this.mc = _global.gCanvas.createEmptyMovieClip(owner,layerDepth);
      var thisClass = this;
      var _loc4_ = new Object();
      var _loc3_ = new MovieClipLoader();
      _loc4_.onLoadStart = function(target_mc)
      {
         target_mc._visible = false;
         thisClass.setControls();
      };
      _loc3_.addListener(_loc4_);
      if(owner == "member")
      {
         _loc3_.loadClip("ui/minimenu/member_menu.swf",this.mc);
      }
      if(owner == "my")
      {
         _loc3_.loadClip("ui/minimenu/my_menu.swf",this.mc);
      }
   }
   function decideToClose()
   {
      clearInterval(this.interval);
      if(this.mc.onPlus != true)
      {
         this.hideMenu();
      }
   }
   function showMiniMenu(avID, gaiaID, av, avScale, gName)
   {
      clearInterval(this.interval);
      this.interval = setInterval(this,"decideToClose",2000);
      this.mc.onPlus = false;
      this.mc.mID = avID;
      this.mc.gID = gaiaID;
      this.mc.gName = gName;
      this.avatar = av;
      this.mc._visible = true;
      _global.gBroadcaster.removeListener(this);
      _global.gBroadcaster.addListener(this);
      this.xOffScaled = this.xOffset * avScale / 100;
      this.yOffScaled = this.yOffset * avScale / 100;
      this.run();
   }
   function run()
   {
      this.mc._x = this.avatar._x - this.xOffScaled;
      this.mc._y = this.avatar._y - this.yOffScaled;
   }
   function hideMenu()
   {
      _global.gBroadcaster.removeListener(this);
      clearInterval(this.interval);
      this.mc._visible = false;
   }
   function remove()
   {
      _global.gBroadcaster.removeListener(this);
      clearInterval(this.interval);
      this.mc.removeMovieClip();
   }
}
