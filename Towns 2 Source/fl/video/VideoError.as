package fl.video
{
   use namespace flvplayback_internal;
   
   public class VideoError extends Error
   {
      
      public static const VERSION:String = "2.5.0.26";
      
      public static const SHORT_VERSION:String = "2.5";
      
      flvplayback_internal static const BASE_ERROR_CODE:uint = 1000;
      
      public static const NO_CONNECTION:uint = 1000;
      
      public static const ILLEGAL_CUE_POINT:uint = 1002;
      
      public static const INVALID_SEEK:uint = 1003;
      
      public static const INVALID_SOURCE:uint = 1004;
      
      public static const INVALID_XML:uint = 1005;
      
      public static const NO_BITRATE_MATCH:uint = 1006;
      
      public static const DELETE_DEFAULT_PLAYER:uint = 1007;
      
      public static const INCMANAGER_CLASS_UNSET:uint = 1008;
      
      public static const NULL_URL_LOAD:uint = 1009;
      
      public static const MISSING_SKIN_STYLE:uint = 1010;
      
      public static const UNSUPPORTED_PROPERTY:uint = 1011;
      
      public static const NETSTREAM_CLIENT_CLASS_UNSET:uint = 1012;
      
      flvplayback_internal static const ERROR_MSG:Array = ["Unable to make connection to server or to find FLV on server","No matching cue point found","Illegal cue point","Invalid seek","Invalid source","Invalid xml","No bitrate match, must be no default flv","Cannot delete default VideoPlayer","VideoPlayer.iNCManagerClass has not been set or its value is invalid","Null url parameter sent to load()","Skin is missing a required style definition or its value is invalid","Unsupported property","VideoPlayer.netStreamClientClass has not been set or its value is invalid"];
       
      
      private var _code:uint;
      
      public function VideoError(param1:uint, param2:String = null)
      {
         super("" + param1 + ": " + ERROR_MSG[param1 - BASE_ERROR_CODE] + (param2 == null?"":": " + param2));
         name = "VideoError";
         this._code = param1;
      }
      
      public function get code() : uint
      {
         return this._code;
      }
   }
}
