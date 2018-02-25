package com.gaiaonline.battle.ui.uiactionbar
{
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.gateway.BattleEvent;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.newactors.ActorManager;
   import com.gaiaonline.battle.newactors.BaseActor;
   import com.gaiaonline.battle.newactors.BaseActorEvent;
   import com.gaiaonline.battle.ui.ToolTipOld;
   import com.gaiaonline.battle.ui.events.ActionBarEvent;
   import com.gaiaonline.battle.utils.PulsatingGlowFilter;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.usersettings.ISettings;
   import com.gaiaonline.usersettings.Settings#54;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   
   public class UiActionBar extends UiActionBarFl implements ISettings
   {
      
      private static const s_disabledColorTransform:ColorTransform = new ColorTransform(0.4,0.4,0.4);
      
      private static const s_emptyColorTransform:ColorTransform = new ColorTransform();
       
      
      private var _gateway:BattleGateway = null;
      
      private var _uiFramework:IUIFramework = null;
      
      private var isChatOpen:Boolean = false;
      
      private var _powerUpBarVisible:Boolean = true;
      
      private var _staminaFrame:String = "";
      
      private var forcedBarRotatorClosed:Boolean = false;
      
      private var forcedStaminaMeterClosed:Boolean = false;
      
      private var forcedCrewListBtnClosed:Boolean = false;
      
      private var _pdaGlowFilter:PulsatingGlowFilter = null;
      
      private var rageMeter:RageMeter;
      
      private var _tooltipManager:ToolTipOld = null;
      
      private var isPDAOpen:Boolean = false;
      
      private var _ringBarVisible:Boolean = true;
      
      private var menu:Menu;
      
      private var forcedChatPanelBtnClosed:Boolean = false;
      
      private var forcedHealthMeterClosed:Boolean = false;
      
      public var itemBarRotator:UiItemBarRotator;
      
      private var isCrewOpen:Boolean = false;
      
      private var forcedRageMeterClosed:Boolean = false;
      
      private var _isSitting:Boolean = false;
      
      private var forcedGhiMeterClosed:Boolean = false;
      
      private var _actorManager:ActorManager = null;
      
      private var _healtFrame:String = "";
      
      private var forcedChangePoseBtnClosed:Boolean = false;
      
      private var isDazed:Boolean = false;
      
      private var forcedPDABtnClosed:Boolean = false;
      
      public function UiActionBar(uiFramework:IUIFramework, gateway:BattleGateway, actorManager:ActorManager)
      {
         super();
         this._uiFramework = uiFramework;
         _tooltipManager = this._uiFramework.tooltipManager;
         this.itemBarRotator = new UiItemBarRotator(uiFramework,this.mcItemBarRotator);
         this.rageMeter = new RageMeter(_tooltipManager,this.mcRageMeter);
         this.menu = new Menu(this.mcMenu);
         this._actorManager = actorManager;
         this._gateway = gateway;
         this._gateway.addEventListener(BattleEvent.CONNECTION_LOST,onSfConnectionLost,false,0,true);
         this.tabEnabled = false;
         this.tabChildren = false;
         this.btnDrag.addEventListener(MouseEvent.MOUSE_DOWN,onBtnDragPress,false,0,true);
         this.btnDrag.addEventListener(MouseEvent.MOUSE_UP,onBtnDragRelease,false,0,true);
         this.btnDrag.tabEnabled = false;
         this.btnDrag.tabEnabled = false;
         this.btnPDA.addEventListener(MouseEvent.CLICK,onBtnPDAClick,false,0,true);
         this.btnPDA.tabEnabled = false;
         this.btnPDA.tabChildren = false;
         this.btnChatInput.addEventListener(MouseEvent.CLICK,onBtnChat,false,0,true);
         this.btnChatInput.tabChildren = false;
         this.btnChatInput.tabEnabled = false;
         this.btnCrew.addEventListener(MouseEvent.CLICK,onBtnCrewClick,false,0,true);
         this.btnCrew.tabChildren = false;
         this.btnCrew.tabEnabled = false;
         this.btnPose.addEventListener(MouseEvent.CLICK,onBtnPoseClick,false,0,true);
         this.btnPose.tabChildren = false;
         this.btnPose.tabEnabled = false;
         this.btnPose.gotoAndStop(1);
         this.addEventListener(Event.ADDED_TO_STAGE,onAddedToStage,false,0,true);
         this.menu.addEventListener(ActionBarEvent.MENU_ITEM_CLICK,onMenuItemClick,false,0,true);
         if(_tooltipManager != null)
         {
            _tooltipManager.addToolTip(this.btnPose,"Kneel/Stand");
            _tooltipManager.addToolTip(this.ghiMeter,"Ghi");
            _tooltipManager.addToolTip(this.healthMeter,"Health");
            _tooltipManager.addToolTip(this.staminaMeter,"Stamina");
            _tooltipManager.addToolTip(this.btnChatInput,"Chat Pane");
            _tooltipManager.addToolTip(this.btnPDA,"PDA");
            _tooltipManager.addToolTip(this.btnCrew,"Crew Pane");
         }
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.POSE_CHANGE,onPoseChange,false,0,true);
         setCrewOpen(false);
         showRageMeter(true);
         showStaminaMeter(true);
         showHealthMeter(true);
         showGhiMeter(true);
         showBarRotator(true);
         showRingBar(true);
         showCrewBtn(true);
         showChatBtn(true);
         showPDABtn(true);
         showPoseBtn(true);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.WIDGET_SHOW,onWidgetShow);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.ALLOW_SIT_STAND,onAllowSitStand);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.USER_LEVEL_SET,onUserLevelSet);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.PLAYER_STATUS_CHANGED,onPlayerStatusChanged);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.PLAYER_CREATED,onPlayerCreated);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.QUEST_ALERT,onQuestAlert);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.NEW_CONSUMABLE,onNewConsumable);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.CONSUMABLE_USED,onConsumableUsed);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.CHAT_PANE_CHANGED,onToggleChat);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.CREW_LIST_CHANGED,onToggleCrewList);
      }
      
      private function onBtnPoseClick(evt:MouseEvent) : void
      {
         this.dispatchEvent(new ActionBarEvent(ActionBarEvent.BTN_POSE_CLICK));
      }
      
      private function showRingBar(show:Boolean) : void
      {
         this._ringBarVisible = show;
         var forceSingleBar:Boolean = !this._ringBarVisible || !this._powerUpBarVisible;
         if(show)
         {
            this.itemBarRotator.showBar(UiItemBarRotator.RING_BAR,forceSingleBar);
         }
         else
         {
            this.itemBarRotator.hideBar(UiItemBarRotator.RING_BAR);
         }
         if(forceSingleBar)
         {
            this.itemBarRotator.hideBarControls();
         }
      }
      
      private function stopStamina() : void
      {
         this.staminaMeter.staminaMeterAnim.gotoAndPlay("stop");
      }
      
      public function setSitting(v:Boolean) : void
      {
         if(this._isSitting != v)
         {
            this._isSitting = v;
            if(this._isSitting)
            {
               this.btnPose.gotoAndStop(2);
            }
            else
            {
               this.btnPose.gotoAndStop(1);
            }
         }
      }
      
      private function onStaminaUpdated(e:BaseActorEvent) : void
      {
         this.updateStamina(e.actor.exhaustion,e.actor.maxExhaustion);
      }
      
      public function setPDAOpen(v:Boolean) : void
      {
         this.isPDAOpen = v;
         if(v)
         {
            if(isPDANotificationOn())
            {
               setQuestNotification(false);
            }
            this.btnPDA.gotoAndStop(2);
         }
         else
         {
            this.btnPDA.gotoAndStop(1);
         }
      }
      
      private function onMenuItemClick(evt:ActionBarEvent) : void
      {
         this.dispatchEvent(evt.clone());
      }
      
      private function onHealthUpdated(e:BaseActorEvent) : void
      {
         this.updateHealth(e.actor.hp,e.actor.maxHp);
      }
      
      private function onToggleChat(e:GlobalEvent) : void
      {
         setChatOpen(e.data.opened);
      }
      
      private function showChatBtn(show:Boolean) : void
      {
         if(!show || !this.forcedChatPanelBtnClosed)
         {
            this.btnChatInput.visible = show;
         }
      }
      
      private function onPlayerCreated(event:GlobalEvent) : void
      {
         var myActor:BaseActor = event.data.actor;
         myActor.addEventListener(BaseActorEvent.HEALTH_UPDATED,onHealthUpdated,false,0,true);
         myActor.addEventListener(BaseActorEvent.STAMINA_UPDATED,onStaminaUpdated,false,0,true);
         myActor.addEventListener(BaseActorEvent.RAGE_UPDATED,onRageUpdated,false,0,true);
         updateHealth(myActor.hp,myActor.maxHp);
         updateStamina(myActor.exhaustion,myActor.maxExhaustion);
         updateGhiMeter(myActor.ghiEnergy);
         myActor.addEventListener(BaseActorEvent.GHI_UPDATED,this.onGhiUpdated,false,0,true);
      }
      
      private function checkPos() : void
      {
         if(this.stage.stageWidth <= 780 && this.stage.stageHeight <= 555)
         {
            this.x = -10;
            this.y = 505;
         }
         else
         {
            if(this.x + 795 > this.stage.stageWidth)
            {
               this.x = this.stage.stageWidth - this.width;
            }
            else if(this.x < 0)
            {
               this.x = 0;
            }
            if(this.y + 30 > this.stage.stageHeight)
            {
               this.y = this.stage.stageHeight - 30;
            }
            else if(this.y < 0)
            {
               this.y = 0;
            }
         }
      }
      
      private function onBtnCrewClick(evt:Event) : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.CREW_LIST_TOGGLE,{}));
      }
      
      private function onGhiUpdated(e:BaseActorEvent) : void
      {
         var myActor:BaseActor = e.target as BaseActor;
         this.updateGhiMeter(myActor.ghiEnergy);
      }
      
      public function resetDefaultSettings(mode:String) : void
      {
         if(mode == "Full")
         {
            this.setSettings(this.getDefaultFull());
         }
         else if(mode == "Normal")
         {
            this.setSettings(this.getDefaultNormal());
         }
      }
      
      public function playSuperCharge() : void
      {
         this.healthMeter.gotoAndPlay("SuperCharge");
         this.staminaMeter.gotoAndPlay("SuperCharge");
      }
      
      public function isSitting() : Boolean
      {
         return this._isSitting;
      }
      
      private function showRegisterPrompt(show:Boolean) : void
      {
         if(show)
         {
            this.menu.addMenuItem(Menu.CMD_REGISTER);
         }
         else
         {
            this.menu.removeMenuItem(Menu.CMD_REGISTER);
         }
      }
      
      public function setChatOpen(v:Boolean) : void
      {
         this.isChatOpen = v;
         if(v)
         {
            this.btnChatInput.gotoAndStop(2);
         }
         else
         {
            this.btnChatInput.gotoAndStop(1);
         }
      }
      
      private function onRageUpdated(e:BaseActorEvent) : void
      {
         this.setRage(e.actor.rage,false);
      }
      
      private function showHealthMeter(show:Boolean) : void
      {
         if(!show || !this.forcedHealthMeterClosed)
         {
            this.healthMeter.visible = show;
         }
      }
      
      public function hasRingSet() : Boolean
      {
         return this.itemBarRotator.ringBar.hasRingSet();
      }
      
      public function getDefaultFull() : Object
      {
         var obj:Object = new Object();
         obj.x = 215;
         obj.y = 527;
         return obj;
      }
      
      private function onSfConnectionLost(e:BattleEvent) : void
      {
         this.stopCharging();
      }
      
      private function showPoseBtn(show:Boolean) : void
      {
         if(!show || !this.forcedChangePoseBtnClosed)
         {
            this.btnPose.visible = show;
         }
      }
      
      private function onMouseLeave(evt:Event) : void
      {
         this.stage.removeEventListener(Event.MOUSE_LEAVE,onMouseLeave);
         this.stopDrag();
         this.checkPos();
         this.dispatchEvent(new Event(Settings#54.SETTING_CHANGED_EVENT));
      }
      
      private function onAllowSitStand(e:GlobalEvent) : void
      {
         var allowSitStand:Boolean = e.data.allow;
         var colorTransform:ColorTransform = !!allowSitStand?s_emptyColorTransform:s_disabledColorTransform;
         this.btnPose.transform.colorTransform = colorTransform;
      }
      
      public function clearAllRing() : void
      {
      }
      
      public function playPolish() : void
      {
         this.itemBarRotator.ringBar.playPolish();
      }
      
      public function updateStamina(currentValue:Number, maxValue:Number = 100) : void
      {
         var f:String = null;
         var yMin:Number = 4.5;
         var p:Number = (maxValue - currentValue) / maxValue;
         var h:Number = this.staminaMeter.staminaMeterAnim.staminaIcon.mcColor.height;
         this.staminaMeter.staminaMeterAnim.staminaIcon.mcColor.y = h + yMin - h * p;
         this.staminaMeter.staminaMeterAnim.txt.text = Math.round(p * 100);
         var per:Number = p * 100;
         if(per <= 15 && !isDazed)
         {
            f = "slow";
         }
         else
         {
            f = "stop";
         }
         if(this._staminaFrame != f)
         {
            this._staminaFrame = f;
            this.staminaMeter.staminaMeterAnim.gotoAndPlay(this._staminaFrame);
         }
      }
      
      public function get usePowerMeter() : Boolean
      {
         return this.rageMeter && this.rageMeter.usePowerMeter;
      }
      
      public function setRingset(set1:Boolean, set2:Boolean) : void
      {
         this.itemBarRotator.ringBar.setLeftSet(set1);
         this.itemBarRotator.ringBar.setRightSet(set2);
      }
      
      public function isBarOpen(barName:String) : Boolean
      {
         return this.itemBarRotator.isBarOpen(barName);
      }
      
      private function isPDANotificationOn() : Boolean
      {
         return this.btnPDA.filters && this.btnPDA.filters.length > 0;
      }
      
      private function showCrewBtn(show:Boolean) : void
      {
         if(!show || !this.forcedCrewListBtnClosed)
         {
            this.btnCrew.visible = show;
         }
      }
      
      private function onConsumableUsed(e:GlobalEvent) : void
      {
         var data:Object = e.data;
         var itemId:String = data.id;
         var params:Object = data.time;
         var baseId:String = this._uiFramework.getBaseItemId(itemId);
         switch(baseId)
         {
            case "18104":
               this.playSuperCharge();
         }
      }
      
      private function onNewConsumable(e:GlobalEvent) : void
      {
         this.showBar(UiItemBarRotator.CONSUMABLE_BAR);
      }
      
      public function updateHealth(currentValue:Number, maxValue:Number = 100) : void
      {
         var frame:String = null;
         var yMin:Number = 2;
         var p:Number = currentValue / maxValue;
         this.healthMeter.healthMeterAnim.heartIcon.mcMask.y = this.healthMeter.healthMeterAnim.heartIcon.mcMask.height - p * this.healthMeter.healthMeterAnim.heartIcon.mcMask.height + yMin;
         this.healthMeter.healthMeterAnim.txt.text = currentValue;
         var percent:Number = p * 100;
         if(percent < 20 && percent > 10)
         {
            frame = "slow";
         }
         else if(percent > 0 && percent <= 10)
         {
            frame = "fast";
         }
         else
         {
            frame = "stop";
         }
         if(this._healtFrame != frame)
         {
            this._healtFrame = frame;
            this.healthMeter.healthMeterAnim.gotoAndPlay(this._healtFrame);
         }
         if(percent <= 0)
         {
            isDazed = true;
            stopStamina();
         }
         else
         {
            isDazed = false;
         }
      }
      
      private function showPDABtn(show:Boolean) : void
      {
         if(!show || !this.forcedPDABtnClosed)
         {
            this.btnPDA.visible = show;
         }
      }
      
      public function getSettings() : Object
      {
         var obj:Object = new Object();
         obj.x = this.x;
         obj.y = this.y;
         return obj;
      }
      
      private function onWidgetShow(evt:GlobalEvent) : void
      {
         var widgetName:String = evt.data.widgetName;
         var show:Boolean = evt.data.widgetShow;
         var enable:Boolean = evt.data.widgetEnable != undefined?Boolean(evt.data.widgetEnable):false;
         switch(widgetName)
         {
            case "RageMeter":
               this.forcedRageMeterClosed = !!enable?false:!show;
               this.showRageMeter(show);
               break;
            case "StaminaMeter":
               this.forcedStaminaMeterClosed = !!enable?false:!show;
               this.showStaminaMeter(show);
               break;
            case "HealthMeter":
               this.forcedHealthMeterClosed = !!enable?false:!show;
               this.showHealthMeter(show);
               break;
            case "GhiMeter":
               this.forcedGhiMeterClosed = !!enable?false:!show;
               this.showGhiMeter(show);
               break;
            case "RingBar":
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALLOW_RING_USE,{"allow":show}));
               this.showRingBar(show);
               break;
            case "PowerUpsBar":
               this.showPowerUpsBar(show);
               break;
            case "BarRotator":
               this.forcedBarRotatorClosed = !!enable?false:!show;
               this.showBarRotator(show);
               break;
            case "CrewListBtn":
               this.forcedCrewListBtnClosed = !!enable?false:!show;
               this.showCrewBtn(show);
               break;
            case "ChatPaneBtn":
               this.forcedChatPanelBtnClosed = !!enable?false:!show;
               this.showChatBtn(show);
               break;
            case "PDABtn":
               this.forcedPDABtnClosed = !!enable?false:!show;
               this.showPDABtn(show);
               break;
            case "ChangePoseBtn":
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALLOW_SIT_STAND,{"allow":show}));
               this.forcedChangePoseBtnClosed = !!enable?false:!show;
               this.showPoseBtn(show);
         }
      }
      
      private function onAddedToStage(evt:Event) : void
      {
         this.stage.addEventListener(Event.RESIZE,onStageResize,false,0,true);
      }
      
      public function setSettings(obj:Object) : void
      {
         this.x = obj.x;
         this.y = obj.y;
         this.checkPos();
      }
      
      private function onUserLevelSet(e:GlobalEvent) : void
      {
         var isGuest:Boolean = e.data.isGuest;
         this.showRegisterPrompt(isGuest);
         var isDev:Boolean = e.data.isDev;
         this.showAdminStuff(isDev);
      }
      
      private function onPlayerStatusChanged(e:GlobalEvent) : void
      {
         var data:Object = e.data;
         var fxn:Function = null;
         switch(data.status)
         {
            case "18102":
               fxn = !!data.play?this.playPolish:this.stopPolish;
         }
         if(fxn != null)
         {
            fxn();
         }
      }
      
      public function updateGhiMeter(currentValue:Number, maxValue:Number = 100) : void
      {
         var yMin:Number = 5.5;
         var p:Number = currentValue / maxValue;
         this.ghiMeter.mcColor.y = this.ghiMeter.mcColor.height - p * this.ghiMeter.mcColor.height + yMin;
         this.ghiMeter.txt.text = Math.round(p * 100);
      }
      
      public function setQuestNotification(v:Boolean) : void
      {
         if(v)
         {
            if(_pdaGlowFilter == null)
            {
               _pdaGlowFilter = new PulsatingGlowFilter(this.btnPDA,16763904,1,6,6,3);
            }
         }
         else if(_pdaGlowFilter != null)
         {
            _pdaGlowFilter.stop();
            _pdaGlowFilter = null;
         }
      }
      
      public function stopPolish() : void
      {
         this.itemBarRotator.ringBar.stopPolish();
      }
      
      public function stopCharging() : int
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.STOP_CHARGING,{}));
         return this.rageMeter.stopCharging();
      }
      
      private function onBtnPDAClick(evt:Event) : void
      {
         if(isPDANotificationOn())
         {
            setQuestNotification(false);
         }
         this.dispatchEvent(new Event(ActionBarEvent.BTN_PDA_CLICK));
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.PDA_TOGGLE,{}));
      }
      
      public function showRageMeter(show:Boolean) : void
      {
         if(!show || !this.forcedRageMeterClosed)
         {
            this.mcRageMeter.visible = show;
         }
      }
      
      public function showAdminStuff(v:Boolean) : void
      {
         if(v)
         {
            this.menu.addMenuItem(Menu.CMD_DISCONNECT,Menu.CMD_SHOPS);
            this.menu.addMenuItem(Menu.CMD_UI_TESTER);
            this.menu.addMenuItem(Menu.CMD_ADMIN_PANEL);
         }
         else
         {
            this.menu.removeMenuItem(Menu.CMD_DISCONNECT);
            this.menu.removeMenuItem(Menu.CMD_UI_TESTER);
            this.menu.removeMenuItem(Menu.CMD_ADMIN_PANEL);
         }
      }
      
      public function setCrewOpen(v:Boolean) : void
      {
         this.isCrewOpen = v;
         if(v)
         {
            this.isCrewOpen = true;
            this.btnCrew.gotoAndStop(2);
         }
         else
         {
            this.btnCrew.gotoAndStop(1);
         }
      }
      
      public function setRage(per:int, usePower:Boolean = false) : void
      {
         if(this.rageMeter != null)
         {
            this.rageMeter.setRage(per,usePower);
         }
      }
      
      private function onToggleCrewList(e:GlobalEvent) : void
      {
         setCrewOpen(e.data.opened);
      }
      
      public function set usePowerMeter(pm:Boolean) : void
      {
         if(pm)
         {
            this.setRage(100,true);
         }
         else
         {
            this.setRage(_actorManager.myActor.rage,false);
         }
      }
      
      public function onQuestAlert(e:GlobalEvent) : void
      {
         if(!this.isPDAOpen)
         {
            setQuestNotification(true);
         }
      }
      
      public function showBar(barName:String) : void
      {
         this.itemBarRotator.showBar(barName);
      }
      
      private function showGhiMeter(show:Boolean) : void
      {
         if(!show || !this.forcedGhiMeterClosed)
         {
            this.ghiMeter.visible = show;
         }
      }
      
      public function getDefaultNormal() : Object
      {
         var obj:Object = new Object();
         obj.x = 215;
         obj.y = 505;
         return obj;
      }
      
      private function showPowerUpsBar(show:Boolean) : void
      {
         this._powerUpBarVisible = show;
         var forceSingleBar:Boolean = !this._ringBarVisible || !this._powerUpBarVisible;
         if(show)
         {
            this.itemBarRotator.showBar(UiItemBarRotator.CONSUMABLE_BAR,forceSingleBar);
         }
         else
         {
            this.itemBarRotator.hideBar(UiItemBarRotator.CONSUMABLE_BAR);
         }
         if(forceSingleBar)
         {
            this.itemBarRotator.hideBarControls();
         }
      }
      
      private function onPoseChange(evt:GlobalEvent) : void
      {
         setSitting(evt.data.sit);
      }
      
      private function onStageResize(evt:Event) : void
      {
         this.checkPos();
      }
      
      public function onBtnChat(evt:MouseEvent) : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.CHAT_PANE_TOGGLE,{}));
      }
      
      private function onBtnDragRelease(evt:MouseEvent) : void
      {
         this.stage.removeEventListener(Event.MOUSE_LEAVE,onMouseLeave);
         this.stopDrag();
         checkPos();
         this.dispatchEvent(new Event(Settings#54.SETTING_CHANGED_EVENT));
      }
      
      private function showStaminaMeter(show:Boolean) : void
      {
         if(!show || !this.forcedStaminaMeterClosed)
         {
            this.staminaMeter.visible = show;
         }
      }
      
      private function onBtnDragPress(evt:MouseEvent) : void
      {
         this.stage.addEventListener(Event.MOUSE_LEAVE,onMouseLeave,false,0,true);
         this.startDrag();
      }
      
      public function startCharging() : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.START_CHARGING,{}));
         this.rageMeter.startCharging();
      }
      
      private function showBarRotator(show:Boolean) : void
      {
         this._ringBarVisible = show;
         this._powerUpBarVisible = show;
         if(!show || !this.forcedBarRotatorClosed)
         {
            this.itemBarRotator.visible = show;
         }
      }
   }
}
