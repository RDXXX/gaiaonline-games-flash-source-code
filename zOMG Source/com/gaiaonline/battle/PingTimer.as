package com.gaiaonline.battle
{
   import com.gaiaonline.battle.gateway.BattleEvent;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.gateway.BattleMessage;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class PingTimer
   {
       
      
      private var _gateway:BattleGateway = null;
      
      private var pingWait:int = 5000;
      
      private var pArray:Array;
      
      private var waitTimer:Timer;
      
      private var pingDelay:int = 500;
      
      private var pingTimer:Timer;
      
      private var pingCount:int = 10;
      
      public var lagTime:int = 0;
      
      public function PingTimer(gateway:BattleGateway)
      {
         pArray = [];
         super();
         this._gateway = gateway;
         this.pingTimer = new Timer(this.pingDelay,this.pingCount);
         this.waitTimer = new Timer(this.pingWait,1);
         this.pingTimer.addEventListener(TimerEvent.TIMER,onPingTimer,false,0,true);
         this.waitTimer.addEventListener(TimerEvent.TIMER_COMPLETE,onWaitTimerComplete,false,0,true);
      }
      
      public function start() : void
      {
         this.stop();
         this.pingTimer.start();
      }
      
      public function stop() : void
      {
         this.pingTimer.reset();
         this.waitTimer.reset();
         this.pArray.length = 0;
      }
      
      private function onPingTimer(evt:TimerEvent) : void
      {
         var msg:BattleMessage = null;
         if(this._gateway.connectedToGameServer)
         {
            msg = new BattleMessage("601",null);
            msg.addEventListener(BattleEvent.CALL_BACK,onCallBack);
            this._gateway.sendMsg(msg);
         }
      }
      
      private function onWaitTimerComplete(evt:TimerEvent) : void
      {
         this.pingTimer.reset();
         this.pingTimer.start();
      }
      
      private function onCallBack(evt:BattleEvent) : void
      {
         var l:int = 0;
         var i:int = 0;
         this.pArray.push(evt.battleMessage.lag / 2);
         if(this.pArray.length >= this.pingCount)
         {
            l = 0;
            for(i = 0; i < this.pArray.length; i++)
            {
               l = l + this.pArray[i];
            }
            this.lagTime = l / this.pArray.length;
            this.pArray.length = 0;
            this.pingTimer.reset();
            this.waitTimer.start();
         }
         BattleMessage(evt.target).removeEventListener(BattleEvent.CALL_BACK,onCallBack);
      }
   }
}
