package com.gaiaworld.room.view
{
   import com.gaiaworld.ads.controller.MsController;
   import com.gaiaworld.ads.interfaces.IAd;
   import com.gaiaworld.avatar.controller.AvatarController;
   import com.gaiaworld.avatar.controller.events.AvatarMoveEvent;
   import com.gaiaworld.avatar.controller.events.SwapEvent;
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.avatar.view.OthersWorldAvatar;
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.global.controller.EventController;
   import com.gaiaworld.global.interfaces.ISurface;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.global.util.GCollisionDetect;
   import com.gaiaworld.global.view.ChatLayer;
   import com.gaiaworld.global.view.EmoteLayer;
   import com.gaiaworld.gobjects.constants.CollisionConstants;
   import com.gaiaworld.house.util.IsoUtil;
   import com.gaiaworld.npc.controller.events.NpcMoveEvent;
   import com.gaiaworld.npc.interfaces.Inpc;
   import com.gaiaworld.room.constants.RoomConstants;
   import com.gaiaworld.room.controller.RoomController;
   import com.gaiaworld.room.events.PingEvent;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.room.interfaces.ITileVo;
   import com.gaiaworld.room.interfaces.IWorldItem;
   import com.gaiaworld.room.interfaces.IWorldItem2;
   import com.gaiaworld.room.interfaces.IWorldObject;
   import com.gaiaworld.room.model.RoomModel;
   import com.gaiaworld.room.util.ObjUtil;
   import com.gaiaworld.towns.collectables.bugs.controller.ColController;
   import com.gaiaworld.towns.collectables.bugs.interfaces.IMarker;
   import com.gaiaworld.towns.collectables.constants.MarkerConstants;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.utils.getTimer;
   
   public class Surface extends Sprite implements ISurface
   {
       
      
      public var path:Sprite;
      
      private var gridPath:Sprite;
      
      public var cellWidth = 60;
      
      public var cellHeight = 32;
      
      private var maxx:Number;
      
      private var maxz:Number;
      
      public var surfaceName:String;
      
      public var iso:IsoUtil;
      
      public var tiles:Array;
      
      public var fArray:Array;
      
      public var avatarArray:Array;
      
      private var avatarController:AvatarController;
      
      private var avatarModel:AvatarModel;
      
      private var globalModel:GlobalModel;
      
      private var chatLayer:ChatLayer;
      
      private var emoteLayer:EmoteLayer;
      
      private var tileArray:Array;
      
      private var findAreaW:Number;
      
      private var findAreaH:Number;
      
      private var colUtil:GCollisionDetect;
      
      private var roomModel:RoomModel;
      
      private var roomController:RoomController;
      
      public var mapLoader:Loader;
      
      private var objectMap:Sprite;
      
      private var cmap:Sprite;
      
      private var pmap:Sprite;
      
      private var fmap:Sprite;
      
      private var adMap:Sprite;
      
      private var clickArea:MovieClip;
      
      private var background:Sprite;
      
      private var portalArray:Array;
      
      private var collisionArray:Vector.<ISurfaceObject>;
      
      private var avatarCollideList:Vector.<IAvatar>;
      
      private var lastUpdate:Number = 0;
      
      private var lastArrange:Number;
      
      private var lastUpdateOtherAv:Number;
      
      private var lastUpdateMove:Number = 0;
      
      private var lastItemCheck:Number = 0;
      
      private var lastMapCheck:Number = 0;
      
      private var topItems:Sprite;
      
      private var eventController:EventController;
      
      private var lastLoad:int = 0;
      
      private var fc:Number = 0;
      
      public function Surface(param1:Number = 10, param2:Number = 10, param3:String = "")
      {
         this.path = new Sprite();
         this.gridPath = new Sprite();
         this.tiles = new Array();
         this.fArray = new Array();
         this.avatarArray = new Array();
         this.avatarController = new AvatarController();
         this.avatarModel = AvatarModel.getInstance();
         this.globalModel = GlobalModel.getInstance();
         this.emoteLayer = new EmoteLayer();
         this.tileArray = new Array();
         this.colUtil = new GCollisionDetect();
         this.roomModel = RoomModel.getInstance();
         this.roomController = new RoomController();
         this.mapLoader = new Loader();
         this.clickArea = new MovieClip();
         this.portalArray = new Array();
         this.collisionArray = new Vector.<ISurfaceObject>();
         this.avatarCollideList = new Vector.<IAvatar>();
         this.topItems = new Sprite();
         this.eventController = new EventController();
         super();
         this.chatLayer = new ChatLayer(this);
         this.surfaceName = param3;
         this.iso = new IsoUtil(param1,param2);
         this.maxx = param1;
         this.maxz = param2;
         this.addChild(this.gridPath);
         this.addChild(this.path);
         this.addChild(this.chatLayer);
         this.addChild(this.emoteLayer);
         this.addChild(this.topItems);
         this.topItems.mouseEnabled = false;
         this.topItems.mouseChildren = false;
         this.eventController.addEventListener(this.globalModel,GlobalConstants.TOGGLE_SURFACE,this.toggleSurface);
         this.eventController.addEventListener(this.globalModel,GlobalConstants.TOGGLE_P_SURFACE,this.togglePSurface);
         this.eventController.addEventListener(this.path,AvatarMoveEvent.AVATAR_IS_MOVING,this.avatarMoving);
         this.eventController.addEventListener(this.path,AvatarMoveEvent.AVATAR_HAS_STOPPED,this.avatarHasStopped);
         this.eventController.addEventListener(this.path,SwapEvent.SWAP_DEPTHS,this.swapDepths);
         this.eventController.addEventListener(this,Event.ENTER_FRAME,this.arrangeSurface);
         this.addEventListener(PingEvent.PING_SPOT,this.pingSpot);
      }
      
      private function pingSpot(param1:PingEvent) : void
      {
         this.topItems.graphics.beginFill(param1.color,1);
         this.topItems.graphics.drawCircle(param1.x,param1.y,param1.size);
         this.topItems.graphics.endFill();
      }
      
      private function togglePSurface(param1:Event) : void
      {
         this.pmap.visible = !this.pmap.visible;
      }
      
      public function init() : void
      {
         if(this.roomModel.loadedSurface == false)
         {
            this.objectMap.visible = false;
            this.cmap.visible = false;
            this.copyObjects();
         }
         this.eventController.addEventListener(this.roomModel,RoomConstants.REFRESH_SURFACE,this.updateSurface);
         this.eventController.addEventListener(this.roomModel,RoomConstants.TOGGLE_BACKGROUND,this.toggleBackground);
         this.eventController.addEventListener(this.roomModel,RoomConstants.TOGGLE_OBJECTS,this.toggleObjects);
      }
      
      private function toggleBackground(param1:Event) : void
      {
         this.background.visible = !this.background.visible;
      }
      
      private function toggleObjects(param1:Event) : *
      {
         this.path.visible = !this.path.visible;
      }
      
      public function loadMap() : *
      {
         var _loc2_:BaseMap = null;
         var _loc3_:String = null;
         this.topItems.graphics.clear();
         var _loc1_:Number = Math.abs(this.lastLoad - getTimer());
         this.lastLoad = getTimer();
         if(_loc1_ < 1000)
         {
            return;
         }
         this.destroyMap();
         if(this.mapLoader != null)
         {
            if(this.mapLoader.content != null)
            {
               _loc2_ = this.mapLoader.content as BaseMap;
               if(_loc2_ != null)
               {
                  _loc2_.destroy();
               }
            }
         }
         if(this.roomModel.surfaceToLoad != null && this.roomModel.surfaceToLoad != "null" && this.roomModel.surfaceToLoad != "")
         {
            this.mapLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.mapLoaded);
            this.mapLoader = new Loader();
            this.mapLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.mapLoaded);
            this.mapLoader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.mapProgress);
            _loc3_ = "maps/" + this.roomModel.surfaceToLoad + ".swf?ver=" + String(this.globalModel.version);
            this.mapLoader.load(new URLRequest(_loc3_));
         }
         else
         {
            this.dispatchEvent(new Event(GlobalConstants.MAP_LOADED,true,false));
         }
      }
      
      private function mapProgress(param1:ProgressEvent) : void
      {
         var _loc2_:Number = param1.bytesTotal;
         var _loc3_:Number = param1.bytesLoaded;
         var _loc4_:Number = int(_loc3_ / _loc2_ * 100);
         this.roomController.setRoomPerLoaded(_loc4_);
      }
      
      private function mapLoaded(param1:Event) : *
      {
         this.mapLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.mapLoaded);
         if(this.cmap != null)
         {
            if(this.contains(this.cmap))
            {
               this.removeChild(this.cmap);
            }
         }
         if(this.pmap != null)
         {
            if(this.contains(this.pmap))
            {
               this.removeChild(this.pmap);
            }
         }
         if(this.adMap != null)
         {
            if(this.contains(this.adMap))
            {
               this.removeChild(this.adMap);
            }
         }
         var _loc2_:Object = this.mapLoader.content as Sprite;
         if(_loc2_ == null)
         {
            return;
         }
         this.cmap = _loc2_.cmap as Sprite;
         this.addChild(this.cmap);
         this.pmap = _loc2_.pmap as Sprite;
         this.addChild(this.pmap);
         this.adMap = _loc2_.admap;
         if(this.adMap != null)
         {
            this.addChild(this.adMap);
         }
         this.cmap.visible = false;
         this.pmap.visible = false;
         this.adMap.visible = false;
         this.objectMap = _loc2_.objectMap as Sprite;
         this.copyObjects();
         this.fmap = _loc2_.fmap as Sprite;
         if(this.fmap != null)
         {
            this.fillSpots();
         }
         if(this.adMap != null)
         {
            this.fillAds();
         }
         this.background = _loc2_.background;
         this.addChildAt(this.background,0);
         this.roomController.roomIsChanged();
         this.roomController.setCollisonMap(this.cmap);
         this.roomController.setPathFindingMap(this.pmap);
         if(this.avatarModel.setAtStartAfterJump == true)
         {
            this.avatarController.setAtStart();
            this.avatarController.setAtStartAfterJump(false);
            this.avatarController.setTarget(this.globalModel.startX + 1,this.globalModel.startY + 1);
         }
         else
         {
            this.avatarController.setTarget(this.avatarModel.avatar.x + 1,this.avatarModel.avatar.y + 1);
         }
         this.dispatchEvent(new Event(GlobalConstants.MAP_LOADED,true,false));
      }
      
      private function toggleSurface(param1:Event) : *
      {
         this.cmap.visible = !this.cmap.visible;
      }
      
      public function buildItemGrid() : void
      {
      }
      
      private function copyObjects() : *
      {
         var _loc1_:* = undefined;
         this.portalArray = [];
         while(this.objectMap.numChildren > 0)
         {
            _loc1_ = this.objectMap.getChildAt(this.objectMap.numChildren - 1);
            if(_loc1_ != null)
            {
               _loc1_.visible = true;
               if(_loc1_.myName == "jump arrow")
               {
                  this.portalArray.push(_loc1_);
                  this.collisionArray.push(_loc1_);
               }
               if(_loc1_.canCollide == true)
               {
                  this.collisionArray.push(_loc1_);
               }
               if(_loc1_.isMovingObject == true)
               {
                  this.eventController.addEventListener(_loc1_.clip,GlobalConstants.MOVING,this.checkItemBlocked,false,0,true);
               }
               if(!(_loc1_ is IWorldItem) && !(_loc1_ is JumpArrow) && !(_loc1_ is AnimatedObject))
               {
                  Sprite(_loc1_).mouseEnabled = false;
                  Sprite(_loc1_).mouseChildren = false;
               }
               Sprite(_loc1_).cacheAsBitmap = true;
               this.path.addChild(_loc1_);
               this.fArray.push(_loc1_);
               _loc1_.depth2 = _loc1_.y;
            }
         }
         this.roomController.setPortals(this.portalArray);
         this.roomController.roomIsReady();
      }
      
      private function useBlackAndWhite() : *
      {
         var _loc1_:Array = new Array();
         _loc1_ = _loc1_.concat([1,1,1,0,0]);
         _loc1_ = _loc1_.concat([1,1,1,0,0]);
         _loc1_ = _loc1_.concat([1,1,1,0,0]);
         _loc1_ = _loc1_.concat([0,0,0,1,0]);
         var _loc2_:* = new ColorMatrixFilter(_loc1_);
         var _loc3_:* = new Array();
         _loc3_.splice(0,1,_loc2_);
         this.filters = _loc3_;
      }
      
      private function destroyMap() : *
      {
         var _loc3_:* = undefined;
         while(this.path.numChildren > 0)
         {
            _loc3_ = this.path.getChildAt(0);
            if(this.path.contains(_loc3_))
            {
               this.path.removeChild(_loc3_);
            }
         }
         this.fArray = [];
         this.collisionArray.length = 0;
         var _loc1_:Number = this.avatarArray.length;
         var _loc2_:Number = 0;
         while(_loc2_ < _loc1_)
         {
            this.fArray.push(this.avatarArray[_loc2_]);
            this.path.addChild(this.avatarArray[_loc2_].clip);
            _loc2_ = _loc2_ + 1;
         }
         if(this.background != null)
         {
            if(this.contains(this.background))
            {
               this.removeChild(this.background);
            }
         }
         else
         {
            this.background = this.getChildAt(0) as Sprite;
            if(this.background != null)
            {
               if(this.contains(this.background))
               {
                  this.removeChild(this.background);
               }
            }
         }
      }
      
      private function checkItemBlocked(param1:Event) : *
      {
         var _loc2_:ISurfaceObject = param1.target as ISurfaceObject;
         if(_loc2_.collideType == CollisionConstants.ALL_COLLISIONS)
         {
            this.findItemToItemBlocked(_loc2_);
         }
         else
         {
            this.findItemToAvatarBlocked(_loc2_);
         }
         if(this.colUtil.checkHitObj(_loc2_.clip,this.cmap) == true)
         {
            this.roomController.setItemMapCollision(_loc2_);
         }
      }
      
      private function findItemToAvatarBlocked(param1:ISurfaceObject) : *
      {
         var _loc4_:IAvatar = null;
         var _loc2_:Number = this.avatarArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.avatarArray[_loc3_];
            if(this.colUtil.checkItemHit(param1.clip,_loc4_.clip) == true)
            {
               this.roomController.setItemCollison(param1,_loc4_.clip);
            }
            _loc3_++;
         }
      }
      
      private function findItemToItemBlocked(param1:ISurfaceObject) : *
      {
         var _loc4_:* = undefined;
         var _loc5_:IWorldItem2 = null;
         var _loc6_:IWorldItem2 = null;
         var _loc2_:Number = this.collisionArray.length - 1;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.collisionArray[_loc3_];
            if(_loc4_ != param1)
            {
               _loc5_ = param1 as IWorldItem2;
               _loc6_ = _loc4_ as IWorldItem2;
               if(_loc5_ != null && _loc6_ != null)
               {
                  if(param1.myName != "jump arrow" && _loc4_.myName != "jump arrow")
                  {
                     if(this.colUtil.checkItemHit(_loc5_.hitBox,_loc4_.hitBox) == true)
                     {
                        this.roomController.setItemCollison(param1,_loc4_);
                     }
                  }
               }
            }
            _loc3_++;
         }
      }
      
      public function checkAvatarBlocked(param1:IAvatar) : void
      {
         if(this.roomModel.checkForBlockedItems == true)
         {
            this.findBlockedItem(param1);
         }
         if(this.colUtil.checkHit(param1,this.cmap) == true)
         {
            param1.isBlocked = true;
            return;
         }
         param1.isBlocked = false;
      }
      
      public function findBlockedItem(param1:IAvatar, param2:Boolean = false) : *
      {
         var _loc5_:* = undefined;
         var _loc6_:* = false;
         var _loc3_:Number = this.collisionArray.length;
         var _loc4_:Number = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.collisionArray[_loc4_];
            if(_loc5_ != param1)
            {
               _loc6_ = _loc5_ is IWorldItem;
               if(_loc6_ == true)
               {
                  if(this.avatarModel.useFullCollision == false)
                  {
                     if(this.colUtil.checkItemHit(param1.collideClip,_loc5_.hitBox) == true)
                     {
                        param1.blockedItem = _loc5_;
                        return;
                     }
                  }
                  else if(this.colUtil.checkItemHit(param1.clip,_loc5_.hitBox) == true)
                  {
                     if(_loc5_ != null)
                     {
                        if(_loc5_.itemDataVo != null)
                        {
                        }
                     }
                     param1.blockedItem = _loc5_;
                     return;
                  }
               }
               else if(this.colUtil.checkItemHit(param1.collideClip,_loc5_ as Sprite) == true)
               {
                  this.roomController.setCollision(_loc5_,param1);
                  return;
               }
            }
            _loc4_ = _loc4_ + 1;
         }
         param1.blockedItem = null;
      }
      
      public function findNearestTile(param1:Number, param2:Number) : ITileVo
      {
         return null;
      }
      
      public function showBlockedAreas() : void
      {
      }
      
      public function getNumberOfItems() : Number
      {
         return this.fArray.length;
      }
      
      public function addAvatar(param1:IAvatar) : void
      {
         this.fArray.push(param1.clip);
         this.avatarArray.push(param1);
         param1.clip.cacheAsBitmap = true;
         this.path.addChild(param1.clip);
         this.checkAvatarBlocked(param1);
      }
      
      public function addOtherAvatar(param1:IAvatar) : void
      {
         this.fArray.push(param1.clip);
         this.avatarArray.push(param1);
         this.path.addChild(param1.clip);
         param1.depth2 = param1.y;
         this.checkAvatarBlocked(param1);
      }
      
      public function initActionsForAvatars() : *
      {
         var _loc1_:Number = this.avatarArray.length;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.checkAvatarBlocked(this.avatarArray[_loc2_]);
            _loc2_++;
         }
      }
      
      public function removeOtherAvatar(param1:IAvatar) : *
      {
         if(this.path == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param1.clip == null)
         {
            return;
         }
         var _loc2_:Number = this.getItemIndex(param1 as Object);
         if(_loc2_ != -1)
         {
            this.fArray.splice(_loc2_,1);
         }
         if(this.path.contains(param1.clip))
         {
            this.path.removeChild(param1.clip);
         }
      }
      
      private function swapDepths(param1:SwapEvent) : void
      {
         if(this.path.getChildIndex(param1.topItem) < this.path.getChildIndex(param1.bottomItem))
         {
            this.path.swapChildren(param1.topItem,param1.bottomItem);
         }
      }
      
      private function avatarMoving(param1:AvatarMoveEvent) : *
      {
         if(param1.avatar is OthersWorldAvatar)
         {
            this.otherAvatarIsMoving(param1);
            return;
         }
         var _loc2_:Number = new Date().getTime();
         var _loc3_:Number = _loc2_ - this.lastUpdateMove;
         if(_loc3_ < 100)
         {
         }
         this.lastUpdateMove = _loc2_;
         this.checkAvatarBlocked(param1.avatar);
         param1.avatar.depth2 = param1.avatar.y;
      }
      
      private function otherAvatarIsMoving(param1:AvatarMoveEvent) : *
      {
         if(param1.avatar.dataProvider.pathFinding == false)
         {
            this.checkAvatarBlocked(param1.avatar);
         }
         var _loc2_:Number = new Date().getTime();
         var _loc3_:Number = _loc2_ - this.lastUpdateOtherAv;
         if(_loc3_ < 75)
         {
            return;
         }
         this.lastUpdateOtherAv = _loc2_;
         param1.avatar.depth2 = param1.avatar.y;
      }
      
      private function npcMoving(param1:NpcMoveEvent) : *
      {
      }
      
      private function updateSurface(param1:Event) : *
      {
      }
      
      public function arrangeSurface(param1:Event = null) : *
      {
         var _loc8_:ISurfaceObject = null;
         this.fc++;
         if(this.fc / 200 != int(this.fc / 200))
         {
         }
         this.fc = 0;
         var _loc2_:Number = new Date().getTime();
         var _loc3_:Number = _loc2_ - this.lastArrange;
         if(_loc3_ < 300)
         {
         }
         this.lastArrange = _loc2_;
         var _loc4_:Number = this.fArray.length;
         if(_loc4_ == 0)
         {
            return;
         }
         this.fArray.sortOn(["depth2"],Array.NUMERIC);
         var _loc5_:Number = 0;
         while(_loc5_ < _loc4_)
         {
            if(this.fArray[_loc5_] != null)
            {
               if(this.path.contains(this.fArray[_loc5_]))
               {
                  if(_loc5_ < this.path.numChildren)
                  {
                     this.path.setChildIndex(this.fArray[_loc5_],_loc5_);
                  }
               }
            }
            _loc5_ = _loc5_ + 1;
         }
         var _loc6_:Number = this.portalArray.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            _loc8_ = this.portalArray[_loc7_];
            if(this.path.contains(_loc8_.clip))
            {
               this.path.setChildIndex(_loc8_.clip,this.path.numChildren - 1);
            }
            _loc7_++;
         }
      }
      
      public function initSurface() : *
      {
         this.fArray.sortOn(["y"],Array.NUMERIC);
         var _loc1_:Number = this.fArray.length;
         var _loc2_:Number = 0;
         while(_loc2_ < _loc1_)
         {
            if(this.fArray[_loc2_] != null)
            {
               this.path.setChildIndex(this.fArray[_loc2_],_loc2_);
            }
            _loc2_ = _loc2_ + 1;
         }
      }
      
      private function avatarHasStopped(param1:AvatarMoveEvent) : *
      {
         if(param1.avatar is OthersWorldAvatar)
         {
            this.otherAvatarHasStopped(param1);
            return;
         }
         this.checkAvatarBlocked(param1.avatar);
         param1.avatar.depth2 = param1.avatar.y;
      }
      
      private function otherAvatarHasStopped(param1:AvatarMoveEvent) : void
      {
         if(param1.avatar.dataProvider.pathFinding == false)
         {
            this.checkAvatarBlocked(param1.avatar);
         }
         param1.avatar.depth2 = param1.avatar.y;
      }
      
      public function getTileAt(param1:Number, param2:Number) : ITileVo
      {
         var _loc3_:ITileVo = this.tiles[param1][param2];
         return _loc3_;
      }
      
      public function getX() : Number
      {
         return x;
      }
      
      public function getY() : Number
      {
         return y;
      }
      
      private function walkTo(param1:MouseEvent) : *
      {
         this.avatarController.setTarget(this.mouseX,this.mouseY);
      }
      
      private function getItemIndex(param1:Object) : *
      {
         if(param1 == null)
         {
            return -1;
         }
         var _loc2_:Number = this.fArray.length;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_)
         {
            if(param1 == this.fArray[_loc3_])
            {
               return _loc3_;
            }
            _loc3_ = _loc3_ + 1;
         }
         return -1;
      }
      
      public function addNpc(param1:Inpc, param2:Number, param3:Number) : void
      {
      }
      
      public function addTalkBalloon(param1:IWorldObject) : void
      {
         this.fArray.push(param1);
         this.path.addChild(param1.clip);
      }
      
      public function clearAvatars() : void
      {
         this.avatarArray = [this.avatarModel.avatar];
      }
      
      public function addTopItem(param1:Sprite) : void
      {
         this.topItems.addChild(param1);
      }
      
      public function clearTopItems() : void
      {
         while(this.topItems.numChildren > 0)
         {
            this.topItems.removeChildAt(0);
         }
      }
      
      public function addObject(param1:ISurfaceObject, param2:Boolean = false) : void
      {
         if(param1 == null)
         {
            return;
         }
         this.fArray.push(param1);
         this.path.addChild(param1.clip);
         if(param2 == true)
         {
            this.eventController.addEventListener(param1.clip,GlobalConstants.MOVING,this.checkItemBlocked,false,0,true);
            this.eventController.addEventListener(param1.clip,Event.REMOVED_FROM_STAGE,this.objectRemoved);
         }
         if(param1.canCollide == true)
         {
            this.collisionArray.push(param1);
         }
      }
      
      private function objectRemoved(param1:Event) : void
      {
         var _loc2_:ISurfaceObject = param1.target as ISurfaceObject;
         if(_loc2_.clip)
         {
            this.eventController.removeEventListener(_loc2_.clip,Event.REMOVED_FROM_STAGE,this.objectRemoved);
            this.eventController.removeEventListener(_loc2_.clip,GlobalConstants.MOVING,this.checkItemBlocked);
         }
      }
      
      public function removeObject(param1:ISurfaceObject) : void
      {
         var _loc2_:Number = this.getItemIndex(param1 as Object);
         if(_loc2_ != -1)
         {
            this.fArray.splice(_loc2_,1);
            this.eventController.removeEventListener(param1.clip,GlobalConstants.MOVING,this.checkItemBlocked);
         }
         var _loc3_:Number = this.getCollisionIndex(param1);
         if(_loc3_ != -1)
         {
            this.collisionArray.splice(_loc3_,1);
         }
         if(this.path.contains(param1.clip))
         {
            this.path.removeChild(param1.clip);
         }
         param1 = null;
      }
      
      public function isInRoom(param1:ISurfaceObject) : Boolean
      {
         return this.path.contains(param1.clip);
      }
      
      public function checkMapCollision(param1:ISurfaceObject) : Boolean
      {
         var _loc2_:Number = new Date().getTime();
         var _loc3_:Number = _loc2_ - this.lastMapCheck;
         if(_loc3_ < 100)
         {
            return false;
         }
         if(this.colUtil.checkHitObj(param1.clip,this.cmap) == true)
         {
            return true;
         }
         return false;
      }
      
      public function get clip() : Sprite
      {
         return this as Sprite;
      }
      
      public function addToCollisionList(param1:ISurfaceObject) : void
      {
         if(this.itemIsOnList(param1) == false)
         {
            this.collisionArray.push(param1);
         }
      }
      
      public function getCollisionIndex(param1:ISurfaceObject) : Number
      {
         var _loc2_:Number = this.collisionArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.collisionArray[_loc3_].myName == param1.myName)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
      
      public function removeFromCollisionList(param1:ISurfaceObject) : void
      {
         var _loc2_:Number = this.collisionArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.collisionArray[_loc3_].myName == param1.myName)
            {
               this.collisionArray.splice(_loc3_,1);
               return;
            }
            _loc3_++;
         }
      }
      
      private function itemIsOnList(param1:ISurfaceObject) : Boolean
      {
         var _loc2_:Number = this.collisionArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.collisionArray[_loc3_].myName == param1.myName)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public function addAvatarToCollideList(param1:IAvatar) : void
      {
         if(this.avIsOnList(param1) == false)
         {
            this.avatarCollideList.push(param1);
         }
      }
      
      public function removeAvatarFromCollideList(param1:IAvatar) : void
      {
         var _loc2_:Number = this.avatarCollideList.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.avatarCollideList[_loc3_] == param1)
            {
               this.avatarCollideList.splice(_loc3_,_loc3_);
               return;
            }
            _loc3_++;
         }
      }
      
      private function avIsOnList(param1:IAvatar) : Boolean
      {
         var _loc2_:Number = this.avatarCollideList.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.avatarCollideList[_loc3_] == param1)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public function checkAvatarCollisions(param1:IAvatar) : void
      {
         var _loc4_:Number = NaN;
         var _loc2_:Number = this.avatarCollideList.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.avatarCollideList[_loc3_] != param1)
            {
               _loc4_ = ObjUtil.getDistance(param1.clip,this.avatarCollideList[_loc3_].clip);
               if(_loc4_ < 200)
               {
                  if(this.avatarCollideList[_loc3_].dataProvider != null)
                  {
                  }
                  this.avatarCollideList[_loc3_].isHit(param1);
               }
            }
            _loc3_++;
         }
      }
      
      private function fillSpots() : *
      {
         var _loc4_:IMarker = null;
         var _loc1_:ColController = new ColController();
         _loc1_.clearAll();
         var _loc2_:Number = this.fmap.numChildren;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.fmap.getChildAt(_loc3_) as IMarker;
            if(_loc4_ != null)
            {
               switch(_loc4_.type)
               {
                  case MarkerConstants.FLOWER:
                     _loc1_.addFlower(new Point(_loc4_.clip.x,_loc4_.clip.y));
                     break;
                  case MarkerConstants.BUG:
                     _loc1_.addBug(new Point(_loc4_.clip.x,_loc4_.clip.y));
                     break;
                  case MarkerConstants.TRASH:
                     _loc1_.addTrash(new Point(_loc4_.clip.x,_loc4_.clip.y));
               }
            }
            _loc3_++;
         }
      }
      
      private function fillAds() : *
      {
         var _loc4_:IAd = null;
         var _loc1_:MsController = new MsController();
         _loc1_.clearAds();
         var _loc2_:Number = this.adMap.numChildren;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.adMap.getChildAt(_loc3_) as IAd;
            if(_loc4_ != null)
            {
               _loc1_.addAd(_loc4_.getData());
            }
            _loc3_++;
         }
      }
   }
}
