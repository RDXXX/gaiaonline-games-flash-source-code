class GSItools.serializers.CommonTools
{
   function CommonTools()
   {
   }
   static function unwhitespace(raw)
   {
      var _loc2_ = undefined;
      var _loc1_ = undefined;
      var _loc4_ = undefined;
      var _loc5_ = undefined;
      var _loc3_ = new String(raw);
      _loc1_ = -1;
      _loc2_ = false;
      while(!_loc2_)
      {
         _loc1_ = _loc1_ + 1;
         if(_loc3_.charCodeAt(_loc1_) > 32)
         {
            _loc2_ = true;
         }
      }
      _loc4_ = _loc1_;
      _loc1_ = _loc3_.length;
      _loc2_ = false;
      while(!_loc2_)
      {
         _loc1_ = _loc1_ - 1;
         if(_loc3_.charCodeAt(_loc1_) > 32)
         {
            _loc2_ = true;
         }
      }
      _loc5_ = _loc1_ + 1;
      return _loc5_ <= _loc4_?"":_loc3_.substring(_loc4_,_loc5_);
   }
}
