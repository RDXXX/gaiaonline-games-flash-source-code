package com.gaiaworld.gobjects.model
{
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.global.interfaces.ICollision;
   import com.gaiaworld.global.interfaces.ISurface;
   import com.gaiaworld.gobjects.controller.events.ObjectEvent;
   import com.gaiaworld.gobjects.vo.MobVo;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.sushi.interfaces.IDataExchange;
   import com.gaiaworld.towns.vo.RoomObjectVo;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class ObjectModel extends EventDispatcher
   {
      
      private static var instance:ObjectModel;
       
      
      public var room:ISurface;
      
      private var objectArray:Array;
      
      public var dataExchange:IDataExchange;
      
      private var mobArray:Array;
      
      public var stationaryObject:ISurfaceObject;
      
      public var collisionActions:ICollision;
      
      public var shakenObj:ISurfaceObject;
      
      private var _coins:Number = 0;
      
      private var _animationComplete:String;
      
      private var _animationToStart:String;
      
      public function ObjectModel()
      {
         this.objectArray = new Array();
         this.mobArray = new Array();
         super();
      }
      
      public static function getInstance() : ObjectModel
      {
         if(instance == null)
         {
            instance = new ObjectModel();
         }
         return instance;
      }
      
      public function addItem(param1:ISurfaceObject, param2:Boolean) : *
      {
         if(this.room)
         {
            this.room.addObject(param1,param2);
         }
      }
      
      public function addTopItem(param1:Sprite) : *
      {
         this.room.addTopItem(param1);
      }
      
      public function removeItem(param1:ISurfaceObject) : *
      {
         this.room.removeObject(param1);
      }
      
      public function registerObject(param1:RoomObjectVo) : void
      {
         var _loc2_:Number = NaN;
         if(this.isOnList(param1) == false)
         {
            if(param1.mobID == null)
            {
               param1.mobID = this.dataExchange.initMob(param1.toArray());
               this.mobArray.push(new MobVo(param1.name,param1.mobID));
            }
            this.objectArray.push(param1);
         }
         else
         {
            if(param1.mobID == null)
            {
               this.findMobID(param1.name);
            }
            _loc2_ = this.getIndex(param1);
            this.objectArray[_loc2_] = param1;
         }
      }
      
      public function updateObject(param1:RoomObjectVo, param2:Boolean) : void
      {
         var _loc3_:Number = this.getIndex(param1);
         if(_loc3_ != -1)
         {
            this.objectArray[_loc3_] = param1;
         }
         else
         {
            this.registerObject(param1);
         }
         if(param2 == true)
         {
            this.dataExchange.updateMobData(param1.mobID,param1.toArray());
         }
         else
         {
            this.dispatchEvent(new ObjectEvent(ObjectEvent.UPDATED_FROM_SERVER,param1.name,param1.toString(),param1.mobID));
         }
      }
      
      public function updateArray(param1:RoomObjectVo) : *
      {
         var _loc2_:Number = this.getIndex(param1);
         if(_loc2_ != -1)
         {
            this.objectArray[_loc2_] = param1;
         }
         else
         {
            this.registerObject(param1);
         }
      }
      
      public function getNewMobID(param1:String, param2:Array, param3:Boolean = true) : *
      {
         var _loc4_:String = null;
         if(param3 == true)
         {
            _loc4_ = this.dataExchange.initMobTemp(param2);
         }
         _loc4_ = this.dataExchange.initMob(param2);
         this.mobArray.push(new MobVo(param1,_loc4_));
         return _loc4_;
      }
      
      public function findMobID(param1:String) : String
      {
         var _loc4_:MobVo = null;
         var _loc2_:Number = this.mobArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.mobArray[_loc3_];
            if(_loc4_.key == param1)
            {
               return _loc4_.mobID;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function updateObjectSilent(param1:RoomObjectVo, param2:Boolean) : void
      {
         this.dataExchange.setMobDataSilent(param1.mobID,param1.toArray());
      }
      
      public function isOnList(param1:RoomObjectVo) : Boolean
      {
         var _loc4_:RoomObjectVo = null;
         var _loc2_:Number = this.objectArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.objectArray[_loc3_];
            if(_loc4_.name == param1.name)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public function isInRoom(param1:ISurfaceObject) : *
      {
         if(param1 == null)
         {
            return false;
         }
         return this.room.isInRoom(param1);
      }
      
      private function getIndex(param1:RoomObjectVo) : Number
      {
         var _loc4_:RoomObjectVo = null;
         if(param1 == null)
         {
            return -1;
         }
         var _loc2_:Number = this.objectArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.objectArray[_loc3_];
            if(_loc4_ != null)
            {
               if(_loc4_.name == param1.name)
               {
                  return _loc3_;
               }
            }
            _loc3_++;
         }
         return -1;
      }
      
      public function getObject(param1:String) : RoomObjectVo
      {
         var _loc4_:RoomObjectVo = null;
         var _loc2_:Number = this.objectArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.objectArray[_loc3_];
            if(_loc4_.name == param1)
            {
               return _loc4_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function checkCollisionMap(param1:ISurfaceObject) : Boolean
      {
         return this.room.checkMapCollision(param1);
      }
      
      public function callPlugin(param1:Array) : void
      {
         this.dataExchange.callPlugin(param1);
      }
      
      public function addToCollisionList(param1:ISurfaceObject) : void
      {
         this.room.addToCollisionList(param1);
      }
      
      public function removeFromCollisionList(param1:ISurfaceObject) : *
      {
         this.room.removeFromCollisionList(param1);
      }
      
      public function addAvToCollisionList(param1:IAvatar) : void
      {
         this.room.addAvatarToCollideList(param1);
      }
      
      public function removeAvatarFromCollisionList(param1:IAvatar) : void
      {
         this.room.removeAvatarFromCollideList(param1);
      }
      
      public function checkAvatarToAvatar(param1:IAvatar) : *
      {
         this.room.checkAvatarCollisions(param1);
      }
      
      public function getNumberOfItems() : Number
      {
         return this.room.getNumberOfItems();
      }
      
      public function addStationaryItem(param1:ISurfaceObject) : void
      {
         this.stationaryObject = param1;
         this.dispatchEvent(new Event(ObjectEvent.ADD_STATIONARY_OBJECT,true));
      }
      
      public function removeStationaryItem(param1:ISurfaceObject) : void
      {
         this.stationaryObject = param1;
         this.dispatchEvent(new Event(ObjectEvent.REMOVE_STATIONARY_OBJECT,true));
      }
      
      public function clearStationaryObjects() : *
      {
         this.dispatchEvent(new Event(ObjectEvent.CLEAR_STATIONARY_OBJECTS,true));
      }
      
      public function clearTopItems() : void
      {
         this.room.clearTopItems();
      }
      
      public function get animationToStart() : String
      {
         return this._animationToStart;
      }
      
      public function set animationToStart(param1:String) : void
      {
         this._animationToStart = param1;
         this.dispatchEvent(new Event(GlobalConstants.START_ANIMATION,true));
      }
      
      public function get animationComplete() : String
      {
         return this._animationComplete;
      }
      
      public function set animationComplete(param1:String) : void
      {
         this._animationComplete = param1;
         this.dispatchEvent(new Event(GlobalConstants.ANIMATION_COMPLETE,true));
      }
      
      public function get coins() : Number
      {
         return this._coins;
      }
      
      public function set coins(param1:Number) : void
      {
         this._coins = param1;
         this.dispatchEvent(new Event(GlobalConstants.COINS,true));
      }
   }
}
