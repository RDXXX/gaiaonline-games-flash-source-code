package com.gaiaonline.battle.map
{
   import com.gaiaonline.battle.utils.BattleUtils;
   import com.gaiaonline.platform.map.IMapFiles;
   import com.gaiaonline.platform.map.IMapFilesLoadHandler;
   import com.gaiaonline.utils.RegisterUtils;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class MapFiles implements IMapFiles
   {
      
      private static var miniMapInfo:Object = {};
       
      
      private var _globalXScale:Number = 0.0125;
      
      private var _baseUrl:String = null;
      
      private var _globalYScale:Number = 0.025;
      
      private var _dependecies:XML;
      
      private var _playList:XML;
      
      private var _loadHandlers:Array;
      
      private var _xml:XML;
      
      private var _rooms:Object;
      
      public function MapFiles()
      {
         _rooms = new Object();
         _loadHandlers = [];
         super();
      }
      
      private function parseRooms() : void
      {
         var Rooms:XML = null;
         var zoneId:String = null;
         var miniMapId:String = null;
         var musicZoneId:String = null;
         var scale:int = 0;
         var rid:String = null;
         for each(Rooms in this._xml.Rooms)
         {
            zoneId = Rooms.@zoneId;
            miniMapId = Rooms.@miniMapId;
            musicZoneId = Rooms.@musicZoneId;
            scale = parseInt(Rooms.@scale);
            for each(rid in String(Rooms).split(","))
            {
               this._rooms[rid.replace(" ","")] = {
                  "zoneId":zoneId,
                  "miniMapId":miniMapId,
                  "musicZoneId":musicZoneId,
                  "scale":scale
               };
            }
         }
      }
      
      private function onXmlDependenciesError(evt:IOErrorEvent) : void
      {
         var handler:IMapFilesLoadHandler = null;
         for each(handler in _loadHandlers)
         {
            handler.onMapFilesLoaded();
         }
      }
      
      public function getRoomsInfo(zoneId:String) : Object
      {
         var Rooms:XML = null;
         var scale:int = 0;
         var rid:String = null;
         var roomId:String = null;
         var rnum:int = 0;
         var row:int = 0;
         var col:int = 0;
         var localPos:Point = null;
         var a:Object = new Object();
         for each(Rooms in this._xml..Rooms.(@zoneId == zoneId))
         {
            scale = parseInt(Rooms.@scale);
            for each(rid in String(Rooms).split(","))
            {
               roomId = rid.replace(" ","");
               rnum = BattleUtils.getRoomNumFromRoomId(roomId);
               row = Math.floor(rnum / 100);
               col = rnum - row * 100 - 1;
               localPos = new Point(col * 780,row * 505);
               a[roomId] = {
                  "roomId":roomId,
                  "scale":scale,
                  "col":col,
                  "row":row,
                  "pos":localPos
               };
            }
         }
         return a;
      }
      
      public function getMiniMapUrl(mapId:String) : String
      {
         var url:String = null;
         if(this._xml != null)
         {
            url = this._baseUrl + "maps/minimaps/" + this._xml..MiniMap.(@id == mapId).@file;
         }
         return url;
      }
      
      public function getZoneTitleImg(zoneId:String) : String
      {
         return this._xml..Zone.(@id == zoneId).@titleImgUrl;
      }
      
      public function getDependencies(fileName:String) : Array
      {
         var dep:XML = null;
         var result:Array = new Array();
         if(this._dependecies != null)
         {
            for each(dep in this._dependecies.Map.(@fileName == fileName).Dependency)
            {
               result.push(dep.@url);
            }
         }
         return result;
      }
      
      private function loadDependencies() : void
      {
         trace("Load Dependencies XML");
         var l:URLLoader = new URLLoader();
         l.dataFormat = URLLoaderDataFormat.TEXT;
         l.addEventListener(Event.COMPLETE,onXmlDependenciesLoaded);
         l.addEventListener(IOErrorEvent.IO_ERROR,onXmlDependenciesError);
         l.load(new URLRequest(this._baseUrl + "maps/mapDependencies.xml"));
      }
      
      public function isNullchamber(zoneId:String) : Boolean
      {
         if(this._xml..Zone.(@id == zoneId).@nullChamber == "1")
         {
            return true;
         }
         return false;
      }
      
      public function get globalXScale() : Number
      {
         return this._globalXScale;
      }
      
      public function getMusicZone(roomId:String) : String
      {
         var s:String = "";
         if(this._rooms[roomId] != null)
         {
            s = this._rooms[roomId].musicZoneId;
         }
         return s;
      }
      
      public function getActorFilters(roomId:String) : Array
      {
         var zoneId:String = BattleUtils.getZoneIdFromRoomId(roomId);
         return String(this._xml..Zone.(@id == zoneId).@actorFilters).split(",");
      }
      
      public function getZoneFile(zoneId:String) : String
      {
         return this._xml..Zone.(@id == zoneId).@swf;
      }
      
      public function getMiniMapId(roomId:String) : String
      {
         var s:String = "";
         if(this._rooms[roomId] != null)
         {
            s = this._rooms[roomId].miniMapId;
         }
         return s;
      }
      
      public function getZonesStartRoom() : Array
      {
         var z:XML = null;
         var list:Array = new Array();
         for each(z in this._xml..Zone)
         {
            list.push(String(z.@startRoom));
         }
         return list;
      }
      
      public function getZoneName(zoneId:String) : String
      {
         return this._xml..Zone.(@id == zoneId).@name;
      }
      
      public function getMiniMap(roomId:String) : Object
      {
         var cachedObj:Object = miniMapInfo[roomId];
         if(cachedObj)
         {
            return cachedObj;
         }
         return reallyGetMiniMap(roomId);
      }
      
      public function getZoneImgs(zoneId:String) : Array
      {
         var sp:XML = null;
         var ssp:XML = null;
         var list:Array = new Array();
         for each(sp in this._xml..Zone.(@id == zoneId)..SplashScreen)
         {
            list.push(sp.@url);
         }
         if(this._xml..Zone.(@id == zoneId).@useSharedSplashScreen != "false")
         {
            for each(ssp in this._xml..SharedSplashScreen.SplashScreen)
            {
               list.push(ssp.@url);
            }
         }
         return list;
      }
      
      public function getZoneNameFromRoomId(roomId:String) : String
      {
         var zoneId:String = BattleUtils.getZoneIdFromRoomId(roomId);
         return getZoneName(zoneId);
      }
      
      public function onPlayListLoaded(evt:Event) : void
      {
      }
      
      private function reallyGetMiniMap(roomId:String) : Object
      {
         var m:XMLList = null;
         var roomScale:Number = NaN;
         var id:String = null;
         var scale:Number = NaN;
         var showGlobal:Boolean = false;
         var showLocal:Boolean = false;
         var rnum:int = 0;
         var lRow:int = 0;
         var lCol:int = 0;
         var rx:Number = NaN;
         var ry:Number = NaN;
         var localPos:Point = null;
         var gpx:Number = NaN;
         var gpy:Number = NaN;
         var gx:Number = NaN;
         var gy:Number = NaN;
         var globalPos:Point = null;
         var obj:Object = null;
         if(this._xml == null || this._rooms[roomId] == null)
         {
            return null;
         }
         m = this._xml..MiniMap.(@id == this._rooms[roomId].miniMapId) as XMLList;
         if(m == null)
         {
            return null;
         }
         roomScale = this._rooms[roomId].scale / 100;
         id = m.@id;
         scale = m.@scale / 100;
         showGlobal = false;
         if(m.@showGlobal == "1")
         {
            showGlobal = true;
         }
         showLocal = false;
         if(m.@showLocal == "1")
         {
            showLocal = true;
         }
         rnum = BattleUtils.getRoomNumFromRoomId(roomId);
         lRow = Math.floor(rnum / 100);
         lCol = rnum - lRow * 100 - 1;
         rx = 780 / roomScale * (lCol - m.StartPos.@col);
         ry = 505 / roomScale * (lRow - m.StartPos.@row);
         localPos = new Point(rx * scale,ry * scale);
         gpx = m.GlobalPos.@x;
         gpy = m.GlobalPos.@y;
         gx = rx * this.globalXScale + gpx;
         gy = ry * this.globalYScale + gpy;
         globalPos = new Point(gx,gy);
         obj = {
            "id":id,
            "scale":scale,
            "showGlobal":showGlobal,
            "showLocal":showLocal,
            "globalPos":globalPos,
            "localPos":localPos,
            "roomScale":roomScale
         };
         miniMapInfo[roomId] = obj;
         return obj;
      }
      
      public function get globalYScale() : Number
      {
         return this._globalYScale;
      }
      
      private function onXmlLoaded(evt:Event) : void
      {
         try
         {
            this._xml = new XML(evt.target.data);
            this._globalXScale = this._xml.GlobalMapInfo.@xscale / 100;
            this._globalYScale = this._xml.GlobalMapInfo.@yscale / 100;
            this.parseRooms();
         }
         catch(e:TypeError)
         {
            trace("Could not parse XML: " + e.message,9);
         }
         URLLoader(evt.target).removeEventListener(Event.COMPLETE,onXmlLoaded);
         this.loadDependencies();
      }
      
      private function getTrackData(song:XML) : Object
      {
         var trackData:Object = null;
         trackData = new Object();
         trackData.trackId = "http://s3.cdn.gaiaonline.com/zomg_music/" + song.@file;
         trackData.trackTitle = String(song.@title[0].valueOf());
         return trackData;
      }
      
      public function registerForLoadEvents(handler:IMapFilesLoadHandler) : void
      {
         RegisterUtils.register(_loadHandlers,handler);
      }
      
      private function onXmlDependenciesLoaded(evt:Event) : void
      {
         var area:XML = null;
         var handler:IMapFilesLoadHandler = null;
         var a:Array = null;
         trace("Dependencies Loaded");
         try
         {
            this._dependecies = new XML(evt.target.data);
         }
         catch(e:TypeError)
         {
            trace("Could not parse Dependecies XML: " + e.message,9);
         }
         for each(area in this._dependecies..Map)
         {
            a = String(area.@fileName).split("/");
            area.@fileName = a[a.length - 1];
         }
         for each(handler in _loadHandlers)
         {
            handler.onMapFilesLoaded();
         }
      }
      
      public function unregisterForLoadEvents(handler:IMapFilesLoadHandler) : void
      {
         RegisterUtils.unregister(_loadHandlers,handler);
      }
      
      public function getMusic(musicZoneId:String) : Array
      {
         var a:Array = null;
         var trackNum:uint = 0;
         var mm:XMLList = null;
         var Song:XML = null;
         var trackData:Object = null;
         a = new Array();
         trackNum = 1;
         mm = this._xml.MusicZones.Zone.(@id == musicZoneId).Normal;
         for each(Song in this._xml.MusicZones.Zone.(@id == musicZoneId).Normal.Song)
         {
            trackData = getTrackData(Song);
            if(null != trackData)
            {
               trackData.trackNum = trackNum++;
               trackData.trackEnvironment = "Normal";
               a.push(trackData);
            }
         }
         return a;
      }
      
      public function load(baseUrl:String) : void
      {
         this._baseUrl = baseUrl;
         var l:URLLoader = new URLLoader();
         l.dataFormat = URLLoaderDataFormat.TEXT;
         l.addEventListener(Event.COMPLETE,onXmlLoaded);
         l.load(new URLRequest(this._baseUrl + "maps/mapConfig.xml"));
      }
   }
}
