class com.omniture.events.EventBroadcaster
{
   function EventBroadcaster()
   {
      this._oListeners = new Object();
   }
   function addEventListener(event, obj, method)
   {
      var _loc2_ = event;
      var _loc3_ = this;
      §§push(_loc1_);
      §§push(_loc2_);
      §§push(_loc3_);
      if(_loc3_._oListeners[_loc2_] == undefined)
      {
         _loc3_._oListeners[_loc2_] = new Array();
      }
      var len = _loc3_._oListeners[_loc2_].length;
      var _loc1_ = 0;
      while(true)
      {
         if(_loc1_ < len)
         {
            if(_loc3_._oListeners[_loc2_][_loc1_].obj == obj && _loc3_._oListeners[_loc2_][_loc1_].method == method)
            {
               break;
            }
            _loc1_ = _loc1_ + 1;
            continue;
         }
         _loc3_._oListeners[_loc2_].push({obj:obj,method:method});
         break;
      }
      _loc3_ = §§pop();
      _loc2_ = §§pop();
      _loc1_ = §§pop();
   }
   function broadcastEvent(event, data)
   {
      var _loc3_ = event;
      var sMethod;
      var aData;
      var _loc2_ = 0;
      while(_loc2_ < this._oListeners[_loc3_].length)
      {
         sMethod = _loc3_;
         if(this._oListeners[_loc3_][_loc2_].method != undefined)
         {
            sMethod = this._oListeners[_loc3_][_loc2_].method;
         }
         aData = new Array();
         var _loc1_ = 1;
         while(_loc1_ < arguments.length)
         {
            aData.push(arguments[_loc1_]);
            _loc1_ = _loc1_ + 1;
         }
         this._oListeners[_loc3_][_loc2_].obj[sMethod].apply(this._oListeners[_loc3_][_loc2_].obj,aData);
         _loc2_ = _loc2_ + 1;
      }
      _loc3_;
      _loc2_;
      _loc1_;
   }
   function removeEventListener(event, obj, method)
   {
      var _loc2_ = event;
      var _loc3_ = this;
      var len = _loc3_._oListeners[_loc2_].length;
      var _loc1_ = len - 1;
      while(_loc1_ >= 0)
      {
         if(_loc3_._oListeners[_loc2_][_loc1_].obj == obj & _loc3_._oListeners[_loc2_][_loc1_].method == method)
         {
            _loc3_._oListeners[_loc2_].splice(_loc1_,1);
         }
         _loc1_ = _loc1_ - 1;
      }
      _loc3_;
      _loc2_;
      _loc1_;
   }
}
