package fl.video
{
   import flash.events.Event;
   
   public class VideoEvent extends Event implements IVPEvent
   {
      
      public static const AUTO_REWOUND:String = "autoRewound";
      
      public static const BUFFERING_STATE_ENTERED:String = "bufferingStateEntered";
      
      public static const CLOSE:String = "close";
      
      public static const COMPLETE:String = "complete";
      
      public static const FAST_FORWARD:String = "fastForward";
      
      public static const PAUSED_STATE_ENTERED:String = "pausedStateEntered";
      
      public static const PLAYHEAD_UPDATE:String = "playheadUpdate";
      
      public static const PLAYING_STATE_ENTERED:String = "playingStateEntered";
      
      public static const READY:String = "ready";
      
      public static const REWIND:String = "rewind";
      
      public static const SCRUB_FINISH:String = "scrubFinish";
      
      public static const SCRUB_START:String = "scrubStart";
      
      public static const SEEKED:String = "seeked";
      
      public static const SKIN_LOADED:String = "skinLoaded";
      
      public static const STATE_CHANGE:String = "stateChange";
      
      public static const STOPPED_STATE_ENTERED:String = "stoppedStateEntered";
      
      public static const UNSUPPORTED_PLAYER_VERSION:String = "unsupportedPlayerVersion";
       
      
      private var _state:String;
      
      private var _playheadTime:Number;
      
      private var _vp:uint;
      
      public function VideoEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:String = null, param5:Number = NaN, param6:uint = 0)
      {
         super(param1,param2,param3);
         this._state = param4;
         this._playheadTime = param5;
         this._vp = param6;
      }
      
      public function get state() : String
      {
         return this._state;
      }
      
      public function set state(param1:String) : void
      {
         this._state = param1;
      }
      
      public function get playheadTime() : Number
      {
         return this._playheadTime;
      }
      
      public function set playheadTime(param1:Number) : void
      {
         this._playheadTime = param1;
      }
      
      public function get vp() : uint
      {
         return this._vp;
      }
      
      public function set vp(param1:uint) : void
      {
         this._vp = param1;
      }
      
      override public function clone() : Event
      {
         return new VideoEvent(type,bubbles,cancelable,this.state,this.playheadTime,this.vp);
      }
   }
}
