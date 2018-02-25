package com.rawfishsoftware.sushi
{
   public class Serializer
   {
      
      static var className:String = "it.sephiroth.Serializer";
      
      static var classVersion:String = "2.1.4b";
       
      
      public var instanceName:String = "Serializer";
      
      private var buffer:String;
      
      public function Serializer()
      {
         super();
      }
      
      public function serialize(param1:Object) : String
      {
         var _loc2_:String = new String("");
         _loc2_ = this.serialize_internal("",param1);
         return _loc2_;
      }
      
      private function serialize_internal(param1:String, param2:Object) : String
      {
         var _loc3_:* = undefined;
         var _loc4_:Number = NaN;
         var _loc5_:String = null;
         var _loc6_:* = undefined;
         if(!isNaN(Number(param2)) && param2 is Boolean && param2 is Date)
         {
            _loc3_ = new Number(param2);
         }
         else
         {
            _loc3_ = param2;
         }
         switch(_loc3_.__proto__)
         {
            case Boolean.prototype:
               param1 = param1 + "b:" + int(_loc3_) + ";";
               break;
            case null:
            case undefined:
               param1 = param1 + "N;";
               break;
            case Number.prototype:
               if(_loc3_ >= 1000000000000000)
               {
                  param1 = param1 + "d:" + _loc3_ + ";";
               }
               else if(_loc3_ % 1 == 0)
               {
                  param1 = param1 + "i:" + _loc3_ + ";";
               }
               else
               {
                  param1 = param1 + "d:" + _loc3_ + ";";
               }
               break;
            case String.prototype:
               param1 = param1 + "s:" + this.calcLength(_loc3_) + ":\"" + _loc3_ + "\";";
               break;
            case Date.prototype:
               param1 = param1 + "s:" + this.length(_loc3_) + ":\"" + _loc3_ + "\";";
               break;
            case Object.prototype:
            case Array.prototype:
               _loc4_ = 0;
               _loc5_ = new String("");
               param1 = param1 + "a:";
               for(_loc6_ in _loc3_)
               {
                  _loc5_ = _loc5_ + (this.serialize_internal("",_loc6_) + this.serialize_internal("",_loc3_[_loc6_]));
                  _loc4_ = _loc4_ + 1;
               }
               param1 = param1 + _loc4_ + ":{" + _loc5_ + "}";
               break;
            default:
               param1 = param1 + "i:0;";
         }
         return param1;
      }
      
      private function calcLength(param1:String) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:* = 0;
         var _loc4_:* = param1.length;
         var _loc5_:* = 0;
         while(_loc5_ < _loc4_)
         {
            _loc2_ = param1.charCodeAt(_loc5_);
            if(_loc2_ < 128)
            {
               _loc3_ = _loc3_ + 1;
            }
            else if(_loc2_ < 1024)
            {
               _loc3_ = _loc3_ + 2;
            }
            else if(_loc2_ < 32768)
            {
               _loc3_ = _loc3_ + 3;
            }
            else if(_loc2_ < 2097152)
            {
               _loc3_ = _loc3_ + 4;
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function unserialize(param1:String) : Object
      {
         this.buffer = param1;
         return this.unserialize_internal(param1);
      }
      
      private function unserialize_internal(param1:String) : Object
      {
         var _loc3_:Array = null;
         var _loc2_:String = param1.charAt(0);
         switch(_loc2_)
         {
            case "d":
               _loc3_ = this.parse_double();
               break;
            case "i":
               _loc3_ = this.parse_int();
               break;
            case "b":
               _loc3_ = this.parse_boolean();
               break;
            case "s":
               _loc3_ = this.parse_string();
               break;
            case "a":
               _loc3_ = this.parse_array();
               break;
            case "O":
               _loc3_ = this.parse_object();
               break;
            case "N":
         }
         if(_loc3_[0] != -1)
         {
            this.buffer = this.buffer.substr(this.buffer.indexOf(";",_loc3_[0] + this.length(_loc2_) + this.length(_loc3_[0].toString())) + 1);
         }
         return _loc3_[1];
      }
      
      private function parse_array() : Array
      {
         var _loc4_:Array = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = this.getArrayLength();
         var _loc3_:Array = new Array();
         while(_loc1_ < _loc2_)
         {
            _loc4_ = this.getNext();
            _loc3_[_loc4_[0]] = _loc4_[1];
            _loc1_++;
         }
         this.buffer = this.buffer.substr(1);
         return new Array(-1,_loc3_);
      }
      
      private function parse_object() : Array
      {
         var _loc6_:Array = null;
         var _loc1_:Array = this.parse_string();
         this.buffer = this.buffer.substr(this.buffer.indexOf(":",_loc1_[0]));
         var _loc2_:String = _loc1_[1];
         var _loc3_:Number = 0;
         var _loc4_:Number = this.getObjectLength();
         var _loc5_:Object = new Object();
         while(_loc3_ < _loc4_)
         {
            _loc6_ = this.getNext();
            _loc5_[_loc6_[0]] = _loc6_[1];
            _loc3_++;
         }
         this.buffer = this.buffer.substr(1);
         return new Array(-1,_loc5_);
      }
      
      private function parse_string() : Array
      {
         var _loc3_:String = null;
         var _loc1_:Number = this.getStringLenght();
         var _loc2_:Number = this.getCStringLenght();
         if(_loc1_ == _loc2_)
         {
            _loc3_ = this.buffer.substr(this.length(String(_loc1_)) + 4,_loc1_).toString();
         }
         else
         {
            _loc3_ = this.buffer.substr(this.length(String(_loc1_)) + 4,_loc2_).toString();
         }
         return new Array(_loc2_,_loc3_);
      }
      
      private function parse_boolean() : Array
      {
         var _loc1_:Number = this.getLength();
         var _loc2_:Boolean = _loc1_ < 1?false:true;
         return new Array(this.length(_loc1_.toString()),_loc2_);
      }
      
      private function parse_double() : Array
      {
         var _loc1_:Number = this.getFloatLength();
         var _loc2_:Number = _loc1_;
         return new Array(this.length(_loc1_.toString()),_loc2_);
      }
      
      private function parse_int() : Array
      {
         var _loc1_:Number = this.getLength();
         var _loc2_:Number = _loc1_;
         return new Array(this.length(_loc1_.toString()),_loc2_);
      }
      
      private function getStringLenght(param1:String = "") : Number
      {
         var _loc2_:Number = parseInt(this.buffer.substr(2,this.buffer.indexOf(":",3) - 2));
         return _loc2_;
      }
      
      private function getCStringLenght(param1:String = "") : Number
      {
         var _loc3_:Number = NaN;
         var _loc2_:Number = parseInt(this.buffer.substr(2,this.buffer.indexOf(":",3) - 2));
         var _loc4_:Number = _loc2_;
         var _loc5_:* = this.buffer;
         _loc3_ = 0;
         while(_loc3_ < _loc4_)
         {
            if(_loc5_.charCodeAt(_loc3_ + 5) > 128)
            {
               if(_loc5_.charCodeAt(_loc3_ + 5) > 255)
               {
                  _loc4_ = _loc4_ - 2;
               }
               else
               {
                  _loc4_--;
               }
            }
            _loc3_++;
         }
         return _loc4_;
      }
      
      private function getLength() : Number
      {
         var _loc1_:Number = parseInt(this.buffer.substr(2,this.buffer.indexOf(";",3) - 2));
         return _loc1_;
      }
      
      private function getFloatLength() : Number
      {
         var _loc1_:Number = parseFloat(this.buffer.substr(2,this.buffer.indexOf(";",3) - 2));
         return _loc1_;
      }
      
      private function getArrayLength() : Number
      {
         var _loc1_:Number = parseInt(this.buffer.substr(2,this.buffer.indexOf(":",2) - this.buffer.indexOf(":",1) + 1));
         this.buffer = this.buffer.substr(this.buffer.indexOf(":",2) + 2);
         return _loc1_;
      }
      
      private function getObjectLength() : Number
      {
         var _loc1_:Number = parseInt(this.buffer.substr(1,this.buffer.indexOf(":",1)));
         this.buffer = this.buffer.substr(this.buffer.indexOf(":",1) + 2);
         return _loc1_;
      }
      
      private function getNext(param1:String = null) : Array
      {
         var _loc2_:* = this.unserialize_internal(this.buffer);
         var _loc3_:* = this.unserialize_internal(this.buffer);
         return new Array(_loc2_,_loc3_);
      }
      
      private function length(param1:String) : int
      {
         return param1.length;
      }
   }
}
