package com.gaiaonline.battle.ui.uiactionbar
{
   import com.gaiaonline.battle.ui.ToolTipOld;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.MovieClipProxy;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class RageMeter extends MovieClipProxy
   {
      
      private static const POWER:String = "powerState";
      
      private static const RAGE:String = "rageState";
       
      
      private var _currState:String = null;
      
      public var mcRage:MovieClip;
      
      private var _tooltipManager:ToolTipOld = null;
      
      public var G1:MovieClip;
      
      public var G2:MovieClip;
      
      public var G3:MovieClip;
      
      private var time:int = 0;
      
      private var _mcRageMeter:RageMeterFl = null;
      
      private var ragePer:int = 100;
      
      private var _states:Array = null;
      
      public var meterIcon:MovieClip;
      
      public var mcCharge:MovieClip;
      
      private var chargingUp:Boolean = true;
      
      private var charging:Boolean = false;
      
      private var charge:int = 0;
      
      private var chargeRate:Number = 1.5;
      
      public function RageMeter(tooltipManager:ToolTipOld, mcRageMeter:RageMeterFl)
      {
         super(mcRageMeter);
         this._mcRageMeter = mcRageMeter;
         this._tooltipManager = tooltipManager;
         this.G3 = this._mcRageMeter.G3;
         this.G2 = this._mcRageMeter.G2;
         this.G1 = this._mcRageMeter.G1;
         this.mcCharge = this._mcRageMeter.mcCharge;
         this.mcRage = this._mcRageMeter.mcRage;
         this.meterIcon = this._mcRageMeter.meterIcon;
         _states = new Array(2);
         _states[RAGE] = {
            "tip":"Rage Meter",
            "alpha":100
         };
         _states[POWER] = {
            "tip":"Power Meter",
            "alpha":70
         };
         setRage(0);
         this.G1.visible = false;
         this.G2.visible = false;
         this.G3.visible = false;
      }
      
      public function setRage(per:int, powerMeter:Boolean = false) : void
      {
         if(per < 0)
         {
            per = 0;
         }
         else if(per > 100)
         {
            per = 100;
         }
         if(per != this.ragePer)
         {
            this.ragePer = per;
            this.mcRage.x = -100 + this.ragePer;
         }
         var state:String = !!powerMeter?POWER:RAGE;
         if(_currState != state)
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALLOW_AREA_RINGS_ONLY,powerMeter));
            _currState = state;
            _tooltipManager.removeToolTip(_mcRageMeter);
            _tooltipManager.addToolTip(_mcRageMeter,_states[state].tip);
            this.mcRage.alpha = _states[state].alpha;
            this.meterIcon.gotoAndStop(state);
            this.mcRage.gotoAndStop(state);
            this.mcCharge.gotoAndStop(state);
         }
      }
      
      public function stopCharging() : int
      {
         var c:int = this.charge;
         this.removeEventListener(Event.ENTER_FRAME,onEnterFrame);
         this.charge = 0;
         this.mcCharge.x = -100;
         this.charging = false;
         this.G1.visible = false;
         this.G2.visible = false;
         this.G3.visible = false;
         if(usePowerMeter)
         {
            return c;
         }
         if(c <= 33)
         {
            return 0;
         }
         if(c <= 66)
         {
            return 1;
         }
         if(c < 100)
         {
            return 2;
         }
         return 3;
      }
      
      public function get usePowerMeter() : Boolean
      {
         return _currState == POWER;
      }
      
      private function onEnterFrame(evt:Event) : void
      {
         var t:int = 0;
         var dt:int = 0;
         if(this.charge < this.ragePer)
         {
            t = getTimer();
            dt = t - this.time;
            this.time = t;
            if(usePowerMeter)
            {
               if(this.mcCharge.x <= 0 && chargingUp == true)
               {
                  this.charge = this.charge + dt * 100 / (this.chargeRate * 1000);
                  if(this.mcCharge.x >= -5)
                  {
                     this.mcCharge.x = 0;
                     chargingUp = false;
                     this.charge = 99;
                  }
               }
               else
               {
                  this.charge = this.charge - dt * 100 / (this.chargeRate * 1000);
                  if(this.mcCharge.x <= -100)
                  {
                     this.mcCharge.x = -100;
                     chargingUp = true;
                  }
               }
            }
            else
            {
               this.charge = this.charge + dt * 100 / (this.chargeRate * 1000);
            }
            if(this.charge >= this.ragePer)
            {
               this.charge = this.ragePer;
               this.mcCharge.x = -100 + this.charge;
            }
            else
            {
               this.mcCharge.x = -100 + this.charge;
            }
            if(this.charge <= 33)
            {
               this.G1.visible = false;
               this.G2.visible = false;
               this.G3.visible = false;
            }
            else if(this.charge <= 66)
            {
               this.G1.visible = true;
               this.G2.visible = false;
               this.G3.visible = false;
            }
            else if(this.charge < 100)
            {
               this.G1.visible = true;
               this.G2.visible = true;
               this.G3.visible = false;
            }
            else
            {
               this.G1.visible = true;
               this.G2.visible = true;
               this.G3.visible = true;
            }
         }
      }
      
      public function startCharging() : void
      {
         if(!this.charging)
         {
            this.charging = true;
            this.time = getTimer();
            this.addEventListener(Event.ENTER_FRAME,onEnterFrame);
         }
      }
   }
}
