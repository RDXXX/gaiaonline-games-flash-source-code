package fl.video
{
   import flash.net.NetConnection;
   
   public interface INCManager
   {
       
      
      function connectToURL(param1:String) : Boolean;
      
      function connectDynamicStream(param1:*) : void;
      
      function connectAgain() : Boolean;
      
      function reconnect() : void;
      
      function helperDone(param1:Object, param2:Boolean) : void;
      
      function close() : void;
      
      function get videoPlayer() : VideoPlayer;
      
      function set videoPlayer(param1:VideoPlayer) : void;
      
      function get timeout() : uint;
      
      function set timeout(param1:uint) : void;
      
      function get netConnection() : NetConnection;
      
      function get bitrate() : Number;
      
      function set bitrate(param1:Number) : void;
      
      function get streamName() : String;
      
      function get isRTMP() : Boolean;
      
      function get streamLength() : Number;
      
      function get streamWidth() : int;
      
      function get streamHeight() : int;
      
      function getProperty(param1:String) : *;
      
      function setProperty(param1:String, param2:*) : void;
      
      function get isDynamicStream() : Boolean;
      
      function get streams() : Array;
   }
}
