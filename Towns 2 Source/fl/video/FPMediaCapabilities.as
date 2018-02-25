package fl.video
{
   import flash.system.Capabilities;
   
   public dynamic class FPMediaCapabilities
   {
       
      
      private var _version:String;
      
      private var _majorVersion:int;
      
      private var _minorVersion:int;
      
      private var _build:int;
      
      private var _revision:int;
      
      private var _swfVerification:Boolean = false;
      
      private var _rtmfp:Boolean = false;
      
      private var _rtmpe:Boolean = false;
      
      private var _dynamicStreaming:Boolean = false;
      
      private var _dataStreamAccess:Boolean = false;
      
      private var _qosStats:Boolean = false;
      
      private var _codecs:Object;
      
      public function FPMediaCapabilities()
      {
         super();
         var _loc1_:Array = this.getVersion();
         this._version = _loc1_.join(",");
         this._majorVersion = !!isNaN(_loc1_[0])?2:int(_loc1_[0]);
         this._minorVersion = !!isNaN(_loc1_[1])?0:int(_loc1_[1]);
         this._build = !!isNaN(_loc1_[2])?0:int(_loc1_[2]);
         this._revision = !!isNaN(_loc1_[3])?0:int(_loc1_[3]);
         this.createCodecs();
         this.parseVersion();
      }
      
      private function parseVersion() : void
      {
         if(this.checkVersion(this._version,"9,0,115,0"))
         {
            this._dataStreamAccess = true;
            this._swfVerification = true;
            this._rtmpe = true;
            this._codecs.mp4 = true;
            this._codecs.aac = true;
         }
         if(this.checkVersion(this._version,"10,0,0,0"))
         {
            this._dynamicStreaming = true;
            this._qosStats = true;
            this._codecs.speex = true;
            this._rtmfp = true;
         }
      }
      
      private function checkVersion(param1:String, param2:String) : Boolean
      {
         var _loc3_:Array = new Array();
         var _loc4_:Array = new Array();
         _loc3_ = param1.split(",");
         _loc4_ = param2.split(",");
         var _loc5_:int = 0;
         while(_loc5_ < 4)
         {
            _loc3_[_loc5_] = int(_loc3_[_loc5_]);
            _loc4_[_loc5_] = int(_loc4_[_loc5_]);
            _loc5_++;
         }
         if(_loc3_[0] > _loc4_[0])
         {
            return true;
         }
         if(_loc3_[0] < _loc4_[0])
         {
            return false;
         }
         if(_loc3_[1] > _loc4_[1])
         {
            return true;
         }
         if(_loc3_[1] < _loc4_[1])
         {
            return false;
         }
         if(_loc3_[2] > _loc4_[2])
         {
            return true;
         }
         if(_loc3_[2] < _loc4_[2])
         {
            return false;
         }
         if(_loc3_[3] > _loc4_[3])
         {
            return true;
         }
         if(_loc3_[3] < _loc4_[3])
         {
            return false;
         }
         _loc3_ = null;
         _loc4_ = null;
         return true;
      }
      
      private function getVersion() : Array
      {
         var _loc1_:String = Capabilities.version;
         var _loc2_:RegExp = /(\d*),(\d*),(\d*),(\d*)$/;
         var _loc3_:Object = _loc2_.exec(_loc1_);
         if(_loc3_ != null)
         {
            return new Array(int(_loc3_[1]),int(_loc3_[2]),int(_loc3_[3]),int(_loc3_[4]));
         }
         return new Array(9,0,28,0);
      }
      
      private function createCodecs() : void
      {
         this._codecs = new Object();
         this._codecs.spark = true;
         this._codecs.vp6 = true;
         this._codecs.mp4 = false;
         this._codecs.nellyMoser = true;
         this._codecs.mp3 = true;
         this._codecs.aac = false;
         this._codecs.speex = false;
      }
      
      public function get codecs() : Object
      {
         return this._codecs;
      }
      
      public function get dataStreamAccess() : Boolean
      {
         return this._dataStreamAccess;
      }
      
      public function get dynamicStreaming() : Boolean
      {
         return this._dynamicStreaming;
      }
      
      public function get rtmpe() : Boolean
      {
         return this._rtmpe;
      }
      
      public function get rtmfp() : Boolean
      {
         return this._rtmfp;
      }
      
      public function get swfVerification() : Boolean
      {
         return this._swfVerification;
      }
      
      public function get qosSupport() : Boolean
      {
         return this._qosStats;
      }
      
      public function get version() : String
      {
         return this._version;
      }
   }
}
