package fl.video
{
   use namespace flvplayback_internal;
   
   public final class VideoState
   {
      
      public static const DISCONNECTED:String = "disconnected";
      
      public static const STOPPED:String = "stopped";
      
      public static const PLAYING:String = "playing";
      
      public static const PAUSED:String = "paused";
      
      public static const BUFFERING:String = "buffering";
      
      public static const LOADING:String = "loading";
      
      public static const CONNECTION_ERROR:String = "connectionError";
      
      public static const REWINDING:String = "rewinding";
      
      public static const SEEKING:String = "seeking";
      
      public static const RESIZING:String = "resizing";
      
      flvplayback_internal static var EXEC_QUEUED_CMD:String = "execQueuedCmd";
       
      
      public function VideoState()
      {
         super();
      }
   }
}
