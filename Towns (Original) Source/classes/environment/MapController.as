class classes.environment.MapController
{
   function MapController(pClass)
   {
      _global.gBroadcaster.addListener(this);
      _root.loadBar.info = "";
      _root.loadBar._visible = false;
      pClass.nextSequence();
   }
   function run()
   {
      this.forClipping();
      this.forFlying();
   }
   function forClipping()
   {
      var _loc5_ = _global.gCanvas.clipping_canvas;
      var _loc3_ = undefined;
      var _loc2_ = undefined;
      var _loc6_ = 0;
      for(var _loc3_ in _loc5_)
      {
         _loc2_ = _loc5_[_loc3_];
         if(_loc2_.ignoreZorder == false || _loc2_.ignoreZorder == undefined && _loc3_ != "pool")
         {
            var _loc4_ = int(_loc2_._y * 500 - _loc6_);
            _loc2_.swapDepths(_loc4_);
            _loc6_ = _loc6_ + 1;
         }
      }
   }
   function forFlying()
   {
      var _loc4_ = _global.gCanvas.flying_canvas;
      var _loc6_ = undefined;
      var _loc2_ = undefined;
      var _loc5_ = 0;
      for(var _loc6_ in _loc4_)
      {
         _loc2_ = _loc4_[_loc6_];
         if(_loc2_.ignoreZorder == false || _loc2_.ignoreZorder == undefined)
         {
            var _loc3_ = int(_loc2_._y * 500 - _loc5_);
            _loc2_.swapDepths(_loc3_);
            _loc5_ = _loc5_ + 1;
         }
      }
   }
   function destroy()
   {
      _global.gBroadcaster.removeListener(this);
      false;
   }
}
