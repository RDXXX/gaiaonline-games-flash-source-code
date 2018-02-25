package com.gaiaworld.room.model
{
   import com.gaiaworld.room.constants.MapConstants;
   import com.gaiaworld.room.data.GpsGridData;
   import com.gaiaworld.room.util.GpsFinder;
   import com.gaiaworld.room.vo.RoomMapVo;
   import com.gaiaworld.towns.vo.LocBookmarkVo;
   import com.gaiaworld.user.vo.PalTrackVo;
   import com.gaiaworld.user.vo.PalVo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class GpsModel extends EventDispatcher
   {
      
      private static var instance:GpsModel;
      
      public static const IN_SAME_ROOM:String = "inSameRoom";
       
      
      public var mapArray:Vector.<RoomMapVo>;
      
      private var dirArray:Array;
      
      private var wrongPath:Array;
      
      public var endRoom:String;
      
      private var currentRoom:String;
      
      public var directionArray:Array;
      
      public var myRoom:String;
      
      public var bookmarkArray:Array;
      
      private var _favFlag:Boolean = false;
      
      public var favX:Number = -1;
      
      public var favY:Number = -1;
      
      private var _palToFollow:PalVo;
      
      public var navagationOn:Boolean = false;
      
      public var hotSpotFlag:Boolean = false;
      
      private var gpsFinder:GpsFinder;
      
      private var gridData:GpsGridData;
      
      public var roomImIn:String;
      
      public var trackVo:PalTrackVo;
      
      public var targetRoom:String = "";
      
      public var finalRoom:String = "";
      
      public var currentRoomID:Number = 0;
      
      public function GpsModel()
      {
         this.wrongPath = new Array();
         this.bookmarkArray = new Array();
         this.gpsFinder = new GpsFinder();
         this.gridData = new GpsGridData();
         super();
         this.gpsFinder.gridArray = this.gridData.gridArray;
      }
      
      public static function getInstance() : GpsModel
      {
         if(instance == null)
         {
            instance = new GpsModel();
         }
         return instance;
      }
      
      public function setMapData(param1:Vector.<RoomMapVo>) : *
      {
         this.mapArray = param1;
         var _loc2_:Number = param1.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc3_++;
         }
         this.dispatchEvent(new Event(MapConstants.EVENT_MAP_DATA_SET,true));
      }
      
      public function getRoomNumber(param1:String) : *
      {
         var _loc2_:Number = this.mapArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.mapArray[_loc3_].mapName == param1)
            {
               this.currentRoomID = this.mapArray[_loc3_].id;
               return this.mapArray[_loc3_].id;
            }
            _loc3_++;
         }
         return -1;
      }
      
      public function getRoomName(param1:Number) : String
      {
         var _loc2_:Number = this.mapArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.mapArray[_loc3_].id == param1)
            {
               return this.mapArray[_loc3_].mapName;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function updateRoom(param1:String) : *
      {
         this.myRoom = param1;
         if(this.isAlreadyOnList(param1) == false)
         {
            this.getDirections(param1,this.endRoom);
            return;
         }
         this.dispatchEvent(new Event(MapConstants.UPDATE_COMPASS,true));
      }
      
      public function getDirections(param1:String, param2:String) : *
      {
         if(param2 == null)
         {
            return;
         }
         this.targetRoom = param2;
         this.gpsFinder.reset();
         if(param2 == "housing" || param1 == "housing")
         {
            this.endRoom = param2;
            this.dispatchEvent(new Event(MapConstants.SHOW_TAXI_COMPASS,true));
            return;
         }
         this.dirArray = this.gpsFinder.find(param1,param2);
         if(this.myRoom != param2)
         {
            this.dispatchEvent(new Event(MapConstants.EVENT_DIRECTIONS_SET,true));
         }
         else
         {
            this.dispatchEvent(new Event(IN_SAME_ROOM,true));
         }
      }
      
      public function getDirections2(param1:String, param2:String) : *
      {
         if(param2 == null)
         {
            return;
         }
         this.gpsFinder.reset();
         this.myRoom = param1;
         this.targetRoom = param2;
         this.endRoom = param2;
         this.dirArray = new Array();
         this.wrongPath = [];
         var _loc3_:RoomMapVo = this.getRoom(param1);
         var _loc4_:RoomMapVo = this.getRoom(param2);
         this.dirArray.push(param1);
         if(this.isAdjacent(_loc3_,_loc4_) == true)
         {
            this.dirArray.push(param2);
         }
         if(this.isDeadEnd(_loc3_))
         {
            this.dirArray.push(this.getAdjacent(_loc3_,0));
         }
         this.currentRoom = this.dirArray[this.dirArray.length - 1];
         if(this.myRoom != param2)
         {
            this.dispatchEvent(new Event(MapConstants.EVENT_DIRECTIONS_SET,true));
         }
         else
         {
            this.dispatchEvent(new Event(IN_SAME_ROOM,true));
         }
      }
      
      private function getNextRoom() : *
      {
         var _loc3_:String = null;
         var _loc1_:Number = this.dirArray.length;
         this.currentRoom = this.dirArray[this.dirArray.length - 1];
         var _loc2_:RoomMapVo = this.getRoom(this.currentRoom);
         if(_loc2_ != null)
         {
            if(this.isDeadEnd(_loc2_) == true)
            {
               this.removeLastRoom();
               this.getNextRoom();
               return;
            }
            _loc3_ = this.getNextAdjacentRoom(_loc2_);
            if(_loc3_ != null)
            {
               this.dirArray.push(_loc3_);
            }
            else
            {
               this.removeLastRoom();
            }
            if(_loc3_ != this.endRoom)
            {
               this.getNextRoom();
            }
         }
      }
      
      private function removeLastRoom() : *
      {
         var _loc1_:String = this.dirArray.pop();
         this.wrongPath.push(_loc1_);
      }
      
      private function isAlreadyOnList(param1:String) : *
      {
         if(this.dirArray == null)
         {
            return false;
         }
         var _loc2_:Number = this.dirArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.dirArray[_loc3_] == param1)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      private function getNextAdjacentRoom(param1:RoomMapVo) : String
      {
         var _loc4_:String = null;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc2_:Number = param1.adjacent.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.getAdjacent(param1,_loc3_);
            _loc5_ = this.isWrongPath(_loc4_);
            _loc6_ = this.isAlreadyOnList(_loc4_);
            if(_loc5_ == false && _loc6_ == false)
            {
               return _loc4_;
            }
            _loc3_++;
         }
         return null;
      }
      
      private function isWrongPath(param1:String) : *
      {
         var _loc2_:Number = this.wrongPath.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.wrongPath[_loc3_] == param1)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      private function getRoom(param1:String) : RoomMapVo
      {
         var _loc4_:RoomMapVo = null;
         var _loc2_:Number = this.mapArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.mapArray[_loc3_];
            if(_loc4_.mapName == param1)
            {
               return _loc4_;
            }
            _loc3_++;
         }
         return null;
      }
      
      private function isAdjacent(param1:RoomMapVo, param2:RoomMapVo) : Boolean
      {
         if(param1 == null || param2 == null)
         {
            return false;
         }
         if(param1.adjacent == null)
         {
            return false;
         }
         if(param2.mapName == null)
         {
            return false;
         }
         var _loc3_:String = param2.mapName;
         var _loc4_:Number = param1.adjacent.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(param1.adjacent[_loc5_] == _loc3_)
            {
               return true;
            }
            _loc5_++;
         }
         return false;
      }
      
      private function getAdjacent(param1:RoomMapVo, param2:Number) : String
      {
         return param1.adjacent[param2];
      }
      
      private function isDeadEnd(param1:RoomMapVo) : Boolean
      {
         if(param1 == null)
         {
            return true;
         }
         if(param1.adjacent == null)
         {
            return true;
         }
         if(param1.adjacent.length == 1)
         {
            return true;
         }
         return false;
      }
      
      private function showDirArray() : *
      {
         var _loc1_:Number = this.dirArray.length;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc2_++;
         }
      }
      
      public function nextRoomInDirections() : *
      {
         if(this.dirArray == null || this.dirArray.length == 0)
         {
            this.dispatchEvent(new Event(MapConstants.YOU_HAVE_ARRIVED,true));
            this.dispatchEvent(new Event(IN_SAME_ROOM,true));
            return null;
         }
         if(this.dirArray[0] == this.roomImIn)
         {
            this.dirArray.shift();
         }
         if(this.dirArray == null || this.dirArray.length == 0)
         {
            this.dispatchEvent(new Event(MapConstants.YOU_HAVE_ARRIVED,true));
            return null;
         }
         this.myRoom = this.dirArray[0];
         var _loc1_:Number = this.dirArray.length;
         if(this.dirArray == null)
         {
            return null;
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            if(this.dirArray[_loc2_] == this.myRoom)
            {
               return this.dirArray[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function get favFlag() : Boolean
      {
         return this._favFlag;
      }
      
      public function set favFlag(param1:Boolean) : void
      {
         this._favFlag = param1;
      }
      
      public function get palToFollow() : PalVo
      {
         return this._palToFollow;
      }
      
      public function set palToFollow(param1:PalVo) : void
      {
         this._palToFollow = param1;
         this.dispatchEvent(new Event(MapConstants.PAL_FOLLOW_UPDATED,true));
      }
      
      public function getBookMarkString() : String
      {
         var _loc4_:LocBookmarkVo = null;
         var _loc1_:String = "";
         var _loc2_:Number = this.bookmarkArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.bookmarkArray[_loc3_];
            _loc1_ = _loc1_ + (_loc4_.toString() + "<bm>");
            _loc3_++;
         }
         return _loc1_;
      }
   }
}
