class structures.classes.Pool extends MovieClip
{
   function Pool()
   {
      super();
   }
   function init(base)
   {
      this.baseMc = base;
      var _loc4_ = "poolDepth_" + _global.poolNum;
      this.poolBitmapData = flash.display.BitmapData.loadBitmap(_loc4_);
      var _loc3_ = this.baseMc.createEmptyMovieClip("mc",this.baseMc.getNextHighestDepth());
      _loc3_.attachBitmap(this.poolBitmapData,_loc3_.getNextHighestDepth());
      _loc3_._x = -340;
      _loc3_._y = -120;
      _loc3_._visible = true;
   }
   function getBitmapData(x, y)
   {
      x = x + 320;
      y = y + 120;
      var _loc2_ = this.poolBitmapData.getPixel(x,y) * 0.00001;
      if(_loc2_ != 0)
      {
         var _loc3_ = Math.round((200 - _loc2_) / 3);
         return _loc3_;
      }
   }
}
