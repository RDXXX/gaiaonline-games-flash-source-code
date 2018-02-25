package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.gateway.BattleMessage;
   import com.gaiaonline.battle.newactors.ActorManager;
   import com.gaiaonline.battle.newactors.BaseActor;
   import com.gaiaonline.flexModulesAPIs.clcapwidget.IClCapEventHandler;
   import com.gaiaonline.flexModulesAPIs.clcapwidget.IClCapWidget;
   import com.gaiaonline.flexModulesAPIs.gatewayInterfaces.IBattleGateway;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class ClCapWidgetController implements IClCapEventHandler
   {
       
      
      private var _gateway:IBattleGateway;
      
      private var _timer:Timer;
      
      private var _clCapWidget:IClCapWidget;
      
      private var _isNullChamber:Boolean = false;
      
      private var _newCl:Number = 1;
      
      public function ClCapWidgetController(gateway:IBattleGateway)
      {
         super();
         this._gateway = gateway;
         _timer = new Timer(500);
         _timer.addEventListener(TimerEvent.TIMER,onTimerValidate,false,0,true);
      }
      
      public function get isNullChamber() : Boolean
      {
         return _isNullChamber;
      }
      
      public function init() : void
      {
         this._clCapWidget.cl = ActorManager.getInstance().myActor.getSuppressedCL();
         this.validate();
         this._clCapWidget.selectAllText();
      }
      
      public function onBtnMinusClick() : void
      {
         this.validate();
         this._clCapWidget.cl = Math.floor(this._newCl - 1);
         this.validate();
      }
      
      protected function validate() : void
      {
         var myActor:BaseActor = null;
         var maxCl:Number = NaN;
         var cl:Number = NaN;
         if(this._clCapWidget)
         {
            myActor = ActorManager.getInstance().myActor;
            maxCl = myActor.conLevel;
            if(!this._isNullChamber)
            {
               maxCl = myActor.getSuppressedCL();
            }
            cl = this._clCapWidget.cl;
            this._newCl = Math.max(1,Math.min(cl,maxCl));
            this._clCapWidget.plusEnable = this._newCl < maxCl;
            this._clCapWidget.minusEnable = this._newCl > 1;
            this.setText();
         }
      }
      
      public function onBtnPlusClick() : void
      {
         this.validate();
         this._clCapWidget.cl = Math.floor(this._newCl + 1);
         this.validate();
      }
      
      public function set isNullChamber(value:Boolean) : void
      {
         _isNullChamber = value;
      }
      
      public function addView(view:IClCapWidget) : void
      {
         this._clCapWidget = view;
         this._clCapWidget.setEventHandler(this);
         var myActor:BaseActor = ActorManager.getInstance().myActor;
         var maxCl:Number = myActor.conLevel;
         if(!this._isNullChamber)
         {
            maxCl = myActor.getSuppressedCL();
         }
         this._clCapWidget.minimum = 1;
         this._clCapWidget.maximum = maxCl;
         this.init();
         _timer.start();
      }
      
      public function onBtnConfirmClick() : void
      {
         this.validate();
         var msg:BattleMessage = new BattleMessage("ringLevelCap",{"ringLevelCap":Math.floor(this._newCl * 10)});
         this._gateway.sendMsg(msg);
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.CL_CAP_CLOSE,null));
         _timer.stop();
      }
      
      protected function onTimerValidate(event:TimerEvent) : void
      {
         validate();
      }
      
      protected function setText() : void
      {
         var txt:String = null;
         var down:Boolean = this._clCapWidget.minusEnable;
         var up:Boolean = this._clCapWidget.plusEnable;
         if(down && up)
         {
            txt = "Use the arrows to change your level. Type to enter your desired level manually.";
         }
         else if(!down && !up)
         {
            txt = "You cannot change your level at this time. Return to the Null Chamber to change your level.";
         }
         else if(!down)
         {
            txt = "Use the right arrow to increase your level. Type to enter your desired level manually.";
         }
         else if(!isNullChamber)
         {
            txt = "Use the left arrow to lower your level. Return to the Null Chamber to increase your level.";
         }
         else
         {
            txt = "Use the left arrow to lower your level. Type to enter your desired level manually.";
         }
         this._clCapWidget.setText(txt);
      }
      
      public function onBtnCancelClick() : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.CL_CAP_CLOSE,null));
         _timer.stop();
      }
   }
}
