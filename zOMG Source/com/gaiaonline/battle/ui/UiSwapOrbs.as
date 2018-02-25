package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.ApplicationInterfaces.ILinkManager;
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.Globals;
   import com.gaiaonline.battle.ItemLoadManager.ItemIcon;
   import com.gaiaonline.battle.gateway.BattleEvent;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.gateway.BattleMessage;
   import com.gaiaonline.battle.newactors.ActorManager;
   import com.gaiaonline.battle.newrings.Ring;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class UiSwapOrbs extends MovieClip
   {
       
      
      private var _rh2:Sprite;
      
      private var _gateway:BattleGateway = null;
      
      private var _itemIcon1:ItemIcon;
      
      private var _itemIcon2:ItemIcon;
      
      private var _uiFramework:IUIFramework;
      
      private var _linkManager:ILinkManager;
      
      public var btnClose:SimpleButton;
      
      public var mcDefaultTxt:Sprite;
      
      private var _nextValidTime:Number = 0;
      
      public var mcNotAllowText:MovieClip;
      
      public var mcSlots:MovieClip;
      
      public var btnConfirm:SimpleButton;
      
      private var _timer:Timer;
      
      public var mcClLevels:MovieClip;
      
      public var btnCancel:SimpleButton;
      
      private var _rh1:Sprite;
      
      private var _allowSwap:Boolean = true;
      
      public function UiSwapOrbs()
      {
         _rh1 = new Sprite();
         _rh2 = new Sprite();
         super();
         this._rh1.x = this._rh1.y = 1;
         this._rh2.x = this._rh2.y = 1;
         this.mcSlots.slot1.addChild(this._rh1);
         this.mcSlots.slot2.addChild(this._rh2);
         this.mcSlots.slot1.hitArea = this.mcSlots.slot1.mcHitArea;
         this.mcSlots.slot2.hitArea = this.mcSlots.slot2.mcHitArea;
         this.mcSlots.slot1.mcHitArea.visible = false;
         this.mcSlots.slot2.mcHitArea.visible = false;
         this.mouseEnabled = false;
         this.mcClLevels.txtCl1.text = "";
         this.mcClLevels.txtCl2.text = "";
         this.btnCancel.addEventListener(MouseEvent.CLICK,onCancelClick);
         this.setButtonEnabled(this.btnConfirm,false);
         this.btnClose.addEventListener(MouseEvent.CLICK,onCloseClick);
         this.allowSwap = false;
         this.btnClose.visible = false;
         this.addEventListener(Event.ADDED_TO_STAGE,onAddedToStage);
         this.addEventListener(Event.REMOVED_FROM_STAGE,onRemovedFromStage);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.TIME_TILL_ORB_SWAP,onTimeTillOrbSwap);
      }
      
      public function get allowSwap() : Boolean
      {
         return this._allowSwap;
      }
      
      public function init(gateway:BattleGateway, uiFramework:IUIFramework, linkManager:ILinkManager) : void
      {
         this._gateway = gateway;
         this._gateway.addEventListener(BattleEvent.ORB_SWAP,onOrbSwap,false,0,true);
         this._uiFramework = uiFramework;
         this._linkManager = linkManager;
      }
      
      private function setTimeText(ms:int) : void
      {
         var txt:String = null;
         var d:Date = new Date(ms);
         if(ms >= 86400000)
         {
            txt = Math.floor(ms / 86400000) + "d " + zeroPad(d.hoursUTC,2) + ":" + zeroPad(d.minutesUTC,2);
         }
         else
         {
            txt = zeroPad(d.hoursUTC,2) + ":" + zeroPad(d.minutesUTC,2) + ":" + zeroPad(d.secondsUTC,2);
         }
         this.mcNotAllowText.txtTime.text = txt;
      }
      
      private function onAddedToStage(evt:Event) : void
      {
         var ct:Number = getTimer();
         this.allowSwap = this._nextValidTime - ct <= 0;
         this.setTimeText(this._nextValidTime - ct);
         this.mcSlots.gotoAndStop(1);
         this.btnClose.visible = false;
         this.btnCancel.visible = true;
         if(!this._allowSwap)
         {
            this._timer = new Timer(300);
            this._timer.addEventListener(TimerEvent.TIMER,onTimer,false,0,true);
            this._timer.start();
         }
      }
      
      private function onTimer(evt:TimerEvent) : void
      {
         var ct:Number = getTimer();
         this.allowSwap = this._nextValidTime - ct <= 0;
         this.setTimeText(this._nextValidTime - ct);
         if(this._allowSwap)
         {
            this._timer.removeEventListener(TimerEvent.TIMER,onTimer);
            this._timer.stop();
            this._timer = null;
            this.clear();
         }
      }
      
      private function onConfirmClick(evt:MouseEvent) : void
      {
         this.mcSlots.addEventListener("AnimDone",onAnimDone);
         this.mcSlots.gotoAndPlay(2);
         this.btnCancel.visible = false;
         this.btnClose.visible = true;
         this.setButtonEnabled(this.btnConfirm,false);
         var msg:BattleMessage = new BattleMessage("orbSwap",{
            "slot1":this._itemIcon1.slot,
            "slot2":this._itemIcon2.slot
         });
         this._gateway.sendMsg(msg);
      }
      
      private function onCloseClick(evt:MouseEvent) : void
      {
         this.dispatchEvent(new Event(Event.CLOSE));
      }
      
      private function onTimeTillOrbSwap(evt:GlobalEvent) : void
      {
         var ct:Number = getTimer();
         var sec:Number = evt.data as Number;
         this._nextValidTime = ct + sec * 1000;
         this.allowSwap = this._nextValidTime - ct <= 0;
         this.setTimeText(this._nextValidTime - ct);
      }
      
      private function onAnimDone(evt:Event) : void
      {
         this.allowSwap = false;
         var ct:Number = getTimer();
         this.setTimeText(this._nextValidTime - ct);
         if(this.stage != null)
         {
            this._timer = new Timer(300);
            this._timer.addEventListener(TimerEvent.TIMER,onTimer,false,0,true);
            this._timer.start();
         }
      }
      
      private function onOrbSwap(evt:BattleEvent) : void
      {
         var dw:DialogWindow = null;
         var txt:String = null;
         var responseObj:Object = evt.battleMessage.responseObj[0];
         if(responseObj.timeTillOrbSwap != null)
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.TIME_TILL_ORB_SWAP,responseObj.timeTillOrbSwap));
         }
         if(responseObj.success != null && responseObj.success == false)
         {
            dw = new DialogWindow(this._uiFramework,this._linkManager,Globals.uiManager.mcDragLayer,200);
            dw.autoSize = true;
            dw.keepOnStage = true;
            txt = responseObj.errorMessage as String;
            dw.setHtmlText("<h1><b>Error</b></h1><p>" + txt + "</p>");
            dw.setPos(Globals.uiManager.winUiSwapOrbs.x + 20,Globals.uiManager.winUiSwapOrbs.y + 60);
         }
      }
      
      public function dropItemIcon(x:Number, y:Number, ic:ItemIcon) : void
      {
         if(!this._allowSwap)
         {
            return;
         }
         if(this._itemIcon1 != null && this._itemIcon1.itemId == ic.itemId || this._itemIcon2 != null && this._itemIcon2.itemId == ic.itemId)
         {
            return;
         }
         if(this.mcSlots.slot1.hitTestPoint(x,y))
         {
            this.clearMc(this._rh1);
            if(this._itemIcon1 != null)
            {
               this._itemIcon1.inSwapUi = false;
            }
            this._rh1.addChild(Ring(ic.itemLoader).getNewItemDisplay());
            this._itemIcon1 = ic;
            this._itemIcon1.inSwapUi = true;
            this.mcClLevels.txtCl1.text = ActorManager.getInstance().myActor.getRingAt(this._itemIcon1.slot).chargeLevel.toFixed(1);
            if(this._itemIcon1 == this._itemIcon2)
            {
               this.clearMc(this._rh2);
               this.mcClLevels.txtCl2.text = "";
               this._itemIcon2 = null;
            }
         }
         else if(this.mcSlots.slot2.hitTestPoint(x,y))
         {
            this.clearMc(this._rh2);
            if(this._itemIcon2 != null)
            {
               this._itemIcon2.inSwapUi = false;
            }
            this._rh2.addChild(Ring(ic.itemLoader).getNewItemDisplay());
            this._itemIcon2 = ic;
            this._itemIcon2.inSwapUi = true;
            this.mcClLevels.txtCl2.text = ActorManager.getInstance().myActor.getRingAt(this._itemIcon2.slot).chargeLevel.toFixed(1);
            if(this._itemIcon1 == this._itemIcon2)
            {
               this.clearMc(this._rh1);
               this.mcClLevels.txtCl1.text = "";
               this._itemIcon1 = null;
            }
         }
         var confirm:Boolean = this._itemIcon1 != null && this._itemIcon2 != null && this.mcClLevels.txtCl1.text != this.mcClLevels.txtCl2.text;
         this.setButtonEnabled(this.btnConfirm,confirm);
         if(this.mcClLevels.txtCl1.text == this.mcClLevels.txtCl2.text)
         {
            TextField(this.mcClLevels.txtCl1).textColor = 16711680;
            TextField(this.mcClLevels.txtCl2).textColor = 16711680;
         }
         else
         {
            TextField(this.mcClLevels.txtCl1).textColor = 16777215;
            TextField(this.mcClLevels.txtCl2).textColor = 16777215;
         }
      }
      
      private function clearMc(mc:Sprite) : void
      {
         while(mc.numChildren > 0)
         {
            mc.removeChildAt(0);
         }
      }
      
      public function zeroPad(number:int, width:int) : String
      {
         var ret:String = "" + number;
         while(ret.length < width)
         {
            ret = "0" + ret;
         }
         return ret;
      }
      
      public function clear() : void
      {
         if(this._itemIcon1 != null)
         {
            this._itemIcon1.inSwapUi = false;
            this._itemIcon1 = null;
         }
         if(this._itemIcon2 != null)
         {
            this._itemIcon2.inSwapUi = false;
            this._itemIcon2 = null;
         }
         this.clearMc(this._rh1);
         this.clearMc(this._rh2);
         this.mcClLevels.txtCl1.text = "";
         this.mcClLevels.txtCl2.text = "";
         this.mcSlots.gotoAndStop(1);
         TextField(this.mcClLevels.txtCl1).textColor = 16777215;
         TextField(this.mcClLevels.txtCl2).textColor = 16777215;
         this.setButtonEnabled(this.btnConfirm,false);
      }
      
      private function onCancelClick(evt:MouseEvent) : void
      {
         this.dispatchEvent(new Event(Event.CLOSE));
      }
      
      private function setButtonEnabled(btn:SimpleButton, enabled:Boolean) : void
      {
         btn.alpha = !!enabled?Number(1):Number(0.3);
         btn.enabled = enabled;
         var eventListenerFunction:Function = !!enabled?btn.addEventListener:btn.removeEventListener;
         if(btn == this.btnConfirm)
         {
            eventListenerFunction(MouseEvent.CLICK,onConfirmClick);
         }
      }
      
      private function onRemovedFromStage(evt:Event) : void
      {
         if(this._timer != null)
         {
            this._timer.stop();
            this._timer.removeEventListener(TimerEvent.TIMER,onTimer);
            this._timer = null;
         }
      }
      
      public function set allowSwap(v:Boolean) : void
      {
         if(v != this._allowSwap)
         {
            this._allowSwap = v;
            if(this._allowSwap)
            {
               this.mcSlots.mcArrows.isPlaying = true;
               this.mcSlots.mcArrows.play();
            }
            else
            {
               this.mcSlots.mcArrows.isPlaying = false;
               this.mcSlots.mcArrows.stop();
            }
            this.mcSlots.alpha = !!this._allowSwap?Number(1):Number(0.3);
            this.mcSlots.enabled = this._allowSwap;
            this.mcDefaultTxt.visible = this._allowSwap;
            this.mcNotAllowText.visible = !this._allowSwap;
         }
      }
   }
}
