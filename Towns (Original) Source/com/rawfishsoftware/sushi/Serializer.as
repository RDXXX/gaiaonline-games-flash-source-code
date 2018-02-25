class com.rawfishsoftware.sushi.Serializer
{
   var instanceName = "Serializer";
   static var className = "it.sephiroth.Serializer";
   static var classVersion = "2.1.4b";
   function Serializer()
   {
   }
   function serialize(what)
   {
      var _loc2_ = new String("");
      _loc2_ = this.serialize_internal("",what);
      return _loc2_;
   }
   function serialize_internal(buf, struct_c)
   {
      if(!isNaN(struct_c) && struct_c.__proto__ != Boolean.prototype && struct_c.__proto__ != Date.prototype)
      {
         var _loc2_ = new Number(struct_c);
      }
      else
      {
         _loc2_ = struct_c;
      }
      switch(_loc2_.__proto__)
      {
         case Boolean.prototype:
            buf = buf + "b:" + int(_loc2_) + ";";
            break;
         case null:
         case undefined:
            buf = buf + "N;";
            break;
         case Number.prototype:
            if(_loc2_ >= 1000000000000000)
            {
               buf = buf + "d:" + _loc2_ + ";";
            }
            else if(_loc2_ % 1 == 0)
            {
               buf = buf + "i:" + _loc2_ + ";";
            }
            else
            {
               buf = buf + "d:" + _loc2_ + ";";
            }
            break;
         case String.prototype:
            buf = buf + "s:" + this.calcLength(_loc2_) + ":\"" + _loc2_ + "\";";
            break;
         case Date.prototype:
            buf = buf + "s:" + length(_loc2_) + ":\"" + _loc2_ + "\";";
            break;
         case Object.prototype:
         case Array.prototype:
            var _loc4_ = 0;
            var _loc5_ = new String("");
            buf = buf + "a:";
            for(var _loc6_ in _loc2_)
            {
               _loc5_ = _loc5_ + (this.serialize_internal("",_loc6_) + this.serialize_internal("",_loc2_[_loc6_]));
               _loc4_ = _loc4_ + 1;
            }
            buf = buf + _loc4_ + ":{" + _loc5_ + "}";
            break;
         default:
            buf = buf + "i:0;";
      }
      return buf;
   }
   function calcLength(struct)
   {
      var _loc1_ = undefined;
      var _loc3_ = 0;
      var _loc4_ = struct.length;
      var _loc2_ = 0;
      while(_loc2_ < _loc4_)
      {
         _loc1_ = ord(struct.charAt(_loc2_));
         if(_loc1_ < 128)
         {
            _loc3_ = _loc3_ + 1;
         }
         else if(_loc1_ < 1024)
         {
            _loc3_ = _loc3_ + 2;
         }
         else if(_loc1_ < 32768)
         {
            _loc3_ = _loc3_ + 3;
         }
         else if(_loc1_ < 2097152)
         {
            _loc3_ = _loc3_ + 4;
         }
         _loc2_ = _loc2_ + 1;
      }
      return _loc3_;
   }
   function unserialize(what)
   {
      this.buffer = what;
      return this.unserialize_internal(what);
   }
   function unserialize_internal(obj)
   {
      var _loc3_ = obj.charAt(0);
      var _loc2_ = undefined;
      switch(_loc3_)
      {
         case "d":
            _loc2_ = this.parse_double();
            break;
         case "i":
            _loc2_ = this.parse_int();
            break;
         case "b":
            _loc2_ = this.parse_boolean();
            break;
         case "s":
            _loc2_ = this.parse_string();
            break;
         case "a":
            _loc2_ = this.parse_array();
            break;
         case "O":
            _loc2_ = this.parse_object();
            break;
         case "N":
         default:
      }
      if(_loc2_[0] != -1)
      {
         this.buffer = this.buffer.substr(this.buffer.indexOf(";",_loc2_[0] + length(_loc3_) + length(_loc2_[0].toString())) + 1);
      }
      return _loc2_[1];
   }
   function parse_array()
   {
      var _loc3_ = 0;
      var _loc5_ = this.getArrayLength();
      var _loc4_ = new Array();
      while(_loc3_ < _loc5_)
      {
         var _loc2_ = this.getNext();
         _loc4_[_loc2_[0]] = _loc2_[1];
         _loc3_ = _loc3_ + 1;
      }
      this.buffer = this.buffer.substr(1);
      return new Array(-1,_loc4_);
   }
   function parse_object()
   {
      var _loc6_ = this.parse_string();
      this.buffer = this.buffer.substr(this.buffer.indexOf(":",_loc6_[0]));
      var _loc7_ = _loc6_[1];
      var _loc3_ = 0;
      var _loc5_ = this.getObjectLength();
      var _loc4_ = new Object();
      while(_loc3_ < _loc5_)
      {
         var _loc2_ = this.getNext();
         _loc4_[_loc2_[0]] = _loc2_[1];
         _loc3_ = _loc3_ + 1;
      }
      this.buffer = this.buffer.substr(1);
      return new Array(-1,_loc4_);
   }
   function parse_string()
   {
      var _loc2_ = this.getStringLenght();
      var _loc3_ = this.getCStringLenght();
      if(_loc2_ eq _loc3_)
      {
         var _loc4_ = this.buffer.substr(length(_loc2_) + 4,_loc2_).toString();
      }
      else
      {
         _loc4_ = this.buffer.substr(length(_loc2_) + 4,_loc3_).toString();
      }
      return new Array(_loc3_,_loc4_);
   }
   function parse_boolean()
   {
      var _loc2_ = this.getLength();
      var _loc3_ = _loc2_ >= 1?true:false;
      return new Array(length(_loc2_.toString()),_loc3_);
   }
   function parse_double()
   {
      var _loc2_ = this.getFloatLength();
      var _loc3_ = _loc2_;
      return new Array(length(_loc2_.toString()),_loc3_);
   }
   function parse_int()
   {
      var _loc2_ = this.getLength();
      var _loc3_ = _loc2_;
      return new Array(length(_loc2_.toString()),_loc3_);
   }
   function getStringLenght(str)
   {
      var _loc2_ = parseInt(this.buffer.substr(2,this.buffer.indexOf(":",3) - 2));
      return _loc2_;
   }
   function getCStringLenght(str)
   {
      var _loc5_ = parseInt(this.buffer.substr(2,this.buffer.indexOf(":",3) - 2));
      var _loc3_ = undefined;
      var _loc2_ = _loc5_;
      var _loc4_ = this.buffer;
      _loc3_ = 0;
      while(_loc3_ < _loc2_)
      {
         if(_loc4_.charCodeAt(_loc3_ + 5) > 128)
         {
            if(_loc4_.charCodeAt(_loc3_ + 5) > 255)
            {
               _loc2_ = _loc2_ - 2;
            }
            else
            {
               _loc2_ = _loc2_ - 1;
            }
         }
         _loc3_ = _loc3_ + 1;
      }
      return _loc2_;
   }
   function getLength()
   {
      var _loc2_ = parseInt(this.buffer.substr(2,this.buffer.indexOf(";",3) - 2));
      return _loc2_;
   }
   function getFloatLength()
   {
      var _loc2_ = parseFloat(this.buffer.substr(2,this.buffer.indexOf(";",3) - 2));
      return _loc2_;
   }
   function getArrayLength()
   {
      var _loc2_ = parseInt(this.buffer.substr(2,this.buffer.indexOf(":",2) - this.buffer.indexOf(":",1) + 1));
      this.buffer = this.buffer.substr(this.buffer.indexOf(":",2) + 2);
      return _loc2_;
   }
   function getObjectLength()
   {
      var _loc2_ = parseInt(this.buffer.substr(1,this.buffer.indexOf(":",1)));
      this.buffer = this.buffer.substr(this.buffer.indexOf(":",1) + 2);
      return _loc2_;
   }
   function getNext(str)
   {
      var _loc2_ = this.unserialize_internal(this.buffer);
      var _loc3_ = this.unserialize_internal(this.buffer);
      return new Array(_loc2_,_loc3_);
   }
}
