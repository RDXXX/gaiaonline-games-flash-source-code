package com.gaiaonline.battle.newactors
{
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.gateway.BattleEvent;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.gateway.BattleMessage;
   import com.gaiaonline.battle.map.MapObject;
   import com.gaiaonline.battle.map.envobjects.BasicSwitch;
   import com.gaiaonline.battle.ui.AlertTypes;
   import com.gaiaonline.battle.ui.events.UiEvents;
   import com.gaiaonline.battle.userServerSettings.IGameSettings;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.FrameTimer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class EnvActor
   {
       
      
      private var _gateway:BattleGateway = null;
      
      public var roomName:String;
      
      private var mObj:MapObject;
      
      private var _uiFramework:IUIFramework = null;
      
      public var instanceId:String;
      
      private var _usable:Boolean = false;
      
      private var _autoMoveInRange:Boolean = true;
      
      public var radius:Number = 0;
      
      public var objName:String;
      
      public var position:Point;
      
      public var actorId:String;
      
      private var _usableStateValid:Boolean = true;
      
      private var _frameTimer:FrameTimer;
      
      public var range:Number = 150;
      
      public function EnvActor(actorObj:Object, mapObject:MapObject, gateway:BattleGateway, uiFramework:IUIFramework)
      {
         position = new Point(0,0);
         _frameTimer = new FrameTimer(onFrameTimer);
         super();
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.USER_SETTINGS_LOADED,onGraphicsOptionChanged,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.GRAPHIC_OPTIONS_CHANGED,onGraphicsOptionChanged,false,0,true);
         this.mObj = mapObject;
         this._gateway = gateway;
         this._uiFramework = uiFramework;
         if(actorObj.range != null)
         {
            this.range = actorObj.range;
         }
         if(actorObj.rasius != null)
         {
            this.radius = actorObj.radius;
         }
         this.actorId = actorObj.id;
         this.objName = mapObject.name;
         this.roomName = actorObj.roomName;
         this.instanceId = actorObj.instanceId;
         this.position = new Point(actorObj.px,actorObj.py);
         var usable:Boolean = false;
         if(actorObj.aids != null)
         {
            if(actorObj.aids.indexOf("Usable") >= 0)
            {
               usable = true;
            }
         }
         if(usable)
         {
            if(!this.mObj.getEventMc().hasEventListener("USE"))
            {
               this.mObj.getEventMc().addEventListener("USE",onUse,false,0,true);
            }
            this.mObj.getEventMc().addEventListener(MouseEvent.MOUSE_OVER,onMouseOver,false,0,true);
            this.mObj.getEventMc().addEventListener(MouseEvent.MOUSE_OUT,onMouseOut,false,0,true);
            Object(this.mObj.getEventMc()).actorId = this.actorId;
         }
         Object(this.mObj.getEventMc()).isUsable = usable;
         this.mObj.getEventMc().addEventListener("LightChange",onLightChange,false,0,true);
         this.mObj.updateState(actorObj);
         if(actorObj.mouseOver != null)
         {
            this._uiFramework.tooltipManager.addToolTip(this.mObj.getEventMc(),actorObj.mouseOver);
         }
      }
      
      public function onMouseOver(evt:MouseEvent) : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MOUSE_OVER_STATE_CHANGED,{"isEnvObj":true}));
      }
      
      private function onLightChange(evt:UiEvents) : void
      {
         this.mObj.setLight(evt.value);
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MAP_UPDATE_TINTS,{"roomId":roomName}));
      }
      
      public function updateState(actorObj:Object, transition:Boolean = false) : void
      {
         this.mObj.updateState(actorObj,transition);
         if(actorObj.aids != null)
         {
            if(actorObj.aids.indexOf("Usable") >= 0)
            {
               setUsable(true);
            }
            else
            {
               setUsable(false);
            }
         }
      }
      
      public function setUsable(usable:Boolean = false) : void
      {
         if(usable != this._usable)
         {
            this._usable = usable;
            this._usableStateValid = !this._usableStateValid;
            this._frameTimer.startPerFrame();
         }
      }
      
      private function onGraphicsOptionChanged(evt:GlobalEvent) : void
      {
         var data2:IGameSettings = evt.data as IGameSettings;
         if(data2)
         {
            this._autoMoveInRange = data2.getAutoMoveInRange();
         }
      }
      
      public function onFrameTimer() : void
      {
         var mc:Sprite = null;
         if(!this._usableStateValid)
         {
            mc = this.mObj.getEventMc();
            if(mc is BasicSwitch && this._usable)
            {
               if(!this.mObj.getEventMc().hasEventListener("USE"))
               {
                  mc.addEventListener("USE",onUse,false,0,true);
               }
               mc.addEventListener(MouseEvent.MOUSE_OVER,onMouseOver,false,0,true);
               mc.addEventListener(MouseEvent.MOUSE_OUT,onMouseOut,false,0,true);
            }
            else if(this.mObj.getEventMc().hasEventListener("USE"))
            {
               mc.removeEventListener("USE",onUse);
               mc.removeEventListener(MouseEvent.MOUSE_OVER,onMouseOver);
               mc.removeEventListener(MouseEvent.MOUSE_OUT,onMouseOut);
            }
            this._usableStateValid = true;
            this._frameTimer.stop();
         }
      }
      
      public function dispose() : void
      {
         GlobalEvent.eventDispatcher.removeEventListener(GlobalEvent.USER_SETTINGS_LOADED,onGraphicsOptionChanged);
         GlobalEvent.eventDispatcher.removeEventListener(GlobalEvent.GRAPHIC_OPTIONS_CHANGED,onGraphicsOptionChanged);
         if(this.mObj != null && this.mObj.getEventMc() != null)
         {
            this._uiFramework.tooltipManager.removeToolTip(this.mObj.getEventMc());
            if(this.mObj.getEventMc().hasEventListener("USE"))
            {
               this.mObj.getEventMc().removeEventListener("USE",onUse);
               this.mObj.getEventMc().removeEventListener(MouseEvent.MOUSE_OVER,onMouseOver);
               this.mObj.getEventMc().removeEventListener(MouseEvent.MOUSE_OUT,onMouseOut);
            }
            this.mObj.getEventMc().removeEventListener("LightChange",onLightChange);
         }
         this.mObj = null;
      }
      
      private function onUse(evt:UiEvents) : void
      {
         var msg:BattleMessage = null;
         var obj:Object = new Object();
         obj.actorID = this.actorId;
         obj.params = null;
         var myActor:BaseActor = ActorManager.getInstance().myActor;
         if(myActor.allowUsableUse)
         {
            if(this._autoMoveInRange || myActor.checkRange(this,this.range))
            {
               msg = new BattleMessage("use",obj);
               msg.addEventListener(BattleEvent.CALL_BACK,onUseCallBack);
               this._gateway.sendMsg(msg);
            }
            else
            {
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.YOU_ARE_TOO_FAR}));
            }
         }
         else if(ActorManager.getInstance().myActor.isKtfo)
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.YOU_ARE_DAZED_CANT_DO_THAT}));
         }
      }
      
      private function onUseCallBack(evt:BattleEvent) : void
      {
         var response:Object = null;
         var error:uint = 0;
         BattleMessage(evt.target).removeEventListener(BattleEvent.CALL_BACK,onUseCallBack);
         var rObj:Object = evt.battleMessage.responseObj;
         for each(response in rObj)
         {
            if(response.hasOwnProperty("error") && response.error != null)
            {
               error = response.error;
               switch(error)
               {
                  case 201:
                     GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.YOU_ARE_TOO_FAR}));
                     continue;
                  default:
                     continue;
               }
            }
            else
            {
               continue;
            }
         }
      }
      
      public function onMouseOut(evt:MouseEvent) : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MOUSE_OVER_STATE_CHANGED,{"isEnvObj":false}));
      }
   }
}
