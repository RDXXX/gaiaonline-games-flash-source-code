class GSItools.serializers.PHPSerializer
{
   function PHPSerializer()
   {
   }
   static function serialize(o)
   {
      return GSItools.serializers.PHPSerializer.$_parseValue(o);
   }
   static function unserialize(s)
   {
      return GSItools.serializers.PHPSerializer.$_getValue(GSItools.serializers.CommonTools.unwhitespace(s))[0];
   }
   static function $_getNext(s)
   {
      var _loc2_ = GSItools.serializers.PHPSerializer.$_getValue(s);
      s = _loc2_[1];
      var _loc3_ = GSItools.serializers.PHPSerializer.$_getValue(s);
      s = _loc3_[1];
      return [_loc2_[0],_loc3_[0],s];
   }
   static function $_getValue(s)
   {
      trace("check " + s);
      var _loc3_ = undefined;
      var _loc4_ = undefined;
      var _loc7_ = s.charAt(0);
      switch(_loc7_)
      {
         case "s":
            _loc3_ = s.substr(2,s.indexOf(":",3) - 2) * 1;
            _loc4_ = s.substr(length(_loc3_) + 4,_loc3_).toString();
            if(GSItools.serializers.PHPSerializer.enableMultiByte)
            {
               _loc4_ = unescape(_loc4_);
            }
            break;
         case "i":
            _loc3_ = s.substr(2,s.indexOf(";",3) - 2) * 1;
            _loc4_ = parseInt(_loc3_);
            break;
         case "d":
            _loc3_ = s.substr(2,s.indexOf(";",3) - 2) * 1;
            _loc4_ = parseFloat(_loc3_);
            break;
         case "b":
            _loc3_ = s.substr(2,s.indexOf(";",3) - 2) * 1;
            _loc4_ = !(_loc3_ == "true" || _loc3_ == "1")?false:true;
            break;
         case "a":
         case "O":
            _loc3_ = s.substr(2,s.indexOf(":",3) - 2) * 1;
            if(_loc7_ == "a")
            {
               _loc4_ = [];
               s = s.substr(s.indexOf(_loc3_));
            }
            else
            {
               _loc4_ = {};
               s = s.substr(length(s.substr(length(_loc3_) + 4,_loc3_)) + s.indexOf(s.substr(length(_loc3_) + 4,_loc3_)) + 2);
            }
            var _loc6_ = s.substr(0,s.indexOf(":")) * 1;
            var _loc5_ = 0;
            s = s.substr(s.indexOf(":") + 2);
            while(_loc5_ < _loc6_)
            {
               var _loc2_ = GSItools.serializers.PHPSerializer.$_getNext(s);
               s = _loc2_[2];
               _loc4_[_loc2_[0]] = _loc2_[1];
               _loc5_ = _loc5_ + 1;
            }
            return [_loc4_,s.substr(s.indexOf("}") + 1)];
            break;
         case "N":
            _loc4_ = null;
            _loc3_ = "";
            s = s.substr(1);
      }
      if(_loc7_ != "s")
      {
         _loc3_ = length(_loc3_);
      }
      s = s.substr(s.indexOf(";",_loc3_) + 1);
      trace("A=" + _loc4_);
      trace("S=" + s);
      return [_loc4_,s];
   }
   static function $_parseValue(v)
   {
      switch(v.__proto__)
      {
         case Array.prototype:
            var _loc4_ = "";
            var _loc5_ = 0;
            while(_loc5_ < v.length)
            {
               var _loc2_ = GSItools.serializers.PHPSerializer.$_parseValue(_loc5_);
               _loc4_ = _loc4_ + (_loc2_ + GSItools.serializers.PHPSerializer.$_parseValue(v[_loc5_]));
               _loc5_ = _loc5_ + 1;
            }
            return "a:" + _loc5_ + ":{" + _loc4_ + "}";
         case Object.prototype:
         case MovieClip.prototype:
            _loc5_ = 0;
            _loc4_ = "";
            for(var _loc6_ in v)
            {
               if(typeof v[_loc6_] != "function")
               {
                  _loc2_ = GSItools.serializers.PHPSerializer.$_parseValue(_loc6_);
                  var _loc3_ = GSItools.serializers.PHPSerializer.$_parseValue(v[_loc6_]);
                  _loc4_ = _loc4_ + (_loc2_ + _loc3_);
                  _loc5_ = _loc5_ + 1;
               }
            }
            return "O:8:\"stdClass\":" + _loc5_ + ":{" + _loc4_ + "}";
         case String.prototype:
            if(GSItools.serializers.PHPSerializer.enableMultiByte)
            {
               v = escape(v);
            }
         case undefined:
         case Date.prototype:
            return "s:" + length(v) + ":\"" + v + "\";";
         case Number.prototype:
            if(isNaN(v))
            {
               return "N;";
            }
            v = Number(v);
            if(v % 1 == 0)
            {
               return "i:" + v + ";";
            }
            return "d:" + v + ";";
         case Boolean.prototype:
            return "b:" + (v != true?0:1) + ";";
         default:
            return undefined;
      }
   }
}
