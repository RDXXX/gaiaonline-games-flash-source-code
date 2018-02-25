class classes.environment.TintEnvironment
{
   function TintEnvironment(tLayer)
   {
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
      this.curTintValue = [100,0,100,0,100,0,100];
      this.tintLayer = tLayer;
   }
   function setTint(theTint)
   {
      this.curTintValue = theTint;
   }
   function tintWorld(theTint)
   {
      this.curTintValue = theTint;
      var _loc5_ = this.tintLayer;
      var _loc6_ = undefined;
      var _loc3_ = undefined;
      for(var _loc6_ in _loc5_)
      {
         _loc3_ = _loc5_[_loc6_];
         var _loc4_ = new Color(_loc3_);
         var _loc2_ = _loc3_ + "";
         _loc2_ = _loc2_.split(".");
         _loc2_ = _loc2_[3];
         if(_loc2_.substring(0,6) != "avatar")
         {
            _loc4_.setTint(theTint);
         }
         else
         {
            _loc3_.setTint();
         }
      }
   }
   function tintMe(tintClip)
   {
      var _loc2_ = new Color(tintClip);
      _loc2_.setTint(this.curTintValue);
   }
   function tintThis(tintClip, tintVal)
   {
      var _loc1_ = new Color(tintClip.avatarContainer);
      _loc1_.setTint(tintVal);
   }
}
