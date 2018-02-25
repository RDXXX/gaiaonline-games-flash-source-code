package fl.video
{
   public dynamic class FMSCapabilities
   {
       
      
      private var _version:String;
      
      private var _majorVersion:int;
      
      private var _minorVersion:int;
      
      private var _updateVersion:int;
      
      private var _build:int;
      
      private var _dynamicStreaming:Boolean = false;
      
      private var _dvr:Boolean = false;
      
      private var _dataStreamAccess:Boolean = false;
      
      private var _http:Boolean = false;
      
      private var _codecs:Object;
      
      public function FMSCapabilities(param1:String = "2,0,0,0")
      {
         super();
         var _loc2_:Array = param1.split(",");
         this._version = param1;
         if(param1 != "2,0,0,0")
         {
            _loc2_ = this._version.split(",");
         }
         this._majorVersion = !!isNaN(_loc2_[0])?2:int(_loc2_[0]);
         this._minorVersion = !!isNaN(_loc2_[1])?0:int(_loc2_[1]);
         this._updateVersion = !!isNaN(_loc2_[2])?0:int(_loc2_[2]);
         this._build = !!isNaN(_loc2_[3])?0:int(_loc2_[3]);
         this.createCodecs();
         this.parseVersion();
      }
      
      private function parseVersion() : void
      {
         if(this.checkVersion(this._version,"3,0,0,0"))
         {
            this._dataStreamAccess = true;
            this._codecs.mp4 = true;
            this._codecs.aac = true;
         }
         if(this.checkVersion(this._version,"3,5,0,0"))
         {
            this._dynamicStreaming = true;
            this._codecs.speex = true;
         }
         if(this.checkVersion(this._version,"3,5,0,300"))
         {
            this._dvr = true;
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
      
      public function get dvr() : Boolean
      {
         return this._dvr;
      }
      
      public function set progressive(param1:Boolean) : void
      {
         this._http = param1;
      }
      
      public function get progressive() : Boolean
      {
         return this._http;
      }
      
      public function get version() : String
      {
         return this._version;
      }
   }
}
