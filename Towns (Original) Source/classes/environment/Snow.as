class classes.environment.Snow
{
   function Snow(nf)
   {
      this.numFlakes = nf;
      this.startPoints = new Array(this.numFlakes);
      _root.canvas_mc.createEmptyMovieClip("snowLayer",_root.canvas_mc.getNextHighestDepth());
      var _loc5_ = 0;
      while(_loc5_ < this.numFlakes)
      {
         var _loc4_ = _root.canvas_mc.snowLayer.attachMovie("flake","flake" + _loc5_,_root.canvas_mc.snowLayer.getNextHighestDepth());
         _loc4_._x = random(1024);
         _loc4_._y = random(1024);
         var _loc6_ = random(2) + 1;
         _loc4_.gotoAndStop(_loc6_);
         this.startPoints[_loc5_] = [_loc4_._y,random(50) + 100];
         _loc5_ = _loc5_ + 1;
      }
      _global.gBroadcaster.addListener(this);
   }
   function run()
   {
      var z = 0;
      while(z < this.numFlakes)
      {
         var aFlake = eval("_root.canvas_mc.snowLayer.flake" + z);
         var dir = random(2) != 0?1:-1;
         aFlake._x = aFlake._x + 1 * dir;
         aFlake._y = aFlake._y + 2;
         var dY = aFlake._y - this.startPoints[z][0];
         if(dY > this.startPoints[z][1])
         {
            aFlake._alpha = aFlake._alpha - 25;
            if(aFlake._alpha <= 0)
            {
               aFlake._alpha = 100;
               aFlake._x = random(1024);
               aFlake._y = random(1024);
               this.startPoints[z] = [aFlake._y,random(50) + 100];
            }
         }
         z++;
      }
   }
   function remove()
   {
      _global.gBroadcaster.removeListener(this);
      var _loc4_ = 0;
      while(_loc4_ < this.numFlakes)
      {
         var _loc5_ = _root.canvas_mc.snowLayer.attachMovie("flake","flake" + _loc4_,_root.canvas_mc.snowLayer.getNextHighestDepth());
         _loc5_.removeMovieClip();
         _loc4_ = _loc4_ + 1;
      }
   }
}
