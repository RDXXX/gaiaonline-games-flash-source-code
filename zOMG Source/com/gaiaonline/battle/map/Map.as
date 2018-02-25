package com.gaiaonline.battle.map
{
   import com.gaiaonline.battle.utils.BattleUtils;
   import com.gaiaonline.battle.utils.RasterizationStore;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.platform.map.IMapSoundManager;
   import com.gaiaonline.platform.map.ITalkIconManager;
   import com.gaiaonline.platform.map.ITintManager;
   import com.gaiaonline.platform.map.MapFilesFactory;
   import com.gaiaonline.utils.DisplayObjectStopper;
   import com.gaiaonline.utils.DisplayObjectStopperModes;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import com.gaiaonline.utils.MouseEventProxy;
   import com.gaiaonline.utils.MouseMoveLimiter;
   import com.gaiaonline.utils.SpritePositionBubbler;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class Map extends Sprite implements IMap
   {
      
      public static const MAP_INITIALIZED:String = "MapInitialized";
       
      
      private var _wasWordBubble:Boolean = false;
      
      private var debuggingLayer:Sprite;
      
      private var _cachedRoomArray:Array;
      
      private var _projectileManager:ProjectileManager = null;
      
      private var _mapLoadManager:MapLoadManager = null;
      
      private var mcBtnLayer:Sprite;
      
      private var _mouseMoveLimiter:MouseMoveLimiter;
      
      private var _isMapVisible:Boolean = false;
      
      private var _theTintManager:ITintManager = null;
      
      private var collisionLayer:Sprite;
      
      private var infoLayer:Sprite;
      
      private var _dialogManager:DialogManager = null;
      
      private var _emoteLayer:Sprite;
      
      private var mcHotSpotLayer:Sprite;
      
      private var _talkIconManager:ITalkIconManager = null;
      
      private var _firstMapLoad:Boolean = true;
      
      private var _mapRoomManager:MapRoomManager = null;
      
      private var _rasterizationStore:RasterizationStore;
      
      private var waterLayer:Sprite;
      
      private var _isFirstMap:Boolean = true;
      
      private var mapLoaded:Boolean = false;
      
      private var _soundManager:IMapSoundManager = null;
      
      private var _baseUrl:String = null;
      
      private var _waterDepthManager:WaterDepthManager = null;
      
      private var _mapHolder:IMapHolder = null;
      
      private var mcBackLayer:Sprite;
      
      private var areaName:String = "";
      
      private var _stageLayerManager:StageLayerManager = null;
      
      private var areaScale:Number = 75;
      
      private var _backgroundLayerStopper:DisplayObjectStopper;
      
      private var _lootParticleManager:LootParticleManager = null;
      
      private var _awarenessLayer:Sprite;
      
      private var _mainContainer:Sprite;
      
      private var _mcGroundEffect:Sprite;
      
      private var _collisionDebugLayer:Sprite;
      
      private var wbContainer:Sprite;
      
      public function Map(mapRoomManager:MapRoomManager, tintManager:ITintManager, talkIconManager:ITalkIconManager, soundManager:IMapSoundManager, mapLoadManager:MapLoadManager, baseUrl:String, awarenessLayer:Sprite, debugLayer:Sprite = null)
      {
         _cachedRoomArray = [];
         super();
         this._baseUrl = baseUrl;
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_LOAD_ZONE,loadZone);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_DONE,setRoom);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.NEW_ROOM_ENTERED,onNewRoomEntered);
         this._awarenessLayer = awarenessLayer;
         this.debuggingLayer = debugLayer;
         _waterDepthManager = new WaterDepthManager(this);
         _mapRoomManager = mapRoomManager;
         _mapLoadManager = mapLoadManager;
         _mapLoadManager.addEventListener(MapLoadManagerEvent.COMPLETE,onMapLoaded,false,0,true);
         _theTintManager = tintManager;
         var silManager:SilhouetteManager = new SilhouetteManager(_mapRoomManager);
         _soundManager = soundManager;
         _stageLayerManager = new StageLayerManager(_waterDepthManager,_theTintManager,silManager);
         _projectileManager = new ProjectileManager(_stageLayerManager);
         _lootParticleManager = new LootParticleManager(_stageLayerManager);
         _talkIconManager = talkIconManager;
         init();
      }
      
      private static function dispatchMouseOverStateChange(arg:Object) : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MOUSE_OVER_STATE_CHANGED,arg));
      }
      
      private function addRingGroundEffect(event:GlobalEvent) : void
      {
         this._mcGroundEffect.addChild(event.data.effect);
      }
      
      private function getMapRoomMouseXY() : Point
      {
         var offset:Point = null;
         var scale:Number = NaN;
         var x:Number = NaN;
         var y:Number = NaN;
         var mr:MapRoom = getCurrentMapRoom();
         if(mr)
         {
            offset = mr.getRoomOffset();
            scale = mr.scale / 100;
            x = (this.mouseX - offset.x) / scale;
            y = (this.mouseY - offset.y) / scale;
            return new Point(x,y);
         }
         return null;
      }
      
      private function onMapSlideStart(event:GlobalEvent) : void
      {
         var room:MapRoom = getRoomById(event.data.roomId);
         if(!room)
         {
            throw new Error("We don\'t have a room for the given room id: " + event.data.roomId);
         }
         this.buildRoom(event.data.roomId);
      }
      
      private function init() : void
      {
         this.tabEnabled = false;
         this.tabChildren = false;
         this.addEventListener(MouseEvent.MOUSE_DOWN,onMouseDown,false,0,true);
         this.addEventListener(MouseEvent.MOUSE_UP,onMouseUp,false,0,true);
         this._mouseMoveLimiter = new MouseMoveLimiter(this);
         this._mouseMoveLimiter.addListener(onMouseMove);
         this.initLayers();
      }
      
      private function addRingPointEffect(event:GlobalEvent) : void
      {
         this._stageLayerManager.addChild(event.data.effect);
      }
      
      private function onNewRoomEntered(event:GlobalEvent) : void
      {
         var data:Object = event.data;
         clearOldRoom(data.previousRoomId,data.newRoomId);
      }
      
      public function isLightsOn() : Boolean
      {
         return _theTintManager.isLightsOn();
      }
      
      public function getMapDisplayObject() : DisplayObjectContainer
      {
         return this;
      }
      
      public function drawCollisionMap() : void
      {
         this.clearCollision();
         getCurrentMapRoom().DrawCollisionMap(this._collisionDebugLayer);
      }
      
      public function addMask(m:DisplayObject) : void
      {
         if(this._mainContainer && m.parent != this._mainContainer)
         {
            this._mainContainer.addChild(m);
            this._mainContainer.mask = m;
         }
         this._isMapVisible = false;
      }
      
      private function onMouseUp(evt:MouseEvent) : void
      {
         var point:Point = null;
         if(this.mapLoaded)
         {
            point = getMapRoomMouseXY();
            if(point)
            {
               GlobalEvent.eventDispatcher.dispatchEvent(new MouseEvent(GlobalEvent.MAP_MOUSE_UP,true,false,point.x,point.y));
            }
         }
      }
      
      private function unloadZone() : void
      {
         _projectileManager.clearProjectiles();
         _lootParticleManager.removeAllLootParticle();
         DisplayObjectUtils.ClearAllChildrens(this.mcBackLayer);
         DisplayObjectUtils.ClearAllChildrens(this._mcGroundEffect);
         DisplayObjectUtils.ClearAllChildrens(this.mcHotSpotLayer);
         DisplayObjectUtils.ClearAllChildrens(this.mcBtnLayer);
         DisplayObjectUtils.ClearAllChildrens(this.wbContainer);
         DisplayObjectUtils.ClearAllChildrens(this._emoteLayer);
      }
      
      private function setRoom(event:GlobalEvent) : void
      {
         var newRoomId:String = event.data.roomId;
         var newRoom:MapRoom = getRoomById(newRoomId);
         this.buildRoom(getCurrentRoomId());
      }
      
      private function setMouseEnabled(event:GlobalEvent) : void
      {
         this._mainContainer.mouseEnabled = event.data.enabled;
      }
      
      private function onMapLoaded(evt:MapLoadManagerEvent) : void
      {
         GlobalEvent.eventDispatcher.dispatchEvent(new Event(GlobalEvent.MAP_LOADED));
         var parent:MovieClip = evt.mapData;
         this.areaScale = !!parent.getScale?Number(parent.getScale()):Number(75);
         this.infoLayer = Sprite(parent.getChildByName("infoLayer"));
         if(this.infoLayer)
         {
            this.infoLayer.x = this.infoLayer.y = 0;
            _mapRoomManager.initRoomsFromInfoLayer(infoLayer);
         }
         DisplayObjectUtils.ClearAllChildrens(this.infoLayer);
         var backLayer:Sprite = Sprite(parent.getChildByName("backLayer"));
         if(backLayer)
         {
            _backgroundLayerStopper = new DisplayObjectStopper(DisplayObjectStopperModes.SHOW_NO_ANIM,true);
            _backgroundLayerStopper.addGarbageStopper(this.mcBackLayer);
            this.initBackGrounds(backLayer);
            backLayer.x = backLayer.y = 0;
         }
         var waterLayer:Sprite = Sprite(parent.getChildByName("waterLayer"));
         _waterDepthManager.initWater(waterLayer);
         var size:Point = this.getSize();
         _theTintManager.initTintLayers(size.x,size.y);
         this.collisionLayer = Sprite(parent.getChildByName("collisionLayer"));
         var stageLayer:Sprite = Sprite(parent.getChildByName("stageLayer"));
         if(stageLayer)
         {
            stageLayer.x = stageLayer.y = 0;
            this.initMapObject(stageLayer);
         }
         if(this.collisionLayer != null)
         {
            this.collisionLayer.x = this.collisionLayer.y = 0;
            parent.removeChild(this.collisionLayer);
            DisplayObjectUtils.ClearAllChildrens(this.collisionLayer,3);
         }
         var soundLayer:Sprite = Sprite(parent.getChildByName("soundLayer"));
         if(soundLayer != null)
         {
            soundLayer.x = soundLayer.y = 0;
            this.initSounds(soundLayer);
         }
         DisplayObjectUtils.ClearAllChildrens(soundLayer);
         _theTintManager.setCurrentGSTTint(!_isFirstMap);
         _theTintManager.setLights();
         _isFirstMap = false;
         this.mapLoaded = true;
         dispatchEvent(new Event(MAP_INITIALIZED));
         startListeners();
         BattleUtils.disableMouseOnChildren(this);
      }
      
      private function clearCollision() : void
      {
         while(this._collisionDebugLayer.numChildren > 0)
         {
            this._collisionDebugLayer.removeChildAt(0);
         }
         this._collisionDebugLayer.graphics.clear();
      }
      
      private function buildRoom(roomId:String) : void
      {
         var roomInfoData:RoomInfoData = null;
         var northRoom:MapRoom = null;
         var southRoom:MapRoom = null;
         var eastRoom:MapRoom = null;
         var westRoom:MapRoom = null;
         var back:MovieClip = null;
         var i:int = 0;
         var currentRoom:MapRoom = null;
         var mapObj:MapObject = null;
         var mc:SpritePositionBubbler = null;
         var shadow:Sprite = null;
         var groundLight:Sprite = null;
         var hotStop:Sprite = null;
         var mapRoom:MapRoom = getRoomById(roomId);
         if(mapRoom != null)
         {
            mapRoom.getCollisionData();
            roomInfoData = mapRoom.roomInfo;
            northRoom = getRoomById(roomInfoData.exit_north);
            if(northRoom)
            {
               northRoom.getCollisionData();
            }
            southRoom = getRoomById(roomInfoData.exit_south);
            if(southRoom)
            {
               southRoom.getCollisionData();
            }
            eastRoom = getRoomById(roomInfoData.exit_east);
            if(eastRoom)
            {
               eastRoom.getCollisionData();
            }
            westRoom = getRoomById(roomInfoData.exit_west);
            if(westRoom)
            {
               westRoom.getCollisionData();
            }
            back = mapRoom.getBack();
            if(back != null && !this.mcBackLayer.contains(back))
            {
               this.mcBackLayer.addChild(back);
               currentRoom = getCurrentMapRoom();
               if(currentRoom != null)
               {
                  back.gotoAndPlay(currentRoom.getBack().currentFrame);
               }
            }
            for(i = 0; i < mapRoom.mapObjs.length; i++)
            {
               mapObj = mapRoom.mapObjs[i];
               mapObj.display();
               if(!mapObj.isCustomLight)
               {
                  mapObj.setLight(_theTintManager.isLightsOn());
               }
               mc = mapObj.getStageMc();
               shadow = mapObj.getShadow();
               groundLight = mapObj.getGroundLight();
               hotStop = mapObj.getHotSpot();
               this._stageLayerManager.addChild(mc);
               _theTintManager.addShadow(shadow);
               _theTintManager.addGroundLight(groundLight);
               if(hotStop != null && !this.mcHotSpotLayer.contains(hotStop))
               {
                  this.mcHotSpotLayer.addChild(hotStop);
               }
               if(mapObj.btnLink != null && !this.mcBtnLayer.contains(mapObj.btnLink))
               {
                  this.mcBtnLayer.addChild(mapObj.btnLink);
               }
            }
            mapRoom.inScope = true;
            _theTintManager.updateTints(roomId);
         }
      }
      
      private function initLayers() : void
      {
         this._mainContainer = new Sprite();
         this.addChild(this._mainContainer);
         this.mcBackLayer = new Sprite();
         this._mcGroundEffect = new Sprite();
         this.mcHotSpotLayer = new Sprite();
         this.mcHotSpotLayer.mouseEnabled = false;
         this.mcHotSpotLayer.mouseChildren = false;
         this.mcBtnLayer = new Sprite();
         this._mainContainer.addChild(this.mcBackLayer);
         this._mainContainer.addChild(_theTintManager.getTintLayer());
         this._mainContainer.addChild(this._mcGroundEffect);
         this._mainContainer.addChild(_stageLayerManager.getStageLayer());
         this._mainContainer.addChild(this.mcHotSpotLayer);
         this._mainContainer.addChild(this.mcBtnLayer);
         this.wbContainer = new Sprite();
         this._mainContainer.addChild(this.wbContainer);
         this.wbContainer.mouseEnabled = false;
         this._emoteLayer = new Sprite();
         this._mainContainer.addChild(this._emoteLayer);
         this._mainContainer.addChild(_talkIconManager.getTalkIconLayer());
         this.addChild(this._awarenessLayer);
         this._collisionDebugLayer = new Sprite();
         this._collisionDebugLayer.visible = false;
         this.addChild(this._collisionDebugLayer);
         if(debuggingLayer)
         {
            this.addChild(this.debuggingLayer);
         }
         _dialogManager = new DialogManager(wbContainer);
      }
      
      private function initSounds(soundLayer:Sprite) : void
      {
         var ms:Object = null;
         var fCol:int = 0;
         var fRow:int = 0;
         var fx:int = 0;
         var fy:int = 0;
         var r:MapRoom = null;
         var lx:int = 0;
         var ly:int = 0;
         GlobalEvent.eventDispatcher.dispatchEvent(new ProgressEvent(GlobalEvent.MAP_INIT_PROGRESS,false,false,90,100));
         for(var msId:int = 0; msId < soundLayer.numChildren; msId++)
         {
            ms = soundLayer.getChildAt(msId);
            if(ms == "[object MapSound]")
            {
               fCol = Math.floor(ms.x / 780);
               fRow = Math.floor(ms.y / 505);
               fx = ms.x - fCol * 780;
               fy = ms.y - fRow * 505;
               r = _mapRoomManager.getRoomAtLayoutPos(fCol,fRow);
               if(r)
               {
                  lx = r.layoutPos.x * 780 + fx;
                  ly = r.layoutPos.y * 505 + fy;
                  _soundManager.addMapSound(ms,new Point(lx,ly),r.serverRoomId,getCurrentRoomId());
               }
            }
         }
         if(!_firstMapLoad)
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new ProgressEvent(GlobalEvent.MAP_INIT_PROGRESS,false,false,100,100));
         }
         _firstMapLoad = false;
      }
      
      private function getSize() : Point
      {
         return _mapRoomManager.getSize();
      }
      
      private function setMouseChildren(event:GlobalEvent) : void
      {
         this._mainContainer.mouseChildren = event.data.enabled;
      }
      
      public function getCurrentRoomId() : String
      {
         return _mapRoomManager.getCurrentRoomId();
      }
      
      private function initMapObject(stageLayer:Sprite) : void
      {
         var fileMapObj:Sprite = null;
         var fCol:int = 0;
         var fRow:int = 0;
         var fx:int = 0;
         var fy:int = 0;
         var r:MapRoom = null;
         var mc:Sprite = null;
         var lx:int = 0;
         var ly:int = 0;
         var bounds:Rectangle = null;
         var mObj:MapObject = null;
         var bCol:int = 0;
         var bRow:int = 0;
         var adjacent:MapRoom = null;
         GlobalEvent.eventDispatcher.dispatchEvent(new ProgressEvent(GlobalEvent.MAP_INIT_PROGRESS,false,false,80,100));
         var mcImpassible:Sprite = Sprite(this.collisionLayer.getChildByName("mcImpassible"));
         if(mcImpassible != null)
         {
            DisplayObjectUtils.ClearAllChildrens(mcImpassible,3);
         }
         if(!stageLayer)
         {
            return;
         }
         for(var n:int = stageLayer.numChildren - 1; 0 <= n; n--)
         {
            if(stageLayer.getChildAt(n) is Sprite)
            {
               fileMapObj = Sprite(stageLayer.getChildAt(n));
               if(fileMapObj is Sprite)
               {
                  fCol = Math.floor(fileMapObj.x / 780);
                  fRow = Math.floor(fileMapObj.y / 505);
                  fx = fileMapObj.x - fCol * 780;
                  fy = fileMapObj.y - fRow * 505;
                  r = _mapRoomManager.getRoomAtLayoutPos(fCol,fRow);
                  if(r)
                  {
                     mc = fileMapObj;
                     lx = r.layoutPos.x * 780 + fx;
                     ly = r.layoutPos.y * 505 + fy;
                     bounds = fileMapObj.getBounds(fileMapObj.parent);
                     mc.x = lx;
                     mc.y = ly;
                     mObj = new MapObject(this,mc);
                     r.addMapObject(mObj);
                     bCol = Math.floor(bounds.left / 780);
                     bRow = Math.floor(bounds.top / 505);
                     adjacent = _mapRoomManager.getRoomAtLayoutPos(bCol,bRow);
                     if(adjacent)
                     {
                        adjacent.addMapObject(mObj);
                     }
                     bCol = Math.floor(bounds.right / 780);
                     bRow = Math.floor(bounds.top / 505);
                     adjacent = _mapRoomManager.getRoomAtLayoutPos(bCol,bRow);
                     if(adjacent)
                     {
                        adjacent.addMapObject(mObj);
                     }
                     bCol = Math.floor(bounds.left / 780);
                     bRow = Math.floor(bounds.bottom / 505);
                     adjacent = _mapRoomManager.getRoomAtLayoutPos(bCol,bRow);
                     if(adjacent)
                     {
                        adjacent.addMapObject(mObj);
                     }
                     bCol = Math.floor(bounds.right / 780);
                     bRow = Math.floor(bounds.bottom / 505);
                     adjacent = _mapRoomManager.getRoomAtLayoutPos(bCol,bRow);
                     if(adjacent)
                     {
                        adjacent.addMapObject(mObj);
                     }
                  }
               }
            }
         }
      }
      
      public function isNullChamber() : Boolean
      {
         return MapFilesFactory.getInstance().mapFiles.isNullchamber(this.zone);
      }
      
      public function isMapLoaded() : Boolean
      {
         return this.mapLoaded;
      }
      
      public function removeMask(m:DisplayObject) : void
      {
         if(this._mainContainer && m.parent == this._mainContainer)
         {
            this._mainContainer.removeChild(m);
         }
         this._mainContainer.mask = null;
         this._isMapVisible = true;
      }
      
      public function getCurrentMapRoom() : MapRoom
      {
         return _mapRoomManager.getCurrentMapRoom();
      }
      
      private function clearOldRoom(oldRoomId:String, newRoomId:String) : void
      {
         var back:Sprite = null;
         var objs:Array = null;
         var newRoom:MapRoom = null;
         var ii:int = 0;
         var i:int = 0;
         var mapObj:MapObject = null;
         var mc:Sprite = null;
         var hotSpot:Sprite = null;
         if(oldRoomId == newRoomId)
         {
            return;
         }
         var oldRoom:MapRoom = getRoomById(oldRoomId);
         if(oldRoom != null)
         {
            oldRoom.removeAllObjectSilhouettes();
            back = oldRoom.getBack();
            if(back != null && this.mcBackLayer.contains(back))
            {
               this.mcBackLayer.removeChild(back);
            }
            _cachedRoomArray.length = 0;
            objs = _cachedRoomArray;
            newRoom = getRoomById(newRoomId);
            if(newRoom)
            {
               for(i = 0; i < oldRoom.mapObjs.length; i++)
               {
                  if(!newRoom.containMapObj(oldRoom.mapObjs[i]))
                  {
                     objs.push(oldRoom.mapObjs[i]);
                  }
               }
            }
            else
            {
               objs = oldRoom.mapObjs;
            }
            for(ii = 0; ii < objs.length; ii++)
            {
               mapObj = objs[ii];
               mc = mapObj.getStageMc();
               this._stageLayerManager.removeChild(mc);
               mc = null;
               _theTintManager.removeShadow(mapObj.getShadow());
               _theTintManager.removeGroundLight(mapObj.getGroundLight());
               hotSpot = mapObj.getHotSpot();
               if(hotSpot != null && this.mcHotSpotLayer.contains(hotSpot))
               {
                  this.mcHotSpotLayer.removeChild(hotSpot);
                  hotSpot = null;
               }
               if(mapObj.btnLink != null && this.mcBtnLayer.contains(mapObj.btnLink))
               {
                  this.mcBtnLayer.removeChild(mapObj.btnLink);
               }
               mapObj.hide();
            }
            oldRoom.inScope = false;
         }
      }
      
      public function getActorPos(serverPoint:Point) : Point
      {
         var mr:MapRoom = getCurrentMapRoom();
         var of:Point = new Point(mr.layoutPos.x * 780,mr.layoutPos.y * 505);
         var scale:Number = mr.scale / 100;
         var np:Point = new Point(serverPoint.x * scale + of.x,serverPoint.y * scale + of.y);
         return np;
      }
      
      public function setBackParam(obj:Object) : void
      {
         _mapRoomManager.setBackParamForAllRooms(obj);
      }
      
      public function isCollisionShowing() : Boolean
      {
         return this._collisionDebugLayer.visible;
      }
      
      private function get zone() : String
      {
         return _mapRoomManager.zone;
      }
      
      public function getEmoteLayer() : Sprite
      {
         return _emoteLayer;
      }
      
      private function loadZone(event:GlobalEvent) : void
      {
         unloadZone();
         var zoneToLoad:String = event.data.zone;
         _rasterizationStore = null;
         _mapLoadManager.startLoad(zoneToLoad);
         this.infoLayer = null;
         this.mapLoaded = false;
      }
      
      private function initBackGrounds(backLayer:Sprite) : void
      {
         var fileBackImg:MovieClip = null;
         var fCol:int = 0;
         var fRow:int = 0;
         var r:MapRoom = null;
         var fx:int = 0;
         var fy:int = 0;
         var lx:int = 0;
         var ly:int = 0;
         GlobalEvent.eventDispatcher.dispatchEvent(new ProgressEvent(GlobalEvent.MAP_INIT_PROGRESS,false,false,60,100));
         DisplayObjectUtils.stopAllMovieClips(backLayer);
         for(var n:int = 0; n < backLayer.numChildren; n++)
         {
            fileBackImg = backLayer.getChildAt(n) as MovieClip;
            if(fileBackImg)
            {
               fCol = Math.floor(fileBackImg.x / 780);
               fRow = Math.floor(fileBackImg.y / 505);
               r = _mapRoomManager.getRoomAtLayoutPos(fCol,fRow);
               if(r)
               {
                  fx = fileBackImg.x - fCol * 780;
                  fy = fileBackImg.y - fRow * 505;
                  lx = r.layoutPos.x * 780 + fx;
                  ly = r.layoutPos.y * 505 + fy;
                  fileBackImg.x = lx;
                  fileBackImg.y = ly;
                  r.setBack(fileBackImg);
               }
            }
         }
      }
      
      public function setCollisionShowing(b:Boolean) : void
      {
         this._collisionDebugLayer.visible = b;
      }
      
      public function getRoomById(id:String) : MapRoom
      {
         return _mapRoomManager.getRoomById(id);
      }
      
      private function onMouseDown(evt:MouseEvent) : void
      {
         if(this.mapLoaded)
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new MouseEvent(GlobalEvent.MAP_MOUSE_DOWN,true,false,evt.localX,evt.localY));
         }
      }
      
      public function getColliionTypeAt(x:Number, y:Number) : uint
      {
         var currentRoom:MapRoom = getCurrentMapRoom();
         if(currentRoom)
         {
            return currentRoom.getCollisionTypeAt(x,y);
         }
         return CollisionMap.TYPE_WALL;
      }
      
      public function getRasterizationStore() : RasterizationStore
      {
         if(!_rasterizationStore)
         {
            _rasterizationStore = new RasterizationStore();
         }
         return _rasterizationStore;
      }
      
      private function removeRingPointEffect(event:GlobalEvent) : void
      {
         var child:DisplayObject = DisplayObject(event.data.effect);
         this._stageLayerManager.removeChild(child);
      }
      
      public function removeActor(displayObject:SpritePositionBubbler) : void
      {
         _talkIconManager.removeDialog(displayObject);
         this._stageLayerManager.removeChild(displayObject);
      }
      
      private function getEdgeSize() : Number
      {
         var scale:Number = getCurrentMapRoom().scale;
         var serverEdge:int = Math.floor(20 * 100 / scale);
         return serverEdge;
      }
      
      public function addActor(displayObject:SpritePositionBubbler) : void
      {
         this._theTintManager.updateObject(displayObject);
         this._stageLayerManager.addChild(displayObject);
      }
      
      public function setMapHolder(holder:IMapHolder) : void
      {
         _mapHolder = holder;
         _dialogManager.setBounds(_mapHolder.getMcBound());
      }
      
      private function removeRingGroundEffect(event:GlobalEvent) : void
      {
         var child:DisplayObject = DisplayObject(event.data.effect);
         if(this._mcGroundEffect.contains(child))
         {
            this._mcGroundEffect.removeChild(child);
         }
      }
      
      private function onMouseMove(evt:MouseEventProxy) : void
      {
         var target:DisplayObject = null;
         var m:MapRoom = null;
         var scale:Number = NaN;
         var offset:Point = null;
         var mx:Number = NaN;
         var my:Number = NaN;
         var rw:Number = NaN;
         var rh:Number = NaN;
         var exits:Object = null;
         var edgeOpen:Boolean = false;
         var roomInfoData:RoomInfoData = null;
         var westRoom:MapRoom = null;
         var eastRoom:MapRoom = null;
         var northRoom:MapRoom = null;
         var southRoom:MapRoom = null;
         var point:Point = null;
         target = DisplayObject(evt.original.target);
         var isWordBubble:Boolean = this.wbContainer.contains(target) || this._talkIconManager.contains(target);
         if(this._wasWordBubble != isWordBubble)
         {
            this._wasWordBubble = isWordBubble;
            dispatchMouseOverStateChange({"isWordBubble":isWordBubble});
         }
         var ct:uint = this.getColliionTypeAt(this.mouseX,this.mouseY);
         if((ct & CollisionMap.TYPE_WALL) != 0)
         {
            dispatchMouseOverStateChange({
               "isMapCollision":true,
               "isPortal":false
            });
         }
         else if((ct & CollisionMap.TRIGGER_BITMASK) != 0)
         {
            dispatchMouseOverStateChange({
               "isMapCollision":false,
               "isPortal":true,
               "portalType":"portal"
            });
         }
         else
         {
            dispatchMouseOverStateChange({"isMapCollision":false});
            m = getCurrentMapRoom();
            scale = m.scale;
            offset = m.getRoomOffset();
            mx = Math.round((this.mouseX - offset.x) * (100 / scale));
            my = Math.round((this.mouseY - offset.y) * (100 / scale));
            rw = Math.ceil(780 * (100 / scale));
            rh = Math.ceil(505 * (100 / scale));
            exits = m.getExits();
            edgeOpen = false;
            roomInfoData = m.roomInfo;
            if(mx < this.getEdgeSize() && exits.west && CollisionMap.TYPE_WALL != this.getColliionTypeAt(offset.x + 1,this.mouseY))
            {
               westRoom = getRoomById(roomInfoData.exit_west);
               if(westRoom != null)
               {
                  edgeOpen = westRoom.testEastEdgeOpen(this.mouseY);
               }
               if(edgeOpen)
               {
                  dispatchMouseOverStateChange({
                     "isPortal":true,
                     "portalType":"west"
                  });
               }
            }
            else if(mx > rw - this.getEdgeSize() && exits.east && CollisionMap.TYPE_WALL != this.getColliionTypeAt(offset.x + 779,this.mouseY))
            {
               eastRoom = getRoomById(roomInfoData.exit_east);
               if(eastRoom != null)
               {
                  edgeOpen = eastRoom.testWestEdgeOpen(this.mouseY);
               }
               if(edgeOpen)
               {
                  dispatchMouseOverStateChange({
                     "isPortal":true,
                     "portalType":"east"
                  });
               }
            }
            else if(my < this.getEdgeSize() && exits.north && CollisionMap.TYPE_WALL != this.getColliionTypeAt(this.mouseX,offset.y + 1))
            {
               northRoom = getRoomById(roomInfoData.exit_north);
               if(northRoom != null)
               {
                  edgeOpen = northRoom.testSouthEdgeOpen(this.mouseX);
               }
               if(edgeOpen)
               {
                  dispatchMouseOverStateChange({
                     "isPortal":true,
                     "portalType":"north"
                  });
               }
            }
            else if(my > rh - this.getEdgeSize() && exits.south && CollisionMap.TYPE_WALL != this.getColliionTypeAt(this.mouseX,offset.y + 504))
            {
               southRoom = getRoomById(roomInfoData.exit_south);
               if(southRoom != null)
               {
                  edgeOpen = southRoom.testNorthEdgeOpen(this.mouseX);
               }
               if(edgeOpen)
               {
                  dispatchMouseOverStateChange({
                     "isPortal":true,
                     "portalType":"south"
                  });
               }
            }
            if(!edgeOpen)
            {
               dispatchMouseOverStateChange({
                  "isPortal":false,
                  "portalType":"na"
               });
            }
         }
         if(GlobalEvent.eventDispatcher.hasEventListener(GlobalEvent.MAP_MOUSE_MOVE))
         {
            point = getMapRoomMouseXY();
            if(point)
            {
               GlobalEvent.eventDispatcher.dispatchEvent(new MouseEvent(GlobalEvent.MAP_MOUSE_MOVE,true,false,point.x,point.y));
            }
         }
      }
      
      private function startListeners() : void
      {
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_ADD_GROUND_RING_EFFECT,addRingGroundEffect);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_REMOVE_GROUND_RING_EFFECT,removeRingGroundEffect);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_ADD_POINT_RING_EFFECT,addRingPointEffect);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_REMOVE_POINT_RING_EFFECT,removeRingPointEffect);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_SET_MOUSE_ENABLED,setMouseEnabled);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_SET_MOUSE_CHILDREN,setMouseChildren);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_SLIDE_START,onMapSlideStart);
      }
   }
}

import com.gaiaonline.battle.map.IEnvironmentChangeHandler;
import com.gaiaonline.battle.map.IEnvironmentChanger;
import com.gaiaonline.battle.map.IMapRoomManager;
import com.gaiaonline.battle.map.MapRoom;
import com.gaiaonline.platform.actors.ISubmersible;
import com.gaiaonline.utils.DisplayObjectUtils;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.geom.Rectangle;

class WaterDepthManager implements IEnvironmentChanger
{
   
   private static const WATER_RETRYS:uint = 10;
   
   private static const DEFAULT_WATER_SCALE:Number = 0.1;
   
   private static const WATER_RETRY_SCALE:Number = 0.9;
   
   public static var CURRENT_WATER_SCALE:Number = 1;
    
   
   private var _mapRoomManager:IMapRoomManager;
   
   private var bmdWater:BitmapData = null;
   
   function WaterDepthManager(mapRoomManager:IMapRoomManager)
   {
      super();
      _mapRoomManager = mapRoomManager;
   }
   
   private function getDepthAtPoint(x:Number, y:Number) : Number
   {
      var b:* = 0;
      var d:Number = 0;
      var p:int = 0;
      var room:MapRoom = _mapRoomManager.getCurrentMapRoom();
      if(room != null && this.bmdWater != null)
      {
         x = x * CURRENT_WATER_SCALE;
         y = y * CURRENT_WATER_SCALE;
         if(x < bmdWater.width && y < bmdWater.height)
         {
            p = this.bmdWater.getPixel(x,y);
            b = p & 255;
            d = (255 - b) / 255;
         }
      }
      return d;
   }
   
   private function createWaterBitmap(waterLayer:Sprite, scale:Number) : BitmapData
   {
      var s:Number = NaN;
      var test:Number = NaN;
      if(!waterLayer)
      {
         if(bmdWater)
         {
            this.bmdWater.dispose();
            this.bmdWater = null;
         }
         return null;
      }
      waterLayer.width = waterLayer.width * scale;
      waterLayer.height = waterLayer.height * scale;
      waterLayer.x = waterLayer.x * scale;
      waterLayer.y = waterLayer.y * scale;
      CURRENT_WATER_SCALE = scale;
      var waterLayerBounds:Rectangle = waterLayer.getBounds(waterLayer.parent);
      var bitmapData:BitmapData = null;
      if(WATER_RETRY_SCALE >= 1)
      {
         throw new Error("WaterRetryScale must be less than 1!");
      }
      try
      {
         bitmapData = new BitmapData(waterLayerBounds.left + waterLayerBounds.width,waterLayerBounds.top + waterLayerBounds.height,false,4294967295);
      }
      catch(error:ArgumentError)
      {
         if(scale < Math.pow(WATER_RETRY_SCALE,WATER_RETRYS - 1) * DEFAULT_WATER_SCALE)
         {
            return new BitmapData(1,1,false,4294967295);
         }
         s = scale;
         test = Math.pow(WATER_RETRY_SCALE,WATER_RETRYS) * DEFAULT_WATER_SCALE;
         return createWaterBitmap(waterLayer,scale * WATER_RETRY_SCALE);
      }
      bitmapData.draw(waterLayer,waterLayer.transform.matrix);
      return bitmapData;
   }
   
   public function initWater(waterLayer:Sprite) : void
   {
      if(waterLayer != null)
      {
         waterLayer.x = waterLayer.y = 0;
      }
      bmdWater = createWaterBitmap(waterLayer,DEFAULT_WATER_SCALE);
      DisplayObjectUtils.ClearAllChildrens(waterLayer);
   }
   
   public function updateObject(invalidObj:Object) : void
   {
      var submersible:ISubmersible = invalidObj as ISubmersible;
      if(submersible && submersible.depthEnabled)
      {
         submersible.setWaterDepth(getDepthAtPoint(submersible.x,submersible.y));
      }
   }
   
   public function registerForEnvironmentChanges(handler:IEnvironmentChangeHandler) : void
   {
   }
}

import com.gaiaonline.battle.map.IEnvironmentChangeHandler;
import com.gaiaonline.battle.map.IEnvironmentChanger;
import com.gaiaonline.battle.utils.BattleUtils;
import com.gaiaonline.platform.actors.ITintable;
import com.gaiaonline.utils.FrameTimer;
import com.gaiaonline.utils.SpritePositionBubbler;
import com.gaiaonline.utils.SpritePositionChangeEvent;
import flash.display.DisplayObject;
import flash.display.DisplayObjectContainer;
import flash.display.Sprite;
import flash.utils.Dictionary;

class StageLayerManager implements IEnvironmentChangeHandler
{
    
   
   private var _zOrderManager:ZManager = null;
   
   private var _invalidInhabitants:Dictionary;
   
   private var _invalidActorTimer:FrameTimer;
   
   private var _stageLayer:DisplayObjectContainer = null;
   
   private var _environmentChangersForSome:Array;
   
   private var _environmentChangersForAll:Array;
   
   function StageLayerManager(... environmentChangers)
   {
      var obj:Object = null;
      var enviroChanger:IEnvironmentChanger = null;
      _invalidActorTimer = new FrameTimer(onInvalidTimer);
      _invalidInhabitants = new Dictionary(false);
      _environmentChangersForSome = [];
      _environmentChangersForAll = [];
      super();
      for each(obj in environmentChangers)
      {
         enviroChanger = obj as IEnvironmentChanger;
         if(enviroChanger)
         {
            _environmentChangersForSome.push(enviroChanger);
            enviroChanger.registerForEnvironmentChanges(this);
            continue;
         }
         throw new Error("Invalid Environment Changer.  All EnvironmentChangers must implement IEnvironmentChanger");
      }
      _stageLayer = new Sprite();
      _zOrderManager = new ZManager(_stageLayer);
      _stageLayer.addEventListener(SpritePositionChangeEvent.POSITION_CHANGE,onChildPositionChange,false,0,true);
      _stageLayer.addEventListener(SpritePositionChangeEvent.INVALIDATE_PROPERTIES,onInvalidateProperties,false,0,true);
      _invalidActorTimer.startPerFrame();
   }
   
   private function invalidate(dispObj:DisplayObject) : void
   {
      _invalidInhabitants[dispObj] = true;
      _zOrderManager.invalidateZOrder();
   }
   
   private function onInvalidTimer() : void
   {
      var inhabitant:* = null;
      var enviroChanger:IEnvironmentChanger = null;
      var childCount:uint = 0;
      var allEnviroChanger:IEnvironmentChanger = null;
      var i:uint = 0;
      for(inhabitant in _invalidInhabitants)
      {
         for each(enviroChanger in _environmentChangersForSome)
         {
            enviroChanger.updateObject(inhabitant);
         }
      }
      BattleUtils.cleanDictionary(_invalidInhabitants);
      if(_environmentChangersForAll.length > 0)
      {
         childCount = _stageLayer.numChildren;
         while(allEnviroChanger = _environmentChangersForAll[0])
         {
            for(i = 0; i < childCount; i++)
            {
               allEnviroChanger.updateObject(_stageLayer.getChildAt(i));
            }
            _environmentChangersForSome.push(_environmentChangersForAll.shift());
         }
      }
   }
   
   public function getStageLayer() : DisplayObject
   {
      return _stageLayer;
   }
   
   public function onEnvironmentChange(changer:IEnvironmentChanger) : void
   {
      var index:uint = _environmentChangersForSome.indexOf(changer);
      if(index > -1)
      {
         _environmentChangersForSome.splice(index,1);
      }
      var allIndex:uint = _environmentChangersForAll.indexOf(changer);
      if(allIndex > -1)
      {
         _environmentChangersForAll.push(changer);
      }
   }
   
   private function onInvalidateProperties(event:SpritePositionChangeEvent) : void
   {
      event.stopPropagation();
      _invalidInhabitants[event.spritePositionInvalidator] = true;
   }
   
   private function onChildPositionChange(event:SpritePositionChangeEvent) : void
   {
      event.stopPropagation();
      invalidate(event.spritePositionInvalidator);
   }
   
   public function addChild(displayObject:SpritePositionBubbler) : DisplayObject
   {
      if(displayObject)
      {
         if(!(displayObject is SpritePositionBubbler))
         {
            throw new Error("Consider using SpritePositionBubbler.  Talk to newtang");
         }
         if(displayObject is ITintable)
         {
         }
         invalidate(displayObject);
         return _stageLayer.addChild(displayObject);
      }
      return null;
   }
   
   public function removeChild(displayObject:DisplayObject) : DisplayObject
   {
      if(displayObject.parent == _stageLayer)
      {
         return _stageLayer.removeChild(displayObject);
      }
      return null;
   }
}

import com.gaiaonline.display.wordbubble.WordBubbleManager;
import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
import com.gaiaonline.utils.DisplayObjectUtils;
import flash.display.Sprite;

class DialogManager
{
    
   
   private var wbManager:WordBubbleManager = null;
   
   private var _wbContainer:Sprite = null;
   
   function DialogManager(wbContainer:Sprite)
   {
      super();
      _wbContainer = wbContainer;
      wbManager = new WordBubbleManager(_wbContainer);
      DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_ADD_TEXT,addText);
      DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_REMOVE_TEXT,removeText);
      DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_ROOM_LEAVE,onMapRoomLeave);
   }
   
   private function removeText(evt:GlobalEvent) : void
   {
      trace("[Map removeText] remove Text Bubble");
      this.wbManager.removeText(evt.data.actor);
   }
   
   private function addText(event:GlobalEvent) : void
   {
      var data:Object = event.data;
      var actor:Sprite = data.actor;
      var actorBounds:Sprite = data.actorBounds;
      var actorName:String = data.actorName;
      var message:String = data.message;
      var channel:String = data.channel || "";
      this.wbManager.addText(actorName,message,actor,actorBounds,channel);
   }
   
   public function setBounds(mcBounds:Sprite) : void
   {
      wbManager.setBounds(mcBounds);
   }
   
   private function onMapRoomLeave(event:GlobalEvent) : void
   {
      wbManager.clear();
   }
}

import com.gaiaonline.battle.newrings.IProjectile;
import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
import com.gaiaonline.utils.DisplayObjectUtils;
import com.gaiaonline.utils.SpritePositionBubbler;
import flash.display.DisplayObject;

class ProjectileManager
{
    
   
   private var projectiles:Array;
   
   private var _stageLayerManager:StageLayerManager = null;
   
   function ProjectileManager(stageLayerManager:StageLayerManager)
   {
      projectiles = new Array();
      super();
      _stageLayerManager = stageLayerManager;
      DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_ADD_PROJECTILE,addProjectile);
      DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_REMOVE_PROJECTILE,removeProjectile);
      DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_CLEAR_PROJECTILES,clearProjectiles);
   }
   
   private function addProjectile(event:GlobalEvent) : void
   {
      var projectile:SpritePositionBubbler = event.data.projectile;
      if(!(projectile is IProjectile))
      {
         throw new Error("Projectile isn\'t of type IProjectile!");
      }
      this._stageLayerManager.addChild(projectile);
      this.projectiles.push(projectile);
   }
   
   private function removeProjectile(event:GlobalEvent) : void
   {
      var projectile:IProjectile = event.data.projectile as IProjectile;
      var index:int = this.projectiles.indexOf(projectile);
      if(index > 0)
      {
         this.projectiles.splice(index,1);
      }
      projectile.dispose();
   }
   
   public function clearProjectiles(ignoredEvent:GlobalEvent = null) : void
   {
      var projectile:IProjectile = null;
      for each(projectile in projectiles)
      {
         this._stageLayerManager.removeChild(projectile as DisplayObject);
         projectile.dispose();
      }
      this.projectiles.length = 0;
   }
}

import com.gaiaonline.battle.Loot.LootParticle;
import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
import com.gaiaonline.utils.DisplayObjectUtils;

class LootParticleManager
{
    
   
   private var lootParticles:Array;
   
   private var _stageLayerManager:StageLayerManager = null;
   
   function LootParticleManager(stageLayerManager:StageLayerManager)
   {
      lootParticles = new Array();
      super();
      _stageLayerManager = stageLayerManager;
      DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.LOOT_PARTICLE_ANIM_DONE,onParticleDone);
      DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_ADD_LOOT_PARTICLES,addLootParticles);
   }
   
   private function removeLootParticle(particle:LootParticle) : void
   {
      this._stageLayerManager.removeChild(particle);
      var index:int = this.lootParticles.indexOf(particle);
      this.lootParticles.splice(index,1);
      GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.LOOT_PARTICLE_FINISHED,{"particle":particle}));
   }
   
   private function addLootParticles(event:GlobalEvent) : void
   {
      var particles:Array = event.data.particles;
      for(var i:int = 0; i < particles.length; i++)
      {
         _stageLayerManager.addChild(LootParticle(particles[i]));
         this.lootParticles.push(particles[i]);
      }
   }
   
   private function onParticleDone(evt:GlobalEvent) : void
   {
      this.removeLootParticle(LootParticle(evt.data.particle));
   }
   
   public function removeAllLootParticle() : void
   {
      for(var i:int = 0; i < this.lootParticles.length; i++)
      {
         DisplayObjectUtils.ClearAllChildrens(this.lootParticles[i]);
         this._stageLayerManager.removeChild(LootParticle(this.lootParticles[i]));
      }
      this.lootParticles.length = 0;
   }
}

final class MouseOverStateChange
{
    
   
   function MouseOverStateChange()
   {
      super();
   }
}

import com.gaiaonline.platform.actors.ICarriable;
import com.gaiaonline.platform.actors.ICarrier;
import com.gaiaonline.utils.FrameTimer;
import flash.display.DisplayObject;
import flash.display.DisplayObjectContainer;

class ZManager
{
    
   
   private var _mcStageLayer:DisplayObjectContainer = null;
   
   private const SORT_PARAMS:Array = [Array.NUMERIC,Array.NUMERIC];
   
   private const SORT_ORDER:Array = ["y","x"];
   
   private var _zArrayIsValid:Boolean = false;
   
   private var _frameTimer:FrameTimer = null;
   
   private var _cachedZArray:Array;
   
   function ZManager(stageLayer:DisplayObjectContainer)
   {
      _cachedZArray = [];
      super();
      _mcStageLayer = stageLayer;
      _frameTimer = new FrameTimer(validateZOrder);
      _frameTimer.startPerFrame();
   }
   
   private function validateZOrder() : void
   {
      var zArray:Array = null;
      var childCount:uint = 0;
      var i:int = 0;
      var z:int = 0;
      var mc:DisplayObject = null;
      if(!_zArrayIsValid)
      {
         zArray = _cachedZArray;
         childCount = this._mcStageLayer.numChildren;
         for(i = 0; i < childCount; i++)
         {
            zArray.push(this._mcStageLayer.getChildAt(i));
         }
         zArray.sortOn(SORT_ORDER,SORT_PARAMS);
         for(z = 0; z < childCount; z++)
         {
            mc = zArray[z];
            if(z != this._mcStageLayer.getChildIndex(mc))
            {
               this._mcStageLayer.setChildIndex(mc,z);
            }
         }
         fixZOrderForPickedUpActors(zArray,childCount);
         _zArrayIsValid = true;
         _cachedZArray.length = 0;
      }
   }
   
   public function invalidateZOrder() : void
   {
      _zArrayIsValid = false;
   }
   
   private function fixZOrderForPickedUpActors(zArray:Array, len:uint) : void
   {
      var pickedUp:ICarriable = null;
      var pickedUpBy:ICarrier = null;
      var pickedUpByDispObj:DisplayObject = null;
      for(var z:int = 0; z < len; z++)
      {
         pickedUp = zArray[z] as ICarriable;
         if(pickedUp)
         {
            pickedUpBy = pickedUp.getPickedUpBy();
            if(pickedUpBy)
            {
               pickedUpByDispObj = pickedUpBy as DisplayObject;
               if(pickedUpByDispObj && pickedUpByDispObj.parent == _mcStageLayer)
               {
                  if(pickedUpBy.shouldBeInFront())
                  {
                     this._mcStageLayer.addChildAt(pickedUp as DisplayObject,this._mcStageLayer.getChildIndex(pickedUpByDispObj));
                  }
                  else
                  {
                     this._mcStageLayer.addChildAt(pickedUp as DisplayObject,this._mcStageLayer.getChildIndex(pickedUpByDispObj) - 1);
                  }
               }
            }
         }
      }
   }
}
