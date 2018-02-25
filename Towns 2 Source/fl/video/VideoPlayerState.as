package fl.video
{
   public class VideoPlayerState
   {
       
      
      public var owner:VideoPlayer;
      
      public var index:int;
      
      public var url:String;
      
      public var isLive:Boolean;
      
      public var isLiveSet:Boolean;
      
      public var totalTime:Number;
      
      public var totalTimeSet:Boolean;
      
      public var autoPlay:Boolean;
      
      public var isWaiting:Boolean;
      
      public var prevState:String;
      
      public var minProgressPercent:Number;
      
      public var preSeekTime:Number;
      
      public var cmdQueue:Array;
      
      public function VideoPlayerState(param1:VideoPlayer, param2:int)
      {
         super();
         this.owner = param1;
         this.index = param2;
         this.url = "";
         this.isLive = false;
         this.isLiveSet = true;
         this.totalTime = NaN;
         this.totalTimeSet = true;
         this.autoPlay = param2 == 0;
         this.isWaiting = false;
         this.preSeekTime = NaN;
         this.cmdQueue = null;
      }
   }
}
