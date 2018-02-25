package com.gaiaonline.battle.newactors
{
   import com.gaiaonline.battle.ApplicationInterfaces.IFileVersionManager;
   import com.gaiaonline.battle.ApplicationInterfaces.ILinkManager;
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.GlobalTexts;
   import com.gaiaonline.battle.Globals;
   import com.gaiaonline.battle.ItemLoadManager.ConsumableManager;
   import com.gaiaonline.battle.ItemManager.ConsumableItemManager;
   import com.gaiaonline.battle.ItemManager.RingItemManager;
   import com.gaiaonline.battle.Loot.LootManager;
   import com.gaiaonline.battle.Loot.Orbs;
   import com.gaiaonline.battle.gateway.BattleEvent;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.gateway.BattleMessage;
   import com.gaiaonline.battle.map.GameTransitionManager;
   import com.gaiaonline.battle.map.Map;
   import com.gaiaonline.battle.map.MapObject;
   import com.gaiaonline.battle.map.MapRoom;
   import com.gaiaonline.battle.map.envobjects.BasicSwitch;
   import com.gaiaonline.battle.monsters.MonsterLoadManager;
   import com.gaiaonline.battle.newrings.RingLoadManager;
   import com.gaiaonline.battle.ui.AlertTypes;
   import com.gaiaonline.battle.ui.DialogWindow;
   import com.gaiaonline.battle.ui.DialogWindowFactory;
   import com.gaiaonline.battle.ui.DialogWindowTypes;
   import com.gaiaonline.battle.ui.UiAcceptDecline;
   import com.gaiaonline.battle.userServerSettings.IGameSettings;
   import com.gaiaonline.battle.userServerSettings.IGraphicOptionsSettings;
   import com.gaiaonline.battle.utils.BattleUtils;
   import com.gaiaonline.display.wordbubble.BubbleEvent;
   import com.gaiaonline.events.ProgressEventManager;
   import com.gaiaonline.flexModulesAPIs.actorInfo.ActorTypes;
   import com.gaiaonline.flexModulesAPIs.gatewayInterfaces.IBattleMessage;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import com.gaiaonline.utils.queue.QueueHelper;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.clearTimeout;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   
   public class ActorManager extends EventDispatcher
   {
      
      private static var _instance:ActorManager = null;
      
      private static var actors:Object = new Object();
       
      
      private var _gateway:BattleGateway = null;
      
      private var _uiFramework:IUIFramework = null;
      
      public var mapOffset:Point;
      
      private var _friendsList:Array;
      
      private var _selectedActor:BaseActor;
      
      private var npcTimeOut:int = -1;
      
      private var _fpsRageLevel:String;
      
      private var _currentRoomId:String;
      
      private var _fpsRingId:String;
      
      private var _mapActorPositionAdjuster:MapActorPositionAdjuster = null;
      
      private var _isMoviePlaying:Boolean = false;
      
      private var _monsterLoadManager:MonsterLoadManager;
      
      private var _disableDialog:Boolean = false;
      
      private var _dialogOpen:Boolean = false;
      
      private var _isCharging:Boolean = false;
      
      private var _myActorId:String = null;
      
      private var _transitionManager:GameTransitionManager = null;
      
      private var _cachedRemoveIds:Array;
      
      private var _mapAndNPCReady:Boolean = false;
      
      private var _getObjectUnderPointPoint:Point;
      
      private var _currentInstanceId:String;
      
      private var _progressManager:ProgressEventManager;
      
      private var _myActor:BaseActor = null;
      
      private var _cachedTargets:Array;
      
      public var transPos:Point;
      
      private var _monsterPreloadDone:Boolean = true;
      
      private var _linkManager:ILinkManager = null;
      
      private var _selectedActorId:String;
      
      private var _autoMoveInRange:Boolean = true;
      
      public var mapActors:Object;
      
      private var _cachedSyncIds:Array;
      
      private var lastTargetSelect:Number = 0;
      
      private var _nullParamActorObj:Object = null;
      
      private var _fpsAutoMoveNegative:Boolean = false;
      
      private var _ringAnimationDisplay:String = "all";
      
      private var lootManager:LootManager;
      
      private var _fileVersionManager:IFileVersionManager = null;
      
      private var _showSpawn:Boolean = false;
      
      public function ActorManager(singletonEnforcer:SingletonEnforcer#61, stage:Stage, gateway:BattleGateway, uiFramework:IUIFramework, linkManager:ILinkManager, fileVersionManager:IFileVersionManager, progressManager:ProgressEventManager)
      {
         mapActors = new Object();
         mapOffset = new Point(0,0);
         transPos = new Point(0,0);
         _friendsList = [];
         _cachedTargets = [];
         _getObjectUnderPointPoint = new Point(NaN,NaN);
         _cachedSyncIds = [];
         _cachedRemoveIds = [];
         super();
         if(!singletonEnforcer)
         {
            throw new Error("ActorManager is a singleton!  Use ActorManager.getInstance");
         }
         this._gateway = gateway;
         this._uiFramework = uiFramework;
         this._linkManager = linkManager;
         this._fileVersionManager = fileVersionManager;
         this._progressManager = progressManager;
         this._monsterLoadManager = new MonsterLoadManager(this._uiFramework,this._linkManager.baseURL,this._fileVersionManager,this._gateway);
         _mapActorPositionAdjuster = new MapActorPositionAdjuster(_uiFramework.map);
         this.lootManager = new LootManager(this._gateway,this._uiFramework,this._linkManager);
         this._gateway.addEventListener(BattleEvent.IGNORE_LIST,onIgnoreListUpdate,false,0,true);
         this._nullParamActorObj = new Object();
         this._nullParamActorObj.actorID = null;
         this._nullParamActorObj.params = null;
         stage.addEventListener(MouseEvent.MOUSE_UP,onActorMouseUp,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.PLAYER_INFO_RECEIVED,onPlayerInfoReceived,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.CONVERSATION_END,onConversationEnd,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.CREW_LIST_SELECTION_CHANGE,onCrewListSelectionChange,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.START_CHARGING,onStartCharging,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.STOP_CHARGING,onStopCharging,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.INSTANCE_CHANGED_FOR_ACTOR,onActorInstanceChanged,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.SHOW_SPAWN_STATE_CHANGED,onShowSpawnStateChanged,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.DIALOG_OPEN_STATUS_CHANGED,onDialogOpenStatusChanged,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.DISABLE_DIALOG,onDisableDialog,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.CLEAR_SELECTED_TARGET,onClearSelectedTarget,false,0,true);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.FRIENDS_UPDATE,onFriendsUpdate);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.USER_SETTINGS_LOADED,onGraphicsOptionChanged,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.GRAPHIC_OPTIONS_CHANGED,onGraphicsOptionChanged,false,0,true);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_SLIDE_START,onMapSlideStart);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_SLIDE_COMPLETE,onMapSlideDone);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_WARP_OUT_TRANSITION_START,onWarpOutTransitionStart);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_WARP_WITHIN_ROOM,onWarpWithinRoom);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.MAP_LOAD_ZONE,onMapLoadZone,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.MAP_DONE,onWarp,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.MAP_ROOM_LEAVE,onMapRoomLeave,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.NEW_ROOM_ENTERED,onNewRoomEnter,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.PLAY_MOVIE,onPlayMovie,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.MOVIE_DONE,onMovieDone,false,0,true);
         this._gateway.addEventListener(BattleEvent.INVITE_TO_BE_FRIEND,onInviteToBeFriend,false,0,true);
         this._gateway.addEventListener(BattleEvent.INVITE_TO_FRIEND_COMPLETED,onInviteToFriendCompleted,false,0,true);
      }
      
      public static function initialize(stage:Stage, gateway:BattleGateway, uiFramework:IUIFramework, linkManager:ILinkManager, fileVersionManager:IFileVersionManager, progressManager:ProgressEventManager) : void
      {
         if(_instance)
         {
            throw new Error("ActorManager has already been initialized");
         }
         _instance = new ActorManager(new SingletonEnforcer#61(),stage,gateway,uiFramework,linkManager,fileVersionManager,progressManager);
      }
      
      private static function hashActorIdToActor(actorId:String, actor:BaseActor) : void
      {
         ActorManager.actors[actorId] = actor;
      }
      
      public static function actorIdToActor(actorId:String) : BaseActor
      {
         return ActorManager.actors[actorId];
      }
      
      public static function getInstance() : ActorManager
      {
         if(!_instance)
         {
            throw new Error("ActorManager has not been initialized yet!  Please use ActorManager.initialize");
         }
         return _instance;
      }
      
      public static function resetAllTargetType() : void
      {
         var actor:BaseActor = null;
         for each(actor in ActorManager.actors)
         {
            actor.resetTargetType();
         }
      }
      
      private function onActorLeave(evt:BattleEvent) : void
      {
         if(ActorManager.actorIdToActor(evt.battleMessage.responseObj.id) != null && evt.battleMessage.responseObj.id != myActor.actorId)
         {
            this.transitionOut(evt.battleMessage.responseObj.tt,evt.battleMessage.responseObj.id);
         }
      }
      
      private function onAllowUserMove(event:GlobalEvent) : void
      {
         _myActor.allowUserMove = event.data;
      }
      
      private function onWarp(event:GlobalEvent) : void
      {
         var ed:EventDispatcher = null;
         this._mapAndNPCReady = false;
         _transitionManager = event.data.transitionManager;
         _transitionManager.haltWarpInTransition(this);
         myActor.roomId = this._currentRoomId;
         myActor.setPosition(this.transPos.x,this.transPos.y);
         if(!this._monsterPreloadDone)
         {
            GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.MONSTER_PRELOAD_DONE,onMonsterPreloadDone);
            ed = this._monsterLoadManager.preloadMonsters();
            this._progressManager.addProgressObject(ed,"Loading Monsters",10);
         }
         else
         {
            newMapRoomFetchNpcInfo();
         }
      }
      
      private function onMapSlideStart(event:GlobalEvent) : void
      {
         transPos.x = event.data.x;
         transPos.y = event.data.y;
         transitionOut(event.data.transition,myActor.actorId);
         requestRoomActorInfo();
      }
      
      private function onActorMouseHoldDown(ba:BaseActor) : void
      {
      }
      
      private function onStopCharging(e:GlobalEvent) : void
      {
         this._isCharging = false;
      }
      
      private function monitorNPCLoading(forced:Boolean = false) : void
      {
         var npc:BaseActor = this.getNextLoadPendingNPC();
         if(npc == null || forced)
         {
            clearTimeout(this.npcTimeOut);
            this.npcTimeOut = -1;
            onMapAndNPCsReady();
         }
         else
         {
            if(this.npcTimeOut != -1)
            {
               clearTimeout(this.npcTimeOut);
            }
            this.npcTimeOut = setTimeout(monitorNPCLoading,10000,true);
            npc.getActorDisplay().addEventListener(ActorDisplay.LOADED,onNpcLoaded);
         }
      }
      
      private function getNextLoadPendingNPC() : BaseActor
      {
         var act:BaseActor = null;
         for each(act in ActorManager.actors)
         {
            if(act.actorType == ActorTypes.NPC && !act.getActorDisplay().isLoaded)
            {
               return act;
            }
         }
         return null;
      }
      
      private function onSync(evt:BattleEvent) : void
      {
         var baseActor:BaseActor = null;
         var rId:int = 0;
         var index:int = 0;
         var rObj:Object = evt.battleMessage.responseObj;
         _cachedSyncIds.length = 0;
         _cachedRemoveIds.length = 0;
         var syncIds:Array = _cachedSyncIds;
         var removeIds:Array = _cachedRemoveIds;
         for(var i:int = 0; i < rObj.length; i++)
         {
            syncIds.push(rObj[i].id);
         }
         for each(baseActor in ActorManager.actors)
         {
            index = syncIds.indexOf(baseActor.actorId);
            if(index < 0)
            {
               removeIds.push(baseActor.actorId);
            }
            else
            {
               baseActor.updateActor(rObj[index],this._gateway.pingTimer.lagTime);
            }
         }
         for(rId = 0; rId < removeIds.length; rId++)
         {
            if(ActorManager.actors[rId] != null && !BaseActor(ActorManager[rId]).isLeaving)
            {
               this.removeActor(ActorManager[rId]);
            }
         }
      }
      
      private function onGraphicsOptionChanged(evt:GlobalEvent) : void
      {
         var data:IGraphicOptionsSettings = evt.data as IGraphicOptionsSettings;
         if(data)
         {
            this._ringAnimationDisplay = data.getRingAnimationDisplay();
         }
         var data2:IGameSettings = evt.data as IGameSettings;
         if(data2)
         {
            this._autoMoveInRange = data2.getAutoMoveInRange();
         }
      }
      
      private function onMapRoomLeave(event:GlobalEvent) : void
      {
         var data:Object = event.data;
         _currentRoomId = data.newRoomId;
         _currentInstanceId = data.newInstanceId;
      }
      
      private function get selectedActor() : BaseActor
      {
         return this._selectedActor;
      }
      
      private function clearAll() : void
      {
         var ba:BaseActor = null;
         var mid:* = null;
         for each(ba in ActorManager.actors)
         {
            ba.removeEventListener(MouseEvent.MOUSE_DOWN,onActorMouseDown);
            ba.removeEventListener(BaseActor.ACTOR_GONE,onActorGone);
            ba.removeEventListener(BaseActor.TEAMMATE_GONE,onTeammateGone);
            ba.removeEventListener(BaseActorEvent.TARGET_UNSET,onActorTargetUnset);
            _uiFramework.map.removeActor(ba);
            ba.dispose();
            delete ActorManager.actors[ba.actorId];
         }
         for(mid in this.mapActors)
         {
            delete this.mapActors[mid];
         }
         this.transPos.x = 0;
         this.transPos.y = 0;
         this._currentRoomId = null;
         BattleUtils.cleanObject(this.mapActors);
         this.mapOffset.x = 0;
         this.mapOffset.y = 0;
         BattleUtils.cleanObject(ActorManager.actors);
         this.selectedActor = null;
         this._selectedActorId = null;
         this._isCharging = false;
         this.lootManager = new LootManager(this._gateway,this._uiFramework,this._linkManager);
      }
      
      private function onActorGone(evt:Event) : void
      {
         if(BaseActor(evt.target).isLeaving)
         {
            this.removeActor(BaseActor(evt.target).actorId);
         }
      }
      
      private function actorUpdate(msg:IBattleMessage) : void
      {
         var actorData:Object = null;
         var ba:BaseActor = null;
         var fOut:String = null;
         var fIn:String = null;
         var acs:Array = msg.responseObj as Array;
         var isNewActor:Boolean = false;
         if(acs)
         {
            for each(actorData in acs)
            {
               if(actorData != null)
               {
                  if(ActorManager.actorIdToActor(actorData.id) == null && this.mapActors[actorData.id] == null)
                  {
                     if(actorData.display == "env")
                     {
                        this.addMapActor(actorData);
                     }
                     else
                     {
                        this.addActor(actorData);
                        isNewActor = true;
                     }
                  }
                  else if(this.mapActors[actorData.id] != null)
                  {
                     EnvActor(this.mapActors[actorData.id]).updateState(actorData,true);
                  }
                  else
                  {
                     ba = ActorManager.actorIdToActor(actorData.id);
                     ba.updateActor(actorData,this._gateway.pingTimer.lagTime);
                     if(!ba.visible && ba.roomId == this._currentRoomId && ba.instanceId == this._currentInstanceId)
                     {
                        ba.visible = true;
                        ba.setPosition(actorData.px,actorData.py);
                        if(ba.actorId == this.selectedActorId)
                        {
                           this.selectActor(ba.actorId);
                        }
                        if(myActor.myTeam[ba.actorId] != null)
                        {
                           ba.isLeaving = false;
                        }
                     }
                  }
                  if(actorData.transition != null)
                  {
                     if(!isNewActor && actorData.id != ActorManager.getInstance().myActor.actorId)
                     {
                        fOut = this.getTransitionOutFrame(actorData.transition);
                        fIn = this.getTransitionInFrame(actorData.transition);
                        if(fOut != null && fIn != null)
                        {
                           ActorManager.actorIdToActor(actorData.id).playWarpAnimations(fOut,fIn,actorData.px,actorData.py);
                        }
                     }
                     else
                     {
                        this.transitionIn(actorData.transition,actorData.id);
                     }
                  }
               }
            }
         }
      }
      
      private function onFriendsUpdate(e:GlobalEvent) : void
      {
         _friendsList = e.data.friendsList;
      }
      
      private function initListeners() : void
      {
         this._gateway.addEventListener(BattleEvent.ACTOR_UPDATE,onActorUpdate,false,0,true);
         this._gateway.addEventListener(BattleEvent.ACTOR_LEAVE,onActorLeave,false,0,true);
         this._gateway.addEventListener(BattleEvent.ACTOR_ACTION,onActorAction,false,0,true);
         this._gateway.addEventListener(BattleEvent.LOOT,onLoot,false,0,true);
         this._gateway.addEventListener(BattleEvent.QUICK_MOVE,onQuickMove,false,0,true);
      }
      
      private function onActorInstanceChanged(event:GlobalEvent) : void
      {
         var actor:BaseActor = null;
         var instanceId:String = event.data.instanceId;
         var roomId:String = event.data.roomId;
         var eventActor:BaseActor = event.data.actor;
         if(eventActor == myActor)
         {
            for each(actor in ActorManager.actors)
            {
               if(actor.instanceId == instanceId && actor.roomId == roomId)
               {
                  actor.visible = true;
               }
               else
               {
                  actor.visible = false;
               }
            }
         }
      }
      
      public function getTransitionOutFrame(tType:int) : String
      {
         var result:String = null;
         switch(tType)
         {
            case 6:
               result = "crystal_out";
               break;
            case 0:
               result = "portal_out";
               break;
            case 7:
               result = "warp_out";
               break;
            case 8:
               result = "buzz_out";
         }
         return result;
      }
      
      private function onNpcLoaded(evt:Event) : void
      {
         this.monitorNPCLoading();
      }
      
      private function onActorMouseDown(evt:MouseEvent) : void
      {
         var bap:Object = null;
         var msg2:BattleMessage = null;
         var ba:BaseActor = BaseActor(evt.currentTarget);
         if(ba.targetType != BaseActor.TARGETTYPE_FRIEND)
         {
            bap = this.getSelectedActorOrSwitchUnderPoint(this._uiFramework.stage.mouseX,this._uiFramework.stage.mouseY);
            if(bap != null)
            {
               if(bap is BaseActor)
               {
                  ba = bap as BaseActor;
               }
               else if(bap is BasicSwitch)
               {
                  if(myActor.allowUsableUse)
                  {
                     _nullParamActorObj.actorID = bap.actorId;
                     trace("BASIC SWITCH  ??????   CHECK RADIUS -----------");
                     msg2 = new BattleMessage("use",_nullParamActorObj);
                     this._gateway.sendMsg(msg2);
                  }
                  else if(myActor.isKtfo)
                  {
                     GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.YOU_ARE_DAZED_CANT_DO_THAT}));
                  }
                  return;
               }
            }
         }
         if(ba != null)
         {
            if(ba.targetType == BaseActor.TARGETTYPE_POWERUSABLE)
            {
               onPowerUsableMouseEvent(ba);
            }
            else
            {
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ACTOR_MOUSE_DOWN,{"actor":ba}));
               onActorMouseHoldDown(ba);
               onActorMouseSelect(ba);
            }
         }
      }
      
      private function updateNpcsDialogStat() : void
      {
         var actor:BaseActor = null;
         for each(actor in ActorManager.actors)
         {
            if(actor.actorType == ActorTypes.NPC)
            {
               this.dialogStat(actor.actorId);
            }
         }
      }
      
      private function onNpcReadyIrisIn(ignoredEvent:GlobalEvent) : void
      {
         GlobalEvent.eventDispatcher.removeEventListener(GlobalEvent.MAP_WARP_IN_TRANSITION_COMPLETE,onNpcReadyIrisIn);
         var msg:BattleMessage = new BattleMessage("clientFinishedLoadingZone",null);
         this._gateway.sendMsg(msg);
      }
      
      private function onActorAction(evt:BattleEvent) : void
      {
         var obj:Object = null;
         var cpa:BaseActor = null;
         var hitIndex:int = 0;
         var hta:BaseActor = null;
         var deflectIndex:int = 0;
         var dta:BaseActor = null;
         var reflectIndex:int = 0;
         var rfta:BaseActor = null;
         var missIndex:int = 0;
         var mta:BaseActor = null;
         var resistIndex:int = 0;
         var rta:BaseActor = null;
         var ca:BaseActor = null;
         var ta:Object = null;
         var tp:Point = null;
         var speed:Number = NaN;
         for(var i:int = 0; i < evt.battleMessage.responseObj.length; i++)
         {
            obj = evt.battleMessage.responseObj[i];
            if(this._uiFramework.ringAnimFpsTest)
            {
               this.getRingAnimFps(obj.rid,obj.rl);
            }
            if(obj.bmt == "std")
            {
               if(obj.point != null && obj.actorID != null)
               {
                  cpa = ActorManager.actorIdToActor(obj.actorID);
                  if(cpa != null)
                  {
                     if(obj.displayType == "external" && this.displayRingAnim(cpa.actorId))
                     {
                        cpa.playRingAnimation(obj.rid,obj.rl,"point",new Point(obj.point.x,obj.point.y));
                     }
                     else if(obj.displayType == "internal" && RingLoadManager.contain(obj.rid))
                     {
                        cpa.playRingAnimation(obj.rid,obj.rl,"point",new Point(obj.point.x,obj.point.y));
                     }
                  }
               }
               if(obj.hits != null)
               {
                  for(hitIndex = 0; hitIndex < obj.hits.length; hitIndex++)
                  {
                     hta = ActorManager.actorIdToActor(obj.hits[hitIndex]);
                     if(hta != null && obj.rid != null && obj.rl != null)
                     {
                        if(obj.displayType == "external" && this.displayRingAnim(obj.actorID,hta.actorId))
                        {
                           hta.playRingAnimation(obj.rid,obj.rl,"target");
                        }
                        else if(obj.displayType == "internal" && RingLoadManager.contain(obj.rid))
                        {
                           hta.playRingAnimation(obj.rid,obj.rl,"target");
                        }
                     }
                  }
               }
               if(obj.deflects != null)
               {
                  for(deflectIndex = 0; deflectIndex < obj.deflects.length; deflectIndex++)
                  {
                     dta = ActorManager.actorIdToActor(obj.deflects[deflectIndex]);
                     if(dta != null)
                     {
                        if(myActor.actorId == obj.actorID || dta.actorId == myActor.actorId)
                        {
                           dta.playDeflects();
                        }
                     }
                  }
               }
               if(obj.reflects != null)
               {
                  for(reflectIndex = 0; reflectIndex < obj.reflects.length; reflectIndex++)
                  {
                     rfta = ActorManager.actorIdToActor(obj.reflects[reflectIndex]);
                     if(rfta != null)
                     {
                        if(myActor.actorId == obj.actorID || rfta.actorId == myActor.actorId)
                        {
                           rfta.playReflects();
                        }
                     }
                  }
               }
               if(obj.misses != null)
               {
                  for(missIndex = 0; missIndex < obj.misses.length; missIndex++)
                  {
                     mta = ActorManager.actorIdToActor(obj.misses[missIndex]);
                     if(mta != null)
                     {
                        if(myActor.actorId == obj.actorID || mta.actorId == myActor.actorId)
                        {
                           mta.playMiss();
                        }
                     }
                  }
               }
               if(obj.resists != null)
               {
                  for(resistIndex = 0; resistIndex < obj.resists.length; resistIndex++)
                  {
                     rta = ActorManager.actorIdToActor(obj.resists[resistIndex]);
                     if(rta != null)
                     {
                        if(myActor.actorId == obj.actorID || rta.actorId == myActor.actorId)
                        {
                           rta.playResists();
                        }
                     }
                  }
               }
            }
            else if(obj.bmt == "action")
            {
               if(obj.id != myActor.actorId || obj.delayed)
               {
                  ca = ActorManager.actorIdToActor(obj.id);
                  if(obj.tid != null)
                  {
                     ta = ActorManager.actorIdToActor(obj.tid);
                  }
                  else
                  {
                     ta = new Point(obj.point.x,obj.point.y);
                  }
                  if(ta != null && ca != null && ta is BaseActor && ta.actorId != ca.actorId)
                  {
                     tp = new Point(BaseActor(ta).position.x,BaseActor(ta).position.y);
                  }
                  else if(ta != null && ta is Point)
                  {
                     tp = new Point(ta.x,ta.y);
                  }
                  if(ca != null && tp != null)
                  {
                     ca.setDirection(tp);
                  }
                  if(obj.speed != null)
                  {
                     speed = obj.speed;
                  }
                  if(obj.displayType == "external" && ca != null && obj.rid != null && obj.rl != null && this.displayRingAnim(ca.actorId))
                  {
                     ca.playRingAnimation(obj.rid,obj.rl,"caster",ta,speed);
                  }
                  else if(obj.displayType == "internal" && ca != null && obj.rl != null)
                  {
                     ca.playAttack(obj.rl,ta,speed);
                  }
               }
            }
         }
      }
      
      private function onInviteDeclineClick(evt:Event) : void
      {
         var id:String = null;
         var msg:BattleMessage = null;
         var ad:UiAcceptDecline = evt.target as UiAcceptDecline;
         if(ad != null)
         {
            id = ad.param.id;
            msg = new BattleMessage("invitedToBeFriendAnswer",{
               "id":ad.param.id,
               "result":false
            });
            this._gateway.sendMsg(msg);
            Globals.uiManager.removeAcceptDecline(ad);
            ad.removeEventListener("BtnAcceptClick",onInviteAcceptClick);
            ad.removeEventListener("BtnDeclineClick",onInviteDeclineClick);
         }
      }
      
      private function onMonsterPreloadDone(evt:GlobalEvent) : void
      {
         this._monsterPreloadDone = true;
         newMapRoomFetchNpcInfo();
         if(this._mapAndNPCReady)
         {
            _transitionManager.resumeWarpInTransition(this);
         }
      }
      
      public function isMyActor(actorId:String) : Boolean
      {
         return actorId == _myActorId;
      }
      
      private function onTeammateGone(evt:Event) : void
      {
         this.removeActor(BaseActor(evt.target).actorId);
      }
      
      private function displayRingAnim(actorId:String, targetId:String = null) : Boolean
      {
         var playerId:String = null;
         var result:Boolean = false;
         if(this._ringAnimationDisplay == "me")
         {
            playerId = myActor.actorId;
            result = actorId == playerId || targetId == playerId;
         }
         else if(this._ringAnimationDisplay == "crew")
         {
            result = myActor.isOnMyTeam(actorId);
         }
         else
         {
            result = true;
         }
         return result;
      }
      
      private function onPlayMovie(evt:GlobalEvent) : void
      {
         this._isMoviePlaying = evt.data.hideNpcDialog as Boolean;
         if(this._isMoviePlaying)
         {
            resetAllTargetType();
         }
      }
      
      private function onLoot(evt:BattleEvent) : void
      {
         var ba:BaseActor = ActorManager.actors[evt.battleMessage.responseObj.id] as BaseActor;
         if(ba != null)
         {
            this.lootManager.addLoots(evt.battleMessage.responseObj,ba);
         }
      }
      
      private function log(... args) : void
      {
         var s:String = null;
         var p:* = null;
         for(p in args)
         {
            if(s == null)
            {
               if(args[p] == null)
               {
                  s = "null";
               }
               else
               {
                  s = args[p];
               }
            }
            else if(args[p] == null)
            {
               s = s = s + ", null";
            }
            else
            {
               s = s + "," + String(args[p]);
            }
         }
      }
      
      private function onWarpOutTransitionStart(event:GlobalEvent) : void
      {
         var data:Object = event.data;
         transPos.x = data.x;
         transPos.y = data.y;
         if(myActor)
         {
            myActor.stopMove();
            transitionOut(data.transition,myActor.actorId);
         }
      }
      
      private function onQuickMove(evt:BattleEvent) : void
      {
         var targetPoints:Array = null;
         var p:Object = null;
         var obj:Object = evt.battleMessage.responseObj[0];
         if(ActorManager.actorIdToActor(obj.id) != null)
         {
            targetPoints = new Array();
            if(obj.targets != null)
            {
               for each(p in obj.targets)
               {
                  targetPoints.push(new Point(p.x,p.y));
               }
            }
            ActorManager.actorIdToActor(obj.id).quickMove(obj.bmt,targetPoints,obj.time);
         }
      }
      
      private function newMapRoomFetchNpcInfo() : void
      {
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.HACK_EVENT_PRE_ACTOR_UPDATE,waitForNpcToLoad);
         initListeners();
         var clientCanListen:BattleMessage = new BattleMessage("clientCanListen",null);
         this._gateway.sendMsg(clientCanListen);
         requestRoomActorInfo();
      }
      
      private function onStartCharging(e:GlobalEvent) : void
      {
         this._isCharging = true;
      }
      
      private function onMapSlideDone(evt:GlobalEvent) : void
      {
         myActor.stand();
         myActor.roomId = evt.data.newRoomId;
         myActor.setPosition(this.transPos.x,this.transPos.y);
      }
      
      public function requestRoomActorInfo() : void
      {
         var msg:BattleMessage = new BattleMessage("getRoomActorInfo",null);
         this._gateway.sendMsg(msg);
      }
      
      private function onWarpWithinRoom(event:GlobalEvent) : void
      {
         var data:Object = event.data;
         var transition:int = data.transition;
         transPos.x = data.x;
         transPos.y = data.y;
         myActor.playWarpAnimations(getTransitionOutFrame(transition),getTransitionInFrame(transition),data.x,data.y);
      }
      
      private function onInviteToBeFriend(evt:BattleEvent) : void
      {
         trace(evt.battleMessage.responseObj);
         var txt:* = evt.battleMessage.responseObj[0].name;
         txt = txt + " wants to add you as a friend";
         var id:String = evt.battleMessage.responseObj[0].id;
         var ad:UiAcceptDecline = Globals.uiManager.showAcceptDecline(txt,id);
         ad.addEventListener("BtnAcceptClick",onInviteAcceptClick);
         ad.addEventListener("BtnDeclineClick",onInviteDeclineClick);
      }
      
      public function selectActor(actorId:String) : void
      {
         var actor:BaseActor = ActorManager.actorIdToActor(actorId);
         if(actor != null)
         {
            this.selectTarget(actor);
         }
      }
      
      public function transitionIn(tType:int, actorId:String) : void
      {
         var frame:String = null;
         var ba:BaseActor = ActorManager.actorIdToActor(actorId);
         if(ba != null)
         {
            switch(tType)
            {
               case 1:
               case 2:
               case 3:
               case 4:
                  break;
               case 5:
                  if(ba.displayType == "monster")
                  {
                     ba.playSpawnAnimation();
                  }
                  break;
               default:
                  frame = this.getTransitionInFrame(tType);
                  if(frame != null)
                  {
                     ba.playTransition(frame);
                  }
            }
         }
      }
      
      public function getSelectedActor() : BaseActor
      {
         return selectedActor;
      }
      
      private function set selectedActor(target:BaseActor) : void
      {
         this._selectedActor = target;
         var id:String = !!target?target.actorId:null;
         if(id)
         {
            this._selectedActorId = id;
         }
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ACTOR_SELECTED,{
            "actor":target,
            "actorId":id
         }));
      }
      
      private function onPlayerInfoReceived(e:GlobalEvent) : void
      {
         var responseObj:Object = e.data.responseObj;
         _myActorId = responseObj.id;
         _myActor = this.addActor(responseObj);
         _myActor.setUserLevel(_myActor.userLevel,true);
         _myActor.consumableManager = new ConsumableManager(ConsumableItemManager.getInstance(),this._linkManager,this._gateway,this._uiFramework);
         _myActor.displaySilhouette = true;
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.ALLOW_USER_MOVE,onAllowUserMove,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.ALLOW_USABLE_USE,onAllowUsableUse,false,0,true);
         this._gateway.addEventListener(BattleEvent.ORB,onOrbsUpdate,false,0,true);
         _myActor.addEventListener(BaseActor.RING_LOADED,onPlayerRingsLoaded,false,0,true);
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.PLAYER_CREATED,{
            "actor":_myActor,
            "playerInfo":responseObj
         }));
         if(responseObj.timeTillOrbSwap != null)
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.TIME_TILL_ORB_SWAP,responseObj.timeTillOrbSwap));
         }
      }
      
      private function onClearSelectedTarget(e:GlobalEvent) : void
      {
         clearSelectedTarget();
      }
      
      public function getSelectedActorOrSwitchUnderPoint(x:int, y:int) : Object
      {
         var dpo:DisplayObject = null;
         var pickedUpActor:BaseActor = null;
         this._getObjectUnderPointPoint.x = this._uiFramework.stage.mouseX;
         this._getObjectUnderPointPoint.y = this._uiFramework.stage.mouseY;
         var a:Array = this._uiFramework.stage.getObjectsUnderPoint(_getObjectUnderPointPoint);
         var ba:Object = null;
         for(var i:int = 0; i < a.length; i++)
         {
            dpo = a[i] as DisplayObject;
            while(dpo != null && !(dpo is Map) && !(dpo is BaseActor && BaseActor(dpo).actorType != ActorTypes.COMPANION) && !(dpo is BasicSwitch && BasicSwitch(dpo).isUsable))
            {
               dpo = dpo.parent;
            }
            if(dpo is BaseActor && dpo == this.selectedActor)
            {
               pickedUpActor = BaseActor(dpo).pickedUpActor;
               if(pickedUpActor && pickedUpActor.mcHitTestPoint(this._uiFramework.stage.mouseX,this._uiFramework.stage.mouseY))
               {
                  ba = pickedUpActor;
               }
               else if(BaseActor(dpo).mcHitTestPoint(this._uiFramework.stage.mouseX,this._uiFramework.stage.mouseY))
               {
                  ba = dpo as BaseActor;
               }
               break;
            }
            if(dpo is BasicSwitch)
            {
               if(BasicSwitch(dpo).btnHitTestPoint(this._uiFramework.stage.mouseX,this._uiFramework.stage.mouseY))
               {
                  ba = dpo as BasicSwitch;
               }
            }
         }
         return ba;
      }
      
      private function onPlayerRingsLoaded(evt:Event) : void
      {
         myActor.removeEventListener(BaseActor.RING_LOADED,onPlayerRingsLoaded);
         myActor.updateBonusSet();
      }
      
      public function onIgnoreListUpdate(evt:BattleEvent) : void
      {
         var queueHelper:QueueHelper = new QueueHelper();
         var l:Array = evt.battleMessage.responseObj[0].ignoreList;
         if(l != null && l.length > 0)
         {
            myActor.ignoreList = l.concat();
         }
      }
      
      private function onConversationEnd(e:GlobalEvent) : void
      {
         this.updateNpcsDialogStat();
      }
      
      private function onNewRoomEnter(event:GlobalEvent) : void
      {
         clearActors();
      }
      
      public function getTransitionInFrame(tType:int) : String
      {
         var result:String = null;
         switch(tType)
         {
            case 6:
               result = "crystal_in";
               break;
            case 0:
               result = "portal_in";
               break;
            case 7:
               result = "warp_in";
               break;
            case 8:
               result = "buzz_in";
         }
         return result;
      }
      
      private function onInviteAcceptClick(evt:Event) : void
      {
         var id:String = null;
         var msg:BattleMessage = null;
         var ad:UiAcceptDecline = evt.target as UiAcceptDecline;
         if(ad != null)
         {
            id = ad.param.id;
            msg = new BattleMessage("invitedToBeFriendAnswer",{
               "id":ad.param.id,
               "result":true
            });
            this._gateway.sendMsg(msg);
            Globals.uiManager.removeAcceptDecline(ad);
            ad.removeEventListener("BtnAcceptClick",onInviteAcceptClick);
            ad.removeEventListener("BtnDeclineClick",onInviteDeclineClick);
         }
      }
      
      public function resetNextTargetTime() : void
      {
         this.lastTargetSelect = 0;
      }
      
      public function selectNextTarget(foward:Boolean = true) : void
      {
         var baseActor:BaseActor = null;
         var time:int = getTimer();
         var dt:Number = time - this.lastTargetSelect;
         this.lastTargetSelect = time;
         var index:int = 0;
         _cachedTargets.length = 0;
         var targets:Array = _cachedTargets;
         for each(baseActor in ActorManager.actors)
         {
            if((baseActor.targetType == BaseActor.TARGETTYPE_FRIEND || baseActor.targetType == BaseActor.TARGETTYPE_POWERUSABLE) && baseActor.targetCycle && !baseActor.isLeaving)
            {
               targets.push(baseActor);
            }
         }
         targets.sortOn("distanceFromPlayer",Array.NUMERIC);
         if(dt >= 1500)
         {
            if(foward)
            {
               index = 0;
            }
            else
            {
               index = targets.length - 1;
            }
            if(this.selectedActor != null && targets[index] == this.selectedActor && targets.length > 1)
            {
               if(foward)
               {
                  index = 1;
               }
               else
               {
                  index = targets.length - 2;
               }
            }
         }
         else
         {
            if(this.selectedActor != null)
            {
               index = targets.indexOf(this.selectedActor);
            }
            if(foward)
            {
               index++;
               if(index >= targets.length)
               {
                  index = 0;
               }
            }
            else
            {
               index--;
               if(index < 0)
               {
                  index = targets.length - 1;
               }
            }
         }
         if(targets[index] != null)
         {
            this.selectTarget(targets[index]);
         }
         _cachedTargets.length = 0;
      }
      
      private function getRingAnimFps(rid:String, rl:String) : void
      {
         var x:int = 0;
         var y:int = 0;
         if(rid != this._fpsRingId || rl != this._fpsRageLevel)
         {
            if(this._fpsRingId != null && this._fpsRageLevel)
            {
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.FPS_MONITORING_STATE_CHANGED,{"on":false}));
            }
            this._fpsRingId = rid;
            this._fpsRageLevel = rl;
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.FPS_MONITORING_STATE_CHANGED,{
               "on":true,
               "autoUpdate":false
            }));
            x = myActor.position.x;
            y = myActor.position.y;
            if(this._fpsAutoMoveNegative)
            {
               x = x - 10;
               y = y - 10;
            }
            else
            {
               x = x + 10;
               y = y + 10;
            }
            this._fpsAutoMoveNegative = !this._fpsAutoMoveNegative;
            myActor.moveTo(x,y);
         }
      }
      
      private function onPowerUsableMouseEvent(ba:BaseActor) : void
      {
         if(!ba.isLeaving)
         {
            if(ba != this._selectedActor)
            {
               this.selectTarget(ActorManager.actorIdToActor(ba.actorId));
            }
            else
            {
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ACTOR_ATTACKED,{"actor":ba}));
            }
         }
      }
      
      private function waitForNpcToLoad(event:GlobalEvent) : void
      {
         GlobalEvent.eventDispatcher.removeEventListener(GlobalEvent.HACK_EVENT_PRE_ACTOR_UPDATE,waitForNpcToLoad);
         this.monitorNPCLoading();
      }
      
      private function onMapAndNPCsReady() : void
      {
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_WARP_IN_TRANSITION_COMPLETE,onNpcReadyIrisIn);
         this._mapAndNPCReady = true;
         if(this._monsterPreloadDone)
         {
            _transitionManager.resumeWarpInTransition(this);
         }
      }
      
      private function onDialogCallBack(evt:BattleEvent) : void
      {
         var response:Object = null;
         var error:uint = 0;
         var requestObj:Object = null;
         var actor:BaseActor = null;
         trace("[ActorManager onDialogCallBack]");
         BattleMessage(evt.target).removeEventListener(BattleEvent.CALL_BACK,onDialogCallBack);
         var rObj:Object = evt.battleMessage.responseObj;
         for each(response in rObj)
         {
            if(response.hasOwnProperty("error") && response.error != null)
            {
               error = response.error;
            }
            if(error)
            {
               requestObj = evt.battleMessage.requestObjUnsafeForModifying;
               if(requestObj.npc)
               {
                  actor = ActorManager.actorIdToActor(requestObj.npc);
                  if(actor)
                  {
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
               else
               {
                  continue;
               }
            }
            else
            {
               continue;
            }
         }
      }
      
      private function onOrbsUpdate(evt:BattleEvent) : void
      {
         if(evt.battleMessage.responseObj[0].orbs != null)
         {
            myActor.totalOrbs = Orbs.fromMap(evt.battleMessage.responseObj[0].orbs);
         }
      }
      
      private function onUseCallBack(evt:BattleEvent) : void
      {
         var response:Object = null;
         var error:uint = 0;
         trace("[ActorManager onUseCallBack]");
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
      
      private function onDisableDialog(e:GlobalEvent) : void
      {
         var data:Object = e.data;
         this._disableDialog = e.data.disable;
      }
      
      private function onMovieDone(evt:GlobalEvent) : void
      {
         this._isMoviePlaying = false;
      }
      
      public function transitionOut(tType:int, actorId:String) : void
      {
         var xo:int = 0;
         var yo:int = 0;
         var o:int = 0;
         var p:Point = null;
         var frame:String = null;
         log("Transition out: ",tType,actorId);
         var ba:BaseActor = ActorManager.actorIdToActor(actorId);
         if(ba != null)
         {
            if(tType >= 1 && tType <= 4)
            {
               xo = 0;
               yo = 0;
               o = 20;
               if(actorId != myActor.actorId)
               {
                  o = 140;
                  ba.isLeaving = true;
               }
               switch(tType)
               {
                  case 1:
                     yo = -o;
                     break;
                  case 2:
                     xo = o;
                     break;
                  case 3:
                     yo = o;
                     break;
                  case 4:
                     xo = -o;
               }
               p = ba.position;
               ba.move(p,p.x + xo,p.y + yo,0);
            }
            else
            {
               ba.isLeaving = true;
               ba.stopMove();
               frame = this.getTransitionOutFrame(tType);
               if(frame != null)
               {
                  ba.playTransition(frame);
               }
            }
         }
      }
      
      private function addMapActor(actorObj:Object) : void
      {
         var mapRoom:MapRoom = null;
         var mobj:MapObject = null;
         var envObj:EnvActor = null;
         if(this._uiFramework.map != null && this._uiFramework.map.isMapLoaded())
         {
            mapRoom = this._uiFramework.map.getRoomById(actorObj.roomName);
            if(mapRoom)
            {
               mobj = mapRoom.getMapObj(actorObj.url);
               if(mobj != null)
               {
                  envObj = new EnvActor(actorObj,mobj,this._gateway,this._uiFramework);
                  this.mapActors[actorObj.id] = envObj;
                  mobj.updateState(actorObj);
               }
            }
         }
      }
      
      private function dialogStat(actorId:String) : void
      {
         var params:Object = {"npc":actorId};
         var msg:BattleMessage = new BattleMessage("dialogStatus",params);
         this._gateway.sendMsg(msg);
      }
      
      private function onInviteToFriendCompleted(evt:BattleEvent) : void
      {
         var msg:* = null;
         var resultDialog:DialogWindow = null;
         var success:Boolean = evt.battleMessage.responseObj[0].success;
         if(success)
         {
            msg = GlobalTexts.getFriendRequestAccepted(evt.battleMessage.responseObj[0].name);
         }
         else if(evt.battleMessage.responseObj[0].errorMessage)
         {
            msg = "<br><p>" + evt.battleMessage.responseObj[0].errorMessage + "</p><a href =\'event:close\'>OK</a>";
         }
         if(msg != null)
         {
            resultDialog = DialogWindowFactory.getInstance().getNewDialogWindow(this._uiFramework,this._linkManager,DialogWindowTypes.NORMAL,200);
            resultDialog.autoSize = true;
            resultDialog.autoCenter = true;
            resultDialog.setHtmlText(msg);
         }
      }
      
      private function onActorUpdate(evt:BattleEvent) : void
      {
         this.actorUpdate(evt.battleMessage);
      }
      
      public function clearSelectedTarget() : void
      {
         if(this.selectedActor != null)
         {
            this.selectedActor.clearTarget();
            if(selectedActor != myActor)
            {
               selectedActor.displaySilhouette = false;
            }
         }
         this.selectedActor = null;
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.TARGET_ACTOR,{"actor":null}));
      }
      
      public function get myActor() : BaseActor
      {
         return _myActor;
      }
      
      private function selectTarget(target:BaseActor) : void
      {
         if(_selectedActor && _selectedActor != myActor)
         {
            _selectedActor.displaySilhouette = false;
         }
         if(this._selectedActor != null && this._selectedActor != target)
         {
            this.selectedActor.clearTarget();
         }
         this.selectedActor = target;
         if(selectedActor != null)
         {
            this.selectedActor.setTarget();
            target.displaySilhouette = true;
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.TARGET_ACTOR,this.selectedActor.actorName));
         }
      }
      
      private function onActCallBack(evt:BattleEvent) : void
      {
         var response:Object = null;
         var error:uint = 0;
         var requestObj:Object = null;
         var ringSlot:uint = 0;
         var actorId:String = null;
         var actor:BaseActor = null;
         BattleMessage(evt.target).removeEventListener(BattleEvent.CALL_BACK,onActCallBack);
         var rObj:Object = evt.battleMessage.responseObj;
         if(rObj != null && rObj.er != null && rObj.er == 1 && rObj.ercode != null)
         {
            switch(parseInt(rObj.ercode))
            {
               case 301:
                  this.removeActor(rObj.tid);
                  break;
               case 201:
                  if(ActorManager.actorIdToActor(rObj.tid) != null)
                  {
                     ActorManager.actorIdToActor(rObj.tid).playOutOfRange();
                     requestRoomActorInfo();
                  }
            }
         }
         for each(response in rObj)
         {
            if(response.hasOwnProperty("error") && response.error != null)
            {
               error = response.error;
               if(error)
               {
                  requestObj = evt.battleMessage.requestObjUnsafeForModifying;
                  if(requestObj.ringSlot != null)
                  {
                     ringSlot = requestObj.ringSlot;
                     RingItemManager.getInstance().resetTimer(ringSlot);
                     actorId = requestObj.targetID;
                     if(actorId)
                     {
                        actor = ActorManager.actorIdToActor(actorId);
                        if(actor)
                        {
                           actor.playInvalidTarget();
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function onActorMouseSelect(ba:BaseActor) : void
      {
         var e:BubbleEvent = null;
         var obj:Object = null;
         var msg:BattleMessage = null;
         var isDialogOpen:Boolean = this._dialogOpen && !this._disableDialog || this._isMoviePlaying;
         if(ba.Dialogable)
         {
            if(!isDialogOpen)
            {
               e = new BubbleEvent(BubbleEvent.BTN_CLICK,ba);
               GlobalEvent.eventDispatcher.dispatchEvent(e);
            }
         }
         else if(!this._isCharging && !ActorManager.actorIdToActor(ba.actorId).isLeaving && (ActorManager.actorIdToActor(ba.actorId).targetType == BaseActor.TARGETTYPE_SELF || ActorManager.actorIdToActor(ba.actorId).targetType == BaseActor.TARGETTYPE_FRIEND))
         {
            this.selectTarget(ActorManager.actorIdToActor(ba.actorId));
         }
         else if(ba.targetType == BaseActor.TARGETTYPE_ENEMY)
         {
            obj = new Object();
            obj.actorID = ba.actorId;
            obj.params = null;
            if(myActor.allowUsableUse)
            {
               if(this._autoMoveInRange || myActor.checkRange(ba,ba.range))
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
            else if(myActor.isKtfo)
            {
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.YOU_ARE_DAZED_CANT_DO_THAT}));
            }
         }
      }
      
      private function handlePowerMeter() : void
      {
         var msgObj:Object = null;
         var ragLv:int = 0;
         var useCMD:String = null;
         var msg:BattleMessage = null;
         if(this._isCharging)
         {
            msgObj = new Object();
            msgObj.actorID = this.selectedActor.actorId;
            ragLv = Globals.uiManager.actionBar.stopCharging();
            msgObj.useParams = {"ringRageLevel":ragLv};
            useCMD = "use";
            msg = new BattleMessage(useCMD,msgObj);
            msg.addEventListener(BattleEvent.CALL_BACK,onActCallBack);
            this._gateway.sendMsg(msg);
         }
      }
      
      private function onMapLoadZone(evt:GlobalEvent) : void
      {
         this._monsterPreloadDone = false;
      }
      
      public function removeActor(actorId:String) : void
      {
         var ba:BaseActor = null;
         if(ActorManager.actorIdToActor(actorId) != null)
         {
            ba = ActorManager.actorIdToActor(actorId);
            if(ba == this.selectedActor)
            {
               this.clearSelectedTarget();
            }
            if(myActor.myTeam[actorId] == null)
            {
               ba.removeEventListener(MouseEvent.MOUSE_DOWN,onActorMouseDown);
               ba.removeEventListener(BaseActor.ACTOR_GONE,onActorGone);
               ba.removeEventListener(BaseActor.TEAMMATE_GONE,onTeammateGone);
               ba.removeEventListener(BaseActorEvent.TARGET_UNSET,onActorTargetUnset);
               _uiFramework.map.removeActor(ba);
               ba.dispatchEvent(new Event(BaseActor.REMOVING_ACTOR_FROM_LIST));
               ba.dispose();
               delete ActorManager.actors[actorId];
            }
            else
            {
               ba.visible = false;
               ba.isLeaving = false;
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MAP_REMOVE_TEXT,{"actor":ba}));
            }
         }
      }
      
      private function clearActors() : void
      {
         var baseActor:BaseActor = null;
         var mapActorId:* = null;
         var aRoomId:String = null;
         var aInstanceId:String = null;
         var envActor:EnvActor = null;
         var mapActorRoomId:String = null;
         var mapActorInstanceId:String = null;
         var mRoomId:String = _currentRoomId;
         var mInstanceId:String = _currentInstanceId;
         for each(baseActor in ActorManager.actors)
         {
            aRoomId = baseActor.roomId;
            aInstanceId = baseActor.instanceId;
            if(baseActor.actorId != _myActor.actorId && (mRoomId != aRoomId || mInstanceId != aInstanceId) && baseActor != myActor.pickedUpActor)
            {
               this.removeActor(baseActor.actorId);
            }
         }
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MAP_CLEAR_PROJECTILES,{}));
         for(mapActorId in this.mapActors)
         {
            envActor = EnvActor(this.mapActors[mapActorId]);
            mapActorRoomId = envActor.roomName;
            mapActorInstanceId = envActor.instanceId;
            if(mapActorRoomId != mRoomId || mapActorInstanceId != mInstanceId)
            {
               this.mapActors[mapActorId].dispose();
               delete this.mapActors[mapActorId];
            }
         }
      }
      
      public function get friendsList() : Array
      {
         return this._friendsList;
      }
      
      private function get selectedActorId() : String
      {
         return this._selectedActorId;
      }
      
      private function addActor(actorObj:Object) : BaseActor
      {
         var toPickUp:BaseActor = null;
         var spawnedActor:BaseActor = null;
         if(actorObj.instanceId == null)
         {
            actorObj.instanceId = myActor.instanceId;
         }
         if(actorObj.display == "avatarMonster")
         {
            this._monsterLoadManager.addUnloadException(actorObj.url);
         }
         var actor:BaseActor = ActorManager.actorIdToActor(actorObj.id);
         if(actor == null && actorObj.id != null && actorObj.tp != null && actorObj.px != null && actorObj.py != null && actorObj.display != null)
         {
            actor = new BaseActor(this._gateway,this._uiFramework,this._fileVersionManager,this._linkManager,_mapActorPositionAdjuster,actorObj.id,actorObj.nm,actorObj.url,actorObj.display,ActorTypes.intToType(actorObj.tp),actorObj.aids,actorObj.ownerId,this._monsterLoadManager);
            ActorManager.hashActorIdToActor(actorObj.id,actor);
            actor.updateActor(actorObj,0);
            actor.redrawMcPos();
            _uiFramework.map.addActor(actor);
            actor.addEventListener(MouseEvent.MOUSE_DOWN,onActorMouseDown,false,0,true);
            actor.addEventListener(BaseActor.ACTOR_GONE,onActorGone,false,0,true);
            actor.addEventListener(BaseActor.TEAMMATE_GONE,onTeammateGone,false,0,true);
            actor.addEventListener(BaseActorEvent.TARGET_UNSET,onActorTargetUnset,false,0,true);
            actor.updateMcPosition();
            if(myActor && myActor.myTeam != null && myActor.myTeam[actorObj.id] != null)
            {
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.TEAM_UPDATED,{}));
            }
            if(actorObj.aids != null && actorObj.aids.indexOf("NPC") >= 0)
            {
               this.dialogStat(actorObj.id);
            }
            if(myActor != null)
            {
               if(actorObj.roomName != this._currentRoomId || actorObj.instanceId != _currentInstanceId)
               {
                  actor.visible = false;
               }
            }
            if(this.selectedActorId == actorObj.id)
            {
               this.selectTarget(actor);
            }
            toPickUp = BaseActor.pickUpArtists[actorObj.id];
            if(toPickUp)
            {
               toPickUp.tryToBePickedUp(actorObj.id);
            }
         }
         else if(actor != null)
         {
            actor.updateActor(actorObj,this._gateway.pingTimer.lagTime);
         }
         else if(actorObj.tp == 3 && actorObj.px != null && actorObj.py != null && actorObj.roomName != null)
         {
            log("  Spawn");
            if(this._showSpawn)
            {
               actorObj.url = "none";
               actorObj.display = "Spawner";
               spawnedActor = new BaseActor(this._gateway,this._uiFramework,this._fileVersionManager,this._linkManager,_mapActorPositionAdjuster,actorObj.id,actorObj.nm,actorObj.url,actorObj.display,actorObj.tp,actorObj.aids,actorObj.ownerId,this._monsterLoadManager);
               ActorManager.hashActorIdToActor(actorObj.id,spawnedActor);
               actor.updateActor(actorObj,0);
               _uiFramework.map.addActor(actor);
               actor.updateMcPosition();
            }
         }
         else
         {
            requestRoomActorInfo();
         }
         return actor;
      }
      
      private function onCrewListSelectionChange(evt:GlobalEvent) : void
      {
         this.selectActor(evt.data.userId);
      }
      
      private function onShowSpawnStateChanged(e:GlobalEvent) : void
      {
         this._showSpawn = e.data.show;
      }
      
      public function set useRasterize(v:Boolean) : void
      {
         this._monsterLoadManager.useRasterize = v;
      }
      
      private function onActorTargetUnset(evt:BaseActorEvent) : void
      {
         if(evt.actor == this.selectedActor)
         {
            this.selectedActor = null;
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.TARGET_ACTOR,{"actor":null}));
         }
      }
      
      private function onActorMouseUp(evt:MouseEvent) : void
      {
         if(this.selectedActor && this.selectedActor.targetType == BaseActor.TARGETTYPE_POWERUSABLE)
         {
            handlePowerMeter();
         }
         else
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ACTOR_MOUSE_UP,null));
         }
      }
      
      private function onAllowUsableUse(event:GlobalEvent) : void
      {
         myActor.allowUsableUse = event.data;
      }
      
      private function onDialogOpenStatusChanged(e:GlobalEvent) : void
      {
         var data:Object = e.data;
         this._dialogOpen = e.data.open;
      }
      
      public function get useRasterize() : Boolean
      {
         return this._monsterLoadManager.useRasterize;
      }
   }
}

class SingletonEnforcer#61
{
    
   
   function SingletonEnforcer#61()
   {
      super();
   }
}
