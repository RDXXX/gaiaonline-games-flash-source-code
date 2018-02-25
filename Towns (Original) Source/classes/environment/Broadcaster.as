class classes.environment.Broadcaster
{
   function Broadcaster()
   {
      if(!classes.environment.Broadcaster.num)
      {
         classes.environment.Broadcaster.num = 0;
      }
      this.olist = [];
      this.mc = _root.createEmptyMovieClip("bc" + classes.environment.Broadcaster.num++,_root.getNextHighestDepth());
      this.mc.$r = this;
   }
   function addListener(o)
   {
      this.olist.push(o);
   }
   function removeListener(o)
   {
      var _loc2_ = undefined;
      _loc2_ = 0;
      while(_loc2_ < this.olist.length)
      {
         if(this.olist[_loc2_] == o)
         {
            this.olist.splice(_loc2_,1);
         }
         _loc2_ = _loc2_ + 1;
      }
   }
   function start()
   {
      this.mc.onEnterFrame = function()
      {
         this.$r.sendMessage("run");
      };
   }
   function stop()
   {
      delete this.mc.onEnterFrame;
   }
   function sendMessage()
   {
      var _loc3_ = undefined;
      var _loc5_ = arguments[0];
      var _loc4_ = this.olist.slice();
      var _loc6_ = _loc4_.length;
      arguments.shift();
      _loc3_ = 0;
      while(_loc3_ < _loc6_)
      {
         _loc4_[_loc3_][_loc5_].apply(_loc4_[_loc3_],arguments);
         _loc3_ = _loc3_ + 1;
      }
   }
}
