package com.gaiaworld.global.util
{
   import com.gaiaworld.global.controller.GlobalController;
   import com.gaiaworld.global.services.ServerTime;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class ServerTimer extends EventDispatcher
   {
      
      private static var instance:ServerTimer;
      
      public static const TIME_SET:String = "timeSet";
       
      
      private var serverTime:ServerTime;
      
      private var currentTime:Number = -1;
      
      private var timer:Timer;
      
      private var globalController:GlobalController;
      
      public var secs:Number = 0;
      
      private var startTime:Number;
      
      public function ServerTimer()
      {
         this.timer = new Timer(1000);
         this.globalController = new GlobalController();
         super();
         this.serverTime = new ServerTime();
         this.serverTime.addEventListener(ServerTime.TIME_GOT,this.gotTime);
         this.serverTime.getTime();
      }
      
      public static function getInstance() : ServerTimer
      {
         if(instance == null)
         {
            instance = new ServerTimer();
         }
         return instance;
      }
      
      public function refreshFromServer() : *
      {
         this.serverTime.addEventListener(ServerTime.TIME_GOT,this.gotTime);
         this.serverTime.getTime();
      }
      
      public function getSecs() : *
      {
         var _loc1_:Number = getTimer() - this.startTime;
         _loc1_ = _loc1_ / 1000;
         var _loc2_:Number = _loc1_ / 60;
         var _loc3_:Number = _loc2_ - int(_loc2_);
         var _loc4_:Number = int(_loc3_ * 60);
         return _loc4_;
      }
      
      private function updateTime(param1:TimerEvent) : *
      {
         this.currentTime++;
         this.secs++;
         if(this.secs > 59)
         {
            this.secs = 0;
         }
         this.globalController.setServerTime(this.currentTime);
      }
      
      private function gotTime(param1:Event) : void
      {
         this.serverTime.removeEventListener(ServerTime.TIME_GOT,this.gotTime);
         this.currentTime = this.serverTime.time;
         this.secs = this.serverTime.secs;
         this.timer.addEventListener(TimerEvent.TIMER,this.updateTime);
         this.timer.start();
         this.startTime = getTimer();
         this.dispatchEvent(new Event(TIME_SET,true));
      }
      
      public function getTime() : Number
      {
         return this.currentTime;
      }
   }
}
