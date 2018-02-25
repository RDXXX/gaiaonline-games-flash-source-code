package com.rawfishsoftware.sushi
{
   public class Challenge
   {
       
      
      private var ref:Object;
      
      private var d:String;
      
      private var e:String;
      
      public var $template:String;
      
      public var $timeout:Number;
      
      public var $minMembers:Number;
      
      public var $challengers:Array;
      
      public var room:Number;
      
      public var id:Number;
      
      public function Challenge(param1:Object)
      {
         super();
         this.ref = param1;
         this.d = this.ref.$d;
         this.e = this.ref.$e;
      }
      
      public function $init() : void
      {
         this.id = 0;
         this.$challengers = [];
      }
      
      public function request(param1:String, param2:Number, param3:Number, param4:Array, param5:Function, param6:Object) : void
      {
         var _loc7_:* = ++this.ref.$cbid;
         this.ref.$cblist[_loc7_] = {
            "event":param5,
            "action":10,
            "scope":param6,
            "template":param1,
            "timeout":param2,
            "minMembers":param3
         };
         this.ref.$sts = this.ref.$sts + ("66" + this.d + "-1" + this.d + this.ref.$cbid + this.d + param1 + this.d + param2 + this.d + param3 + this.d + param4.join(this.d) + this.e);
      }
      
      public function reChallenge(param1:Function, param2:Object) : void
      {
         var _loc4_:* = ++this.ref.$cbid;
         this.ref.$cblist[_loc4_] = {
            "event":param1,
            "action":10,
            "scope":param2,
            "template":this.$template,
            "timeout":this.$timeout,
            "minMembers":this.$minMembers
         };
         var _loc3_:Array = this.ref.room.getMemberIDs(this.ref.me.room).slice(0);
         this.ref.removeValue(_loc3_,this.ref.me.id);
         this.ref.$sts = this.ref.$sts + ("66" + this.d + this.id + this.d + this.ref.$cbid + this.d + this.$template + this.d + this.$timeout + this.d + this.$minMembers + this.d + _loc3_.join(this.d) + this.e);
      }
      
      public function answerRequest(param1:Number) : void
      {
         this.ref.$sts = this.ref.$sts + ("68" + this.d + this.ref.me.id + this.d + this.id + this.d + param1 + this.e);
         if(!param1)
         {
            this.id = 0;
            this.$challengers = [];
            this.ref.me.moderator = 0;
         }
      }
      
      public function cancel() : void
      {
         this.ref.$sts = this.ref.$sts + ("72" + this.d + this.id + this.e);
         this.id = 0;
         this.$challengers = [];
         this.ref.me.moderator = 0;
      }
      
      public function start(param1:Array) : void
      {
         if(param1)
         {
            this.ref.$sts = this.ref.$sts + ("70" + this.d + this.id + this.d + param1.join(this.d) + this.e);
         }
         else
         {
            this.ref.$sts = this.ref.$sts + ("70" + this.d + this.id + this.e);
         }
      }
      
      public function nextMember() : void
      {
         this.ref.$sts = this.ref.$sts + ("71" + this.d + this.id + this.e);
      }
      
      public function includeMember(param1:Number) : void
      {
         this.ref.$sts = this.ref.$sts + ("64" + this.d + param1 + this.d + "1" + this.e);
      }
      
      public function excludeMember(param1:Number) : void
      {
         this.ref.$sts = this.ref.$sts + ("64" + this.d + param1 + this.d + "0" + this.e);
      }
      
      public function getMemberIDs() : Array
      {
         return this.$challengers.slice();
      }
      
      public function getMemberPosition(param1:Number) : Number
      {
         var _loc3_:* = undefined;
         var _loc2_:* = this.$challengers.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.$challengers[_loc3_] == param1)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
   }
}
