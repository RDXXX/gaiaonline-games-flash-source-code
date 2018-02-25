package com.rawfishsoftware.sushi
{
   public class Mob
   {
       
      
      public var list:Array;
      
      private var ref:Object;
      
      private var d:String;
      
      private var e:String;
      
      public var $iid:Number;
      
      public function Mob(param1:Object)
      {
         super();
         this.ref = param1;
         this.d = this.ref.$d;
         this.e = this.ref.$e;
         this.$init();
      }
      
      public function $init() : void
      {
         this.list = [];
         this.$iid = 0;
      }
      
      public function update(param1:String, param2:Array) : void
      {
         this.ref.$update(this,"26",param1,param2);
      }
      
      public function silentUpdate(param1:String, param2:Array) : void
      {
         this.ref.$update(this,"15",param1,param2);
      }
      
      public function indexUpdate(param1:String, param2:Array) : void
      {
         this.ref.$indexUpdate(this,"60",param1,param2);
      }
      
      public function indexUpdateEval(param1:String, param2:Array) : void
      {
         this.ref.$indexUpdateEval(this,"41",param1,param2);
      }
      
      public function indexUpdateConditional(param1:String, param2:Array, param3:Function, param4:Object) : void
      {
         this.ref.$indexUpdateConditional(this,"41",param1,param2,param3,param4);
      }
      
      public function remove(param1:String) : void
      {
         this.ref.$sts = this.ref.$sts + ("27" + this.d + param1 + this.e);
         var _loc2_:* = this.list["_" + param1].room;
         this.ref.$removeValue(this.ref.room.list["_" + _loc2_].mobs,param1);
         delete this.list["_" + param1];
      }
      
      public function getMember(param1:String) : Number
      {
         return this.list["_" + param1].member;
      }
      
      public function getRoom(param1:String) : Number
      {
         return this.list["_" + param1].room;
      }
      
      public function getObject(param1:String) : Object
      {
         return this.list["_" + param1];
      }
      
      public function getData(param1:String) : String
      {
         var _loc3_:* = undefined;
         var _loc2_:* = this.list["_" + param1];
         if(_loc2_ != null)
         {
            if(_loc2_.data != null)
            {
               _loc3_ = _loc2_.data;
            }
         }
         return _loc3_;
      }
      
      public function init(param1:Number, param2:Boolean, param3:Array) : String
      {
         var _loc4_:String = ++this.$iid + "m" + param1;
         var _loc5_:Number = !!param2?Number(1):Number(0);
         if(this.list["_" + _loc4_] == null)
         {
            this.list["_" + _loc4_] = {
               "id":_loc4_,
               "room":param1,
               "data":param3,
               "member":this.ref.me.id
            };
            this.ref.$sts = this.ref.$sts + ("47" + this.d + _loc4_ + this.d + param1 + this.d + _loc5_ + this.d + param3.join(this.d) + this.e);
         }
         return _loc4_;
      }
      
      public function registerEvents(param1:String, param2:Object) : void
      {
         this.list["_" + param1].$class = param2;
      }
      
      public function deregisterEvents(param1:String) : void
      {
         this.list["_" + param1].$class = null;
      }
      
      public function setDataIndexCallback(param1:String, param2:Number, param3:Function, param4:Object) : void
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
      
      public function clearDataIndexCallback(param1:String, param2:Number) : void
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
      
      public function clearAllDataIndexCallbacks(param1:String) : void
      {
         var _loc2_:* = this.list["_" + param1];
         delete _loc2_.__cb;
      }
   }
}
