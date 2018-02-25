package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.gateway.BattleEvent;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.gateway.BattleMessage;
   import com.gaiaonline.battle.newactors.ActorManager;
   import com.gaiaonline.battle.newactors.BaseActor;
   import com.gaiaonline.battle.ui.events.UiEvents;
   import com.gaiaonline.battle.utils.BattleUtils;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.flexModulesAPIs.minimap.IMinimapEventHandler;
   import com.gaiaonline.objectPool.LoaderFactory;
   import com.gaiaonline.platform.map.MapFilesFactory;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import com.gaiaonline.utils.FrameTimer;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class MiniMapManager implements IMinimapEventHandler
   {
       
      
      private var areaOffset:Number = 0;
      
      private var _gateway:BattleGateway = null;
      
      private var miniMapId:String;
      
      private var _uiFramework:IUIFramework = null;
      
      private var friends:Object;
      
      private var goofBallPosition:Object;
      
      private var questFlags:Object;
      
      private var phantomFriends:Object;
      
      private var fowRooms:Object;
      
      private var _rebuildMarkersTimer:FrameTimer;
      
      private var miniMapCustomFlags:Object;
      
      private var fowZoneId:String;
      
      private var _currentLocalMapImage:BitmapData;
      
      private var _cachedRoomsArray:Array;
      
      private var availableQuestFlags:Object;
      
      private var _views:Dictionary;
      
      private var _showFogOfWar:Boolean = true;
      
      public function MiniMapManager(gateway:BattleGateway, uiFramework:IUIFramework)
      {
         friends = {};
         phantomFriends = {};
         questFlags = {};
         availableQuestFlags = {};
         goofBallPosition = {};
         miniMapCustomFlags = {};
         fowRooms = {};
         _views = new Dictionary(true);
         _rebuildMarkersTimer = new FrameTimer(rebuildMarkers);
         _cachedRoomsArray = [];
         super();
         this._gateway = gateway;
         this._uiFramework = uiFramework;
         MiniMapMarkerType.init(uiFramework);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_SLIDE_COMPLETE,onMapSlideDone);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_DONE,onSetRoom);
      }
      
      private static function deserializeLocations(arrayIn:Array, hashOut:Object, defaultName:String = null) : void
      {
         var location:Object = null;
         for each(location in arrayIn)
         {
            hashOut[location.id] = {
               "id":location.id,
               "name":(!!location.name?location.name:defaultName),
               "roomName":location.roomName,
               "x":location.px,
               "y":location.py
            };
            if(location.mmType && location.mmType.length)
            {
               hashOut[location.id].type = location.mmType;
            }
         }
      }
      
      private function setMarkerData(roomId:String, id:String, type:MiniMapMarkerType, name:String, unscaledX:Number, unscaledY:Number) : void
      {
         var lx:Number = NaN;
         var ly:Number = NaN;
         var gx:Number = NaN;
         var gy:Number = NaN;
         var obj:Object = MapFilesFactory.getInstance().mapFiles.getMiniMap(roomId);
         if(obj != null)
         {
            if(obj.showLocal && this.miniMapId == obj.id)
            {
               lx = unscaledX * obj.scale + obj.localPos.x;
               ly = unscaledY * obj.scale + obj.localPos.y;
               setMarkerOnViews(id,type,name,lx,ly,true);
            }
            if(obj.showGlobal)
            {
               gx = unscaledX * MapFilesFactory.getInstance().mapFiles.globalXScale + obj.globalPos.x;
               gy = unscaledY * MapFilesFactory.getInstance().mapFiles.globalYScale + obj.globalPos.y;
               setMarkerOnViews(id,type,name,gx,gy,false);
            }
         }
      }
      
      private function maintainUpdateInterval() : void
      {
         var ve:ViewEntry = null;
         for each(ve in _views)
         {
            if(ve.visible)
            {
               startUpdate();
               return;
            }
         }
         stopUpdate();
      }
      
      private function saveFogOfWar(zoneId:String) : void
      {
         var value:String = null;
         var roomId:String = null;
         var obj:Object = null;
         var msg:BattleMessage = null;
         for each(roomId in this.fowRooms)
         {
            if(value == null)
            {
               value = BattleUtils.getRoomNumFromRoomId(roomId).toString();
            }
            else
            {
               value = value + "," + BattleUtils.getRoomNumFromRoomId(roomId);
            }
         }
         obj = new Object();
         obj[zoneId] = value;
         msg = new BattleMessage("putNkvp",obj);
         this._gateway.sendMsg(msg);
      }
      
      public function onViewVisibilityChange(view:DisplayObject, b:Boolean) : void
      {
      }
      
      private function applyMarkers() : void
      {
         var ve:ViewEntry = null;
         for each(ve in _views)
         {
            if(ve.visible)
            {
               ve.view.purgeStaleMarkers();
               ve.view.applyMarkers();
            }
         }
      }
      
      private function loadMiniMap(url:String, showFogOfWar:Boolean) : void
      {
         this._showFogOfWar = showFogOfWar;
         var l:Loader = LoaderFactory.getInstance().checkOut();
         l.contentLoaderInfo.addEventListener(Event.COMPLETE,onMiniMapLoaded);
         l.load(new URLRequest(url),this._uiFramework.loaderContextFactory.getLoaderContext());
      }
      
      private function setMapImg(view:UiMapDisplay, img:BitmapData) : void
      {
         var bmp:Bitmap = new Bitmap(img);
         var mcMap:MovieClip = new MovieClip();
         mcMap.addChild(bmp);
         view.setMapImg(mcMap);
      }
      
      private function onMiniMapLoaded(evt:Event) : void
      {
         _currentLocalMapImage = Bitmap(LoaderInfo(evt.target).content).bitmapData;
         initLocalMaps(_currentLocalMapImage);
         loadFogOfWar(this.fowZoneId);
         LoaderInfo(evt.target).loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,onMiniMapLoaded);
         LoaderFactory.getInstance().checkIn(LoaderInfo(evt.target).loader);
      }
      
      public function removeView(view:UiMapDisplay) : void
      {
         delete _views[view];
         maintainUpdateInterval();
      }
      
      public function setViewVisible(view:UiMapDisplay, visible:Boolean) : void
      {
         ViewEntry(_views[view]).visible = visible;
         maintainUpdateInterval();
      }
      
      private function onMapSlideDone(e:GlobalEvent) : void
      {
         var newRoomId:String = e.data.newRoomId;
         if(!this.fowRooms[newRoomId])
         {
            this.updateLocalMap(newRoomId);
            this.clearFogOfWarOnRoom(newRoomId);
            this.saveFogOfWar(BattleUtils.getZoneIdFromRoomId(newRoomId));
         }
      }
      
      private function onFowCallLoaded(evt:BattleEvent) : void
      {
         var room:String = null;
         BattleMessage(evt.target).removeEventListener(BattleEvent.CALL_BACK,onFowCallLoaded);
         _cachedRoomsArray.length = 0;
         var rooms:Array = _cachedRoomsArray;
         if(evt.battleMessage.responseObj[0] != null && evt.battleMessage.responseObj[0].values[this.fowZoneId] != null)
         {
            rooms = evt.battleMessage.responseObj[0].values[this.fowZoneId].split(",");
         }
         this.rebuildMarkers();
         this._rebuildMarkersTimer.start(500);
         for each(room in rooms)
         {
            this.clearFogOfWarOnRoom(this.fowZoneId + "_" + room);
         }
         this.clearFogOfWarOnRoom(ActorManager.getInstance().myActor.roomId);
      }
      
      private function startUpdate() : void
      {
         var msg:BattleMessage = null;
         if(!_rebuildMarkersTimer.running)
         {
            if(!this._gateway.hasEventListener(BattleEvent.MINI_MAP_UPDATE))
            {
               this._gateway.addEventListener(BattleEvent.MINI_MAP_UPDATE,onServerUpdate,false,0,true);
            }
            msg = new BattleMessage("miniMapVisibility",{"boolean":true});
            this._gateway.sendMsg(msg);
            this._rebuildMarkersTimer.start(500);
         }
      }
      
      private function onPhantomMarkerClick(e:UiEvents) : void
      {
         var msg:BattleMessage = new BattleMessage("warp2phantom",{"actorID":e.userId});
         this._gateway.sendMsg(msg);
      }
      
      public function updateLocalMap(roomId:String) : void
      {
         var obj:Object = null;
         var url:String = null;
         var mapId:String = MapFilesFactory.getInstance().mapFiles.getMiniMapId(roomId);
         if(mapId != this.miniMapId)
         {
            this._rebuildMarkersTimer.stop();
            this.fowRooms = {};
            this.fowZoneId = BattleUtils.getZoneIdFromRoomId(roomId);
            this.miniMapId = mapId;
            obj = MapFilesFactory.getInstance().mapFiles.getMiniMap(roomId) as Object;
            url = MapFilesFactory.getInstance().mapFiles.getMiniMapUrl(this.miniMapId) as String;
            if(obj != null && url != null)
            {
               _showFogOfWar = obj.showLocal;
               loadMiniMap(url,obj.showLocal);
            }
            applyMarkers();
         }
      }
      
      private function rebuildMarkers() : void
      {
         var pfid:* = null;
         var qid:* = null;
         var aqid:* = null;
         var customMarkerID:* = null;
         var acId:* = null;
         var fid:* = null;
         var act:BaseActor = null;
         var type:MiniMapMarkerType = null;
         var friend:Object = null;
         var pf:Object = null;
         var quest:Object = null;
         var aq:Object = null;
         var marker:Object = null;
         var custom:MiniMapMarkerType = null;
         var me:BaseActor = ActorManager.getInstance().myActor;
         if(me && me.actorId)
         {
            for(acId in ActorManager.getInstance().myActor.myTeam)
            {
               act = ActorManager.actorIdToActor(acId);
               if(act != null)
               {
                  type = acId == ActorManager.getInstance().myActor.actorId?MiniMapMarkerType.PLAYER:MiniMapMarkerType.GROUP;
                  setMarkerData(act.roomId,act.actorId,type,act.actorName,act.position.x,act.position.y);
               }
            }
            for(fid in this.friends)
            {
               if(fid != me.actorId && !me.isOnMyTeam(fid))
               {
                  friend = this.friends[fid];
                  setMarkerData(friend.roomName,friend.id,MiniMapMarkerType.FRIEND,friend.name,friend.x,friend.y);
               }
            }
         }
         for(pfid in this.phantomFriends)
         {
            pf = this.phantomFriends[pfid];
            setMarkerData(pf.roomName,pf.id,MiniMapMarkerType.PHANTOM_FRIEND,pf.name,pf.x,pf.y);
         }
         for(qid in this.questFlags)
         {
            quest = this.questFlags[qid];
            setMarkerData(quest.roomName,quest.id,MiniMapMarkerType.QUEST,quest.name,quest.x,quest.y);
         }
         for(aqid in this.availableQuestFlags)
         {
            aq = this.availableQuestFlags[aqid];
            setMarkerData(aq.roomName,aq.id,MiniMapMarkerType.AVAILABLE_QUEST,aq.name,aq.x,aq.y);
         }
         for(customMarkerID in this.miniMapCustomFlags)
         {
            marker = this.miniMapCustomFlags[customMarkerID];
            custom = MiniMapMarkerType.getCustomType(marker.type);
            if(custom)
            {
               setMarkerData(marker.roomName,marker.id,custom,marker.name,marker.x,marker.y);
            }
            else
            {
               trace("MISSING custom minimap marker type ",marker.type);
            }
         }
         if(this.goofBallPosition != null && this.goofBallPosition.roomName != null)
         {
            setMarkerData(this.goofBallPosition.roomName,this.goofBallPosition.id,MiniMapMarkerType.GOOFBALL,this.goofBallPosition.name,this.goofBallPosition.x,this.goofBallPosition.y);
         }
         applyMarkers();
      }
      
      public function addView(view:UiMapDisplay, local:Boolean) : void
      {
         var roomId:String = null;
         _views[view] = new ViewEntry(view,local);
         view.addEventListener(UiMapDisplay.PHANTOM_MARKER_CLICK,onPhantomMarkerClick,false,0,true);
         if(_currentLocalMapImage && local)
         {
            setMapImg(view,_currentLocalMapImage);
            view.resetFogOfWar(this._showFogOfWar);
         }
         for each(roomId in this.fowRooms)
         {
            clearFogOfWarOnRoom(roomId,view);
         }
         maintainUpdateInterval();
      }
      
      private function clearFogOfWarOnRoom(roomId:String, view:UiMapDisplay = null) : void
      {
         var obj:Object = null;
         var w:Number = NaN;
         var h:Number = NaN;
         var rect:Rectangle = null;
         var ve:ViewEntry = null;
         if(!this.fowRooms[roomId] || view)
         {
            this.fowRooms[roomId] = roomId;
            obj = MapFilesFactory.getInstance().mapFiles.getMiniMap(roomId);
            if(obj != null && obj.showLocal)
            {
               w = 780 / (obj.roomScale / obj.scale);
               h = 505 / (obj.roomScale / obj.scale);
               rect = new Rectangle(obj.localPos.x,obj.localPos.y,w,h);
               if(view)
               {
                  view.clearFogOfWar(rect);
               }
               else
               {
                  for each(ve in _views)
                  {
                     if(ve.local)
                     {
                        ve.view.clearFogOfWar(rect);
                     }
                  }
               }
            }
         }
      }
      
      private function stopUpdate() : void
      {
         var msg:BattleMessage = null;
         if(_rebuildMarkersTimer.running)
         {
            if(this._gateway.hasEventListener(BattleEvent.MINI_MAP_UPDATE))
            {
               this._gateway.removeEventListener(BattleEvent.MINI_MAP_UPDATE,onServerUpdate);
            }
            msg = new BattleMessage("miniMapVisibility",{"boolean":false});
            this._gateway.sendMsg(msg);
            this._rebuildMarkersTimer.stop();
         }
      }
      
      private function initLocalMaps(img:BitmapData) : void
      {
         var ve:ViewEntry = null;
         for each(ve in _views)
         {
            if(ve.local)
            {
               setMapImg(ve.view,img);
               ve.view.resetFogOfWar(this._showFogOfWar);
            }
         }
      }
      
      private function setMarkerOnViews(id:String, type:MiniMapMarkerType, name:String, markerX:Number, markerY:Number, local:Boolean) : void
      {
         var ve:ViewEntry = null;
         for each(ve in _views)
         {
            if(ve.local == local)
            {
               ve.view.setMarkerData(id,type,name,markerX,markerY);
            }
         }
      }
      
      private function loadFogOfWar(zoneId:String) : void
      {
         var msg:BattleMessage = new BattleMessage("getNkvp",{"keys":[zoneId]});
         msg.addEventListener(BattleEvent.CALL_BACK,onFowCallLoaded);
         this._gateway.sendMsg(msg);
      }
      
      private function onServerUpdate(evt:BattleEvent) : void
      {
         var availableQflags:Object = null;
         var qflags:Object = null;
         var loc:Object = null;
         var res:Object = evt.battleMessage.responseObj[0];
         if(res.miniMapQuests != null)
         {
            availableQflags = {};
            if(res.miniMapQuests.miniMapQuestsFromNPCs != null)
            {
               deserializeLocations(res.miniMapQuests.miniMapQuestsFromNPCs,availableQflags,"Available Quest");
            }
            qflags = {};
            if(res.miniMapQuests.miniMapQuestsLocations != null)
            {
               deserializeLocations(res.miniMapQuests.miniMapQuestsLocations,qflags,"Quest Flag");
            }
            for each(loc in qflags)
            {
               delete availableQflags[loc.id];
            }
            this.availableQuestFlags = availableQflags;
            this.questFlags = qflags;
         }
         if(res.miniMapFriends != null)
         {
            this.friends = {};
            deserializeLocations(res.miniMapFriends,this.friends);
         }
         if(res.miniMapPhantomFriends != null)
         {
            this.phantomFriends = {};
            deserializeLocations(res.miniMapPhantomFriends,this.phantomFriends);
         }
         if(res.miniMapFlag != null)
         {
            this.miniMapCustomFlags = {};
            deserializeLocations(res.miniMapFlag,this.miniMapCustomFlags);
         }
         if(res.miniMapGoofball != null)
         {
            if(res.miniMapGoofball.roomName != null)
            {
               this.goofBallPosition = {};
               this.goofBallPosition.roomName = res.miniMapGoofball.roomName;
               this.goofBallPosition.name = res.miniMapGoofball.name;
               this.goofBallPosition.x = res.miniMapGoofball.px;
               this.goofBallPosition.y = res.miniMapGoofball.py;
               this.goofBallPosition.id = "GoofBall_" + ActorManager.getInstance().myActor.actorId;
            }
            else
            {
               this.goofBallPosition = null;
            }
         }
         else
         {
            this.goofBallPosition = null;
         }
      }
      
      private function onSetRoom(e:GlobalEvent) : void
      {
         var newRoomId:String = e.data.roomId;
         this.updateLocalMap(newRoomId);
      }
   }
}

import com.gaiaonline.battle.ui.UiMapDisplay;

class ViewEntry
{
    
   
   public var visible:Boolean = true;
   
   public var view:UiMapDisplay;
   
   public var local:Boolean;
   
   function ViewEntry(view:UiMapDisplay, local:Boolean)
   {
      super();
      this.view = view;
      this.local = local;
   }
}
