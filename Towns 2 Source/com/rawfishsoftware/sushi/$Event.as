package com.rawfishsoftware.sushi
{
   public class $Event
   {
       
      
      private var event:String;
      
      private var object:String;
      
      private var callback:Function = null;
      
      private var scope:Object = null;
      
      private var listeners:Array;
      
      private var hasListeners:Boolean = false;
      
      private var sushi:Object;
      
      public function $Event(param1:Object, param2:String, param3:String = "")
      {
         this.listeners = [];
         super();
         this.event = param2;
         if(param3)
         {
            this.object = param3;
         }
         this.sushi = param1;
      }
      
      public function setCallback(param1:Function, param2:Object) : void
      {
         this.callback = param1;
         this.scope = param2;
      }
      
      public function clearCallback() : void
      {
         this.callback = null;
         this.scope = null;
      }
      
      public function addListener(param1:Object) : void
      {
         this.removeListener(param1);
         this.listeners.push(param1);
         this.hasListeners = true;
      }
      
      public function removeAllListeners() : void
      {
         this.listeners = [];
         this.hasListeners = false;
      }
      
      public function removeListener(param1:Object) : Boolean
      {
         var _loc2_:Array = this.listeners;
         var _loc3_:int = _loc2_.length;
         while(_loc3_--)
         {
            if(_loc2_[_loc3_] == param1)
            {
               _loc2_.splice(_loc3_,1);
               if(!_loc2_.length)
               {
                  this.hasListeners = false;
               }
               return true;
            }
         }
         return false;
      }
      
      public function $call(... rest) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         if(!rest || !rest.length)
         {
            return;
         }
         if(this.sushi && this.object && this.sushi[this.object] && this.sushi[this.object].list && this.sushi[this.object].list["_" + rest[0]] && this.sushi[this.object].list["_" + rest[0]].$class)
         {
            _loc2_ = this.sushi[this.object].list["_" + rest[0]].$class;
            _loc2_[this.event].apply(_loc2_,rest);
         }
         if(this.callback)
         {
            this.callback.apply(this.scope,rest);
         }
         if(this.hasListeners)
         {
            _loc4_ = this.listeners;
            for(_loc3_ in _loc4_)
            {
               _loc2_ = _loc4_[_loc3_];
               _loc2_[this.event].apply(_loc2_,rest);
            }
         }
      }
   }
}
