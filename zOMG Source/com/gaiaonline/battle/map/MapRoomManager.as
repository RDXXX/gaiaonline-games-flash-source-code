package com.gaiaonline.battle.map
{
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.platform.gateway.ICollisionConnector;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.display.Sprite;
   import flash.events.ProgressEvent;
   import flash.geom.Point;
   
   public class MapRoomManager implements IMapRoomManager
   {
      
      private static var s_sizePoint:Point = new Point(NaN,NaN);
       
      
      private var _currentRoomId:String;
      
      private var _collisionConnector:ICollisionConnector = null;
      
      private var rooms:Object = null;
      
      public function MapRoomManager(collisionConnector:ICollisionConnector)
      {
         super();
         _collisionConnector = collisionConnector;
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_ROOM_LEAVE,onMapRoomLeave);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.MAP_LOAD_ZONE,onLoadZone);
      }
      
      public function getRoomById(id:String) : MapRoom
      {
         if(rooms && id)
         {
            return rooms[id] as MapRoom;
         }
         return null;
      }
      
      public function get zone() : String
      {
         return _currentRoomId.split("_")[0];
      }
      
      public function getRoomAtLayoutPos(col:int, row:int) : MapRoom
      {
         var roomId:* = null;
         var r:MapRoom = null;
         for(roomId in this.rooms)
         {
            r = this.rooms[roomId];
            if(r.layoutPos.x == col && r.layoutPos.y == row)
            {
               return r;
            }
         }
         return null;
      }
      
      public function initRoomsFromInfoLayer(infoLayer:Sprite) : void
      {
         var ri:uint = 0;
         var roomId:* = null;
         var roomInfo:Object = null;
         var fileCol:int = 0;
         var fileRow:int = 0;
         var fileRoomNum:int = 0;
         var serverRoomId:String = null;
         var lCol:int = 0;
         var lRow:int = 0;
         GlobalEvent.eventDispatcher.dispatchEvent(new ProgressEvent(GlobalEvent.MAP_INIT_PROGRESS,false,false,40,100));
         this.rooms = new Object();
         for(var childCount:uint = infoLayer.numChildren; ri < childCount; )
         {
            roomInfo = infoLayer.getChildAt(ri);
            fileCol = Math.floor(roomInfo.x / 780);
            fileRow = Math.floor(roomInfo.y / 505);
            if(roomInfo == "[object RoomInfo]")
            {
               fileRoomNum = fileRow * 100 + fileCol + 1;
               if(roomInfo.room_name == null || String(roomInfo.room_name).length == 0)
               {
                  serverRoomId = this.zone + "_" + fileRoomNum;
                  roomInfo.room_name = serverRoomId;
               }
               else
               {
                  serverRoomId = String(roomInfo.room_name);
               }
               lCol = fileCol;
               lRow = fileRow;
               this.rooms[serverRoomId] = new MapRoom(this,_collisionConnector,serverRoomId,new Point(lCol,lRow),new RoomInfoData(roomInfo));
            }
            else if(roomInfo == "[object Target]")
            {
               roomInfo.target_name = roomInfo.name;
            }
            ri++;
         }
         for(roomId in rooms)
         {
            setRoomExits(roomId);
         }
      }
      
      private function onMapRoomLeave(event:GlobalEvent) : void
      {
         var data:Object = event.data;
         _currentRoomId = data.newRoomId;
      }
      
      private function onLoadZone(event:GlobalEvent) : void
      {
         disposeAllRooms();
      }
      
      private function disposeAllRooms() : void
      {
         var r:* = null;
         var mRoom:MapRoom = null;
         for(r in this.rooms)
         {
            mRoom = this.rooms[r];
            mRoom.dipose();
         }
         this.rooms = null;
      }
      
      private function setRoomExits(roomId:String) : void
      {
         var mRoom:MapRoom = this.rooms[roomId];
         var roomInfoData:RoomInfoData = mRoom.roomInfo;
         var north:MapRoom = this.getRoomAtLayoutPos(mRoom.layoutPos.x,mRoom.layoutPos.y - 1);
         if(north && !north.isDummyRoom)
         {
            roomInfoData.exit_north = north.serverRoomId;
         }
         var south:MapRoom = this.getRoomAtLayoutPos(mRoom.layoutPos.x,mRoom.layoutPos.y + 1);
         if(south && !south.isDummyRoom)
         {
            roomInfoData.exit_south = south.serverRoomId;
         }
         var east:MapRoom = this.getRoomAtLayoutPos(mRoom.layoutPos.x + 1,mRoom.layoutPos.y);
         if(east && !east.isDummyRoom)
         {
            roomInfoData.exit_east = east.serverRoomId;
         }
         var west:MapRoom = this.getRoomAtLayoutPos(mRoom.layoutPos.x - 1,mRoom.layoutPos.y);
         if(west && !west.isDummyRoom)
         {
            roomInfoData.exit_west = west.serverRoomId;
         }
      }
      
      public function getCurrentRoomId() : String
      {
         return this._currentRoomId;
      }
      
      public function getCurrentMapRoom() : MapRoom
      {
         return getRoomById(_currentRoomId);
      }
      
      public function setBackParamForAllRooms(obj:Object) : void
      {
         var rid:* = null;
         for(rid in this.rooms)
         {
            getRoomById(rid).setBackParam(obj);
         }
      }
      
      public function getSize() : Point
      {
         var r:* = null;
         var px:Number = NaN;
         var py:Number = NaN;
         var mr:MapRoom = null;
         var lp:Point = null;
         var minX:int = 1000;
         var maxX:int = 0;
         var minY:int = 1000;
         var maxY:int = 0;
         for(r in this.rooms)
         {
            mr = this.rooms[r];
            if(!mr.isDummyRoom)
            {
               lp = mr.layoutPos;
               if(lp.x < minX)
               {
                  minX = lp.x;
               }
               if(lp.x > maxX)
               {
                  maxX = lp.x;
               }
               if(lp.y < minY)
               {
                  minY = lp.y;
               }
               if(lp.y > maxY)
               {
                  maxY = lp.y;
               }
            }
         }
         px = (maxX - minX + 1) * 780;
         py = (maxY - minY + 1) * 505;
         s_sizePoint.x = px;
         s_sizePoint.y = py;
         return s_sizePoint;
      }
   }
}
