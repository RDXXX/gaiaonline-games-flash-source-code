class com.rawfishsoftware.sushi.$Event
{
   var callback = null;
   var scope = null;
   var listeners = [];
   var hasListeners = false;
   function $Event(s, e, obj)
   {
      this.event = e;
      if(obj)
      {
         this.object = obj;
      }
      this.sushi = s;
   }
   function setCallback(callback, scope)
   {
      this.callback = callback;
      this.scope = scope;
   }
   function clearCallback()
   {
      this.callback = null;
      this.scope = null;
   }
   function addListener(object)
   {
      this.removeListener(object);
      this.listeners.push(object);
      this.hasListeners = true;
   }
   function removeAllListeners()
   {
      this.listeners = [];
      this.hasListeners = false;
   }
   function removeListener(object)
   {
      var _loc2_ = this.listeners;
      var _loc3_ = _loc2_.length;
      while(true)
      {
         _loc3_;
         if(_loc3_--)
         {
            if(_loc2_[_loc3_] == object)
            {
               _loc2_.splice(_loc3_,1);
               if(!_loc2_.length)
               {
                  this.hasListeners = false;
               }
               return true;
            }
            continue;
         }
         break;
      }
      return false;
   }
   function $call()
   {
      var _loc3_ = this.sushi[this.object].list["_" + arguments[0]].$class;
      if(_loc3_)
      {
         _loc3_[this.event].apply(_loc3_,arguments);
      }
      if(this.callback)
      {
         this.callback.apply(this.scope,arguments);
      }
      if(this.hasListeners)
      {
         var _loc5_ = undefined;
         var _loc4_ = this.listeners;
         for(var _loc5_ in _loc4_)
         {
            _loc3_ = _loc4_[_loc5_];
            _loc3_[this.event].apply(_loc3_,arguments);
         }
      }
   }
}
