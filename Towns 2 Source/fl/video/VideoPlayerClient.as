package fl.video
{
   use namespace flvplayback_internal;
   
   public dynamic class VideoPlayerClient
   {
       
      
      protected var _owner:VideoPlayer;
      
      protected var gotMetadata:Boolean;
      
      public function VideoPlayerClient(param1:VideoPlayer)
      {
         super();
         this._owner = param1;
         this.gotMetadata = false;
      }
      
      public function get owner() : VideoPlayer
      {
         return this._owner;
      }
      
      public function onMetaData(param1:Object, ... rest) : void
      {
         param1.duration;
         param1.width;
         param1.height;
         this._owner.onMetaData(param1);
         this.gotMetadata = true;
      }
      
      public function onCuePoint(param1:Object, ... rest) : void
      {
         param1.name;
         param1.time;
         param1.type;
         this._owner.onCuePoint(param1);
      }
      
      public function get ready() : Boolean
      {
         return this.gotMetadata;
      }
   }
}
