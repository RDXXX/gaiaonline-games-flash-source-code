package com.gaiaworld.towns.games.rally.model
{
   import com.gaiaworld.towns.car.interfaces.ICarLoader;
   import com.gaiaworld.towns.games.rally.constants.RallyConstants;
   import com.gaiaworld.user.vo.UserVo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RallyModel extends EventDispatcher
   {
      
      public static var instance:RallyModel;
       
      
      private var _mapData:Array;
      
      public var userControl:Boolean = true;
      
      private var _diffDist:Number;
      
      private var _speed:Number = 0;
      
      private var _totalDistance:Number = 0;
      
      private var speedTimer:Timer;
      
      private var max:Number = 100;
      
      private var boostTimer:Timer;
      
      public var practiceRace:Boolean = true;
      
      public var winPoint:Number = 362000;
      
      private var _winner:UserVo;
      
      public var gameStarted:Boolean = false;
      
      public var xSpeedInc:Number = 64;
      
      public var ySpeedInc:Number = 32;
      
      public var elapsedTime:Number = 0;
      
      public var car1:ICarLoader;
      
      private var _message:String;
      
      private var _car2X:Number;
      
      private var timer:Timer;
      
      private var _soundToPlay:String;
      
      private var disableTimer:Timer;
      
      public var justArrived:Boolean = false;
      
      private var canGo:Boolean = true;
      
      public function RallyModel()
      {
         this.speedTimer = new Timer(50);
         this.boostTimer = new Timer(4000);
         this.timer = new Timer(1000);
         this.disableTimer = new Timer(3000);
         super();
         this.speedTimer.addEventListener(TimerEvent.TIMER,this.decreaseSpeed);
         this.disableTimer.addEventListener(TimerEvent.TIMER,this.restart);
      }
      
      public static function getInstance() : RallyModel
      {
         if(instance == null)
         {
            instance = new RallyModel();
         }
         return instance;
      }
      
      private function restart(param1:TimerEvent) : void
      {
         this.disableTimer.stop();
         this.canGo = true;
      }
      
      public function gameOver() : void
      {
         this.speedTimer.removeEventListener(TimerEvent.TIMER,this.decreaseSpeed);
         this.disableTimer.removeEventListener(TimerEvent.TIMER,this.restart);
      }
      
      public function get speed() : Number
      {
         return this._speed;
      }
      
      public function set speed(param1:Number) : void
      {
         if(this.gameStarted == true)
         {
            this._speed = param1;
            this.dispatchEvent(new Event(RallyConstants.SPEED_CHANGED,true));
         }
      }
      
      public function get totalDistance() : Number
      {
         return this._totalDistance;
      }
      
      public function set totalDistance(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         if(this.gameStarted == true)
         {
            _loc2_ = false;
            if(param1 != this._totalDistance)
            {
               _loc2_ = true;
            }
            this._totalDistance = param1;
            if(_loc2_ == true)
            {
               this.dispatchEvent(new Event(RallyConstants.TOTAL_DIST_CHANGED,true));
            }
         }
      }
      
      private function speedBoostEnd(param1:TimerEvent) : *
      {
         this.boostTimer.removeEventListener(TimerEvent.TIMER,this.speedBoostEnd);
         this.max = 100;
         this.speed = 100;
         this.totalDistance = this._totalDistance + this.speed;
      }
      
      public function get diffDist() : Number
      {
         return this._diffDist;
      }
      
      public function set diffDist(param1:Number) : void
      {
         this._diffDist = param1;
         this.dispatchEvent(new Event(RallyConstants.DIFF_CHANGED,true));
      }
      
      public function get mapData() : Array
      {
         return this._mapData;
      }
      
      public function set mapData(param1:Array) : void
      {
         this._mapData = param1;
         this.dispatchEvent(new Event(RallyConstants.MAP_DATA_SET,true));
      }
      
      public function get car2X() : Number
      {
         return this._car2X;
      }
      
      public function set car2X(param1:Number) : void
      {
         this._car2X = param1;
         this.dispatchEvent(new Event(RallyConstants.CAR_2_POS_UPDATED,true));
      }
      
      public function get soundToPlay() : String
      {
         return this._soundToPlay;
      }
      
      public function set soundToPlay(param1:String) : void
      {
         this._soundToPlay = param1;
         this.dispatchEvent(new Event(RallyConstants.PLAY_SOUND,true));
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function set message(param1:String) : void
      {
         this._message = param1;
         this.dispatchEvent(new Event(RallyConstants.RALLY_MESSAGE,true));
      }
      
      public function get winner() : UserVo
      {
         return this._winner;
      }
      
      public function set winner(param1:UserVo) : void
      {
         this._winner = param1;
         this.dispatchEvent(new Event(RallyConstants.WINNER_SET,true));
      }
      
      public function increaseSpeed() : *
      {
         if(this.canGo == false)
         {
            return;
         }
         this.speedTimer.stop();
         if(this._speed < this.max)
         {
            this.speed = this._speed + 1;
         }
         this.totalDistance = this._totalDistance + this.speed;
      }
      
      public function goFast() : *
      {
         this.speed = 200;
         this.max = 200;
         this.totalDistance = this._totalDistance + this.speed;
         this.dispatchEvent(new Event(RallyConstants.SPEED_CHANGED,true));
         this.boostTimer.addEventListener(TimerEvent.TIMER,this.speedBoostEnd);
         this.boostTimer.start();
      }
      
      public function goReallyFast() : *
      {
         this.speed = 300;
         this.max = 300;
         this.totalDistance = this._totalDistance + this.speed;
         this.dispatchEvent(new Event(RallyConstants.SPEED_CHANGED,true));
         this.boostTimer.addEventListener(TimerEvent.TIMER,this.speedBoostEnd);
         this.boostTimer.start();
      }
      
      public function startDecreaseSpeed() : *
      {
         this.speedTimer.start();
      }
      
      public function stopCar() : *
      {
         this.speed = this._speed = 0;
         this.speedTimer.stop();
         this.canGo = false;
         this.disableTimer.start();
         this.dispatchEvent(new Event(RallyConstants.SPEED_CHANGED,true));
      }
      
      public function floatCar() : void
      {
         this.userControl = false;
         this._speed = 0;
         this.dispatchEvent(new Event(RallyConstants.FLOAT_CAR,true));
      }
      
      public function setDownCar() : void
      {
         this.userControl = true;
         this.dispatchEvent(new Event(RallyConstants.PUT_DOWN_CAR,true));
      }
      
      public function jumpCar() : void
      {
         this.dispatchEvent(new Event(RallyConstants.JUMP_CAR,true));
      }
      
      public function startGame() : void
      {
         this.timer.addEventListener(TimerEvent.TIMER,this.upTime);
         this.timer.start();
         this.gameStarted = true;
         this.dispatchEvent(new Event(RallyConstants.RALLY_GAME_STARTED,true));
      }
      
      private function upTime(param1:Event) : void
      {
         this.elapsedTime++;
         this.dispatchEvent(new Event(RallyConstants.UPDATE_TIME,true));
      }
      
      public function stopGame() : *
      {
         this.timer.stop();
         this.timer.removeEventListener(TimerEvent.TIMER,this.upTime);
      }
      
      public function showWarning() : void
      {
         this.dispatchEvent(new Event(RallyConstants.SHOW_WARNING,true));
      }
      
      private function decreaseSpeed(param1:TimerEvent) : *
      {
         if(this._speed > 0)
         {
            this.speed = this._speed - 5;
            if(this.speed < 0)
            {
               this.speed = 0;
            }
            this.totalDistance = this._totalDistance + this.speed;
            this.dispatchEvent(new Event(RallyConstants.SPEED_CHANGED,true));
         }
         else
         {
            this.speedTimer.stop();
         }
      }
      
      public function startEngine() : *
      {
         this.dispatchEvent(new Event(RallyConstants.START_ENGINE,true));
      }
      
      public function stopEngine() : *
      {
         this.dispatchEvent(new Event(RallyConstants.STOP_ENGINE,true));
      }
      
      public function showYellow() : void
      {
         this.dispatchEvent(new Event(RallyConstants.SHOW_YELLOW,true));
      }
      
      public function showGreen() : void
      {
         this.dispatchEvent(new Event(RallyConstants.SHOW_GREEN,true));
      }
      
      public function hideSpeedMarker() : void
      {
         this.dispatchEvent(new Event(RallyConstants.HIDE_SPEED_MARKER,true));
      }
   }
}
