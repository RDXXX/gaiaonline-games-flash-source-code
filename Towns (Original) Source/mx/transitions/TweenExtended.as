class mx.transitions.TweenExtended extends mx.transitions.Tween
{
   var className = "TweenExtended";
   static var version = "1.0.6";
   function TweenExtended(target, props, easeFunc, strt, end, dur, useSecs, p1, p2)
   {
      super();
      mx.transitions.OnEnterFrameBeacon.init();
      if(!arguments.length)
      {
         return undefined;
      }
      this.aChange = [];
      this.obj = target;
      this.aProps = props;
      this.aBegin = strt;
      this.__set__position(this.copyArray(strt));
      this.__set__duration(dur);
      this.useSeconds = useSecs;
      if(easeFunc)
      {
         this.func = easeFunc;
      }
      this.__set__finish(end);
      this.point1 = p1;
      this.point2 = p2;
      this._listeners = [];
      this.addListener(this);
      this.start();
   }
   function update()
   {
      this.__set__position(this.getPosition(this._time));
   }
   function continueTo(fin, dur)
   {
      var _loc2_ = 0;
      while(_loc2_ < this.aProps.length)
      {
         this.aBegin[_loc2_] = this.__get__position()[_loc2_];
         _loc2_ = _loc2_ + 1;
      }
      this.__set__finish(fin);
      if(dur != undefined)
      {
         this.__set__duration(dur);
      }
      this.start();
   }
   function yoyo()
   {
      var _loc2_ = this.copyArray(this.aBegin);
      this.continueTo(_loc2_,this.__get__time());
   }
   function __get__position()
   {
      return this.getPosition();
   }
   function getPosition(t)
   {
      if(t == undefined)
      {
         t = this._time;
      }
      var _loc5_ = [];
      var _loc2_ = 0;
      while(_loc2_ < this.aProps.length)
      {
         var _loc4_ = Number(this.aBegin[_loc2_]);
         var _loc3_ = Number(this.aChange[_loc2_]);
         if(this.point1 == undefined && this.point2 == undefined)
         {
            _loc5_[_loc2_] = this.func(t,_loc4_,_loc3_,this._duration);
         }
         else if(this.point1 != undefined && this.point2 == undefined)
         {
            _loc5_[_loc2_] = this.func(t,_loc4_,_loc3_,this._duration,this.point1);
         }
         else if(this.point1 != undefined && this.point2 != undefined)
         {
            _loc5_[_loc2_] = this.func(t,_loc4_,_loc3_,this._duration,this.point1,this.point2);
         }
         _loc2_ = _loc2_ + 1;
      }
      return _loc5_;
   }
   function __set__position(p)
   {
      this.setPosition(p);
      return this.__get__position();
   }
   function setPosition(p)
   {
      var _loc2_ = 0;
      while(_loc2_ < this.aProps.length)
      {
         this.obj[this.aProps[_loc2_]] = this._aPos[_loc2_] = p[_loc2_];
         _loc2_ = _loc2_ + 1;
      }
      this.broadcastMessage("onMotionChanged",this,p);
      updateAfterEvent();
   }
   function __set__finish(f)
   {
      var _loc2_ = 0;
      while(_loc2_ < this.aProps.length)
      {
         this.aChange[_loc2_] = f[_loc2_] - this.aBegin[_loc2_];
         _loc2_ = _loc2_ + 1;
      }
      return this.__get__finish();
   }
   function __get__finish()
   {
      var _loc3_ = [];
      var _loc2_ = 0;
      while(_loc2_ < this.aProps.length)
      {
         _loc3_[_loc2_] = this.aBegin[_loc2_] + this.aChange[_loc2_];
         _loc2_ = _loc2_ + 1;
      }
      return _loc3_;
   }
   function __set__loop(b)
   {
      this.looping = b;
      return this.__get__loop();
   }
   function __get__loop()
   {
      return this.looping;
   }
   function copyArray(arr)
   {
      var _loc3_ = [];
      if(arr.length == 0)
      {
         for(var _loc1_ in arr)
         {
            _loc3_[_loc1_] = arr[_loc1_];
         }
      }
      _loc1_ = 0;
      while(_loc1_ < arr.length)
      {
         _loc3_[_loc1_] = arr[_loc1_];
         _loc1_ = _loc1_ + 1;
      }
      return _loc3_;
   }
   function toString()
   {
      return "[" + this.className + "]";
   }
}
