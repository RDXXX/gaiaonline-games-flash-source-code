package com.gaiaonline.battle.map
{
   import com.gaiaonline.battle.utils.AnimationStore;
   import com.gaiaonline.battle.utils.BattleUtils;
   import com.gaiaonline.platform.actors.ISilhouetteable;
   import com.gaiaonline.platform.gateway.ICollisionConnector;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class MapRoom extends EventDispatcher
   {
      
      private static const MARGIN:Number = 20;
       
      
      private var myLayoutPos:Point;
      
      private var myMapObjs:Array;
      
      private var _animations:AnimationStore;
      
      private var mcBack:MovieClip;
      
      private var _silhouetteablesToMapObjects:Dictionary;
      
      private var mapIt:MapIt;
      
      public var roomInfo:RoomInfoData;
      
      private var myServerRoomId:String;
      
      private var mapItCollisionLayer:Sprite;
      
      private var myTint:int = 0;
      
      private var myTintBackground:Boolean = true;
      
      private var myTintAlpha:int = 0;
      
      private var mapItInfoLayer:Sprite;
      
      private var mapItTimer:Timer;
      
      private var _invalidSilhouetteables:Dictionary;
      
      private var _mapRoomManager:IMapRoomManager = null;
      
      private var _myRoomOffset:Point = null;
      
      private var myScale:int = 75;
      
      public function MapRoom(mapRoomManager:IMapRoomManager, collisionConnector:ICollisionConnector, serverRoomId:String, layoutPos:Point, roomInfo:RoomInfoData)
      {
         myMapObjs = [];
         _silhouetteablesToMapObjects = new Dictionary(true);
         _invalidSilhouetteables = new Dictionary(true);
         super();
         this._mapRoomManager = mapRoomManager;
         this.myServerRoomId = serverRoomId;
         this.myLayoutPos = layoutPos;
         this.myScale = int(roomInfo.room_scale);
         this.myTint = roomInfo.roomTint;
         this.myTintAlpha = roomInfo.roomTintAlpha;
         this.myTintBackground = roomInfo.tintBackground;
         this.roomInfo = roomInfo;
         this.mapIt = new MapIt(this.myServerRoomId,collisionConnector);
      }
      
      public function get serverRoomId() : String
      {
         return this.myServerRoomId;
      }
      
      public function get tintBackground() : Boolean
      {
         return this.myTintBackground;
      }
      
      public function dipose() : void
      {
         for(var i:int = 0; i < this.myMapObjs.length; i++)
         {
            MapObject(this.myMapObjs[i]).dispose();
            delete this.myMapObjs[i];
         }
         this.myMapObjs.length = 0;
         if(this.mcBack != null)
         {
            if(this.mcBack.parent != null)
            {
               this.mcBack.parent.removeChild(this.mcBack);
            }
            DisplayObjectUtils.ClearAllChildrens(this.mcBack);
            this.mcBack = null;
         }
         this.mapIt = null;
         this._animations = null;
      }
      
      public function setGroundLightForTint(v:Boolean) : void
      {
         var mObj:MapObject = null;
         var groundLight:Sprite = null;
         for(var i:int = 0; i < this.myMapObjs.length; i++)
         {
            mObj = this.myMapObjs[i] as MapObject;
            groundLight = mObj.getGroundLight() as Sprite;
            if(groundLight != null)
            {
               groundLight.visible = mObj.displayGroundLight;
            }
         }
      }
      
      public function get isDummyRoom() : Boolean
      {
         var r:Boolean = false;
         if(this.roomInfo.dummyRoom)
         {
            r = this.roomInfo.dummyRoom;
         }
         return r;
      }
      
      public function addMapObject(mapObj:MapObject) : void
      {
         var m:MapObject = null;
         var add:Boolean = true;
         var name:String = mapObj.name;
         for each(m in this.myMapObjs)
         {
            if(m.name == name)
            {
               add = false;
               break;
            }
         }
         if(add)
         {
            this.myMapObjs.push(mapObj);
         }
      }
      
      public function removeAllObjectSilhouettes() : void
      {
         var mapObj:MapObject = null;
         for each(mapObj in myMapObjs)
         {
            mapObj.removeAllObjectSilhouettes();
         }
         BattleUtils.cleanDictionary(_invalidSilhouetteables);
         BattleUtils.cleanDictionary(_silhouetteablesToMapObjects);
      }
      
      private function get myRoomOffset() : Point
      {
         if(this._myRoomOffset == null)
         {
            this._myRoomOffset = new Point(this.myLayoutPos.x * 780,this.myLayoutPos.y * 505);
         }
         return this._myRoomOffset;
      }
      
      public function testSouthEdgeOpen(x:Number) : Boolean
      {
         var o:Point = this.getRoomOffset();
         return testEdgeOpen(x - o.x,505 - MARGIN);
      }
      
      public function testWestEdgeOpen(y:Number) : Boolean
      {
         var o:Point = this.getRoomOffset();
         return testEdgeOpen(MARGIN,y - o.y);
      }
      
      public function getCollisionTypeAt(x:Number, y:Number) : uint
      {
         var cm:CollisionMap = null;
         var o:Point = null;
         var resolution:Number = NaN;
         var px:Number = NaN;
         var py:Number = NaN;
         if(this.mapIt.isCollisionMapOk())
         {
            cm = this.mapIt.getCollisionMap();
            o = this.myRoomOffset;
            resolution = cm.getResolution();
            px = Math.floor((x - o.x) / resolution);
            py = Math.floor((y - o.y) / resolution);
            if(px >= 0 && py >= 0)
            {
               return cm.getNode(px,py);
            }
         }
         return CollisionMap.SLOT_NULL;
      }
      
      public function setBackParam(obj:Object) : void
      {
         if(this.mcBack != null && this.mcBack.hasOwnProperty("setParam"))
         {
            this.mcBack.setParam(obj);
         }
      }
      
      private function hasKeys(dict:Dictionary) : Boolean
      {
         var obj:* = null;
         for(obj in dict)
         {
            return true;
         }
         return false;
      }
      
      public function checkInvalidSilhouettables() : void
      {
         var silhouetteable:ISilhouetteable = null;
         var obj:* = null;
         var mapObj:MapObject = null;
         var objMc:Sprite = null;
         for(obj in _invalidSilhouetteables)
         {
            silhouetteable = ISilhouetteable(obj);
            for each(mapObj in myMapObjs)
            {
               if(MapObject(mapObj).displaySilhouette)
               {
                  objMc = mapObj.getStageMc();
                  if(mapObj.checkSilhouettes(silhouetteable))
                  {
                     if(!_silhouetteablesToMapObjects[silhouetteable])
                     {
                        _silhouetteablesToMapObjects[silhouetteable] = new Dictionary(true);
                     }
                     _silhouetteablesToMapObjects[silhouetteable][mapObj] = true;
                  }
                  else if(_silhouetteablesToMapObjects[silhouetteable] && _silhouetteablesToMapObjects[silhouetteable][mapObj])
                  {
                     delete _silhouetteablesToMapObjects[silhouetteable][mapObj];
                     if(!hasKeys(_silhouetteablesToMapObjects[silhouetteable]))
                     {
                        delete _silhouetteablesToMapObjects[silhouetteable];
                     }
                  }
               }
            }
         }
         BattleUtils.cleanDictionary(_invalidSilhouetteables);
      }
      
      public function removeSilhouette(silhouetteable:ISilhouetteable) : void
      {
         var mapObj:MapObject = null;
         for each(mapObj in myMapObjs)
         {
            mapObj.removeObjectSilhouette(silhouetteable);
         }
      }
      
      public function getRoomOffset() : Point
      {
         return myRoomOffset;
      }
      
      public function get layoutPos() : Point
      {
         return this.myLayoutPos;
      }
      
      public function getCollisionData() : void
      {
         if(!this.mapIt.isCollisionMapOk())
         {
            this.mapIt.getMapDataFromServer();
         }
      }
      
      public function get scale() : int
      {
         return this.myScale;
      }
      
      public function get mapObjs() : Array
      {
         return this.myMapObjs;
      }
      
      private function testEdgeOpen(x:Number, y:Number) : Boolean
      {
         var cm:CollisionMap = null;
         var resolution:Number = NaN;
         var nx:int = 0;
         var ny:int = 0;
         var node:uint = 0;
         if(x >= 0 && y >= 0)
         {
            cm = this.mapIt.getCollisionMap();
            resolution = cm.getResolution();
            nx = Math.floor(x / resolution);
            ny = Math.floor(y / resolution);
            node = cm.getNode(nx,ny);
            if((node & CollisionMap.TRIGGER_BITMASK) != 0)
            {
               return true;
            }
            return (node & CollisionMap.TYPE_WALL) == 0;
         }
         return false;
      }
      
      public function testNorthEdgeOpen(x:Number) : Boolean
      {
         var o:Point = this.getRoomOffset();
         return testEdgeOpen(x - o.x,MARGIN);
      }
      
      public function getBack() : MovieClip
      {
         return this.mcBack;
      }
      
      public function set inScope(b:Boolean) : void
      {
         if(_animations)
         {
            if(b)
            {
               _animations.playAll();
            }
            else
            {
               _animations.stopAll();
            }
         }
      }
      
      public function getExits() : Object
      {
         var exits:Object = new Object();
         exits.north = this.roomInfo.north;
         exits.south = this.roomInfo.south;
         exits.west = this.roomInfo.west;
         exits.east = this.roomInfo.east;
         return exits;
      }
      
      public function setShadowForTint(v:Boolean) : void
      {
         var mObj:MapObject = null;
         var shadow:Sprite = null;
         for(var i:int = 0; i < this.myMapObjs.length; i++)
         {
            mObj = this.myMapObjs[i] as MapObject;
            shadow = mObj.getShadow() as Sprite;
            if(shadow != null)
            {
               if(v)
               {
                  shadow.visible = true;
               }
               else
               {
                  shadow.visible = mObj.displayShadow;
               }
            }
         }
      }
      
      public function DrawCollisionMap(mc:Sprite) : void
      {
         var p:Point = this.getRoomOffset();
         mc.x = p.x;
         mc.y = p.y;
         this.mapIt.getCollisionMap().draw(mc);
      }
      
      public function get zoneId() : int
      {
         var z:int = 0;
         if(this.roomInfo != null && this.roomInfo.zoneId != -1)
         {
            z = this.roomInfo.zoneId;
         }
         return z;
      }
      
      public function setBack(mcBack:MovieClip) : void
      {
         var anims:AnimationStore = null;
         this.mcBack = mcBack;
         if(this.mcBack)
         {
            anims = new AnimationStore(mcBack);
            if(anims.size)
            {
               _animations = anims;
            }
         }
      }
      
      public function getRoomTint() : Object
      {
         var r:* = this.myTint >> 16;
         var g:* = this.myTint >> 8 & 255;
         var b:* = this.myTint & 255;
         return {
            "r":r,
            "g":g,
            "b":b,
            "a":this.myTintAlpha
         };
      }
      
      public function containMapObj(mapObj:MapObject) : Boolean
      {
         var r:* = this.myMapObjs.indexOf(mapObj) >= 0;
         return r;
      }
      
      public function getMapObj(name:String) : MapObject
      {
         var mobj:MapObject = null;
         for(var i:int = 0; i < this.mapObjs.length; i++)
         {
            if(this.mapObjs[i].name == name)
            {
               mobj = this.mapObjs[i];
               break;
            }
         }
         return mobj;
      }
      
      public function testEastEdgeOpen(y:Number) : Boolean
      {
         var o:Point = this.getRoomOffset();
         return testEdgeOpen(780 - MARGIN,y - o.y);
      }
      
      public function runObjectSilhouette(silhouetteable:ISilhouetteable) : void
      {
         var obj:* = null;
         for(obj in _silhouetteablesToMapObjects[silhouetteable])
         {
            if(MapObject(obj).displaySilhouette)
            {
               MapObject(obj).updateSilhouette(silhouetteable,silhouetteable.scalingDirty);
            }
         }
         silhouetteable.scalingDirty = false;
         _invalidSilhouetteables[silhouetteable] = true;
      }
   }
}
