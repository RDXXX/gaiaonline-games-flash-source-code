package com.gaiaonline.battle.map
{
   import com.gaiaonline.battle.newactors.ActorManager;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class AwareObject extends Sprite
   {
      
      protected static const MAX_ALPHA:Number = 0.7;
      
      protected static const BORDER:Number = 1;
       
      
      protected var _serverLoc:Point = null;
      
      protected var _scale:Number = NaN;
      
      protected var _drawX:Number = NaN;
      
      protected var _objectRoom:MapRoom = null;
      
      protected var _scaleRoomDistance:Number = 0.5;
      
      protected var _directionToPlayer:String = null;
      
      protected var _drawY:Number = NaN;
      
      protected var _alpha:Number = NaN;
      
      protected var _myParent:DisplayObjectContainer = null;
      
      protected var _targetLoc:Point = null;
      
      private var _visible:Boolean = false;
      
      protected var _mapRoomManager:IMapRoomManager = null;
      
      protected var _directionToObject:String = null;
      
      protected var _playerRoom:MapRoom = null;
      
      public function AwareObject()
      {
         super();
      }
      
      public function get objectRoom() : MapRoom
      {
         return _objectRoom;
      }
      
      protected function calculateScale() : Number
      {
         var edgeDistance:Number = NaN;
         var detectionDistance:Number = NaN;
         switch(_directionToPlayer)
         {
            case AwarenessLayer.EAST:
               edgeDistance = AwarenessLayer.ROOM_WIDTH - _serverLoc.x;
               detectionDistance = AwarenessLayer.ROOM_WIDTH * _scaleRoomDistance;
               break;
            case AwarenessLayer.WEST:
               edgeDistance = _serverLoc.x;
               detectionDistance = AwarenessLayer.ROOM_WIDTH * _scaleRoomDistance;
               break;
            case AwarenessLayer.SOUTH:
               edgeDistance = AwarenessLayer.ROOM_HEIGHT - _serverLoc.y;
               detectionDistance = AwarenessLayer.ROOM_HEIGHT * _scaleRoomDistance;
               break;
            case AwarenessLayer.NORTH:
               edgeDistance = _serverLoc.y;
               detectionDistance = AwarenessLayer.ROOM_HEIGHT * _scaleRoomDistance;
         }
         if(edgeDistance > detectionDistance)
         {
            return 0;
         }
         var scale:Number = 2 - edgeDistance / detectionDistance;
         return scale;
      }
      
      public function reset() : void
      {
         _mapRoomManager = null;
         _directionToObject = null;
         _directionToPlayer = null;
         _serverLoc = null;
         _targetLoc = null;
         _drawX = NaN;
         _drawY = NaN;
         _playerRoom = null;
         _objectRoom = null;
         _scale = NaN;
         _scaleRoomDistance = 0.5;
         _alpha = NaN;
      }
      
      public function init(mapRoomManager:IMapRoomManager, dir:String, room:String) : void
      {
         this.visible = false;
         this._visible = false;
         this._mapRoomManager = mapRoomManager;
         _directionToObject = dir;
         switch(dir)
         {
            case AwarenessLayer.NORTH:
               _drawY = BORDER;
               _directionToPlayer = AwarenessLayer.SOUTH;
               break;
            case AwarenessLayer.SOUTH:
               _drawY = 505 - BORDER;
               _directionToPlayer = AwarenessLayer.NORTH;
               break;
            case AwarenessLayer.EAST:
               _drawX = 780 - BORDER;
               _directionToPlayer = AwarenessLayer.WEST;
               break;
            case AwarenessLayer.WEST:
               _drawX = BORDER;
               _directionToPlayer = AwarenessLayer.EAST;
         }
         this._alpha = 0;
         this._objectRoom = this._mapRoomManager.getRoomById(room);
      }
      
      protected function calculateAlpha() : Number
      {
         var actorPos:Point = ActorManager.getInstance().myActor.position;
         var fadeDistance:Number = NaN;
         var edgeDistance:Number = 0;
         switch(_directionToObject)
         {
            case AwarenessLayer.EAST:
               edgeDistance = AwarenessLayer.ROOM_WIDTH * 100 / _playerRoom.scale - actorPos.x;
               fadeDistance = AwarenessLayer.ROOM_WIDTH * 100 / _playerRoom.scale / 6;
               break;
            case AwarenessLayer.WEST:
               edgeDistance = actorPos.x;
               fadeDistance = AwarenessLayer.ROOM_WIDTH * 100 / _playerRoom.scale / 6;
               break;
            case AwarenessLayer.SOUTH:
               edgeDistance = AwarenessLayer.ROOM_HEIGHT * 100 / _playerRoom.scale - actorPos.y;
               fadeDistance = AwarenessLayer.ROOM_HEIGHT * 100 / _playerRoom.scale / 6;
               break;
            case AwarenessLayer.NORTH:
               edgeDistance = actorPos.y;
               fadeDistance = AwarenessLayer.ROOM_HEIGHT * 100 / _playerRoom.scale / 6;
         }
         var alf:Number = this.alpha;
         if(edgeDistance > fadeDistance)
         {
            edgeDistance = edgeDistance - fadeDistance;
            alf = Math.min(alf + 0.1,1 - edgeDistance / fadeDistance);
         }
         else
         {
            alf = alf + 0.1;
         }
         alf = Math.min(MAX_ALPHA,alf);
         return alf;
      }
      
      public function get playerRoom() : MapRoom
      {
         return _playerRoom;
      }
      
      protected function setVisible(visible:Boolean) : void
      {
         if(this._visible != visible)
         {
            if(visible && !_myParent.contains(this))
            {
               _myParent.addChild(this);
            }
            else if(!visible && _myParent.contains(this))
            {
               _myParent.removeChild(this);
            }
            this._visible = visible;
            this.visible = visible;
         }
      }
      
      public function get direction() : String
      {
         return _directionToObject;
      }
   }
}
