package com.gaiaworld.room.model
{
   import com.gaiaworld.avatar.controller.events.AvatarCollisionEvent;
   import com.gaiaworld.avatar.interfaces.IActionGroup;
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.global.util.StringFunctions;
   import com.gaiaworld.room.constants.RoomConstants;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.room.view.JumpArrow;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class RoomModel extends EventDispatcher
   {
      
      private static var instance:RoomModel;
       
      
      public var w:Number;
      
      public var h:Number;
      
      public var backgroundImage:String = "";
      
      public var backClass:Class;
      
      public var roomName:String;
      
      public var loadedSurface:Boolean = true;
      
      private var _surfaceToLoad:String = "";
      
      public var scrollY:Number;
      
      public var scrollX:Number;
      
      private var _roomID:String;
      
      public var borderLeft:Number = 320;
      
      public var borderRight:Number = 250;
      
      public var borderTop:Number = 250;
      
      public var borderBot:Number = 300;
      
      public var mapMinX:Number = 0;
      
      public var mapMinY:Number = 0;
      
      public var mapMaxX:Number = -50;
      
      public var mapMaxY:Number = 150;
      
      private var _pathFindingMap:Sprite;
      
      private var _collisionMap:Sprite;
      
      private var _actions:IActionGroup;
      
      public var portalArray:Array;
      
      public var roomDataIndex:Number;
      
      public var roomData:Array;
      
      public var fetchIndex:Number;
      
      public var fecthedData:Array;
      
      private var _collisionChild;
      
      public var colItem2;
      
      public var colItem1;
      
      public var collideAvatar:IAvatar;
      
      public var mobObject:String;
      
      public var mobData:Array;
      
      public var checkForBlockedItems:Boolean = true;
      
      public var roomNumber:Number;
      
      private var _roomSubName:String = "";
      
      public var canScroll:Boolean = true;
      
      public var alreadyHere:Number = 0;
      
      private var _area:String;
      
      public var createRoomPassword:String = null;
      
      public var templateName:String = "gaia";
      
      private var _mapCollisionItem:ISurfaceObject;
      
      public var specialSub:String;
      
      public var cameFrom:String;
      
      public var tweenSpeed:Number = 1;
      
      public var roomInstance:String = "";
      
      private var _perLoaded:Number = 0;
      
      private var _weather:String;
      
      public function RoomModel()
      {
         super();
      }
      
      public static function getInstance() : RoomModel
      {
         if(instance == null)
         {
            instance = new RoomModel();
         }
         return instance;
      }
      
      public function silentMobUpdate(param1:String, param2:Array) : *
      {
         this.mobObject = param1;
         this.mobData = param2;
         this.dispatchEvent(new Event(GlobalConstants.SILENT_MOB_UPDATE,true));
      }
      
      public function changeRoom(param1:String) : *
      {
         this.surfaceToLoad = param1;
         this.roomSubName = param1;
         this.dispatchEvent(new Event(GlobalConstants.CHANGE_ROOMS,true));
      }
      
      public function setScrollPos(param1:Number, param2:Number) : *
      {
         this.scrollX = param1;
         this.scrollY = param2;
         this.dispatchEvent(new Event(GlobalConstants.UPDATE_SCROLL,true));
      }
      
      public function setScrollTo(param1:Number, param2:Number) : *
      {
         this.scrollX = param1;
         this.scrollY = param2;
         this.dispatchEvent(new Event(GlobalConstants.UPDATE_SCROLL_TO,true));
      }
      
      public function roomIsChanged() : *
      {
         this.dispatchEvent(new Event(GlobalConstants.ROOM_CHANGED,true));
      }
      
      public function setExtreme(param1:String) : void
      {
         this.dispatchEvent(new Event(param1,true));
      }
      
      public function get roomID() : String
      {
         return this._roomID;
      }
      
      public function set roomID(param1:String) : void
      {
         this._roomID = param1;
         this.dispatchEvent(new Event(GlobalConstants.ROOM_ID_UPDATED,true));
      }
      
      public function get collisionChild() : *
      {
         return this._collisionChild;
      }
      
      public function set collisionChild(param1:Sprite) : void
      {
         this._collisionChild = param1;
         this.dispatchEvent(new AvatarCollisionEvent(AvatarCollisionEvent.AVATAR_HIT_SOMETHING,this._collisionChild,this.collideAvatar,true));
      }
      
      public function get mapCollisionItem() : ISurfaceObject
      {
         return this._mapCollisionItem;
      }
      
      public function set mapCollisionItem(param1:ISurfaceObject) : void
      {
         this._mapCollisionItem = param1;
         this.dispatchEvent(new Event(RoomConstants.ITEM_MAP_COLLISON,true));
      }
      
      public function get collisionMap() : Sprite
      {
         return this._collisionMap;
      }
      
      public function set collisionMap(param1:Sprite) : void
      {
         this._collisionMap = param1;
         this.dispatchEvent(new Event(RoomConstants.COLLISION_MAP_SET,true));
      }
      
      public function get actions() : IActionGroup
      {
         return this._actions;
      }
      
      public function set actions(param1:IActionGroup) : void
      {
         this._actions = param1;
      }
      
      public function get pathFindingMap() : Sprite
      {
         return this._pathFindingMap;
      }
      
      public function set pathFindingMap(param1:Sprite) : void
      {
         this._pathFindingMap = param1;
         this.dispatchEvent(new Event(RoomConstants.PATHFINDING_MAP_SET,true));
      }
      
      public function get roomSubName() : String
      {
         return this._roomSubName;
      }
      
      public function set roomSubName(param1:String) : void
      {
         this._roomSubName = param1;
      }
      
      public function get perLoaded() : Number
      {
         return this._perLoaded;
      }
      
      public function set perLoaded(param1:Number) : void
      {
         this._perLoaded = param1;
         this.dispatchEvent(new Event(RoomConstants.PER_LOADED_UPDATED,true));
      }
      
      public function get area() : String
      {
         return this._area;
      }
      
      public function set area(param1:String) : void
      {
         var _loc2_:Boolean = false;
         if(this._area != param1)
         {
            _loc2_ = true;
         }
         this._area = param1;
         if(_loc2_ == true)
         {
            this.dispatchEvent(new Event(GlobalConstants.LOG_USER_CHANGED_SPACES,true));
         }
      }
      
      public function get surfaceToLoad() : String
      {
         return this._surfaceToLoad;
      }
      
      public function set surfaceToLoad(param1:String) : void
      {
         this.cameFrom = this._surfaceToLoad;
         this._surfaceToLoad = param1;
      }
      
      public function get weather() : String
      {
         return this._weather;
      }
      
      public function set weather(param1:String) : void
      {
         this._weather = param1;
         this.dispatchEvent(new Event(RoomConstants.LOAD_WEATHER,true));
      }
      
      public function getPortal(param1:String) : JumpArrow
      {
         var _loc4_:JumpArrow = null;
         if(this.portalArray == null)
         {
            return null;
         }
         var _loc2_:Number = this.portalArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.portalArray[_loc3_];
            if(_loc4_.room == param1)
            {
               return _loc4_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function setRoomData(param1:Number, param2:Array) : *
      {
         this.roomDataIndex = param1;
         this.roomData = param2;
         this.dispatchEvent(new Event(RoomConstants.SET_ROOM_DATA,true));
      }
      
      public function getRoomData(param1:Number) : *
      {
         this.fetchIndex = param1;
         this.dispatchEvent(new Event(RoomConstants.FETCH_DATA,true));
      }
      
      public function setUpdatedData(param1:Array) : *
      {
         this.fecthedData = param1;
         this.dispatchEvent(new Event(RoomConstants.ROOM_DATA_UPDATED,true));
      }
      
      public function setItemCollison(param1:*, param2:*) : void
      {
         this.colItem2 = param2;
         this.colItem1 = param1;
         this.dispatchEvent(new Event(RoomConstants.ITEM_TO_ITEM_COLLISION,true));
      }
      
      public function refreshSurface() : *
      {
         this.dispatchEvent(new Event(RoomConstants.REFRESH_SURFACE,true));
      }
      
      public function specialRoomSub(param1:String) : void
      {
         this.specialSub = param1;
      }
      
      public function adjustScroll() : void
      {
         this.dispatchEvent(new Event(RoomConstants.ADJUST_SCROLL,true));
      }
      
      public function roomIsReady() : void
      {
         this.dispatchEvent(new Event(RoomConstants.ROOM_IS_READY,true));
      }
      
      public function inSpecialRoom() : *
      {
         return this.isSpecialRoom(this.surfaceToLoad);
      }
      
      public function isSpecialRoom(param1:String) : *
      {
         if(StringFunctions.contains(param1,"house") == true)
         {
            return true;
         }
         if(StringFunctions.contains(param1,"housing") == true)
         {
            return true;
         }
         return false;
      }
      
      public function showNodes() : *
      {
         this.dispatchEvent(new Event(RoomConstants.SHOW_NODES,true));
      }
      
      public function hideNodes() : *
      {
         this.dispatchEvent(new Event(RoomConstants.HIDE_NODES,true));
      }
      
      public function showPaths() : *
      {
         this.dispatchEvent(new Event(RoomConstants.SHOW_PATHS,true));
      }
      
      public function hidePaths() : *
      {
         this.dispatchEvent(new Event(RoomConstants.HIDE_PATHS,true));
      }
      
      public function roomScrollDone() : void
      {
         this.dispatchEvent(new Event(RoomConstants.ROOM_SCROLL_DONE,true));
      }
      
      public function flipBackground() : void
      {
         this.dispatchEvent(new Event(RoomConstants.TOGGLE_BACKGROUND,true));
      }
      
      public function flipObjects() : void
      {
         this.dispatchEvent(new Event(RoomConstants.TOGGLE_OBJECTS,true));
      }
   }
}
