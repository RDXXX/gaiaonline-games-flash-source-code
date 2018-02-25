package com.gaiaonline.battle.userinput
{
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.Globals;
   import com.gaiaonline.battle.ItemManager.RingItemManager;
   import com.gaiaonline.battle.gateway.BattleEvent;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.gateway.BattleMessage;
   import com.gaiaonline.battle.map.CollisionMap;
   import com.gaiaonline.battle.map.MapIt;
   import com.gaiaonline.battle.map.MapRoom;
   import com.gaiaonline.battle.newactors.ActorManager;
   import com.gaiaonline.battle.newactors.BaseActor;
   import com.gaiaonline.battle.newrings.Ring;
   import com.gaiaonline.battle.ui.uiactionbar.UiItemBar;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import com.gaiaonline.utils.FrameTimer;
   import com.gaiaonline.utils.KeyDownLimiter;
   import flash.display.InteractiveObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.geom.Point;
   
   public class UserInput extends EventDispatcher
   {
      
      public static const OPEN_GLOBAL_MINIMAP:String = "Open Global MiniMap";
      
      public static const OPEN_CLOSE_RING_INVENTORY:String = "Open / Close Ring Inventory";
      
      public static const MOVE_RIGHT:String = "Move Right";
      
      public static const OPEN_COMPLETED_TASK_PANEL:String = "Open Completed Task Panel";
      
      private static const FWDSLASH_KEY:uint = 191;
      
      public static const SELECT_SELF:String = "Select Self";
      
      public static const OPEN_CLOSE_PDA:String = "Open / Close PDA";
      
      public static const REPLY_TO_WHISPER:String = "Reply To Whisper";
      
      public static const MOVE_LEFT:String = "Move Left";
      
      public static const NULL_MOVEDIR:Number = -1000;
      
      public static const MOVE_UP:String = "Move Up";
      
      public static const MOVE_DOWN:String = "Move Down";
      
      public static const OPEN_ACTIVE_TASK_PANEL:String = "Open Active Task Panel";
      
      private static const ENTER_KEY:uint = 13;
      
      public static const SELECT_RING_SLOT_1:String = "Use / Select Ring Slot 1";
      
      public static const SELECT_RING_SLOT_2:String = "Use / Select Ring Slot 2";
      
      public static const SELECT_RING_SLOT_3:String = "Use / Select Ring Slot 3";
      
      public static const SELECT_RING_SLOT_4:String = "Use / Select Ring Slot 4";
      
      public static const SELECT_RING_SLOT_5:String = "Use / Select Ring Slot 5";
      
      public static const SELECT_RING_SLOT_6:String = "Use / Select Ring Slot 6";
      
      public static const OPEN_LOCAL_MINIMAP:String = "Open Local MiniMap";
      
      public static const MOVE_TO_TARGET:String = "Move to Target";
      
      public static const SELECT_CREW_MEMBER_2:String = "Select Crew Member 2";
      
      public static const SELECT_RING_SLOT_7:String = "Use / Select Ring Slot 7";
      
      public static const SELECT_CREW_MEMBER_5:String = "Select Crew Member 5";
      
      public static const SELECT_CREW_MEMBER_6:String = "Select Crew Member 6";
      
      public static const KNEEL_STAND:String = "Kneel / Stand Up";
      
      public static const SELECT_CREW_MEMBER_3:String = "Select Crew Member 3";
      
      public static const SELECT_CREW_MEMBER_4:String = "Select Crew Member 4";
      
      public static const SELECT_RING_SLOT_8:String = "Use / Select Ring Slot 8";
      
      private static const F12_KEY:uint = 123;
      
      public static const RING_AUTO_FIRE:String = "Ring Auto Fire";
      
      public static const SELECT_NEXT_ENEMY:String = "Select Next Enemy";
       
      
      private var _gateway:BattleGateway = null;
      
      private var _uiFramework:IUIFramework = null;
      
      private var _allowRingUse:Boolean = true;
      
      private var _selectedActor:BaseActor = null;
      
      private var navigationKeys:ActionKeys;
      
      private var _moveDir:Number = -1000;
      
      private var _optionPanelOpen:Boolean = false;
      
      private var _actorManager:ActorManager = null;
      
      private var _isCharging:Boolean = false;
      
      private var _keyControlTabActive:Boolean = false;
      
      private var _keyLimiter:KeyDownLimiter;
      
      private var keys:Array;
      
      private var _moveTimer:FrameTimer;
      
      private var combat:Boolean = false;
      
      public function UserInput(gateway:BattleGateway, uiFramework:IUIFramework, actorManager:ActorManager)
      {
         navigationKeys = new ActionKeys();
         _moveTimer = new FrameTimer(onMoveTimer);
         super();
         this._gateway = gateway;
         this._uiFramework = uiFramework;
         this._actorManager = actorManager;
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.GLOBAL_FLAGS_LOADED,onGlobalFlagsLoaded);
      }
      
      private function loadKeys() : void
      {
         var keyMap:Object = null;
         var msg:BattleMessage = null;
         this.keys = this.getDefaultKeys();
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.DEFAULT_KEY_BINDINGS_LOADED,{"keys":this.keys}));
         var keyMapValues:Array = new Array();
         for each(keyMap in this.keys)
         {
            keyMapValues.push(keyMap.codeName);
         }
         msg = new BattleMessage("getNkvp",{"keys":keyMapValues});
         msg.addEventListener(BattleEvent.CALL_BACK,onKeysLoaded);
         this._gateway.sendMsg(msg);
      }
      
      private function tryToMove(keyBit:int) : void
      {
         if(this._isCharging)
         {
            return;
         }
         this.navigationKeys.setKeyDown(keyBit);
         this.updateMove();
         this._moveTimer.start(125);
      }
      
      private function getFocusObject() : InteractiveObject
      {
         var focusObj:InteractiveObject = null;
         try
         {
            focusObj = this._uiFramework.stage.focus;
         }
         catch(e:Error)
         {
         }
         return focusObj;
      }
      
      public function init() : void
      {
         this._keyLimiter = new KeyDownLimiter(this._uiFramework.stage,1);
         this._keyLimiter.addEventListener(KeyboardEvent.KEY_DOWN,onKeyDown,false,0,true);
         this._keyLimiter.addEventListener(KeyboardEvent.KEY_UP,onKeyUp,false,0,true);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.ACTOR_SELECTED,onActorSelected);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.START_CHARGING,onStartCharging);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.STOP_CHARGING,onStopCharging);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_SLIDE_COMPLETE,onMapSlideDone);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.TUTORIAL_CLOSED,onTutorialClosed);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.KEY_CONTROL_TAB_ACTIVE,onKeyControlTabActive);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.OPTION_PANEL_OPEN_STATE_CHANGE,onOptionPanelOpenStateChange);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.ALLOW_RING_USE,onAllowRingUse);
      }
      
      private function onActorSelected(e:GlobalEvent) : void
      {
         this._selectedActor = e.data.actor;
      }
      
      private function onStopCharging(e:GlobalEvent) : void
      {
         this._isCharging = false;
      }
      
      private function getDefaultKeys() : Array
      {
         var dk:Array = [{
            "index":0,
            "codeName":"MoveLeft",
            "name":MOVE_LEFT,
            "kcodes":[37,65,-1],
            "charcodes":[0,65,-1]
         },{
            "index":1,
            "codeName":"MoveRight",
            "name":MOVE_RIGHT,
            "kcodes":[39,68,-1],
            "charcodes":[0,68,-1]
         },{
            "index":2,
            "codeName":"MoveUp",
            "name":MOVE_UP,
            "kcodes":[38,87,-1],
            "charcodes":[0,87,-1]
         },{
            "index":3,
            "codeName":"MoveDown",
            "name":MOVE_DOWN,
            "kcodes":[40,83,-1],
            "charcodes":[0,83,-1]
         },{
            "index":4,
            "codeName":"SelectRingSlot1",
            "name":SELECT_RING_SLOT_1,
            "kcodes":[49,-1,-1],
            "charcodes":[49,-1,-1]
         },{
            "index":5,
            "codeName":"SelectRingSlot2",
            "name":SELECT_RING_SLOT_2,
            "kcodes":[50,-1,-1],
            "charcodes":[50,-1,-1]
         },{
            "index":6,
            "codeName":"SelectRingSlot3",
            "name":SELECT_RING_SLOT_3,
            "kcodes":[51,-1,-1],
            "charcodes":[51,-1,-1]
         },{
            "index":7,
            "codeName":"SelectRingSlot4",
            "name":SELECT_RING_SLOT_4,
            "kcodes":[52,-1,-1],
            "charcodes":[52,-1,-1]
         },{
            "index":8,
            "codeName":"SelectRingSlot5",
            "name":SELECT_RING_SLOT_5,
            "kcodes":[53,-1,-1],
            "charcodes":[53,-1,-1]
         },{
            "index":9,
            "codeName":"SelectRingSlot6",
            "name":SELECT_RING_SLOT_6,
            "kcodes":[54,-1,-1],
            "charcodes":[54,-1,-1]
         },{
            "index":10,
            "codeName":"SelectRingSlot7",
            "name":SELECT_RING_SLOT_7,
            "kcodes":[55,-1,-1],
            "charcodes":[55,-1,-1]
         },{
            "index":11,
            "codeName":"SelectRingSlot8",
            "name":SELECT_RING_SLOT_8,
            "kcodes":[56,-1,-1],
            "charcodes":[56,-1,-1]
         },{
            "index":12,
            "codeName":"SelectRingSlot9",
            "name":SELECT_SELF,
            "kcodes":[32,-1,-1],
            "charcodes":[32,-1,-1]
         },{
            "index":13,
            "codeName":"SelectCrew2",
            "name":SELECT_CREW_MEMBER_2,
            "kcodes":[-1,-1,-1],
            "charcodes":[-1,-1,-1]
         },{
            "index":14,
            "codeName":"SelectCrew3",
            "name":SELECT_CREW_MEMBER_3,
            "kcodes":[-1,-1,-1],
            "charcodes":[-1,-1,-1]
         },{
            "index":15,
            "codeName":"SelectCrew4",
            "name":SELECT_CREW_MEMBER_4,
            "kcodes":[-1,-1,-1],
            "charcodes":[-1,-1,-1]
         },{
            "index":16,
            "codeName":"SelectCrew5",
            "name":SELECT_CREW_MEMBER_5,
            "kcodes":[-1,-1,-1],
            "charcodes":[-1,-1,-1]
         },{
            "index":17,
            "codeName":"SelectCrew6",
            "name":SELECT_CREW_MEMBER_6,
            "kcodes":[-1,-1,-1],
            "charcodes":[-1,-1,-1]
         },{
            "index":18,
            "codeName":"SelectNextEnemy",
            "name":SELECT_NEXT_ENEMY,
            "kcodes":[192,81,-1],
            "charcodes":[96,113,-1]
         },{
            "index":19,
            "codeName":"OpenCloseRingInv",
            "name":OPEN_CLOSE_RING_INVENTORY,
            "kcodes":[82,-1,-1],
            "charcodes":[82,-1,-1]
         },{
            "index":20,
            "codeName":"OpenClosePDA",
            "name":OPEN_CLOSE_PDA,
            "kcodes":[80,-1,-1],
            "charcodes":[80,-1,-1]
         },{
            "index":21,
            "codeName":"OpenCloseMiniMap",
            "name":OPEN_GLOBAL_MINIMAP,
            "kcodes":[77,-1,-1],
            "charcodes":[77,-1,-1]
         },{
            "index":22,
            "codeName":"OpenCloseLocalMiniMap",
            "name":OPEN_LOCAL_MINIMAP,
            "kcodes":[76,-1,-1],
            "charcodes":[76,-1,-1]
         },{
            "index":23,
            "codeName":"OpenCloseActiveTaskPanel",
            "name":OPEN_ACTIVE_TASK_PANEL,
            "kcodes":[84,-1,-1],
            "charcodes":[84,-1,-1]
         },{
            "index":24,
            "codeName":"OpenCloseCompletedTaskPanel",
            "name":OPEN_COMPLETED_TASK_PANEL,
            "kcodes":[67,-1,-1],
            "charcodes":[67,-1,-1]
         },{
            "index":26,
            "codeName":"KneelStand",
            "name":KNEEL_STAND,
            "kcodes":[75,-1,-1],
            "charcodes":[75,-1,-1]
         },{
            "index":27,
            "codeName":"ReplyToWhisper",
            "name":REPLY_TO_WHISPER,
            "kcodes":[8,-1,-1],
            "charcodes":[8,-1,-1]
         },{
            "index":28,
            "codeName":"MoveToTarget",
            "name":MOVE_TO_TARGET,
            "kcodes":[71,-1,-1],
            "charcodes":[71,-1,-1]
         },{
            "index":29,
            "codeName":"RingAutoFire",
            "name":RING_AUTO_FIRE,
            "kcodes":[16,-1,-1],
            "charcodes":[16,-1,-1]
         }];
         dk.sortOn("index",Array.NUMERIC);
         return dk;
      }
      
      public function getKeyFunction(keyCode:int) : String
      {
         var keys:Array = null;
         var i:int = 0;
         var f:String = "na";
         if(Globals.uiManager.optionPanel)
         {
            keys = Globals.uiManager.optionPanel.keyControlsData;
            for(i = 0; i < keys.length; i++)
            {
               if(keys[i].kcodes[0] == keyCode || keys[i].kcodes[1] == keyCode || keys[i].kcodes[2] == keyCode)
               {
                  f = keys[i].name;
                  break;
               }
            }
         }
         return f;
      }
      
      private function clearFocus() : void
      {
         this._uiFramework.stage.focus = null;
      }
      
      private function onOptionPanelOpenStateChange(evt:GlobalEvent) : void
      {
         var data:Object = evt.data;
         this._optionPanelOpen = data.open;
      }
      
      private function onTutorialClosed(e:GlobalEvent) : void
      {
         this.clearFocus();
      }
      
      private function onGlobalFlagsLoaded(e:GlobalEvent) : void
      {
         this.loadKeys();
      }
      
      private function onAllowRingUse(event:GlobalEvent) : void
      {
         _allowRingUse = event.data.allow;
      }
      
      private function get isKeyMappingsPanelOpen() : Boolean
      {
         return this._optionPanelOpen && this._keyControlTabActive;
      }
      
      private function updateMove() : void
      {
         var dx:Number = NaN;
         var dy:Number = NaN;
         var dir:Number = NaN;
         if(this.getFocusObject() != null || !this._uiFramework.map.isMapLoaded())
         {
            if(this.moveDir != NULL_MOVEDIR)
            {
               this.navigationKeys.clearAll();
               this.moveDir = NULL_MOVEDIR;
               if(this._uiFramework.map.isMapLoaded())
               {
                  this.stopMove();
               }
            }
            return;
         }
         if(this.navigationKeys.isAnyKeyDown())
         {
            dx = 0;
            dy = 0;
            if(this.navigationKeys.isKeyDown(ActionKeys.LEFT))
            {
               dx--;
            }
            if(this.navigationKeys.isKeyDown(ActionKeys.RIGHT))
            {
               dx = dx + 1;
            }
            if(this.navigationKeys.isKeyDown(ActionKeys.UP))
            {
               dy--;
            }
            if(this.navigationKeys.isKeyDown(ActionKeys.DOWN))
            {
               dy = dy + 1;
            }
            if(dx == 0 && dy == 0)
            {
               if(this.moveDir != NULL_MOVEDIR)
               {
                  this.stopMove();
               }
            }
            else
            {
               dir = Math.atan2(dy,dx) * 180 / Math.PI;
               if(dir != this.moveDir)
               {
                  this.moveDir = dir;
                  moveToPointInDirection(dx,dy);
               }
            }
         }
         else if(this.moveDir != NULL_MOVEDIR)
         {
            this.stopMove();
         }
      }
      
      public function onKeyUp(evt:KeyboardEvent) : void
      {
         var optionKeys:Object = null;
         var i:int = 0;
         var n:int = 0;
         if(this.isKeyMappingsPanelOpen || !Globals.uiManager.optionPanel)
         {
            return;
         }
         if(this.getFocusObject() == null)
         {
            optionKeys = Globals.uiManager.optionPanel.keyControlsData;
            for(i = 0; i <= UiItemBar.MAX_BAR_SLOT_INDEX; i++)
            {
               for(n = 0; n < 3; n++)
               {
                  if(evt.keyCode == optionKeys[i + 4].kcodes[n])
                  {
                     GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.RING_KEY_UP,null));
                  }
               }
            }
            switch(evt.keyCode)
            {
               case ENTER_KEY:
                  GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.CHAT_PANE_OPEN,{}));
                  break;
               case FWDSLASH_KEY:
                  GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.CHAT_PANE_OPEN,{
                     "leadingText":"/",
                     "setFocus":true
                  }));
            }
            switch(this.getKeyFunction(evt.keyCode))
            {
               case MOVE_LEFT:
                  this.navigationKeys.clearKeyDown(ActionKeys.LEFT);
                  this.stopMove();
                  break;
               case MOVE_RIGHT:
                  this.navigationKeys.clearKeyDown(ActionKeys.RIGHT);
                  this.stopMove();
                  break;
               case MOVE_UP:
                  this.navigationKeys.clearKeyDown(ActionKeys.UP);
                  this.stopMove();
                  break;
               case MOVE_DOWN:
                  this.navigationKeys.clearKeyDown(ActionKeys.DOWN);
                  this.stopMove();
                  break;
               case KNEEL_STAND:
                  Globals.uiManager.sitStand();
                  break;
               case OPEN_CLOSE_RING_INVENTORY:
                  Globals.uiManager.openCloseInventory();
                  break;
               case OPEN_CLOSE_PDA:
                  Globals.uiManager.openClosePDAWidget();
                  break;
               case OPEN_GLOBAL_MINIMAP:
                  Globals.uiManager.openGlobalMiniMap();
                  break;
               case OPEN_LOCAL_MINIMAP:
                  Globals.uiManager.openLocalMiniMap();
                  break;
               case OPEN_ACTIVE_TASK_PANEL:
                  Globals.uiManager.openActiveQuestLog();
                  break;
               case OPEN_COMPLETED_TASK_PANEL:
                  Globals.uiManager.openCompetedQuestLog();
                  break;
               case SELECT_SELF:
                  this._actorManager.selectActor(ActorManager.getInstance().myActor.actorId);
                  break;
               case SELECT_CREW_MEMBER_2:
                  this._actorManager.selectActor(ActorManager.getInstance().myActor.teamList[1]);
                  break;
               case SELECT_CREW_MEMBER_3:
                  this._actorManager.selectActor(ActorManager.getInstance().myActor.teamList[2]);
                  break;
               case SELECT_CREW_MEMBER_4:
                  this._actorManager.selectActor(ActorManager.getInstance().myActor.teamList[3]);
                  break;
               case SELECT_CREW_MEMBER_5:
                  this._actorManager.selectActor(ActorManager.getInstance().myActor.teamList[4]);
                  break;
               case SELECT_CREW_MEMBER_6:
                  this._actorManager.selectActor(ActorManager.getInstance().myActor.teamList[5]);
                  break;
               case RING_AUTO_FIRE:
                  GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.RING_AUTO_FIRE_UP,null));
                  break;
               default:
                  if(evt.keyCode == F12_KEY)
                  {
                     Globals.uiManager.toggleAdminPanel();
                  }
            }
         }
         else if(evt.charCode == 13)
         {
            if(this.getFocusObject() == null)
            {
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.CHAT_PANE_OPEN,{}));
            }
            else
            {
               this.clearFocus();
            }
         }
      }
      
      private function onKeyControlTabActive(evt:GlobalEvent) : void
      {
         var data:Object = evt.data;
         this._keyControlTabActive = data.active;
      }
      
      private function onKeyDown(evt:KeyboardEvent) : void
      {
         if(this.isKeyMappingsPanelOpen)
         {
            return;
         }
         if(this.getFocusObject() == null)
         {
            switch(this.getKeyFunction(evt.keyCode))
            {
               case REPLY_TO_WHISPER:
                  GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.WHISPER_AUTOFILL,{}));
                  break;
               case MOVE_LEFT:
                  tryToMove(ActionKeys.LEFT);
                  break;
               case MOVE_RIGHT:
                  tryToMove(ActionKeys.RIGHT);
                  break;
               case MOVE_UP:
                  tryToMove(ActionKeys.UP);
                  break;
               case MOVE_DOWN:
                  tryToMove(ActionKeys.DOWN);
                  break;
               case MOVE_TO_TARGET:
                  moveToTarget();
                  break;
               case SELECT_RING_SLOT_1:
                  selectRing(0);
                  break;
               case SELECT_RING_SLOT_2:
                  selectRing(1);
                  break;
               case SELECT_RING_SLOT_3:
                  selectRing(2);
                  break;
               case SELECT_RING_SLOT_4:
                  selectRing(3);
                  break;
               case SELECT_RING_SLOT_5:
                  selectRing(4);
                  break;
               case SELECT_RING_SLOT_6:
                  selectRing(5);
                  break;
               case SELECT_RING_SLOT_7:
                  selectRing(6);
                  break;
               case SELECT_RING_SLOT_8:
                  selectRing(7);
                  break;
               case SELECT_NEXT_ENEMY:
                  this._actorManager.selectNextTarget(!evt.shiftKey);
                  break;
               case RING_AUTO_FIRE:
                  GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.RING_AUTO_FIRE_DOWN,null));
            }
         }
      }
      
      private function updateKeyMove() : void
      {
         this.moveDir = NULL_MOVEDIR;
      }
      
      private function selectRing(slot:int) : void
      {
         if(!this._allowRingUse)
         {
            return;
         }
         var r:Ring = ActorManager.getInstance().myActor.getRingAt(slot);
         if(r != null)
         {
            RingItemManager.getInstance().selectedSlot = slot;
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.RING_KEY_DOWN,null));
         }
      }
      
      private function onStartCharging(e:GlobalEvent) : void
      {
         this._isCharging = true;
      }
      
      private function onMoveTimer() : void
      {
         this.updateMove();
      }
      
      private function onMapSlideDone(e:GlobalEvent) : void
      {
         this.updateKeyMove();
      }
      
      private function onKeysLoaded(evt:BattleEvent) : void
      {
         var codeName:* = null;
         var keyMap:Object = null;
         var rehydratedMap:Object = null;
         var kcodes:Object = null;
         var charcodes:Object = null;
         var len:uint = 0;
         var j:int = 0;
         var tempMap:Object = null;
         var kcodeslen:int = 0;
         var index:int = 0;
         var kcode:int = 0;
         var charcode:int = 0;
         var responseObj:Object = evt.battleMessage.responseObj[0].values;
         var restoredKeys:Array = new Array();
         var defaultKeys:Array = this.getDefaultKeys().concat();
         var kcodesList:Array = new Array();
         var charcodesList:Array = new Array();
         if(responseObj != null)
         {
            for(codeName in responseObj)
            {
               keyMap = responseObj[codeName];
               if(keyMap != null)
               {
                  rehydratedMap = new Object();
                  rehydratedMap.codeName = codeName;
                  kcodes = keyMap.kcodes || keyMap.k;
                  charcodes = keyMap.charcodes || keyMap.c;
                  rehydratedMap.kcodes = kcodes;
                  rehydratedMap.charcodes = charcodes;
                  kcodesList = kcodesList.concat(rehydratedMap.kcodes);
                  charcodesList = charcodesList.concat(rehydratedMap.charcodes);
                  len = defaultKeys.length;
                  j = 0;
                  for(j = 0; j < len; j++)
                  {
                     if(defaultKeys[j].codeName == rehydratedMap.codeName)
                     {
                        rehydratedMap.name = defaultKeys[j].name;
                        rehydratedMap.index = defaultKeys[j].index;
                        defaultKeys.splice(j,1);
                        break;
                     }
                  }
                  restoredKeys.push(rehydratedMap);
               }
            }
         }
         len = defaultKeys.length;
         for(var k:int = 0; k < len; k++)
         {
            tempMap = defaultKeys[k];
            kcodeslen = tempMap.kcodes.length;
            for(index = 0; index < kcodeslen; index++)
            {
               kcode = tempMap.kcodes[index];
               charcode = tempMap.charcodes[index];
               if(kcode > -1 && kcodesList.indexOf(kcode) > -1)
               {
                  tempMap.kcodes[index] = -1;
               }
               if(charcode > -1 && charcodesList.indexOf(charcode) > -1)
               {
                  tempMap.charcodes[index] = -1;
               }
            }
         }
         this.keys = restoredKeys.concat(defaultKeys);
         this.keys.sortOn("index",Array.NUMERIC);
         if(this.keys != null)
         {
            if(Globals.uiManager.optionPanel)
            {
               Globals.uiManager.optionPanel.buildKeyControls(this.keys);
            }
         }
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.KEY_BINDINGS_LOADED,{"keys":this.keys}));
         BattleMessage(evt.target).removeEventListener(BattleEvent.CALL_BACK,onKeysLoaded);
      }
      
      private function moveToTarget() : void
      {
         if(this._selectedActor)
         {
            ActorManager.getInstance().myActor.moveToTarget(this._selectedActor);
         }
      }
      
      public function navigationKeysDown() : Boolean
      {
         return this.navigationKeys.isAnyKeyDown();
      }
      
      public function stopMove() : void
      {
         if(!this.navigationKeysDown())
         {
            this._moveTimer.stop();
            this.moveDir = NULL_MOVEDIR;
            ActorManager.getInstance().myActor.moveStop();
         }
      }
      
      private function moveToPointInDirection(dx:Number, dy:Number) : void
      {
         var newPoint:Point = null;
         var collisionType:uint = 0;
         if(0 == dx && 0 == dy)
         {
            return;
         }
         var mr:MapRoom = this._uiFramework.map.getCurrentMapRoom();
         var offset:Point = mr.getRoomOffset();
         var scale:Number = mr.scale / 100;
         var x:int = _actorManager.myActor.x;
         var y:int = _actorManager.myActor.y;
         var maxWidth:int = MapIt.gameWidth + offset.x;
         var maxHeight:int = MapIt.gameHeight + offset.y;
         var lastGoodPoint:Point = new Point(x,y);
         var changePoint:Point = new Point(dx * 8,dy * 8);
         while(true)
         {
            newPoint = lastGoodPoint.add(changePoint);
            if(offset.x > newPoint.x || offset.y > newPoint.y || maxWidth < newPoint.x || maxHeight < newPoint.y)
            {
               break;
            }
            collisionType = this._uiFramework.map.getColliionTypeAt(newPoint.x,newPoint.y);
            if(CollisionMap.isTerrianTypeOffLimitsToNonFly(collisionType))
            {
               break;
            }
            lastGoodPoint = newPoint;
         }
         ActorManager.getInstance().myActor.moveTo(Math.round((lastGoodPoint.x - offset.x) / scale),Math.round((lastGoodPoint.y - offset.y) / scale));
      }
      
      private function set moveDir(dir:Number) : void
      {
         this._moveDir = dir;
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MOVE_DIR_CHANGED,{"moveDir":this._moveDir}));
      }
      
      private function get moveDir() : Number
      {
         return this._moveDir;
      }
   }
}

class ActionKeys
{
   
   public static const DOWN:int = 2;
   
   public static const LEFT:int = 4;
   
   public static const UP:int = 1;
   
   public static const RIGHT:int = 8;
    
   
   private var _keyTimeout:uint = 0;
   
   private var _navigationKeys:int = 0;
   
   function ActionKeys()
   {
      super();
   }
   
   public function clearKeyDown(keyBit:int) : void
   {
      _navigationKeys = _navigationKeys & ~keyBit;
   }
   
   public function isKeyDown(keyBit:int) : Boolean
   {
      return (_navigationKeys & keyBit) != 0;
   }
   
   public function clearAll() : void
   {
      _navigationKeys = 0;
   }
   
   public function setKeyDown(keyBit:int) : void
   {
      _navigationKeys = _navigationKeys | keyBit;
   }
   
   public function isAnyKeyDown() : Boolean
   {
      return _navigationKeys != 0;
   }
}
