package com.rawfishsoftware.sushi
{
   public class Member
   {
       
      
      public var list:Object;
      
      private var ref;
      
      private var d:String;
      
      private var e:String;
      
      public var name:String = "member";
      
      public function Member(param1:Object)
      {
         super();
         this.ref = param1;
         this.d = this.ref.$d;
         this.e = this.ref.$e;
         this.$init();
      }
      
      public function $init() : void
      {
         this.list = {};
      }
      
      public function getTeam(param1:Number) : Number
      {
         return this.list["_" + param1].team;
      }
      
      public function getName(param1:Number) : String
      {
         return this.ref.$memberIDs["x" + param1];
      }
      
      public function getName_list(param1:Array) : Array
      {
         var _loc3_:Number = NaN;
         var _loc2_:Array = [];
         _loc3_ = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_.push(this.getName(param1[_loc3_]));
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function getID(param1:String) : Number
      {
         return this.ref.$memberNames["x" + param1];
      }
      
      public function getObject(param1:Number) : Object
      {
         return this.list["_" + param1];
      }
      
      public function getData(param1:Number) : Array
      {
         if(this.list != null)
         {
            if(this.list["_" + param1] != null)
            {
               if(this.list["_" + param1].data != null)
               {
                  return this.list["_" + param1].data.slice();
               }
            }
         }
         return null;
      }
      
      public function getRoom(param1:Number) : Number
      {
         return this.list["_" + param1].room;
      }
      
      public function getPlatform(param1:Number) : Number
      {
         return this.list["_" + param1].platform;
      }
      
      public function isSpectator(param1:Number) : Number
      {
         return this.list["_" + param1].spectator;
      }
      
      public function chat(param1:Number, param2:String) : void
      {
         this.ref.$sts = this.ref.$sts + ("10" + this.d + this.ref.me.id + this.d + "0" + this.d + param1 + this.d + param2 + this.e);
      }
      
      public function registerEvents(param1:Number, param2:Object) : void
      {
         this.list["_" + param1].$class = param2;
      }
      
      public function degisterEvents(param1:Number, param2:Object) : void
      {
         this.list["_" + param1].$class = null;
      }
      
      public function setDataIndexCallback(param1:Number, param2:Number, param3:Function, param4:Object) : void
      {
         var _loc5_:* = this.list["_" + param1];
         if(!_loc5_.__cb)
         {
            _loc5_.__cb = [];
         }
         _loc5_.__cb["_" + param2] = {
            "cb":param3,
            "sc":param4
         };
      }
      
      public function clearDataIndexCallback(param1:Number, param2:Number) : void
      {
         var _loc3_:* = this.list["_" + param1];
         delete _loc3_.__cb["_" + param2];
         var _loc4_:* = _loc3_.data.length;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         while(_loc6_ < _loc4_)
         {
            if(_loc3_.__cb["_" + _loc6_])
            {
               _loc5_++;
               break;
            }
            _loc6_++;
         }
         if(!_loc5_)
         {
            delete _loc3_.__cb;
         }
      }
      
      public function clearAllDataIndexCallbacks(param1:Number) : void
      {
         var _loc2_:* = this.list["_" + param1];
         delete _loc2_.__cb;
      }
   }
}
