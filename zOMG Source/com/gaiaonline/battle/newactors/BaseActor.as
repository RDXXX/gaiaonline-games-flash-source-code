package com.gaiaonline.battle.newactors
{
   import com.gaiaonline.battle.ApplicationInterfaces.IFileVersionManager;
   import com.gaiaonline.battle.ApplicationInterfaces.ILinkManager;
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.ItemLoadManager.ConsumableManager;
   import com.gaiaonline.battle.Loot.Orbs;
   import com.gaiaonline.battle.gateway.BattleEvent;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.gateway.BattleMessage;
   import com.gaiaonline.battle.map.CollisionMap;
   import com.gaiaonline.battle.map.TintTypes;
   import com.gaiaonline.battle.monsters.MonsterLoadManager;
   import com.gaiaonline.battle.newcollectibles.CollectiblesUpdater;
   import com.gaiaonline.battle.newghibuffs.GhiBuffsUpdater;
   import com.gaiaonline.battle.newrings.Ring;
   import com.gaiaonline.battle.newrings.RingAnim;
   import com.gaiaonline.battle.ui.events.UiEvents;
   import com.gaiaonline.battle.utils.BattleUtils;
   import com.gaiaonline.battle.utils.DisplayObjectAttacher;
   import com.gaiaonline.flexModulesAPIs.FlexMenuItem;
   import com.gaiaonline.flexModulesAPIs.actorInfo.ActorTypes;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.platform.actors.ICarriable;
   import com.gaiaonline.platform.actors.ICarrier;
   import com.gaiaonline.platform.actors.ISilhouetteable;
   import com.gaiaonline.platform.actors.ISubmersible;
   import com.gaiaonline.platform.actors.ITintable;
   import com.gaiaonline.platform.map.MapFilesFactory;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import com.gaiaonline.utils.FrameTimer;
   import com.gaiaonline.utils.SpritePositionBubbler;
   import fl.transitions.Tween;
   import fl.transitions.easing.Bounce;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class BaseActor extends SpritePositionBubbler implements ITintable, ISubmersible, ICarriable, ICarrier, ISilhouetteable
   {
      
      public static const TARGETTYPE_SELF:int = 1;
      
      private static const RETICLEWORTHY:int = TARGETTYPE_FRIEND | TARGETTYPE_ENEMY | TARGETTYPE_SELF | TARGETTYPE_POWERUSABLE;
      
      public static const ACTOR_GONE:String = "ActorGone";
      
      public static const CREW_STATE_NOT_LOOKING:String = "kNotLooking";
      
      private static const DEFAULT_USER_LEVEL:uint = 8;
      
      public static var pickUpArtists:Object = new Object();
      
      public static const CREW_STATE_IN:String = "kIn";
      
      public static const CREW_STATE_LOOKING:String = "kLooking";
      
      public static const TARGETTYPE_FRIEND:int = 2;
      
      public static const PAPER_DOLL_STATS_UPDATED:String = "PaperDollStatsUpdated";
      
      public static const TEAMMATE_GONE:String = "TeammateGone";
      
      public static const TARGETTYPE_FRIENDSELF:int = 3;
      
      private static const ORIGIN:Point = new Point(0,0);
      
      public static const REMOVING_ACTOR_FROM_LIST:String = "RemovingActorFromList";
      
      public static const TARGETTYPE_NONE:int = 0;
      
      public static const TARGETTYPE_POWERUSABLE:int = 8;
      
      public static const CREW_STATE_NOT_KNOWN:String = "kNotKnown";
      
      private static const DEV_USER_LEVEL:uint = 150;
      
      public static const TARGETTYPE_ENEMY:int = 4;
      
      public static const TARGETTYPE_COMPANION:int = 16;
       
      
      public var inCrewState:String = "kLooking";
      
      private var _uiFramework:IUIFramework = null;
      
      private var _scaleSet:Boolean = false;
      
      private var statusEffect:StatusEffect;
      
      public var isKtfo:Boolean = false;
      
      private var _mapActorPositionAdjuster:MapActorPositionAdjuster = null;
      
      public var isSitting:Boolean = false;
      
      private var qmTotalDist:Number = 0;
      
      public var ghiEnergy:Number = 0;
      
      private var zoneName:String;
      
      private var _lastServerPosition:Point = null;
      
      private var qmPointIndex:Number = 0;
      
      public var targetType:int = 0;
      
      private var _roomId:String;
      
      private var lastFrame:int = -1;
      
      private var _roomIdValid:Boolean = true;
      
      private var _angleValid:Boolean = true;
      
      public var radius:Number = 0;
      
      private var _linkManager:ILinkManager = null;
      
      public var isLfg:Boolean = false;
      
      public var allowUserMove:Boolean = true;
      
      private var _ringMaxLevel:Number = 2;
      
      private var _actorId:String;
      
      private var hpBarAttacher:DisplayObjectAttacher = null;
      
      private var paperDollProps:Array;
      
      private var _cachedRingArray:Array;
      
      public var isMonsterAvatar:Boolean = false;
      
      public var angle:Number = 0;
      
      private var _teamManager:TeamManager = null;
      
      private var _lag:Number = 0;
      
      private var _pendingTargetSetState:Boolean = false;
      
      private var isQm:Boolean = false;
      
      private var endMoveAngle:int = 0;
      
      private var isWalking:Boolean = false;
      
      public var pickedUpBy:BaseActor = null;
      
      private var _scaleXTween:Tween;
      
      private var _gateway:BattleGateway = null;
      
      public var hp:Number = 100;
      
      private var actorDisplay:ActorDisplay;
      
      private var _inCrewStateValid:Boolean = true;
      
      private var _lookingForGroupValid:Boolean = true;
      
      private var _actorUpdateTimer:FrameTimer;
      
      public var position:Point;
      
      public var isLeaving:Boolean = false;
      
      private var subscribedProperties:SubscriptionBasedProperties = null;
      
      public var range:Number = 150;
      
      public var hitCount:int = -1;
      
      public var rankCategory:Number = NaN;
      
      private var _totalOrbs:Orbs;
      
      private var displayHp:Boolean = true;
      
      public var url:String;
      
      public var suppressedCL:Number = NaN;
      
      private var _buffs:Object;
      
      public var wordFilterLevel:Number = NaN;
      
      public var maxHp:Number = 100;
      
      private var waterAnimAttached:Boolean = false;
      
      private var me:Boolean = false;
      
      private var _scaleYTween:Tween;
      
      private var _ringLockUpdateInfo:Array = null;
      
      private var _currTint:Object;
      
      private var _ringManager:RingManager = null;
      
      private var _exhaustionValid:Boolean = true;
      
      private var _visibilityValid:Boolean = true;
      
      public var targetCycle:Boolean = true;
      
      private var _warpInFrame:String;
      
      private var parentActorId:String;
      
      private var displayInCrewState:Boolean = true;
      
      private var hpBar;
      
      public var ghiProgress:Number = 0;
      
      private var parentOffset:Point;
      
      private var _suppressedCLValid:Boolean = true;
      
      public var clanName:String;
      
      public var clanId:String;
      
      private var qmPoints:Array;
      
      public var actorName:String;
      
      public var isTransition:Boolean = false;
      
      private var _instanceId:String;
      
      private var _allowUsableUse:Boolean = true;
      
      private var displayHpBar:Boolean = true;
      
      private var _monsterLoadManager:MonsterLoadManager = null;
      
      private var _scalingDirty:Boolean = false;
      
      private var displayName:Boolean = true;
      
      private var paperDollInfoObj:Object = null;
      
      public var userLevel:int = -1;
      
      public var weight:Number = 0;
      
      private var _hpValid:Boolean = true;
      
      public var exhaustion:Number = 0;
      
      private var _collectiblesUpdater:CollectiblesUpdater = null;
      
      public var actor_height:Number;
      
      private var _nameValid:Boolean = false;
      
      public var Dialogable:Boolean = false;
      
      private var serverSpeed:Number = 100;
      
      public var isLinkDead:Boolean = false;
      
      private var _pendingSitState:PendingSitState;
      
      public var actorType:ActorTypes;
      
      private var mcWaterAnim:MovieClip;
      
      private var _fileVersionManager:IFileVersionManager = null;
      
      private var moveSpeed:Number = 100;
      
      public var actor_width:Number;
      
      public var aggro:Boolean = false;
      
      private var targetPos:Point;
      
      private var isClientMove:Boolean = false;
      
      private var qmTime:Number = 500;
      
      private var _displaySilhouette:Boolean = false;
      
      private var _isDisposed:Boolean = false;
      
      private var _buffsValid:Boolean = true;
      
      private var _redraw:Boolean = true;
      
      public var displayType:String;
      
      public var maxExhaustion:Number = 100;
      
      private var _instanceIdValid:Boolean = true;
      
      public var gaiaUserLevel:int = 0;
      
      public var conLevel:Number = NaN;
      
      public var ownerId:String;
      
      private var _ignoreList:Array;
      
      private var _userLevelValid:Boolean = true;
      
      private var _visible:Boolean = true;
      
      private var updateTime:int = 2000;
      
      private var _rageValid:Boolean = true;
      
      private var setEndAngle:Boolean = false;
      
      private var _frameMovement:FrameTimer;
      
      private var mcWaterAnimPlaceholder:Sprite;
      
      private var _rings:Object;
      
      public var rage:Number = 0;
      
      private var displayStamina:Boolean = true;
      
      private var isTarget:Boolean = false;
      
      private var _hpColorValid:Boolean = true;
      
      private var qmType:String;
      
      private var _frameTimer:FrameTimer;
      
      public var pickedUpActor:BaseActor;
      
      private var _cachedScale:Point;
      
      private var _targetSetValid:Boolean = true;
      
      private var _pickedUpById:String = null;
      
      public var timeTillOrbSwap:int = 0;
      
      private var qmStartTime:int = 0;
      
      private var _aids:Array;
      
      private var _baseUrl:String = null;
      
      private var _ghiBuffsUpdater:GhiBuffsUpdater = null;
      
      private var _moveAngleValid:Boolean = true;
      
      public var consumableManager:ConsumableManager;
      
      private var _ghiEnergyValid:Boolean = true;
      
      private var _warpTarget:Point;
      
      private var lastPos:Point;
      
      private var _pickedUpByValid:Boolean = true;
      
      private var _conLevelValid:Boolean = true;
      
      public function BaseActor(gateway:BattleGateway, uiFramework:IUIFramework, fileVersionManager:IFileVersionManager, linkManager:ILinkManager, mapActorPositionAdjuster:MapActorPositionAdjuster, id:String = null, name:String = null, url:String = null, display:String = "none", actorType:ActorTypes = null, aids:Array = null, ownerId:String = null, monsterLoadManager:MonsterLoadManager = null, scaleXY:Number = 1)
      {
         _rings = {};
         actorType = ActorTypes.PLAYER;
         targetPos = new Point(0,0);
         position = new Point(0,0);
         lastPos = new Point(0,0);
         mcWaterAnimPlaceholder = new Sprite();
         _buffs = new Object();
         _aids = new Array();
         _ignoreList = new Array();
         _totalOrbs = new Orbs(0,0);
         _frameTimer = new FrameTimer(onUpdateTimer);
         _actorUpdateTimer = new FrameTimer(onActorUpdateTimer);
         _frameMovement = new FrameTimer(onMovementEnterFrame);
         _cachedScale = new Point(0,0);
         _warpTarget = new Point();
         _pendingSitState = new PendingSitState();
         paperDollProps = ["spd","conLevel","mass","dodge","will","healthRegen","exhaustionRegen","acc","luck","mhp","ringLevelCap"];
         _cachedRingArray = [];
         _currTint = {
            "r":0,
            "g":0,
            "b":0
         };
         super();
         if(actorType == null)
         {
            actorType = ActorTypes.PLAYER;
         }
         _mapActorPositionAdjuster = mapActorPositionAdjuster;
         this._gateway = gateway;
         this._uiFramework = uiFramework;
         this._baseUrl = linkManager.baseURL;
         this._fileVersionManager = fileVersionManager;
         this._linkManager = linkManager;
         this._monsterLoadManager = monsterLoadManager;
         if(display == "avatarMonster")
         {
            this.isMonsterAvatar = true;
            this.displayType = "monster";
         }
         else
         {
            this.displayType = display;
         }
         this.actorType = actorType;
         this.statusEffect = new StatusEffect(this);
         this._actorId = id;
         me = ActorManager.getInstance().isMyActor(actorId);
         this.url = url;
         if(name == null || name.length <= 0)
         {
            this.actorName = this._actorId;
         }
         else
         {
            this.actorName = name;
         }
         this.ownerId = ownerId;
         this.updateAids(aids);
         init();
      }
      
      public static function get RING_LOADED() : String
      {
         return RingManager.RING_LOADED;
      }
      
      public function get selectedRingSlot() : int
      {
         return ringManager.selectedRingSlot;
      }
      
      public function set selectedRingSlot(slot:int) : void
      {
         ringManager.selectedRingSlot = slot;
      }
      
      public function get allowUsableUse() : Boolean
      {
         return this._allowUsableUse && !isKtfo;
      }
      
      public function isOnMyTeam(id:String) : Boolean
      {
         return teamManager.isOnMyTeam(id);
      }
      
      public function setUserLevel(level:int, force:Boolean = false) : void
      {
         var bGuestRegistered:Boolean = false;
         if(this.userLevel != level || force)
         {
            if(ActorManager.getInstance().myActor != null && me)
            {
               bGuestRegistered = this.userLevel < DEFAULT_USER_LEVEL && level >= DEFAULT_USER_LEVEL;
               this.userLevel = level;
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.USER_LEVEL_SET,{
                  "_actorId":this._actorId,
                  "isGuest":this.isGuestUser(),
                  "isDev":this.isDev(),
                  "guestRegistered":bGuestRegistered
               }));
               if(ExternalInterface.available)
               {
                  try
                  {
                     ExternalInterface.call("setIsGuest",isGuestUser());
                  }
                  catch(error:Error)
                  {
                     trace("Err: ",error.message);
                  }
               }
            }
            else
            {
               this.userLevel = level;
            }
         }
      }
      
      private function commitPoseChange(sitting:Boolean) : void
      {
         this.isSitting = sitting;
         if(me)
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.POSE_CHANGE,{"sit":isSitting}));
         }
      }
      
      public function get exhaustionRegen() : int
      {
         return this.subscribedProperties != null?int(subscribedProperties.exhaustionRegen):0;
      }
      
      public function get rings() : Object
      {
         return this._rings;
      }
      
      protected function onTotalOrbChange(event:Event) : void
      {
         if(ActorManager.getInstance().isMyActor(_actorId))
         {
            this.dispatchEvent(new BaseActorEvent(BaseActorEvent.TOTAL_ORBS_UPDATED,this));
         }
      }
      
      public function set allowUsableUse(value:Boolean) : void
      {
         _allowUsableUse = value;
      }
      
      private function dropActor() : void
      {
         if(this.pickedUpActor)
         {
            if(this.pickedUpActor.roomId != this._roomId)
            {
               ActorManager.getInstance().removeActor(this.pickedUpActor.actorId);
            }
            this.pickedUpActor.pickedUpBy = null;
            this.pickedUpActor = null;
         }
      }
      
      public function get curableStatusCount() : int
      {
         var buff:Object = null;
         var count:int = 0;
         for each(buff in this._buffs)
         {
            if(buff.curable)
            {
               count++;
            }
         }
         return count;
      }
      
      public function get willPower() : int
      {
         return this.subscribedProperties != null?int(subscribedProperties.willPower):0;
      }
      
      public function playRingAnimation(ringId:String, rage:int, type:String, targetActor:Object = null, speed:Number = -1) : RingAnim
      {
         var ra:RingAnim = null;
         if(this.actorDisplay != null)
         {
            ra = this.actorDisplay.playRingAnim(ringId,rage,type,targetActor,speed);
         }
         return ra;
      }
      
      public function setAnimPriority() : void
      {
         this.actorDisplay.setAnimPriority();
      }
      
      public function onMiniMenuItemClick(evt:UiEvents) : void
      {
         this.handleMenuItemClick(evt.value as String);
      }
      
      public function updateGoldLootDisplay(gold:Number = 0) : void
      {
         this.actorDisplay.updateGoldLootDisplay(gold);
      }
      
      private function getNewWaterAnim() : MovieClip
      {
         var waterAnim:MovieClip = this._uiFramework.assetFactory.getInstance("WaterAnim") as MovieClip;
         waterAnim.alpha = 0.3;
         waterAnim.stop();
         return waterAnim;
      }
      
      public function getActorBound() : Sprite
      {
         if(null == actorDisplay)
         {
            return null;
         }
         return this.actorDisplay.mcBound;
      }
      
      public function get scalingDirty() : Boolean
      {
         return _scalingDirty;
      }
      
      public function setTarget() : void
      {
         if(!this._pendingTargetSetState)
         {
            this._pendingTargetSetState = true;
            this._targetSetValid = false;
         }
      }
      
      public function get instanceId() : String
      {
         return _instanceId;
      }
      
      public function get teamList() : Array
      {
         return teamManager.teamList;
      }
      
      private function onUpdateTimer() : void
      {
         this.updateTime = this.updateTime * 2;
         var msg:BattleMessage = new BattleMessage("getRoomActorInfo",{"actorID":this._actorId});
         msg.addEventListener(BattleEvent.CALL_BACK,onActorInfo);
         this._gateway.sendMsg(msg);
      }
      
      public function onMoveRing(evt:BattleEvent) : void
      {
         ringManager.onMoveRing(evt);
      }
      
      public function teamCount() : int
      {
         return teamManager.teamCount();
      }
      
      public function get actorFootX() : Number
      {
         return actorDisplay.actorFootX;
      }
      
      private function validateTargetSetState() : void
      {
         if(this._pendingTargetSetState)
         {
            if(this.targetType == TARGETTYPE_SELF || this.targetType == TARGETTYPE_FRIEND || this.targetType == TARGETTYPE_POWERUSABLE)
            {
               this.isTarget = true;
               if(this.actorDisplay != null)
               {
                  this.actorDisplay.clearReticle();
                  this.actorDisplay.setReticle(this.targetType,this.isTarget);
               }
               if(this.hpBar != null)
               {
                  this.hpBar.alpha = 1;
                  this.setHPBarVisible(this.displayHpBar);
               }
               this.dispatchEvent(new BaseActorEvent(BaseActorEvent.TARGET_SET,this));
            }
         }
         else
         {
            this.isTarget = false;
            if(this.actorDisplay)
            {
               this.actorDisplay.setReticle(this.targetType,this.isTarget);
               this.actorDisplay.clearReticle();
               this.setHPBarVisible(false);
            }
            this.dispatchEvent(new BaseActorEvent(BaseActorEvent.TARGET_UNSET,this));
         }
      }
      
      public function playReflects() : void
      {
         this.actorDisplay.playReflects();
      }
      
      public function playDeflects() : void
      {
         this.actorDisplay.playDeflects();
      }
      
      public function get actorFootY() : Number
      {
         return actorDisplay.actorFootY;
      }
      
      public function lockSlotCount() : int
      {
         return ringManager.lockSlotCount();
      }
      
      public function playOutOfRange() : void
      {
         this.actorDisplay.playOutOfRange();
      }
      
      public function pickUpActor(actor:BaseActor) : void
      {
         delete BaseActor.pickUpArtists[this.actorId];
         if(actor == this)
         {
            return;
         }
         if(this.pickedUpActor)
         {
            this.dropActor();
         }
         if(actor != null && !actor.isDisposed)
         {
            this.pickedUpActor = actor;
            this.pickedUpActor.pickedUpBy = this;
            this.pickedUpActor.actorDisplay.playAnim("idle");
            this.setAngle(this.angle);
            this.pickedUpActor.setAngle(this.angle);
            this.redrawMcPos();
         }
      }
      
      public function sit(tellServer:Boolean) : void
      {
         var p:Point = null;
         if(!this.isSitting)
         {
            if(tellServer)
            {
               p = this.position;
               this.move(p,this.position.x,this.position.y);
            }
            this.isWalking = false;
            this.actorDisplay.playAnim("sit");
            commitPoseChange(true);
         }
      }
      
      public function getPickedUpBy() : ICarrier
      {
         return pickedUpBy;
      }
      
      override public function set visible(value:Boolean) : void
      {
         if(value != this._visible)
         {
            this._visible = value;
            this._visibilityValid = !this._visibilityValid;
         }
      }
      
      private function get expireSubscribedProperties() : Boolean
      {
         return !ActorManager.getInstance().isMyActor(actorId);
      }
      
      public function updateRings() : void
      {
         ringManager.updateRings();
      }
      
      public function get distanceFromPlayer() : Number
      {
         var dist:Number = 0;
         if(ActorManager.getInstance().myActor != null)
         {
            dist = this.position.subtract(ActorManager.getInstance().myActor.position).length;
         }
         return dist;
      }
      
      private function init() : void
      {
         var vUrl:String = null;
         this._isDisposed = false;
         this.mcWaterAnim = getNewWaterAnim();
         this.mcWaterAnim.stop();
         this.addChild(this.mcWaterAnimPlaceholder);
         if(this.url == null || this.url == "undefined")
         {
            this._frameTimer.start(this.updateTime,1);
         }
         switch(this.displayType)
         {
            case "avatar":
               if(this.url != null)
               {
                  this.url = this.url.replace(/(_flip|_strip)?.png/,"_strip.png");
               }
               this.actorDisplay = new AvatarDisplay(this._uiFramework.assetFactory,this._baseUrl,this._actorId);
               if(this.actorDisplay.getActorBtn() != null)
               {
                  this.hitArea = this.actorDisplay.getActorBtn();
               }
               break;
            case "monster":
               if(this.url != null)
               {
                  vUrl = "v?=" + this._fileVersionManager.getClientVersion("monsters/" + this.url + ".swf");
                  this.url = this._baseUrl + "monsters/" + this.url + ".swf?" + vUrl;
               }
               this.actorDisplay = new MonsterDisplay(this._uiFramework.assetFactory,this._baseUrl,this._actorId,this._monsterLoadManager);
               break;
            case "Spawner":
               this.url = "none";
               this.actorDisplay = new SpawnDisplay(this._uiFramework.assetFactory);
         }
         this.actorDisplay.addEventListener(ActorDisplay.LOADED,onActorDisplayLoaded,false,0,true);
         this.actorDisplay.loadActor(this._gateway,this._uiFramework,this.url);
         this.addChild(this.actorDisplay);
         this.actor_width = this.actorDisplay.width;
         this.actor_height = this.actorDisplay.height;
         this.hpBar = this._uiFramework.assetFactory.getInstance("HpBar");
         this.hpBar.init(this._actorId);
         this.hpBar.y = 10;
         this.hpBar.setName(this.actorName);
         this.hpBar.setMaxHp(this.maxHp);
         this.hpBar.setMaxExhaustion(this.maxExhaustion);
         this.hpBar.setHp(this.hp);
         this.hpBar.setExhaustion(this.exhaustion);
         this.setHPBarVisible(false);
         this.hpBar.setDisplay(this.displayName,this.displayStamina,this.displayHp,this.displayInCrewState);
         this._frameMovement.startPerFrame();
         this._actorUpdateTimer.startPerFrame();
         this.actorDisplay.addEventListener(MouseEvent.MOUSE_OVER,onMouseOver,false,0,true);
         this.actorDisplay.addEventListener(MouseEvent.MOUSE_OUT,onMouseOut,false,0,true);
         this.actorDisplay.addEventListener(ActorDisplay.TRANS_DONE,onTransitionDone,false,0,true);
         if(me)
         {
            GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.TIME_TILL_ORB_SWAP,onTimeTillOrbSwap,false,0,true);
         }
      }
      
      public function get accuracy() : int
      {
         return this.subscribedProperties != null?int(subscribedProperties.accuracy):0;
      }
      
      public function checkRange(targetActor:Object, range:Number) : Boolean
      {
         var dx:Number = position.x - targetActor.position.x;
         var dy:Number = position.y - targetActor.position.y;
         var d1:Number = Math.sqrt(dx * dx + dy * dy);
         var dist:Number = d1 - radius - targetActor.radius;
         return dist <= range;
      }
      
      public function set scalingDirty(v:Boolean) : void
      {
         this._scalingDirty = v;
      }
      
      public function redrawMcPos() : void
      {
         var scale:Number = NaN;
         var tx:Number = NaN;
         var ty:Number = NaN;
         var oldScaleX:Number = NaN;
         var oldScaleY:Number = NaN;
         if(this._isDisposed)
         {
            return;
         }
         if(!this.pickedUpBy)
         {
            scale = _mapActorPositionAdjuster.getScale();
            tx = _mapActorPositionAdjuster.adjustX(this.position.x);
            ty = _mapActorPositionAdjuster.adjustY(this.position.y);
            if(this._uiFramework && this._uiFramework.map)
            {
               if(!this.isClientMove || this._uiFramework.map.getColliionTypeAt(tx,ty) != CollisionMap.TYPE_WALL)
               {
                  if(this.x != tx || this.y != ty)
                  {
                     this.x = tx;
                     this.y = ty;
                  }
               }
               else
               {
                  this.position.x = this.lastPos.x;
                  this.position.y = this.lastPos.y;
                  this.stopMove();
               }
            }
            if(this.pickedUpActor)
            {
               this.pickedUpActor.x = this.x;
               this.pickedUpActor.y = this.y - 20;
               if(this.pickedUpActor.actorDisplay)
               {
                  this.pickedUpActor.actorDisplay.scaleX = this._cachedScale.x;
                  this.pickedUpActor.actorDisplay.scaleY = this._cachedScale.y;
               }
            }
            if(!this._angleValid)
            {
               if(this.actorDisplay != null)
               {
                  this.actorDisplay.setDirection(angle);
               }
               if(this.pickedUpActor != null)
               {
                  if(pickedUpActor.actorDisplay)
                  {
                     this.pickedUpActor.actorDisplay.setDirection(angle);
                  }
               }
               this._angleValid = true;
            }
            oldScaleX = !!this.actorDisplay?Number(this.actorDisplay.scaleX):Number(NaN);
            oldScaleY = !!this.actorDisplay?Number(this.actorDisplay.scaleY):Number(NaN);
            if(!isNaN(oldScaleY) && oldScaleY != scale)
            {
               _scalingDirty = true;
               this._cachedScale.y = scale;
            }
            if(!isNaN(oldScaleX) && this.actorDisplay && oldScaleX != scale * this.actorDisplay.hScale)
            {
               _scalingDirty = true;
               this._cachedScale.x = scale * this.actorDisplay.hScale;
            }
         }
         if(!isNaN(this._cachedScale.x) && !isNaN(this._cachedScale.y))
         {
            if(scalingDirty && this.actorDisplay)
            {
               this.actorDisplay.scaleX = this._cachedScale.x;
               this.actorDisplay.scaleY = this._cachedScale.y;
            }
            dispatchEvent(new ActorMoveEvent(ActorMoveEvent.MOVE,this,scalingDirty,this._cachedScale.x,this._cachedScale.y));
         }
      }
      
      private function onActorInfo(evt:BattleEvent) : void
      {
         var obj:Object = evt.battleMessage.responseObj[0];
         this.updateActor(obj);
         if(obj.url == null || obj.url == undefined || obj.url == "undefined")
         {
            trace("Still no url for actor: " + this._actorId + "," + obj.url,8);
            this._frameTimer.start(this.updateTime,1);
         }
         BattleMessage(evt.target).removeEventListener(BattleEvent.CALL_BACK,onActorInfo);
      }
      
      public function get maxRingCL() : Number
      {
         return ringManager.maxRingCL;
      }
      
      private function checkRedraw() : void
      {
         if(this._redraw)
         {
            this.redrawMcPos();
            this._redraw = false;
         }
      }
      
      public function setDirection(targetPos:Point) : void
      {
         var dx:Number = targetPos.x - this.position.x;
         var dy:Number = targetPos.y - this.position.y;
         var dist:Number = Math.sqrt(dx * dx + dy * dy);
         var angle:Number = Math.atan2(dy,dx);
         this.setAngle(angle * 180 / Math.PI);
         this.updateMcPosition();
      }
      
      public function get collectiblesUpdater() : CollectiblesUpdater
      {
         if(!_collectiblesUpdater)
         {
            _collectiblesUpdater = new CollectiblesUpdater(_gateway,_uiFramework,_linkManager);
         }
         return _collectiblesUpdater;
      }
      
      public function get scale() : Point
      {
         return _cachedScale;
      }
      
      public function setCrewState(crewState:String) : void
      {
         if(this.inCrewState != crewState)
         {
            this.inCrewState = crewState;
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.IN_CREW_STATE_UPDATE,{
               "actor":this,
               "_actorId":this._actorId,
               "inCrewState":this.inCrewState
            }));
         }
      }
      
      private function setHPBarVisible(visible:Boolean) : void
      {
         if(this.actorType == ActorTypes.NPC)
         {
            if(visible)
            {
               this.hpBar.alpha = 1;
            }
            else
            {
               this.hpBar.alpha = 0.4;
            }
            visible = true;
         }
         if(this.hpBarAttacher == null)
         {
            this.hpBarAttacher = new DisplayObjectAttacher(this.hpBar,this);
         }
         this.hpBarAttacher.attached = visible;
      }
      
      private function detachWaterAnim() : void
      {
         if(waterAnimAttached && this.mcWaterAnim)
         {
            this.removeChild(this.mcWaterAnim);
            this.mcWaterAnim.stop();
            this.waterAnimAttached = false;
         }
      }
      
      public function get isDisposed() : Boolean
      {
         return this._isDisposed;
      }
      
      public function getRingAt(slot:int) : Ring
      {
         return ringManager.getRingAt(slot);
      }
      
      public function get displaySilhouette() : Boolean
      {
         return _displaySilhouette;
      }
      
      public function updateMaxCL() : void
      {
         ringManager.updateMaxCL();
      }
      
      private function setAngle(angle:Number) : void
      {
         if(angle < 0)
         {
            angle = 360 + angle;
         }
         else if(angle > 360)
         {
            angle = angle - Math.floor(angle / 360) * 360;
         }
         if(this.angle != angle)
         {
            this.angle = angle;
            this._angleValid = false;
            redrawMcPos();
         }
      }
      
      private function onRingLoaded(event:Event) : void
      {
         dispatchEvent(new Event(event.type));
      }
      
      public function playEffectAnim(effectId:String, type:String = "effect", playEffectStartAnim:Boolean = true) : RingAnim
      {
         if(this.actorDisplay != null)
         {
            return this.actorDisplay.playEffectAnim(effectId,type,playEffectStartAnim);
         }
         return null;
      }
      
      public function get ignoreList() : Array
      {
         return _ignoreList;
      }
      
      public function moveRing(fromSlot:int, toSlot:int) : void
      {
         ringManager.moveRing(fromSlot,toSlot);
      }
      
      public function set ringMaxLevel(num:Number) : void
      {
         _ringMaxLevel = num;
      }
      
      public function set totalOrbs(v:Orbs) : void
      {
         if(!this._totalOrbs.equals(v))
         {
            this.totalOrbs.removeEventListener(Event.CHANGE,onTotalOrbChange);
            this._totalOrbs = v;
            onTotalOrbChange(null);
            this.totalOrbs.addEventListener(Event.CHANGE,onTotalOrbChange,false,0,true);
         }
      }
      
      public function getActorBtn() : Sprite
      {
         return this.actorDisplay.getActorBtn();
      }
      
      public function getCopyOfSpriteToBeSilhouetted() : Sprite
      {
         var sprite:Sprite = getActorDisplay().getNewActor(false);
         sprite.mouseChildren = false;
         sprite.mouseEnabled = false;
         return sprite;
      }
      
      public function setActorFilters(filtersName:Array) : void
      {
         this.actorDisplay.setActorFilters(filtersName);
      }
      
      public function lockSlot(slot:int) : void
      {
         ringManager.lockSlot(slot);
      }
      
      public function shouldBeInFront() : Boolean
      {
         if(angle >= 180 && angle < 360)
         {
            return false;
         }
         return true;
      }
      
      public function get actorId() : String
      {
         return _actorId;
      }
      
      public function get ghiBuffsUpdater() : GhiBuffsUpdater
      {
         if(!_ghiBuffsUpdater)
         {
            _ghiBuffsUpdater = new GhiBuffsUpdater(_gateway,_uiFramework,_linkManager);
         }
         return _ghiBuffsUpdater;
      }
      
      public function updateDeltas(obj:Object) : Boolean
      {
         var type:int = 0;
         var subscribedDeltaUpdated:Boolean = false;
         subscribedDeltaUpdated = updateSubscribedDeltas(obj);
         switch(obj.stat)
         {
            case "hp":
               this.hp = this.hp + int(obj.value);
               this.hp = Math.max(0,this.hp);
               this._hpValid = false;
               if(obj.modifier != "RGN" && obj.modifier != "donotshow" && (obj.cause == ActorManager.getInstance().myActor.actorId || me))
               {
                  type = 1;
                  if(obj.value > 0)
                  {
                     type = 5;
                  }
                  else if(me)
                  {
                     if(obj.modifier != null && obj.modifier == "criticalhit")
                     {
                        type = 3;
                     }
                     else
                     {
                        type = 1;
                     }
                  }
                  else if(obj.modifier != null && obj.modifier == "criticalhit")
                  {
                     type = 4;
                  }
                  else
                  {
                     type = 2;
                  }
                  this.playHitNum(Math.abs(obj.value),type);
               }
               break;
            case "rag":
               this.rage = this.rage + int(obj.value);
               this._rageValid = false;
               break;
            case "spd":
               this.serverSpeed = this.serverSpeed + int(obj.value);
               break;
            case "mass":
               this.weight = this.weight + int(obj.value);
               break;
            case "mhp":
               this.maxHp = this.maxHp + int(obj.value);
               this._hpValid = false;
               break;
            case "exhaustion":
               this.exhaustion = this.exhaustion + int(obj.value);
               this._exhaustionValid = false;
               break;
            case "ghiEnergy":
               this.ghiEnergy = this.ghiEnergy + int(obj.value);
               this._ghiEnergyValid = false;
               break;
            case "ghiProgress":
               this.ghiProgress = this.ghiProgress + int(obj.value);
               break;
            case "animation":
               this.playEffectAnim(obj.modifier,"caster");
               break;
            default:
               trace("Other Effect : ",obj.stat,obj.value);
         }
         return subscribedDeltaUpdated;
      }
      
      private function isInCrew() : Boolean
      {
         return this.inCrewState == CREW_STATE_IN;
      }
      
      public function updateStatus(newStatusLabels:Object) : void
      {
         var obj:Object = null;
         var ld:Boolean = false;
         var eventPayload:Object = null;
         var statusLen:uint = newStatusLabels.length;
         for(var s:uint = 0; s < statusLen; s++)
         {
            obj = newStatusLabels[s];
            switch(obj.name)
            {
               case "ktfo":
                  if(obj.active == 1)
                  {
                     this.statusEffect.playStatus("dazed");
                     this.isKtfo = true;
                  }
                  else
                  {
                     this.statusEffect.stopStatus("dazed");
                     this.isKtfo = false;
                  }
                  this.dispatchEvent(new BaseActorEvent(BaseActorEvent.KTFO_STATUS_CHANGED,this));
                  if(ActorManager.getInstance().myActor && me)
                  {
                     GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.PLAYER_STATUS_CHANGED,{
                        "status":"ktfo",
                        "play":this.isKtfo,
                        "curableCount":this.curableStatusCount
                     }));
                  }
                  break;
               case "in_combat":
                  break;
               case "link_dead":
                  ld = false;
                  if(obj.active != 0)
                  {
                     ld = true;
                  }
                  this.isLinkDead = ld;
                  if(this.isLinkDead)
                  {
                     this.actorDisplay.playAnim("LinkDead");
                  }
                  else
                  {
                     this.actorDisplay.playAnim("notKo");
                  }
                  break;
               default:
                  if(obj.name != null)
                  {
                     if(obj.active && (this.buffs[obj.name] == null || this.buffs[obj.name].rageRank != obj.rageRank))
                     {
                        this._buffsValid = false;
                        this._buffs[obj.name] = {
                           "name":obj.name,
                           "url":obj.url,
                           "curable":obj.curable || false,
                           "ghi":obj.ghi || false,
                           "rageRank":obj.rageRank
                        };
                        if(ActorManager.getInstance().isMyActor(this._actorId))
                        {
                           eventPayload = {
                              "status":this._uiFramework.getBaseItemId(obj.rid),
                              "play":true,
                              "curableCount":this.curableStatusCount
                           };
                        }
                     }
                     else if(!obj.active)
                     {
                        this._buffsValid = false;
                        delete this.buffs[obj.name];
                        if(ActorManager.getInstance().isMyActor(this._actorId))
                        {
                           eventPayload = {
                              "status":this._uiFramework.getBaseItemId(obj.rid),
                              "play":false,
                              "curableCount":this.curableStatusCount
                           };
                        }
                     }
                     if(eventPayload)
                     {
                        GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.PLAYER_STATUS_CHANGED,eventPayload));
                     }
                  }
            }
         }
         if(this._buffs == null)
         {
            this._buffsValid = false;
            this._buffs = new Object();
         }
      }
      
      public function get myTeam() : Object
      {
         return teamManager.myTeam;
      }
      
      public function dispose() : void
      {
         this.actorDisplay.dispose();
         this._frameMovement.stop();
         DisplayObjectUtils.ClearAllChildrens(this.actorDisplay);
         if(this.contains(this.actorDisplay))
         {
            this.removeChild(this.actorDisplay);
         }
         this.actorDisplay = null;
         this.setHPBarVisible(false);
         DisplayObjectUtils.ClearAllChildrens(this.hpBar);
         if(this.contains(this.hpBar))
         {
            this.removeChild(this.hpBar);
         }
         this.hpBar = null;
         this.detachWaterAnim();
         this.mcWaterAnim = null;
         this.hpBarAttacher = null;
         this._uiFramework = null;
         this._isDisposed = true;
      }
      
      public function set totalCharge(v:int) : void
      {
         setPaperDollSubscription(true);
         subscribedProperties.totalCharge = v;
         if(ActorManager.getInstance().isMyActor(_actorId))
         {
            this.dispatchEvent(new BaseActorEvent(BaseActorEvent.TOTAL_CHARGE_UPDATED,this));
         }
      }
      
      public function isTeammate() : Boolean
      {
         return ActorManager.getInstance().myActor.myTeam != null && ActorManager.getInstance().myActor.myTeam[this._actorId] != null;
      }
      
      public function setWaterDepth(depth:Number) : void
      {
         this.setZPos(depth * 120);
         if(pickedUpActor != null)
         {
            this.pickedUpActor.setZPos(depth * 120);
         }
      }
      
      private function onTransitionDone(evt:Event) : void
      {
         var tempWarpInFrame:String = null;
         this.isTransition = false;
         if(this.isLeaving)
         {
            this.dispatchEvent(new Event(ACTOR_GONE));
         }
         else if(this._warpInFrame != null && !isNaN(this._warpTarget.x))
         {
            this.setPosition(this._warpTarget.x,this._warpTarget.y);
            tempWarpInFrame = this._warpInFrame;
            this._warpTarget.x = NaN;
            this._warpTarget.y = NaN;
            this._warpInFrame = null;
            this.playTransition(tempWarpInFrame);
         }
      }
      
      public function onMonsterDeath(evt:Event) : void
      {
         displaySilhouette = false;
         this.actorDisplay.removeEventListener("MonsterDeath",onMonsterDeath);
         this.dispatchEvent(new Event(ACTOR_GONE));
      }
      
      public function moveTo(serverX:Number, serverY:Number, ignore:Boolean = false) : void
      {
         var p:Point = null;
         var msg:BattleMessage = null;
         if(allowUserMove && !isTransition)
         {
            p = position;
            if(!ignore)
            {
               move(p,serverX,serverY,0,true);
            }
            msg = new BattleMessage("move",{
               "action":"moveTo",
               "x":Math.round(serverX),
               "y":Math.round(serverY),
               "roomName":roomId
            });
            this._gateway.sendMsg(msg);
         }
      }
      
      public function clearTarget() : void
      {
         if(this._pendingTargetSetState)
         {
            this._pendingTargetSetState = false;
            this._targetSetValid = false;
         }
      }
      
      public function playMiss() : void
      {
         this.actorDisplay.playMiss();
      }
      
      public function handleMenuItemClick(value:String, data:Object = null) : void
      {
         var msg:BattleMessage = null;
         var param:Array = null;
         var myIgnoreList:Array = null;
         var obj:Object = null;
         var i:int = 0;
         var obj2:Object = null;
         var i2:int = 0;
         if(ActorManager.getInstance().myActor.isGuestUser())
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.INVALID_GUEST_OPERATION,{}));
            return;
         }
         myIgnoreList = ActorManager.getInstance().myActor.ignoreList;
         switch(value)
         {
            case FlexMenuItem.CHARACTER_INFO:
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.PLAYER_STATS_REQUESTED,{"actor":this}));
               break;
            case FlexMenuItem.INVITE:
               ActorManager.getInstance().myActor.inviteUser(this._actorId,this.actorName);
               break;
            case FlexMenuItem.LEAVE:
               msg = new BattleMessage("157",null);
               this._gateway.sendMsg(msg);
               break;
            case FlexMenuItem.KICK:
               param = new Array();
               param.push(this._actorId);
               msg = new BattleMessage("156",param);
               this._gateway.sendMsg(msg);
               break;
            case FlexMenuItem.PROMOTE:
               param = new Array();
               param.push(this._actorId);
               msg = new BattleMessage("155",param);
               this._gateway.sendMsg(msg);
               break;
            case FlexMenuItem.ADD_IGNORE:
               obj = new Object();
               obj.id = this._actorId;
               obj.boolean = "true";
               msg = new BattleMessage("ignoreChatter",obj);
               this._gateway.sendMsg(msg);
               i = myIgnoreList.indexOf(this._actorId);
               if(i < 0)
               {
                  myIgnoreList.push(this._actorId);
               }
               break;
            case FlexMenuItem.REMOVE_IGNORE:
               obj2 = new Object();
               obj2.id = this._actorId;
               obj2.boolean = "false";
               msg = new BattleMessage("ignoreChatter",obj2);
               this._gateway.sendMsg(msg);
               i2 = myIgnoreList.indexOf(this._actorId);
               if(i2 >= 0)
               {
                  myIgnoreList.splice(i2,1);
               }
               break;
            case FlexMenuItem.ADD_FRIEND:
               msg = new BattleMessage("inviteFriend",{"id":this._actorId});
               this._gateway.sendMsg(msg);
               break;
            case FlexMenuItem.VIEW_PROFILE:
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.PROFILE_REQUESTED,{"_actorId":_actorId}));
               break;
            case FlexMenuItem.WHISPER:
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.WHISPER_AUTOFILL,{"actorName":this.actorName}));
               break;
            case FlexMenuItem.REPORT_ABUSE:
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ABUSE_REPORT_START,{"actor":this}));
               break;
            case FlexMenuItem.RECREWT:
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.OPEN_RECREWT,{}));
         }
      }
      
      public function getTintType() : TintTypes
      {
         return TintTypes.ALL;
      }
      
      public function playWarpAnimations(outFrame:String, inFrame:String, x:Number, y:Number) : void
      {
         this._warpInFrame = inFrame;
         this._warpTarget.x = x;
         this._warpTarget.y = y;
         this.stopMove();
         this.playTransition(outFrame);
      }
      
      public function death() : void
      {
         if(this.actorType == ActorTypes.MONSTER && !this.isLeaving && this.actorDisplay != null)
         {
            this.actorDisplay.addEventListener("MonsterDeath",onMonsterDeath,false,0,true);
            this.isQm = false;
            this.move(position,position.x,position.y,0);
            this.actorDisplay.playAnim("die");
            this.clearTarget();
            this.isLeaving = true;
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MOUSE_OVER_STATE_CHANGED,{"actorTarget":0}));
         }
      }
      
      public function setTint(r:int, g:int, b:int) : void
      {
         if(this.actorDisplay != null)
         {
            if(this.actorDisplay.isGlow)
            {
               r = 256;
               g = 256;
               b = 256;
            }
            if(r != this._currTint.r || g != this._currTint.g || b != this._currTint.b)
            {
               this.actorDisplay.setTint(r,g,b);
            }
            this._currTint.r = r;
            this._currTint.g = g;
            this._currTint.b = b;
            if(pickedUpActor)
            {
               this.pickedUpActor.setTint(r,g,b);
            }
         }
      }
      
      public function getDisplaySprite() : Sprite
      {
         return this.actorDisplay;
      }
      
      public function inviteUser(actorId:String, userName:String, callback:Function = null) : void
      {
         teamManager.inviteUser(actorId,userName,callback);
      }
      
      public function get buffs() : Object
      {
         return this._buffs;
      }
      
      public function setPaperDollSubscription(subscribe:Boolean) : void
      {
         if(subscribe)
         {
            if(expireSubscribedProperties || !this.subscribedProperties)
            {
               this.subscribedProperties = new SubscriptionBasedProperties();
            }
         }
         else if(expireSubscribedProperties)
         {
            this.subscribedProperties = null;
         }
      }
      
      public function isDev() : Boolean
      {
         return this.userLevel >= DEV_USER_LEVEL;
      }
      
      public function updateMcPosition() : void
      {
         this._redraw = true;
      }
      
      public function mcHitTestPoint(x:int, y:int) : Boolean
      {
         return this.actorDisplay.mcTestHitPoint(x,y);
      }
      
      private function setInstanceId(id:String) : void
      {
         if(_instanceId != id)
         {
            _instanceId = id;
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.INSTANCE_CHANGED_FOR_ACTOR,{
               "instanceId":this._instanceId,
               "roomId":this._roomId,
               "actor":this
            }));
         }
      }
      
      public function get isTeamLeader() : Boolean
      {
         return teamManager.isTeamLeader;
      }
      
      public function playAttack(atk:int, targetActor:Object = null, speed:Number = -1) : void
      {
         var param:Object = new Object();
         param.target = targetActor;
         param.speed = speed;
         this.actorDisplay.playAnim("atk" + String(atk),param);
      }
      
      public function playSpawnAnimation() : void
      {
         this.actorDisplay.playAnim("spawn");
      }
      
      private function get teamManager() : TeamManager
      {
         if(!_teamManager)
         {
            _teamManager = new TeamManager(_gateway);
         }
         return _teamManager;
      }
      
      public function updateActor(obj:Object, lag:int = 0) : void
      {
         var prop:* = null;
         var deltas:Object = null;
         var propValue:String = null;
         var vUrl:String = null;
         var nSCL:Number = NaN;
         var newConLevel:Number = NaN;
         var newMaxHp:Number = NaN;
         var newHp:Number = NaN;
         var d:int = 0;
         var animationId:* = null;
         var filtersName:Array = null;
         var myActor:BaseActor = null;
         var newExhaustion:Number = NaN;
         var newMaxStamina:Number = NaN;
         var newGhiEnergy:Number = NaN;
         var newRage:Number = NaN;
         var newEndMoveAngle:int = 0;
         var newLookingForGroup:Boolean = false;
         this._lag = lag;
         if(obj.clanName != null)
         {
            this.clanName = obj.clanName;
         }
         if(obj.clanID != null)
         {
            this.clanId = obj.clanID;
         }
         if(obj.scale && obj.scale != this.scaleX)
         {
            if(!_scaleSet)
            {
               this.scaleX = this.scaleY = Number(obj.scale) || Number(1);
            }
            else
            {
               _scaleXTween = new Tween(this,"scaleX",Bounce.easeOut,this.scaleX,Number(obj.scale) || Number(1),1,true);
               _scaleYTween = new Tween(this,"scaleY",Bounce.easeOut,this.scaleY,Number(obj.scale) || Number(1),1,true);
            }
         }
         _scaleSet = true;
         var updatePaperDoll:Boolean = false;
         for(prop in obj)
         {
            if(paperDollProps.indexOf(prop) != -1)
            {
               updatePaperDoll = true;
               break;
            }
         }
         deltas = obj.deltas;
         if(!updatePaperDoll && deltas != null)
         {
            for(prop in deltas)
            {
               propValue = deltas[prop].stat;
               if(paperDollProps.indexOf(propValue) != -1)
               {
                  updatePaperDoll = true;
                  break;
               }
            }
         }
         var newInCrewState:String = obj.inCrewState;
         if(newInCrewState != null)
         {
            if(this.inCrewState != newInCrewState)
            {
               this.inCrewState = newInCrewState;
               this._inCrewStateValid = false;
            }
         }
         if(obj.url != null && this.url == null)
         {
            this._frameTimer.stop();
            if(this.displayType == "avatar")
            {
               this.url = obj.url.replace(/(_flip|_strip)?.png/,"_strip.png");
               this.actorDisplay.loadActor(this._gateway,this._uiFramework,this.url);
            }
            else if(this.displayType == "monster")
            {
               vUrl = "v?=" + this._fileVersionManager.getClientVersion("monsters/" + obj.url + ".swf");
               this.url = this._baseUrl + "monsters/" + this.url + ".swf?" + vUrl;
               this.actorDisplay.loadActor(this._gateway,this._uiFramework,this.url);
            }
         }
         if(obj.suppressedCL)
         {
            nSCL = Math.round(obj.suppressedCL * 10) / 10;
            if(nSCL != this.suppressedCL)
            {
               this.suppressedCL = nSCL;
               this._suppressedCLValid = false;
            }
         }
         if(obj.conLevel != null)
         {
            newConLevel = Math.round(obj.conLevel * 10) / 10;
            if(newConLevel != this.conLevel)
            {
               this.conLevel = newConLevel;
               this._conLevelValid = false;
            }
         }
         var newName:String = obj.nm;
         if(newName != null)
         {
            if(this.actorName != newName)
            {
               this.actorName = newName;
               this._hpValid = false;
               this._nameValid = false;
            }
         }
         if(obj.gaiaUserLevel != null)
         {
            if(obj.gaiaUserLevel != this.gaiaUserLevel)
            {
               this.gaiaUserLevel = obj.gaiaUserLevel;
               this._hpColorValid = false;
               this._userLevelValid = false;
            }
         }
         if(obj.mhp != null)
         {
            newMaxHp = parseInt(obj.mhp);
            if(newMaxHp != this.maxHp)
            {
               this.maxHp = newMaxHp;
               this._hpValid = false;
            }
         }
         if(obj.hp != null)
         {
            newHp = parseInt(obj.hp);
            if(this.hp != newHp)
            {
               this.hp = Math.max(0,newHp);
               this._hpValid = false;
            }
         }
         if(obj.state != null)
         {
            this.actorDisplay.setState(obj.state);
         }
         else if(this.isMonsterAvatar)
         {
            this.actorDisplay.setState(0);
         }
         if(obj.deltas != null)
         {
            for(d = 0; d < obj.deltas.length; d++)
            {
               this.updateDeltas(obj.deltas[d]);
            }
         }
         var newStatusLabels:Array = obj.statusLabels;
         if(obj.statusLabels != null)
         {
            this.updateStatus(obj.statusLabels);
         }
         if(obj.statusAnim != null)
         {
            for(animationId in obj.statusAnim)
            {
               if(obj.statusAnim[animationId])
               {
                  this.statusEffect.playStatus(animationId,obj.url == null);
               }
               else
               {
                  this.statusEffect.stopStatus(animationId);
               }
            }
         }
         var newRoomName:String = obj.roomName;
         if(newRoomName != null)
         {
            if(this._roomId != newRoomName)
            {
               this._roomId = newRoomName;
               this._roomIdValid = false;
               if(!this.isTransition)
               {
                  myActor = ActorManager.getInstance().myActor;
                  if(myActor == null || this._roomId == myActor.roomId)
                  {
                     this.isLeaving = false;
                  }
                  this.setPosition(obj.px,obj.py);
               }
               filtersName = MapFilesFactory.getInstance().mapFiles.getActorFilters(this._roomId);
               this.setActorFilters(filtersName);
            }
         }
         var newInstanceId:String = obj.instanceId;
         if(newInstanceId != null)
         {
            if(newInstanceId != this._instanceId)
            {
               this._instanceId = newInstanceId;
               this._instanceIdValid = false;
            }
         }
         if(obj.spd != null)
         {
            this.serverSpeed = parseInt(obj.spd);
         }
         if(obj.radius != null)
         {
            this.radius = obj.radius;
         }
         if(obj.range != null)
         {
            this.range = obj.range;
         }
         if(obj.exhaustion != null)
         {
            newExhaustion = obj.exhaustion;
            if(this.exhaustion != newExhaustion)
            {
               this.exhaustion = obj.exhaustion;
               this._exhaustionValid = false;
            }
         }
         if(obj.maxexh != null)
         {
            newMaxStamina = obj.maxexh;
            if(newMaxStamina != this.maxExhaustion)
            {
               this.maxExhaustion = obj.maxexh;
               this._exhaustionValid = false;
            }
         }
         if(obj.ghiEnergy != null)
         {
            newGhiEnergy = obj.ghiEnergy;
            if(newGhiEnergy != this.ghiEnergy)
            {
               this.ghiEnergy = newGhiEnergy;
               this._ghiEnergyValid = false;
            }
         }
         if(obj.ghiProgress != null)
         {
            this.ghiProgress = obj.ghiProgress;
         }
         if(obj.tp != null)
         {
            this.actorType = ActorTypes.intToType(obj.tp);
         }
         if(obj.rag != null)
         {
            newRage = obj.rag;
            if(newRage != this.rage)
            {
               this.rage = obj.rag;
               this._rageValid = false;
            }
         }
         if(obj.pse != null)
         {
            this._pendingSitState.sitting = obj.pse;
            this._pendingSitState.dirty = true;
         }
         if(obj.aggro != null)
         {
            this.aggro = obj.aggro;
            this.actorDisplay.setAggro(this.aggro);
         }
         if(obj.px != null && obj.py != null && obj.dx != null && obj.dy != null)
         {
            this.move(new Point(obj.px,obj.py),obj.dx,obj.dy,this._lag,false);
         }
         if(obj.rotation != null)
         {
            newEndMoveAngle = obj.rotation;
            if(newEndMoveAngle != this.endMoveAngle)
            {
               this.endMoveAngle = newEndMoveAngle;
               this._moveAngleValid = false;
            }
         }
         if(obj.lookingForGroup != null)
         {
            newLookingForGroup = obj.lookingForGroup;
            if(this.isLfg != newLookingForGroup)
            {
               this.isLfg = newLookingForGroup;
               this._lookingForGroupValid = !this._lookingForGroupValid;
            }
         }
         if(obj.movementParent != null)
         {
            if(obj.movementParent.actorID == null)
            {
               this.parentActorId = null;
               this.parentOffset = null;
            }
            else
            {
               this.parentActorId = obj.movementParent.actorID;
               if(this.parentOffset == null)
               {
                  this.parentOffset = new Point(obj.movementParent.offsetX,obj.movementParent.offsetY);
               }
               else
               {
                  this.parentOffset.x = obj.movementParent.offsetX;
                  this.parentOffset.y = obj.movementParent.offsetY;
               }
            }
         }
         if(me && obj.ringSlot != null && obj.ringSlot.length > 0)
         {
            this._ringLockUpdateInfo = obj.ringSlot;
         }
         if(obj.aids != null)
         {
            this.updateAids(obj.aids);
         }
         if(obj.hitCount != undefined && this.actorType == ActorTypes.GOOFBALL)
         {
            this.hitCount = obj.hitCount;
            this.actorDisplay.showHitCountNum(this.hitCount);
         }
         if(obj.targetCycle != null)
         {
            this.targetCycle = obj.targetCycle;
         }
         updateSubscribedProperties(obj);
         if(updatePaperDoll)
         {
            this.dispatchEvent(new Event(PAPER_DOLL_STATS_UPDATED));
         }
         var newAttachToId:String = obj.attachTo;
         if(newAttachToId != null)
         {
            if(newAttachToId != this._pickedUpById)
            {
               this._pickedUpById = newAttachToId;
               this._pickedUpByValid = false;
            }
         }
      }
      
      public function set roomId(v:String) : void
      {
         this._roomId = v;
         var filtersName:Array = MapFilesFactory.getInstance().mapFiles.getActorFilters(this._roomId);
         this.setActorFilters(filtersName);
      }
      
      private function onActorUpdateTimer() : void
      {
         var c:Number = NaN;
         var lockChanged:Boolean = false;
         var len:uint = 0;
         var rn:uint = 0;
         var currZoneName:String = null;
         var globalEventDispatcher:IEventDispatcher = GlobalEvent.eventDispatcher;
         if(!this._targetSetValid)
         {
            this.validateTargetSetState();
            this._targetSetValid = true;
         }
         if(!this._visibilityValid)
         {
            super.visible = this._visible;
            this._visibilityValid = true;
         }
         if(!this._inCrewStateValid)
         {
            globalEventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.IN_CREW_STATE_UPDATE,{
               "actor":this,
               "_actorId":this._actorId,
               "inCrewState":this.inCrewState
            }));
            this._inCrewStateValid = true;
         }
         if(!this._suppressedCLValid)
         {
            globalEventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.SUPPRESSED_CL_CHANGE,this.suppressedCL));
            this._suppressedCLValid = true;
         }
         if(!this._conLevelValid)
         {
            this.dispatchEvent(new BaseActorEvent(BaseActorEvent.ACTOR_CON_LEVEL_UPDATED,this));
            globalEventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.PLAYER_CON_LEVEL_UPDATED,this.conLevel));
            this._conLevelValid = true;
         }
         if(!this._buffsValid)
         {
            if(this.hasEventListener(BaseActorEvent.BUFFS_UPDATED))
            {
               this.dispatchEvent(new BaseActorEvent(BaseActorEvent.BUFFS_UPDATED,this));
            }
            this._buffsValid = true;
         }
         if(!this._hpValid)
         {
            if(this.hpBar)
            {
               this.hpBar.setHp(this.hp);
               this.hpBar.setMaxHp(this.maxHp);
               this.hpBar.setName(this.actorName);
            }
            if(this.hp <= 0)
            {
               this.death();
            }
            if(this.hasEventListener(BaseActorEvent.HEALTH_UPDATED))
            {
               this.dispatchEvent(new BaseActorEvent(BaseActorEvent.HEALTH_UPDATED,this));
            }
            this._hpValid = true;
         }
         if(!this._nameValid)
         {
            this.dispatchEvent(new BaseActorEvent(BaseActorEvent.NAME_UPDATED,this));
            this._nameValid = true;
         }
         if(!this._hpColorValid)
         {
            if(this._uiFramework.userLevelColors[this.gaiaUserLevel] != null)
            {
               c = Number("0x" + String(this._uiFramework.userLevelColors[this.gaiaUserLevel]).substr(1,6));
               if(!isNaN(c))
               {
                  if(c <= 0)
                  {
                     c = 16777215;
                  }
                  this.hpBar.setNameColor(c);
               }
            }
            this._hpColorValid = true;
         }
         if(!this._userLevelValid)
         {
            this.setUserLevel(this.gaiaUserLevel);
            this._userLevelValid = true;
         }
         if(!this._exhaustionValid)
         {
            if(this.hpBar)
            {
               this.hpBar.setExhaustion(this.exhaustion);
               this.hpBar.setMaxExhaustion(this.maxExhaustion);
            }
            if(me)
            {
               ringManager.enableDisableRings();
            }
            if(this.hasEventListener(BaseActorEvent.STAMINA_UPDATED))
            {
               this.dispatchEvent(new BaseActorEvent(BaseActorEvent.STAMINA_UPDATED,this));
            }
            this._exhaustionValid = true;
         }
         if(!this._ghiEnergyValid)
         {
            if(me)
            {
               this.dispatchEvent(new BaseActorEvent(BaseActorEvent.GHI_UPDATED,this));
            }
            this._ghiEnergyValid = true;
         }
         if(!this._rageValid)
         {
            if(this.hasEventListener(BaseActorEvent.RAGE_UPDATED))
            {
               this.dispatchEvent(new BaseActorEvent(BaseActorEvent.RAGE_UPDATED,this));
            }
            this._rageValid = true;
         }
         if(this._pendingSitState.dirty)
         {
            if(this._pendingSitState.sitting != this.isSitting)
            {
               if(this._pendingSitState.sitting)
               {
                  sit(false);
               }
               else
               {
                  stand();
               }
            }
            this._pendingSitState.dirty = false;
         }
         if(!this._lookingForGroupValid)
         {
            if(me)
            {
               this.dispatchEvent(new BaseActorEvent(BaseActorEvent.LFG_UPDATED,this));
            }
            this._lookingForGroupValid = true;
         }
         if(me && this._ringLockUpdateInfo != null)
         {
            lockChanged = false;
            len = this._ringLockUpdateInfo.length;
            for(rn = 0; rn < len; rn++)
            {
               if(this._ringLockUpdateInfo[rn] == 0)
               {
                  if(ringManager.lockSlot(rn))
                  {
                     lockChanged = true;
                  }
               }
               else if(ringManager.unlockSlot(rn))
               {
                  lockChanged = true;
               }
            }
            if(lockChanged)
            {
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.PLAYER_LOCKED_SLOTS_CHANGED,ringManager.lockSlotCount()));
            }
            this._ringLockUpdateInfo = null;
         }
         if(!this._moveAngleValid)
         {
            if(this.targetPos.x == this.position.x && this.targetPos.y == this.position.y)
            {
               this.setAngle(this.endMoveAngle);
               this.setEndAngle = false;
            }
            else
            {
               this.setEndAngle = true;
            }
            this._moveAngleValid = true;
         }
         if(!this._pickedUpByValid)
         {
            if(this._pickedUpById == "" && this.pickedUpBy)
            {
               this.pickedUpBy.dropActor();
            }
            else
            {
               this.tryToBePickedUp(this._pickedUpById);
            }
            this._pickedUpByValid = true;
         }
         if(!this._roomIdValid)
         {
            currZoneName = MapFilesFactory.getInstance().mapFiles.getZoneNameFromRoomId(this._roomId);
            if(this.zoneName != currZoneName)
            {
               this.zoneName = currZoneName;
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.TEAM_UPDATED,{}));
               this.dispatchEvent(new BaseActorEvent(BaseActorEvent.ZONE_CHANGED,this));
            }
            this._roomIdValid = true;
         }
         if(!this._instanceIdValid)
         {
            setInstanceId(this._instanceId);
            this._instanceIdValid = true;
         }
      }
      
      public function updateTeam(team:Object = null) : void
      {
         teamManager.updateTeam(team);
      }
      
      public function get ringMaxLevel() : Number
      {
         return this._ringMaxLevel;
      }
      
      public function get totalOrbs() : Orbs
      {
         return this._totalOrbs;
      }
      
      public function tryToBePickedUp(pickedUpById:String) : void
      {
         delete BaseActor.pickUpArtists[pickedUpById];
         if(this.pickedUpBy && pickedUpBy.actorId != pickedUpById)
         {
            this.pickedUpBy.dropActor();
         }
         if(!this.pickedUpBy)
         {
            this.pickedUpBy = ActorManager.actorIdToActor(pickedUpById);
            if(this.pickedUpBy)
            {
               this.pickedUpBy.pickUpActor(this);
            }
            else
            {
               BaseActor.pickUpArtists[pickedUpById] = this;
            }
         }
      }
      
      public function moveToTarget(target:BaseActor) : void
      {
         if(allowUserMove)
         {
            this._gateway.sendMsg(new BattleMessage("moveToTarget",{"targetID":target.actorId}));
         }
      }
      
      public function getPaperDollObject() : Object
      {
         var obj:Object = new Object();
         obj.userName = this.actorName;
         obj.clanName = this.clanName;
         obj.accuracy = this.accuracy;
         obj.luck = Math.floor(this.luck * 100);
         obj.dodge = this.dodge;
         obj.willpower = this.willPower;
         obj.regen = this.healthRegen;
         obj.exhaustionRegen = this.exhaustionRegen;
         obj.totalCharge = this.totalCharge;
         obj.health = this.maxHp;
         obj.speed = this.serverSpeed;
         obj.weight = this.weight;
         obj.conLevel = this.conLevel;
         obj.rings = this.paperDollRings;
         obj.suppressedCL = this.suppressedCL;
         return obj;
      }
      
      public function stopMove() : void
      {
         var p:Point = this.position;
         this.move(p,this.position.x,this.position.y);
         this.isWalking = false;
         if(!this.isSitting)
         {
            stand();
         }
      }
      
      public function set displaySilhouette(value:Boolean) : void
      {
         if(value != _displaySilhouette)
         {
            _displaySilhouette = value;
            invalidateDisplayProperties();
         }
      }
      
      public function get depthEnabled() : Boolean
      {
         return true;
      }
      
      public function setZPos(z:Number) : void
      {
         if(this.actorDisplay != null)
         {
            this.actorDisplay.zpos = z;
         }
         if(z > 0)
         {
            attachWaterAnim();
         }
         else
         {
            detachWaterAnim();
         }
      }
      
      private function attachWaterAnim() : void
      {
         var position:int = 0;
         if(!waterAnimAttached && this.mcWaterAnimPlaceholder && this.mcWaterAnim)
         {
            position = this.getChildIndex(this.mcWaterAnimPlaceholder);
            this.addChildAt(this.mcWaterAnim,position);
            this.mcWaterAnim.play();
            this.waterAnimAttached = true;
         }
      }
      
      public function resetTargetType() : void
      {
         this.targetType = TARGETTYPE_NONE;
         this.updateAids(this._aids);
      }
      
      public function isOnATeam() : Boolean
      {
         return teamManager.isOnATeam();
      }
      
      public function set ignoreList(arr:Array) : void
      {
         if(arr != _ignoreList)
         {
            _ignoreList = arr;
            dispatchEvent(new BaseActorEvent(BaseActorEvent.IGNORE_LIST_CHANGED,this));
         }
      }
      
      public function updateAids(aids:Array) : void
      {
         var Combatant:Boolean = false;
         var Usable:Boolean = false;
         this._aids = aids;
         if(aids != null && aids.length > 0)
         {
            Combatant = false;
            Usable = false;
            if(aids.indexOf("Combatant") >= 0)
            {
               Combatant = true;
            }
            if(aids.indexOf("Usable") >= 0)
            {
               Usable = true;
            }
            if(this.actorType == ActorTypes.GOOFBALL)
            {
               if(this.ownerId == ActorManager.getInstance().myActor.actorId)
               {
                  this.targetType = TARGETTYPE_POWERUSABLE;
                  this.mouseChildren = true;
               }
               else
               {
                  this.mouseChildren = false;
               }
            }
            else if(Combatant)
            {
               if(this.actorType == ActorTypes.PLAYER || this.actorType == ActorTypes.NPC)
               {
                  this.targetType = TARGETTYPE_SELF;
               }
               else
               {
                  this.targetType = TARGETTYPE_FRIEND;
               }
               this.mouseChildren = true;
            }
            else if(Usable)
            {
               this.targetType = TARGETTYPE_ENEMY;
               this.mouseChildren = true;
            }
         }
         else
         {
            this.targetType = TARGETTYPE_NONE;
            this.mouseChildren = false;
            this.mouseEnabled = false;
         }
         if(this.actorType != ActorTypes.USABLE)
         {
            this.displayHpBar = true;
            switch(this.actorType)
            {
               case ActorTypes.MONSTER:
                  this.displayHp = true;
                  this.displayStamina = false;
                  this.displayInCrewState = false;
                  this.displayName = false;
                  break;
               case ActorTypes.NPC:
               case ActorTypes.CRITTER:
               case ActorTypes.GOOFBALL:
                  this.displayHp = false;
                  this.displayStamina = false;
                  this.displayInCrewState = false;
                  this.displayName = true;
                  break;
               case ActorTypes.COMPANION:
                  this.displayHp = false;
                  this.displayStamina = false;
                  this.displayInCrewState = false;
                  this.displayName = true;
                  this.mouseChildren = true;
                  this.targetType = TARGETTYPE_COMPANION;
                  break;
               default:
                  this.displayHp = true;
                  this.displayStamina = true;
                  this.displayInCrewState = !this.isGuestUser();
                  this.displayName = true;
            }
         }
      }
      
      private function playHitNum(hp:Number, type:int) : void
      {
         var per:Number = hp / this.maxHp;
         this.actorDisplay.playHitNum(hp,type);
      }
      
      public function get healthRegen() : int
      {
         return this.subscribedProperties != null?int(subscribedProperties.healthRegen):0;
      }
      
      public function get totalCharge() : int
      {
         return this.subscribedProperties != null?int(subscribedProperties.totalCharge):0;
      }
      
      public function get ringManager() : RingManager
      {
         if(!_ringManager)
         {
            _ringManager = new RingManager(_gateway,_uiFramework,_linkManager,this);
            _ringManager.addEventListener(RingManager.RING_LOADED,onRingLoaded,false,0,true);
         }
         return _ringManager;
      }
      
      public function quickMove(type:String, targetPoints:Array, time:int = 1000) : void
      {
         this.qmType = type;
         this.qmPoints = targetPoints;
         this.qmTime = time;
         if(type == "charge")
         {
            this.setDirection(this.qmPoints[0]);
         }
         this.qmTotalDist = Point.distance(this.qmPoints[0],this.position);
         for(var i:int = 1; i < this.qmPoints.length; i++)
         {
            this.qmTotalDist = this.qmTotalDist + Point.distance(this.qmPoints[i - 1],this.qmPoints[i]);
         }
         this.isQm = true;
         this.qmPointIndex = 0;
         this.targetPos.x = this.qmPoints[0].x;
         this.targetPos.y = this.qmPoints[0].y;
         this.qmStartTime = -1;
      }
      
      public function unlockSlot(slot:int) : void
      {
         ringManager.unlockSlot(slot);
      }
      
      public function enableDisableRings() : void
      {
         ringManager.enableDisableRings();
      }
      
      private function onMouseOut(evt:MouseEvent) : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MOUSE_OVER_STATE_CHANGED,{"actorTarget":0}));
         if(!this.isTarget && this.actorDisplay != null)
         {
            this.actorDisplay.clearReticle();
            this.setHPBarVisible(false);
         }
      }
      
      public function get roomId() : String
      {
         return this._roomId;
      }
      
      public function moveStop() : void
      {
         var msg:BattleMessage = null;
         if(!this.isSitting)
         {
            stopMove();
            msg = new BattleMessage("move",{
               "action":"stop",
               "x":Math.round(position.x),
               "y":Math.round(position.y),
               "rmn":roomId
            });
            this._gateway.sendMsg(msg);
         }
      }
      
      public function getActorDisplay() : ActorDisplay
      {
         return this.actorDisplay;
      }
      
      public function playInvalidTarget() : void
      {
         this.actorDisplay.playInvalidTarget();
      }
      
      public function get zpos() : Number
      {
         return actorDisplay.zpos;
      }
      
      private function get paperDollRings() : Array
      {
         return !!this.subscribedProperties?subscribedProperties.rings:[];
      }
      
      private function updateSubscribedDeltas(obj:Object) : Boolean
      {
         var found:Boolean = true;
         if(this.subscribedProperties != null)
         {
            switch(obj.stat)
            {
               case "dodge":
                  this.subscribedProperties.dodge = this.subscribedProperties.dodge + int(obj.value);
                  break;
               case "will":
                  this.subscribedProperties.willPower = this.subscribedProperties.willPower + int(obj.value);
                  break;
               case "healthRegen":
                  this.subscribedProperties.healthRegen = this.subscribedProperties.healthRegen + int(obj.value);
                  break;
               case "exhaustionRegen":
                  this.subscribedProperties.healthRegen = this.subscribedProperties.healthRegen + int(obj.value);
                  break;
               case "acc":
                  this.subscribedProperties.accuracy = this.subscribedProperties.accuracy + int(obj.value);
                  break;
               case "luck":
                  this.subscribedProperties.luck = this.subscribedProperties.luck + obj.value;
                  break;
               case "totalCharge":
                  this.subscribedProperties.totalCharge = this.subscribedProperties.totalCharge + int(obj.value);
                  break;
               default:
                  found = false;
            }
         }
         else
         {
            found = false;
         }
         return found;
      }
      
      public function isSlotLock(slot:int) : Boolean
      {
         return ringManager.isSlotLock(slot);
      }
      
      private function updateSubscribedProperties(obj:Object) : void
      {
         var ringInfoList:Array = null;
         var ringInfoListLength:uint = 0;
         var i:uint = 0;
         var ringObj:Object = null;
         var index:int = 0;
         if(this.subscribedProperties != null)
         {
            if(obj.mass != null)
            {
               this.weight = obj.mass;
            }
            if(obj.dodge != null)
            {
               this.subscribedProperties.dodge = obj.dodge;
            }
            if(obj.will != null)
            {
               this.subscribedProperties.willPower = obj.will;
            }
            if(obj.healthRegen != null)
            {
               this.subscribedProperties.healthRegen = obj.healthRegen;
            }
            if(obj.exhaustionRegen != null)
            {
               this.subscribedProperties.exhaustionRegen = obj.exhaustionRegen;
            }
            if(obj.acc != null)
            {
               this.subscribedProperties.accuracy = obj.acc;
            }
            if(obj.luck != null)
            {
               this.subscribedProperties.luck = obj.luck;
            }
            if(obj.totalCharge != null)
            {
               this.subscribedProperties.totalCharge = obj.totalCharge;
            }
            if(obj.ringInfoList != null)
            {
               _cachedRingArray.length = 0;
               this.subscribedProperties.rings = _cachedRingArray;
               ringInfoList = obj.ringInfoList;
               ringInfoListLength = ringInfoList.length;
               for(i = 0; i < ringInfoListLength; i++)
               {
                  ringObj = ringInfoList[i];
                  index = !!ringObj.hasOwnProperty("ringSlot")?int(ringObj.ringSlot):int(i);
                  this.subscribedProperties.rings[index] = {
                     "ringId":ringObj.id,
                     "url":ringObj.url,
                     "name":ringObj.name,
                     "description":ringObj.description,
                     "chargeLevel":ringObj.ringLevel
                  };
               }
            }
            if(obj.radius != null)
            {
               this.radius = obj.radius;
            }
         }
      }
      
      public function playTransition(frame:String) : void
      {
         if(this.actorDisplay != null && !this.isTransition)
         {
            this.actorDisplay.playTransition(frame);
            this.isTransition = true;
         }
      }
      
      public function setPosition(x:Number, y:Number) : void
      {
         this.position.x = x;
         this.position.y = y;
         this.targetPos.x = x;
         this.targetPos.y = y;
         this.isWalking = false;
         if(!this.isSitting)
         {
            stand();
         }
         this.updateMcPosition();
      }
      
      public function updateBonusSet() : void
      {
         ringManager.updateBonusSet();
      }
      
      public function get luck() : Number
      {
         var luck:Number = this.subscribedProperties != null?Number(subscribedProperties.luck):Number(0);
         return luck;
      }
      
      private function onTimeTillOrbSwap(evt:GlobalEvent) : void
      {
         this.timeTillOrbSwap = evt.data as int;
      }
      
      private function onActorDisplayLoaded(evt:Event) : void
      {
         this.statusEffect.refresh();
      }
      
      private function onMovementEnterFrame() : void
      {
         var pa:BaseActor = null;
         var currentTime:int = 0;
         var qmObj2:Object = null;
         var moveSt:Number = NaN;
         var moveEt:Number = NaN;
         var moveTime:Number = NaN;
         var qmTarget:Point = null;
         var qmdx:Number = NaN;
         var qmdy:Number = NaN;
         var qmDist:Number = NaN;
         var qmAngle:Number = NaN;
         var moveSpeed:Number = NaN;
         var qmvx:Number = NaN;
         var qmvy:Number = NaN;
         var speed:Number = NaN;
         var sdist:Number = NaN;
         var time:Number = NaN;
         var cdist:Number = NaN;
         var dx:Number = NaN;
         var dy:Number = NaN;
         var dist:Number = NaN;
         var angle:Number = NaN;
         var vx:Number = NaN;
         var vy:Number = NaN;
         if(this._isDisposed)
         {
            return;
         }
         var updatePos:Boolean = true;
         this.lastPos.x = this.position.x;
         this.lastPos.y = this.position.y;
         var now:int = getTimer();
         if(this.lastFrame < 0)
         {
            this.lastFrame = now;
         }
         var dt:int = now - this.lastFrame;
         this.lastFrame = now;
         var parentLookup:Object = ActorManager.actorIdToActor(this.parentActorId);
         if(this.parentActorId != null && parentLookup != null)
         {
            pa = BaseActor(parentLookup);
            this.position.x = pa.position.x + this.parentOffset.x;
            this.position.y = pa.position.y + this.parentOffset.y;
            this.setAngle(pa.angle);
            this.updateMcPosition();
            this.checkRedraw();
            return;
         }
         if(this.isQm)
         {
            if(this.qmStartTime < 0)
            {
               this.qmStartTime = getTimer();
            }
            currentTime = getTimer() - this.qmStartTime;
            qmObj2 = this.actorDisplay.onQuickMove(this.qmType,currentTime,this.qmTime);
            moveSt = qmObj2.startFrame * (1000 / 16);
            moveEt = this.qmTime - qmObj2.frameFromEnd * (1000 / 16);
            moveTime = moveEt - moveSt;
            qmTarget = this.qmPoints[this.qmPointIndex];
            if(currentTime >= moveSt && currentTime <= moveEt)
            {
               qmdx = qmTarget.x - this.position.x;
               qmdy = qmTarget.y - this.position.y;
               qmDist = Math.sqrt(qmdx * qmdx + qmdy * qmdy);
               qmAngle = Math.atan2(qmdy,qmdx);
               moveSpeed = this.qmTotalDist / moveTime * dt;
               qmvx = Math.cos(qmAngle) * moveSpeed;
               qmvy = Math.sin(qmAngle) * moveSpeed;
               if(qmDist >= moveSpeed)
               {
                  this.position.x = this.position.x + qmvx;
                  this.position.y = this.position.y + qmvy;
               }
               else
               {
                  this.position.x = this.targetPos.x = qmTarget.x;
                  this.position.y = this.targetPos.y = qmTarget.y;
               }
            }
            else if(currentTime >= this.qmTime)
            {
               this.isQm = false;
               this.qmStartTime = -1;
               this.position.x = this.qmPoints[this.qmPoints.length - 1].x;
               this.position.y = this.qmPoints[this.qmPoints.length - 1].y;
               this.actorDisplay.onQuickMove(this.qmType,this.qmTime,this.qmTime);
            }
            if(this.isQm && this.position.x == qmTarget.x && this.position.y == qmTarget.y)
            {
               if(this.qmPointIndex < this.qmPoints.length - 1)
               {
                  this.qmPointIndex = this.qmPointIndex + 1;
               }
            }
            this.updateMcPosition();
            this.checkRedraw();
            return;
         }
         if(!this.isSitting && this._lastServerPosition)
         {
            sdist = BattleUtils.distanceBetweenPoints(this.targetPos,this._lastServerPosition);
            this._lastServerPosition = null;
            time = Math.max(sdist / this.serverSpeed - this._lag / 1000,1.0e-6);
            cdist = BattleUtils.distanceBetweenPoints(this.targetPos,this.position);
            this.moveSpeed = Math.min(cdist / time,this.serverSpeed * 6);
         }
         speed = this.moveSpeed * (dt / 1000);
         if(!this.isSitting)
         {
            if(this.position.x != this.targetPos.x || this.position.y != this.targetPos.y)
            {
               if(this.position.x > this.targetPos.x + speed || this.position.x < this.targetPos.x - speed || this.position.y > this.targetPos.y + speed || this.position.y < this.targetPos.y - speed)
               {
                  dx = this.targetPos.x - this.position.x;
                  dy = this.targetPos.y - this.position.y;
                  dist = Math.sqrt(dx * dx + dy * dy);
                  angle = Math.atan2(dy,dx);
                  vx = Math.cos(angle) * speed;
                  vy = Math.sin(angle) * speed;
                  this.position.x = this.position.x + vx;
                  this.position.y = this.position.y + vy;
                  this.setAngle(angle * 180 / Math.PI);
                  if(!this.isWalking)
                  {
                     this.isWalking = true;
                     this.actorDisplay.playAnim("walk");
                  }
               }
               else
               {
                  this.position.x = this.targetPos.x;
                  this.position.y = this.targetPos.y;
                  if(this.isWalking)
                  {
                     this.isWalking = false;
                     stand();
                  }
                  if(this.setEndAngle)
                  {
                     this.setEndAngle = false;
                     this.setAngle(this.endMoveAngle);
                  }
               }
               this.updateMcPosition();
            }
            else
            {
               if(this.isLeaving && !this.isTransition)
               {
                  updatePos = false;
                  if(this.displayType != "monster" || this.hp > 0)
                  {
                     this.dispatchEvent(new Event(ACTOR_GONE));
                  }
               }
               if(this.isWalking)
               {
                  this.isWalking = false;
                  this.stand();
               }
            }
         }
         if(this.pickedUpActor)
         {
            this.pickedUpActor.position = this.position.clone();
            this.pickedUpActor.lastPos = this.position.clone();
         }
         checkRedraw();
      }
      
      public function isGuestUser() : Boolean
      {
         return this.userLevel < DEFAULT_USER_LEVEL;
      }
      
      public function isInvitableToCrew() : Boolean
      {
         return !this.isTeammate() && !this.isInCrew() && ActorManager.getInstance().myActor.isTeamLeader && ActorManager.getInstance().myActor.teamCount() < TeamManager.TEAM_MAX;
      }
      
      public function move(pos:Point, targetX:Number, targetY:Number, lag:Number = 0, isClientMove:Boolean = false) : void
      {
         if(this.isLeaving)
         {
            return;
         }
         this.isClientMove = isClientMove;
         this._lastServerPosition = pos;
         if(!this.isSitting || !isClientMove)
         {
            this.targetPos.x = targetX;
            this.targetPos.y = targetY;
         }
         else
         {
            this.targetPos.x = this.position.x;
            this.targetPos.y = this.position.y;
         }
      }
      
      public function get dodge() : int
      {
         return this.subscribedProperties != null?int(subscribedProperties.dodge):0;
      }
      
      public function stand() : void
      {
         this.actorDisplay.playAnim("idle");
         if(this.isSitting)
         {
            commitPoseChange(false);
         }
      }
      
      public function getSuppressedCL() : Number
      {
         var cl:Number = this.conLevel;
         if(!isNaN(this.suppressedCL) && this.suppressedCL < this.conLevel)
         {
            cl = this.suppressedCL;
         }
         return cl;
      }
      
      public function playResists() : void
      {
         this.actorDisplay.playResists();
      }
      
      private function onMouseOver(evt:MouseEvent) : void
      {
         if(this.actorDisplay != null && (this.targetType | RETICLEWORTHY) != 0 && !this.isLeaving)
         {
            this.actorDisplay.setReticle(this.targetType,this.isTarget);
         }
         if(!this.isLeaving && !this.isTarget)
         {
            this.setHPBarVisible(this.displayHpBar);
            this.hpBar.alpha = 0.4;
         }
         if(!this.isLeaving)
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MOUSE_OVER_STATE_CHANGED,{"actorTarget":this.targetType}));
         }
      }
   }
}

class SubscriptionBasedProperties
{
    
   
   public var healthRegen:Number = 0;
   
   public var rings:Array;
   
   public var luck:Number = 0;
   
   public var willPower:Number = 0;
   
   public var dodge:Number = 0;
   
   public var totalCharge:Number = 0;
   
   public var accuracy:Number = 0;
   
   public var exhaustionRegen:Number = 0;
   
   function SubscriptionBasedProperties()
   {
      rings = [];
      super();
   }
}

class PendingSitState
{
    
   
   public var dirty:Boolean = false;
   
   public var sitting:Boolean = false;
   
   function PendingSitState()
   {
      super();
   }
}
