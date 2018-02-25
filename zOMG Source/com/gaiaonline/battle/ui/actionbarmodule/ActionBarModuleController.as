package com.gaiaonline.battle.ui.actionbarmodule
{
   import com.gaiaonline.battle.gateway.BattleMessage;
   import com.gaiaonline.battle.newactors.ActorManager;
   import com.gaiaonline.flexModulesAPIs.actionbar.IActionBarEventHandler;
   import com.gaiaonline.flexModulesAPIs.actionbar.IActionBarModule;
   import com.gaiaonline.flexModulesAPIs.gatewayInterfaces.IBattleGateway;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class ActionBarModuleController implements IActionBarEventHandler
   {
       
      
      private var _allowSitStand:Boolean = true;
      
      private var _gateway:IBattleGateway;
      
      private var _actionBarModule:IActionBarModule = null;
      
      private var _sitStandTimer:Timer;
      
      private const SIT_STAND_DELAY_TIME:Number = 3000.0;
      
      private var _actorManager:ActorManager;
      
      public function ActionBarModuleController(gateway:IBattleGateway)
      {
         _sitStandTimer = new Timer(SIT_STAND_DELAY_TIME,1);
         super();
         this._gateway = gateway;
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.POSE_CHANGE,onPoseChange,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.ALLOW_SIT_STAND,onAllowSitStand,false,0,true);
      }
      
      private function onPoseChange(evt:GlobalEvent) : void
      {
         this._actionBarModule.setPose(evt.data.sit);
      }
      
      public function onBtnPoseClick() : void
      {
         this.sitStand();
      }
      
      public function addView(view:IActionBarModule) : void
      {
         this._actionBarModule = view;
         this._actionBarModule.setPoseEventHandler(this);
      }
      
      private function startSitStandTimer() : void
      {
         if(!_sitStandTimer.running)
         {
            _sitStandTimer.addEventListener(TimerEvent.TIMER,onSitStandTimerDone);
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALLOW_SIT_STAND,{"allow":false}));
            _sitStandTimer.start();
         }
      }
      
      private function onAllowSitStand(e:GlobalEvent) : void
      {
         this._allowSitStand = e.data.allow;
         this._actionBarModule.poseEnabled = this._allowSitStand;
         if(this._allowSitStand)
         {
            this._sitStandTimer.stop();
         }
      }
      
      private function onSitStandTimerDone(e:TimerEvent) : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALLOW_SIT_STAND,{"allow":true}));
      }
      
      private function sitStand() : void
      {
         var param:Array = null;
         var msg2:BattleMessage = null;
         var param3:Array = null;
         var msg3:BattleMessage = null;
         if(!this._actorManager)
         {
            this._actorManager = ActorManager.getInstance();
         }
         if(!this._allowSitStand || this._actorManager.myActor == null)
         {
            return;
         }
         var isSitting:Boolean = _actorManager.myActor.isSitting;
         var sit:* = !isSitting;
         if(isSitting)
         {
            startSitStandTimer();
         }
         this._actionBarModule.setPose(sit);
         if(sit)
         {
            if(_actorManager.myActor != null)
            {
               param = new Array();
               param[0] = 1;
               msg2 = new BattleMessage("106",param);
               this._gateway.sendMsg(msg2);
               _actorManager.myActor.sit(true);
            }
         }
         else if(_actorManager.myActor != null)
         {
            param3 = new Array();
            param3[0] = 0;
            msg3 = new BattleMessage("106",param3);
            this._gateway.sendMsg(msg3);
            _actorManager.myActor.stand();
         }
      }
   }
}
