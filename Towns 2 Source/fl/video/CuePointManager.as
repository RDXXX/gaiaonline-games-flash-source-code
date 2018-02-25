package fl.video
{
   use namespace flvplayback_internal;
   
   public class CuePointManager
   {
      
      public static const VERSION:String = "2.5.0.26";
      
      public static const SHORT_VERSION:String = "2.5";
      
      flvplayback_internal static const DEFAULT_LINEAR_SEARCH_TOLERANCE:Number = 50;
      
      flvplayback_internal static var cuePointsReplace:Array = ["&quot;","\"","&#39;","\'","&#44;",",","&amp;","&"];
       
      
      private var _owner:FLVPlayback;
      
      flvplayback_internal var _metadataLoaded:Boolean;
      
      flvplayback_internal var _disabledCuePoints:Array;
      
      flvplayback_internal var _disabledCuePointsByNameOnly:Object;
      
      flvplayback_internal var _asCuePointIndex:int;
      
      flvplayback_internal var _asCuePointTolerance:Number;
      
      flvplayback_internal var _linearSearchTolerance:Number;
      
      flvplayback_internal var _id:uint;
      
      flvplayback_internal var allCuePoints:Array;
      
      flvplayback_internal var asCuePoints:Array;
      
      flvplayback_internal var flvCuePoints:Array;
      
      flvplayback_internal var navCuePoints:Array;
      
      flvplayback_internal var eventCuePoints:Array;
      
      public function CuePointManager(param1:FLVPlayback, param2:uint)
      {
         super();
         this._owner = param1;
         this._id = param2;
         this.reset();
         this._asCuePointTolerance = this._owner.getVideoPlayer(this._id).playheadUpdateInterval / 2000;
         this._linearSearchTolerance = DEFAULT_LINEAR_SEARCH_TOLERANCE;
      }
      
      flvplayback_internal static function cuePointCompare(param1:Number, param2:String, param3:Object) : int
      {
         var _loc4_:Number = Math.round(param1 * 1000);
         var _loc5_:Number = Math.round(param3.time * 1000);
         if(_loc4_ < _loc5_)
         {
            return -1;
         }
         if(_loc4_ > _loc5_)
         {
            return 1;
         }
         if(param2 != null)
         {
            if(param2 == param3.name)
            {
               return 0;
            }
            if(param2 < param3.name)
            {
               return -1;
            }
            return 1;
         }
         return 0;
      }
      
      flvplayback_internal static function deepCopyObject(param1:Object, param2:uint = 0) : Object
      {
         var _loc4_:* = undefined;
         if(param1 == null)
         {
            return param1;
         }
         var _loc3_:Object = new Object();
         for(_loc4_ in param1)
         {
            if(!(param2 == 0 && (_loc4_ == "array" || _loc4_ == "index")))
            {
               if(typeof param1[_loc4_] == "object")
               {
                  _loc3_[_loc4_] = deepCopyObject(param1[_loc4_],param2 + 1);
               }
               else
               {
                  _loc3_[_loc4_] = param1[_loc4_];
               }
            }
         }
         return _loc3_;
      }
      
      public function reset() : void
      {
         this._metadataLoaded = false;
         this.allCuePoints = null;
         this.asCuePoints = null;
         this._disabledCuePoints = new Array();
         this._disabledCuePointsByNameOnly = new Object();
         this.flvCuePoints = null;
         this.navCuePoints = null;
         this.eventCuePoints = null;
         this._asCuePointIndex = 0;
      }
      
      public function get metadataLoaded() : Boolean
      {
         return this._metadataLoaded;
      }
      
      public function set playheadUpdateInterval(param1:Number) : void
      {
         this._asCuePointTolerance = param1 / 2000;
      }
      
      public function get id() : uint
      {
         return this._id;
      }
      
      public function addASCuePoint(param1:*, param2:String = null, param3:Object = null) : Object
      {
         var _loc4_:Object = null;
         var _loc7_:int = 0;
         var _loc10_:int = 0;
         if(typeof param1 == "object")
         {
            _loc4_ = deepCopyObject(param1);
         }
         else
         {
            _loc4_ = {
               "time":param1,
               "name":param2,
               "parameters":deepCopyObject(param3)
            };
         }
         if(_loc4_.parameters == null)
         {
            delete _loc4_.parameters;
         }
         var _loc5_:Boolean = isNaN(_loc4_.time) || _loc4_.time < 0;
         if(_loc5_)
         {
            throw new VideoError(VideoError.ILLEGAL_CUE_POINT,"time must be number");
         }
         var _loc6_:* = _loc4_.name == null;
         if(_loc6_)
         {
            throw new VideoError(VideoError.ILLEGAL_CUE_POINT,"name cannot be undefined or null");
         }
         _loc4_.type = CuePointType.ACTIONSCRIPT;
         if(this.asCuePoints == null || this.asCuePoints.length < 1)
         {
            _loc7_ = 0;
            this.asCuePoints = new Array();
            this.asCuePoints.push(_loc4_);
         }
         else
         {
            _loc7_ = this.getCuePointIndex(this.asCuePoints,true,_loc4_.time);
            _loc7_ = this.asCuePoints[_loc7_].time > _loc4_.time?0:int(_loc7_ + 1);
            this.asCuePoints.splice(_loc7_,0,_loc4_);
         }
         if(this.allCuePoints == null || this.allCuePoints.length < 1)
         {
            this.allCuePoints = new Array();
            this.allCuePoints.push(_loc4_);
         }
         else
         {
            _loc10_ = this.getCuePointIndex(this.allCuePoints,true,_loc4_.time);
            _loc10_ = this.allCuePoints[_loc10_].time > _loc4_.time?0:int(_loc10_ + 1);
            this.allCuePoints.splice(_loc10_,0,_loc4_);
         }
         var _loc8_:Number = this._owner.getVideoPlayer(this._id).playheadTime;
         if(_loc8_ > 0)
         {
            if(this._asCuePointIndex == _loc7_)
            {
               if(_loc8_ > this.asCuePoints[_loc7_].time)
               {
                  this._asCuePointIndex++;
               }
            }
            else if(this._asCuePointIndex > _loc7_)
            {
               this._asCuePointIndex++;
            }
         }
         else
         {
            this._asCuePointIndex = 0;
         }
         var _loc9_:Object = deepCopyObject(this.asCuePoints[_loc7_]);
         _loc9_.array = this.asCuePoints;
         _loc9_.index = _loc7_;
         return _loc9_;
      }
      
      public function removeASCuePoint(param1:*) : Object
      {
         var _loc2_:Object = null;
         if(this.asCuePoints == null || this.asCuePoints.length < 1)
         {
            return null;
         }
         switch(typeof param1)
         {
            case "string":
               _loc2_ = {"name":param1};
               break;
            case "number":
               _loc2_ = {"time":param1};
               break;
            case "object":
               _loc2_ = param1;
         }
         var _loc3_:int = this.getCuePointIndex(this.asCuePoints,false,_loc2_.time,_loc2_.name);
         if(_loc3_ < 0)
         {
            return null;
         }
         _loc2_ = this.asCuePoints[_loc3_];
         this.asCuePoints.splice(_loc3_,1);
         _loc3_ = this.getCuePointIndex(this.allCuePoints,false,_loc2_.time,_loc2_.name);
         if(_loc3_ > 0)
         {
            this.allCuePoints.splice(_loc3_,1);
         }
         if(this._owner.getVideoPlayer(this._id).playheadTime > 0)
         {
            if(this._asCuePointIndex > _loc3_)
            {
               this._asCuePointIndex--;
            }
         }
         else
         {
            this._asCuePointIndex = 0;
         }
         return _loc2_;
      }
      
      public function setFLVCuePointEnabled(param1:Boolean, param2:*) : int
      {
         var _loc3_:Object = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         switch(typeof param2)
         {
            case "string":
               _loc3_ = {"name":param2};
               break;
            case "number":
               _loc3_ = {"time":param2};
               break;
            case "object":
               _loc3_ = param2;
         }
         var _loc4_:Boolean = isNaN(_loc3_.time) || _loc3_.time < 0;
         var _loc5_:* = _loc3_.name == null;
         if(_loc4_ && _loc5_)
         {
            throw new VideoError(VideoError.ILLEGAL_CUE_POINT,"time must be number and/or name must not be undefined or null");
         }
         var _loc6_:uint = 0;
         if(_loc4_)
         {
            if(!this._metadataLoaded)
            {
               if(this._disabledCuePointsByNameOnly[_loc3_.name] == undefined)
               {
                  if(!param1)
                  {
                     this._disabledCuePointsByNameOnly[_loc3_.name] = new Array();
                  }
                  this.removeCuePoints(this._disabledCuePoints,_loc3_);
                  return -1;
               }
               if(param1)
               {
                  delete this._disabledCuePointsByNameOnly[_loc3_.name];
               }
               return -1;
            }
            if(param1)
            {
               _loc6_ = this.removeCuePoints(this._disabledCuePoints,_loc3_);
            }
            else
            {
               _loc7_ = this.getCuePointIndex(this.flvCuePoints,true,-1,_loc3_.name);
               while(_loc7_ >= 0)
               {
                  _loc9_ = this.flvCuePoints[_loc7_];
                  _loc8_ = this.getCuePointIndex(this._disabledCuePoints,true,_loc9_.time);
                  if(_loc8_ < 0 || this._disabledCuePoints[_loc8_].time != _loc9_.time)
                  {
                     this._disabledCuePoints = this.insertCuePoint(_loc8_,this._disabledCuePoints,{
                        "name":_loc9_.name,
                        "time":_loc9_.time
                     });
                     _loc6_ = _loc6_ + 1;
                  }
                  _loc7_ = this.getNextCuePointIndexWithName(_loc9_.name,this.flvCuePoints,_loc7_);
               }
            }
            return _loc6_;
         }
         _loc7_ = this.getCuePointIndex(this._disabledCuePoints,false,_loc3_.time,_loc3_.name);
         if(_loc7_ < 0)
         {
            if(param1)
            {
               if(!this._metadataLoaded)
               {
                  _loc7_ = this.getCuePointIndex(this._disabledCuePoints,false,_loc3_.time);
                  if(_loc7_ < 0)
                  {
                     _loc8_ = this.getCuePointIndex(this._disabledCuePointsByNameOnly[_loc3_.name],true,_loc3_.time);
                     if(cuePointCompare(_loc3_.time,null,this._disabledCuePointsByNameOnly[_loc3_.name]) != 0)
                     {
                        this._disabledCuePointsByNameOnly[_loc3_.name] = this.insertCuePoint(_loc8_,this._disabledCuePointsByNameOnly[_loc3_.name],_loc3_);
                     }
                  }
                  else
                  {
                     this._disabledCuePoints.splice(_loc7_,1);
                  }
               }
               return !!this._metadataLoaded?0:-1;
            }
            if(this._metadataLoaded)
            {
               _loc7_ = this.getCuePointIndex(this.flvCuePoints,false,_loc3_.time,_loc3_.name);
               if(_loc7_ < 0)
               {
                  return 0;
               }
               if(_loc5_)
               {
                  _loc3_.name = this.flvCuePoints[_loc7_].name;
               }
            }
            _loc8_ = this.getCuePointIndex(this._disabledCuePoints,true,_loc3_.time);
            this._disabledCuePoints = this.insertCuePoint(_loc8_,this._disabledCuePoints,_loc3_);
            _loc6_ = 1;
            return !!this._metadataLoaded?int(_loc6_):-1;
         }
         if(param1)
         {
            this._disabledCuePoints.splice(_loc7_,1);
            _loc6_ = 1;
         }
         else
         {
            _loc6_ = 0;
         }
         return !!this._metadataLoaded?int(_loc6_):-1;
      }
      
      public function removeCuePoints(param1:Array, param2:Object) : Number
      {
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         _loc3_ = this.getCuePointIndex(param1,true,-1,param2.name);
         while(_loc3_ >= 0)
         {
            _loc4_ = param1[_loc3_];
            param1.splice(_loc3_,1);
            _loc3_--;
            _loc5_++;
            _loc3_ = this.getNextCuePointIndexWithName(_loc4_.name,param1,_loc3_);
         }
         return _loc5_;
      }
      
      public function insertCuePoint(param1:int, param2:Array, param3:Object) : Array
      {
         if(param1 < 0)
         {
            param2 = new Array();
            param2.push(param3);
         }
         else
         {
            if(param2[param1].time > param3.time)
            {
               param1 = 0;
            }
            else
            {
               param1++;
            }
            param2.splice(param1,0,param3);
         }
         return param2;
      }
      
      public function isFLVCuePointEnabled(param1:*) : Boolean
      {
         var _loc2_:Object = null;
         var _loc5_:int = 0;
         if(!this._metadataLoaded)
         {
            return true;
         }
         switch(typeof param1)
         {
            case "string":
               _loc2_ = {"name":param1};
               break;
            case "number":
               _loc2_ = {"time":param1};
               break;
            case "object":
               _loc2_ = param1;
         }
         var _loc3_:Boolean = isNaN(_loc2_.time) || _loc2_.time < 0;
         var _loc4_:* = _loc2_.name == null;
         if(_loc3_ && _loc4_)
         {
            throw new VideoError(VideoError.ILLEGAL_CUE_POINT,"time must be number and/or name must not be undefined or null");
         }
         if(_loc3_)
         {
            _loc5_ = this.getCuePointIndex(this.flvCuePoints,true,-1,_loc2_.name);
            if(_loc5_ < 0)
            {
               return true;
            }
            while(_loc5_ >= 0)
            {
               if(this.getCuePointIndex(this._disabledCuePoints,false,this.flvCuePoints[_loc5_].time,this.flvCuePoints[_loc5_].name) < 0)
               {
                  return true;
               }
               _loc5_ = this.getNextCuePointIndexWithName(_loc2_.name,this.flvCuePoints,_loc5_);
            }
            return false;
         }
         return this.getCuePointIndex(this._disabledCuePoints,false,_loc2_.time,_loc2_.name) < 0;
      }
      
      public function dispatchASCuePoints() : void
      {
         var _loc1_:Number = this._owner.getVideoPlayer(this._id).playheadTime;
         if(this._owner.getVideoPlayer(this._id).stateResponsive && this.asCuePoints != null)
         {
            while(this._asCuePointIndex < this.asCuePoints.length && this.asCuePoints[this._asCuePointIndex].time <= _loc1_ + this._asCuePointTolerance)
            {
               this._owner.dispatchEvent(new MetadataEvent(MetadataEvent.CUE_POINT,false,false,deepCopyObject(this.asCuePoints[this._asCuePointIndex++]),this._id));
            }
         }
      }
      
      public function resetASCuePointIndex(param1:Number) : void
      {
         if(param1 <= 0 || this.asCuePoints == null)
         {
            this._asCuePointIndex = 0;
            return;
         }
         var _loc2_:int = this.getCuePointIndex(this.asCuePoints,true,param1);
         this._asCuePointIndex = this.asCuePoints[_loc2_].time < param1?int(_loc2_ + 1):int(_loc2_);
      }
      
      public function processFLVCuePoints(param1:Array) : void
      {
         var _loc2_:int = 0;
         var _loc4_:Object = null;
         this._metadataLoaded = true;
         if(param1 == null || param1.length < 1)
         {
            this.flvCuePoints = null;
            this.navCuePoints = null;
            this.eventCuePoints = null;
            return;
         }
         this.flvCuePoints = param1;
         this.navCuePoints = new Array();
         this.eventCuePoints = new Array();
         var _loc3_:Number = -1;
         var _loc5_:Array = this._disabledCuePoints;
         var _loc6_:Number = 0;
         this._disabledCuePoints = new Array();
         var _loc7_:int = 0;
         while((_loc4_ = this.flvCuePoints[_loc7_++]) != undefined)
         {
            if(_loc3_ > 0 && _loc3_ >= _loc4_.time)
            {
               this.flvCuePoints = null;
               this.navCuePoints = null;
               this.eventCuePoints = null;
               this._disabledCuePoints = new Array();
               this._disabledCuePointsByNameOnly = new Object();
               throw new VideoError(VideoError.ILLEGAL_CUE_POINT,"Unsorted cuePoint found after time: " + _loc3_);
            }
            _loc3_ = _loc4_.time;
            while(_loc6_ < _loc5_.length && cuePointCompare(_loc5_[_loc6_].time,null,_loc4_) < 0)
            {
               _loc6_++;
            }
            if(this._disabledCuePointsByNameOnly[_loc4_.name] != undefined || _loc6_ < _loc5_.length && cuePointCompare(_loc5_[_loc6_].time,_loc5_[_loc6_].name,_loc4_) == 0)
            {
               this._disabledCuePoints.push({
                  "time":_loc4_.time,
                  "name":_loc4_.name
               });
            }
            if(_loc4_.type == CuePointType.NAVIGATION)
            {
               this.navCuePoints.push(_loc4_);
            }
            else if(_loc4_.type == CuePointType.EVENT)
            {
               this.eventCuePoints.push(_loc4_);
            }
            if(this.allCuePoints == null || this.allCuePoints.length < 1)
            {
               this.allCuePoints = new Array();
               this.allCuePoints.push(_loc4_);
            }
            else
            {
               _loc2_ = this.getCuePointIndex(this.allCuePoints,true,_loc4_.time);
               _loc2_ = this.allCuePoints[_loc2_].time > _loc4_.time?0:int(_loc2_ + 1);
               this.allCuePoints.splice(_loc2_,0,_loc4_);
            }
         }
         this._disabledCuePointsByNameOnly = new Object();
      }
      
      public function processCuePointsProperty(param1:Array) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc7_:* = false;
         if(param1 == null || param1.length == 0)
         {
            return;
         }
         var _loc2_:uint = 0;
         var _loc8_:int = 0;
         loop0:
         while(true)
         {
            if(_loc8_ >= param1.length - 1)
            {
               if(_loc2_ == 6)
               {
                  this.addOrDisable(_loc7_,_loc6_);
                  return;
               }
               throw new VideoError(VideoError.ILLEGAL_CUE_POINT,"unexpected end of cuePoint param string");
            }
            switch(_loc2_)
            {
               case 6:
                  this.addOrDisable(_loc7_,_loc6_);
                  _loc2_ = 0;
               case 0:
                  if(param1[_loc8_++] != "t")
                  {
                     throw new VideoError(VideoError.ILLEGAL_CUE_POINT,"unexpected cuePoint parameter format");
                  }
                  if(isNaN(param1[_loc8_]))
                  {
                     throw new VideoError(VideoError.ILLEGAL_CUE_POINT,"time must be number");
                  }
                  _loc6_ = new Object();
                  _loc6_.time = param1[_loc8_] / 1000;
                  _loc2_++;
                  break;
               case 1:
                  if(param1[_loc8_++] != "n")
                  {
                     throw new VideoError(VideoError.ILLEGAL_CUE_POINT,"unexpected cuePoint parameter format");
                  }
                  if(param1[_loc8_] == undefined)
                  {
                     throw new VideoError(VideoError.ILLEGAL_CUE_POINT,"name cannot be null or undefined");
                  }
                  _loc6_.name = unescape(param1[_loc8_]);
                  _loc2_++;
                  break;
               case 2:
                  if(param1[_loc8_++] != "t")
                  {
                     throw new VideoError(VideoError.ILLEGAL_CUE_POINT,"unexpected cuePoint parameter format");
                  }
                  if(isNaN(param1[_loc8_]))
                  {
                     throw new VideoError(VideoError.ILLEGAL_CUE_POINT,"type must be number");
                  }
                  switch(param1[_loc8_])
                  {
                     case 0:
                        _loc6_.type = CuePointType.EVENT;
                        break;
                     case 1:
                        _loc6_.type = CuePointType.NAVIGATION;
                        break;
                     case 2:
                        _loc6_.type = CuePointType.ACTIONSCRIPT;
                        break;
                     default:
                        break loop0;
                  }
                  _loc2_++;
                  break;
               case 3:
                  if(param1[_loc8_++] != "d")
                  {
                     throw new VideoError(VideoError.ILLEGAL_CUE_POINT,"unexpected cuePoint parameter format");
                  }
                  if(isNaN(param1[_loc8_]))
                  {
                     throw new VideoError(VideoError.ILLEGAL_CUE_POINT,"disabled must be number");
                  }
                  _loc7_ = param1[_loc8_] != 0;
                  _loc2_++;
                  break;
               case 4:
                  if(param1[_loc8_++] != "p")
                  {
                     throw new VideoError(VideoError.ILLEGAL_CUE_POINT,"unexpected cuePoint parameter format");
                  }
                  if(isNaN(param1[_loc8_]))
                  {
                     throw new VideoError(VideoError.ILLEGAL_CUE_POINT,"num params must be number");
                  }
                  _loc3_ = param1[_loc8_];
                  _loc2_++;
                  if(_loc3_ == 0)
                  {
                     _loc2_++;
                  }
                  else
                  {
                     _loc6_.parameters = new Object();
                  }
                  break;
               case 5:
                  _loc4_ = param1[_loc8_++];
                  _loc5_ = param1[_loc8_];
                  if(_loc4_ is String)
                  {
                     _loc4_ = unescape(_loc4_);
                  }
                  if(_loc5_ is String)
                  {
                     _loc5_ = unescape(_loc5_);
                  }
                  _loc6_.parameters[_loc4_] = _loc5_;
                  _loc3_--;
                  if(_loc3_ == 0)
                  {
                     _loc2_++;
                  }
            }
            _loc8_++;
         }
         throw new VideoError(VideoError.ILLEGAL_CUE_POINT,"type must be 0, 1 or 2");
      }
      
      flvplayback_internal function addOrDisable(param1:Boolean, param2:Object) : void
      {
         if(param1)
         {
            if(param2.type == CuePointType.ACTIONSCRIPT)
            {
               throw new VideoError(VideoError.ILLEGAL_CUE_POINT,"Cannot disable actionscript cue points");
            }
            this.setFLVCuePointEnabled(false,param2);
         }
         else if(param2.type == CuePointType.ACTIONSCRIPT)
         {
            this.addASCuePoint(param2);
         }
      }
      
      flvplayback_internal function unescape(param1:String) : String
      {
         var _loc2_:String = param1;
         var _loc3_:int = 0;
         while(_loc3_ < cuePointsReplace.length)
         {
            _loc2_ = _loc2_.replace(cuePointsReplace[_loc3_++],cuePointsReplace[_loc3_++]);
         }
         return _loc2_;
      }
      
      flvplayback_internal function getCuePointIndex(param1:Array, param2:Boolean, param3:Number = NaN, param4:String = null, param5:int = -1, param6:int = -1) : int
      {
         var _loc9_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         if(param1 == null || param1.length < 1)
         {
            return -1;
         }
         var _loc7_:Boolean = isNaN(param3) || param3 < 0;
         var _loc8_:* = param4 == null;
         if(_loc7_ && _loc8_)
         {
            throw new VideoError(VideoError.ILLEGAL_CUE_POINT,"time must be number and/or name must not be undefined or null");
         }
         if(param5 < 0)
         {
            param5 = 0;
         }
         if(param6 < 0)
         {
            param6 = param1.length;
         }
         if(!_loc8_ && (param2 || _loc7_))
         {
            if(_loc7_)
            {
               _loc12_ = param5;
            }
            else
            {
               _loc12_ = this.getCuePointIndex(param1,param2,param3);
            }
            _loc13_ = _loc12_;
            while(_loc13_ >= param5)
            {
               if(param1[_loc13_].name == param4)
               {
                  break;
               }
               _loc13_--;
            }
            if(_loc13_ >= param5)
            {
               return _loc13_;
            }
            _loc13_ = _loc12_ + 1;
            while(_loc13_ < param6)
            {
               if(param1[_loc13_].name == param4)
               {
                  break;
               }
               _loc13_++;
            }
            if(_loc13_ < param6)
            {
               return _loc13_;
            }
            return -1;
         }
         if(param6 <= this._linearSearchTolerance)
         {
            _loc14_ = param5 + param6;
            _loc15_ = param5;
            while(true)
            {
               if(_loc15_ < _loc14_)
               {
                  _loc9_ = cuePointCompare(param3,param4,param1[_loc15_]);
                  if(_loc9_ == 0)
                  {
                     break;
                  }
                  if(_loc9_ >= 0)
                  {
                     _loc15_++;
                     continue;
                  }
               }
               if(param2)
               {
                  if(_loc15_ > 0)
                  {
                     return _loc15_ - 1;
                  }
                  return 0;
               }
               return -1;
            }
            return _loc15_;
         }
         var _loc10_:int = int(param6 / 2);
         var _loc11_:int = param5 + _loc10_;
         _loc9_ = cuePointCompare(param3,param4,param1[_loc11_]);
         if(_loc9_ < 0)
         {
            return this.getCuePointIndex(param1,param2,param3,param4,param5,_loc10_);
         }
         if(_loc9_ > 0)
         {
            return this.getCuePointIndex(param1,param2,param3,param4,_loc11_ + 1,_loc10_ - 1 + param6 % 2);
         }
         return _loc11_;
      }
      
      flvplayback_internal function getNextCuePointIndexWithName(param1:String, param2:Array, param3:int) : int
      {
         var _loc4_:int = 0;
         if(param1 == null)
         {
            throw new VideoError(VideoError.ILLEGAL_CUE_POINT,"name cannot be undefined or null");
         }
         if(param2 == null)
         {
            throw new VideoError(VideoError.ILLEGAL_CUE_POINT,"cuePoint.array undefined");
         }
         if(isNaN(param3) || param3 < -1 || param3 >= param2.length)
         {
            throw new VideoError(VideoError.ILLEGAL_CUE_POINT,"cuePoint.index must be number between -1 and cuePoint.array.length");
         }
         _loc4_ = param3 + 1;
         while(_loc4_ < param2.length)
         {
            if(param2[_loc4_].name == param1)
            {
               break;
            }
            _loc4_++;
         }
         if(_loc4_ < param2.length)
         {
            return _loc4_;
         }
         return -1;
      }
      
      flvplayback_internal function getCuePoint(param1:Array, param2:Boolean, param3:*) : Object
      {
         var _loc4_:Object = null;
         switch(typeof param3)
         {
            case "string":
               _loc4_ = {"name":param3};
               break;
            case "number":
               _loc4_ = {"time":param3};
               break;
            case "object":
               _loc4_ = param3;
         }
         var _loc5_:int = this.getCuePointIndex(param1,param2,_loc4_.time,_loc4_.name);
         if(_loc5_ < 0)
         {
            return null;
         }
         _loc4_ = deepCopyObject(param1[_loc5_]);
         _loc4_.array = param1;
         _loc4_.index = _loc5_;
         return _loc4_;
      }
      
      flvplayback_internal function getNextCuePointWithName(param1:Object) : Object
      {
         if(param1 == null)
         {
            throw new VideoError(VideoError.ILLEGAL_CUE_POINT,"cuePoint parameter undefined");
         }
         if(isNaN(param1.time) || param1.time < 0)
         {
            throw new VideoError(VideoError.ILLEGAL_CUE_POINT,"time must be number");
         }
         var _loc2_:int = this.getNextCuePointIndexWithName(param1.name,param1.array,param1.index);
         if(_loc2_ < 0)
         {
            return null;
         }
         var _loc3_:Object = deepCopyObject(param1.array[_loc2_]);
         _loc3_.array = param1.array;
         _loc3_.index = _loc2_;
         return _loc3_;
      }
   }
}
