package fl.video
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.net.NetConnection;
   import flash.net.NetStream;
   import flash.net.Responder;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class DVRManager extends EventDispatcher
   {
      
      public static const DVR_EVENT:String = "dvrEvent";
      
      public static const DVR_ERROR:String = "dvrError";
      
      public static const DVR_STOP:String = "dvrStop";
       
      
      private var _streamName:String;
      
      private var _nc:NetConnection;
      
      private var _infoResponder:Responder;
      
      private var _currentDuration:Number;
      
      private var _intervalTimer:Number;
      
      private var _totalDuration:Number;
      
      private var _durationStart:Number;
      
      private var _durationNow:Number;
      
      private var _durationTimer:Timer;
      
      private var _offset:Number;
      
      private var _offline:Boolean;
      
      private var _isRec:Boolean;
      
      private var _retryTimer:Timer;
      
      private var _dvrStreamName:String;
      
      private var _dvrNS:NetStream;
      
      private var _retryCount:int;
      
      private var _offsetSet:Boolean;
      
      private const RETRY_LIMIT:int = 5;
      
      public function DVRManager(param1:NetConnection)
      {
         this._durationTimer = new Timer(1000,0);
         super();
         this._nc = param1;
         this._currentDuration = 0;
         this._totalDuration = 0;
         this._intervalTimer = 0;
         this._retryCount = 0;
         this._infoResponder = new Responder(this.infoResponderResult,this.infoResponderStatus);
         this._retryTimer = new Timer(5000,1);
         this._retryTimer.addEventListener(TimerEvent.TIMER,this.handleRetryTimer);
         this._offsetSet = false;
      }
      
      private function infoResponderResult(param1:Object) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param1.code == "NetStream.DVRStreamInfo.Success")
         {
            this._currentDuration = param1.data.currLen >= 0?Number(param1.data.currLen):Number(0);
            this._totalDuration = param1.data.maxLen > 0?Number(param1.data.maxLen):Number(0);
            _loc2_ = !isNaN(param1.data.begOffset)?Number(param1.data.begOffset):Number(0);
            _loc3_ = !isNaN(param1.data.endOffset)?Number(param1.data.endOffset):Number(0);
            this._offline = param1.data.offline;
            this._isRec = param1.data.isRec;
            this._retryCount = 0;
            this._durationStart = getTimer();
            if(!this._offsetSet)
            {
               if(_loc3_ != 0)
               {
                  if(this._currentDuration > _loc3_)
                  {
                     this._offset = this._currentDuration - _loc3_;
                  }
                  else if(this._currentDuration > _loc2_)
                  {
                     this._offset = _loc2_;
                  }
                  else
                  {
                     this._offset = this._currentDuration;
                  }
               }
               else if(_loc2_ != 0)
               {
                  if(this._currentDuration > _loc2_)
                  {
                     this._offset = _loc2_;
                  }
                  else
                  {
                     this._offset = this._currentDuration;
                  }
               }
               else
               {
                  this._offset = 0;
               }
               this._offsetSet = true;
            }
            if(!this._isRec && !this._offline && this._totalDuration == 0)
            {
               this._totalDuration = this._currentDuration;
            }
            if(this._offset > 0 && this._totalDuration > 0)
            {
               this._totalDuration = this._totalDuration - this._offset;
            }
            dispatchEvent(new Event(DVR_EVENT,false,false));
         }
         else if(param1.code == "NetStream.DVRStreamInfo.Retry" && (this._retryCount < this.RETRY_LIMIT || this.RETRY_LIMIT == -1))
         {
            this._retryCount++;
            _loc4_ = param1.data.retry > 0?Number(param1.data.retry):Number(3);
            this._retryTimer.delay = _loc4_ * 1000;
            this._retryTimer.reset();
            this._retryTimer.start();
         }
         else
         {
            dispatchEvent(new Event(DVR_ERROR,false,false));
         }
      }
      
      private function infoResponderStatus(param1:Object) : void
      {
         dispatchEvent(new Event(DVR_ERROR,false,false));
      }
      
      private function handleRetryTimer(param1:TimerEvent) : void
      {
         this._retryTimer.stop();
         this.getStreamDuration(this._dvrStreamName);
      }
      
      public function getStreamDuration(param1:String) : void
      {
         if(this._dvrStreamName != param1)
         {
            this._nc.call("DVRSubscribe",null,param1);
         }
         this._dvrStreamName = param1;
         if(!this._retryTimer.running)
         {
            this._nc.call("DVRGetStreamInfo",this._infoResponder,param1);
         }
         this._intervalTimer = getTimer();
      }
      
      public function checkInterval(param1:Number) : Boolean
      {
         if((getTimer() - this._intervalTimer) / 1000 >= param1)
         {
            return true;
         }
         return false;
      }
      
      public function get currentDuration() : Number
      {
         this._durationNow = (getTimer() - this._durationStart) / 1000 + this._currentDuration;
         if(this._offset > this._durationNow)
         {
            return this._durationNow;
         }
         return this._durationNow - this.offset;
      }
      
      public function get totalDuration() : Number
      {
         return this._totalDuration;
      }
      
      public function get offset() : Number
      {
         if(this._offset > this._currentDuration)
         {
            return this._currentDuration;
         }
         return this._offset;
      }
      
      public function get offline() : Boolean
      {
         return this._offline;
      }
      
      public function get isRec() : Boolean
      {
         return this._isRec;
      }
      
      public function get nc() : NetConnection
      {
         return this._nc;
      }
   }
}
