class GSItools.serializers.SushiSerializer
{
   static var DELIMITER = "\x01";
   static var ARRAY_DELIMITER = "\x02";
   static var END = "\x04";
   static var SUSHI_TRUE = "\x05";
   static var SUSHI_FALSE = "\x06";
   function SushiSerializer()
   {
   }
   static function serialize(queue)
   {
      var _loc7_ = undefined;
      var _loc4_ = undefined;
      var _loc5_ = undefined;
      var _loc6_ = undefined;
      var _loc2_ = undefined;
      var _loc1_ = undefined;
      var _loc3_ = "";
      _loc7_ = queue.length;
      _loc4_ = 0;
      while(_loc4_ < _loc7_)
      {
         _loc5_ = queue[_loc4_];
         _loc3_ = _loc3_ + _loc5_[0];
         _loc2_ = _loc5_[1];
         _loc6_ = _loc2_.length;
         _loc1_ = 0;
         while(_loc1_ < _loc6_)
         {
            if(_loc2_[_loc1_] instanceof Array)
            {
               _loc3_ = _loc3_ + (GSItools.serializers.SushiSerializer.DELIMITER + _loc2_[_loc1_].join(GSItools.serializers.SushiSerializer.ARRAY_DELIMITER));
            }
            else
            {
               _loc3_ = _loc3_ + (GSItools.serializers.SushiSerializer.DELIMITER + String(_loc2_[_loc1_]));
            }
            _loc1_ = _loc1_ + 1;
         }
         _loc3_ = _loc3_ + GSItools.serializers.SushiSerializer.END;
         _loc4_ = _loc4_ + 1;
      }
      return _loc3_;
   }
   static function unserialize(s)
   {
      var _loc6_ = undefined;
      var _loc7_ = undefined;
      var _loc3_ = undefined;
      var _loc5_ = undefined;
      var _loc2_ = undefined;
      var _loc4_ = new Array();
      s = GSItools.serializers.CommonTools.unwhitespace(s);
      _loc6_ = s.split(GSItools.serializers.SushiSerializer.END);
      _loc7_ = _loc6_.length;
      var _loc1_ = 0;
      while(_loc1_ < _loc7_)
      {
         _loc3_ = _loc6_[_loc1_].split(GSItools.serializers.SushiSerializer.DELIMITER);
         _loc5_ = _loc3_.length;
         _loc4_[_loc1_] = new Array();
         _loc4_[_loc1_][0] = _loc3_[0];
         _loc4_[_loc1_][1] = _loc3_[1] != GSItools.serializers.SushiSerializer.SUSHI_TRUE?false:true;
         _loc4_[_loc1_][2] = new Array();
         _loc2_ = 2;
         while(_loc2_ < _loc5_)
         {
            if(_loc3_[_loc2_].indexOf(GSItools.serializers.SushiSerializer.ARRAY_DELIMITER) != -1)
            {
               _loc4_[_loc1_][2].push(_loc3_[_loc2_].split(GSItools.serializers.SushiSerializer.ARRAY_DELIMITER));
            }
            else
            {
               _loc4_[_loc1_][2].push(_loc3_[_loc2_]);
            }
            _loc2_ = _loc2_ + 1;
         }
         _loc1_ = _loc1_ + 1;
      }
      return _loc4_;
   }
}
