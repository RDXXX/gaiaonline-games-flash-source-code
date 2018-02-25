package com.gaiaworld.room.controller
{
   import com.gaiaworld.avatar.interfaces.IActionGroup;
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.room.model.RoomModel;
   import flash.display.Sprite;
   
   public class RoomController
   {
       
      
      private var roomModel:RoomModel;
      
      public function RoomController()
      {
         this.roomModel = RoomModel.getInstance();
         super();
      }
      
      public function setRoomSize(param1:Number, param2:Number) : *
      {
         this.roomModel.w = param1;
         this.roomModel.h = param2;
      }
      
      public function setBackground(param1:String) : *
      {
         this.roomModel.backgroundImage = param1;
      }
      
      public function setBackgroundClass(param1:Class) : *
      {
         this.roomModel.backClass = param1;
      }
      
      public function setRoomName(param1:String) : *
      {
         this.roomModel.roomName = param1;
      }
      
      public function setIsLoadedMap(param1:Boolean) : *
      {
         this.roomModel.loadedSurface = param1;
      }
      
      public function setMapToLoad(param1:String) : *
      {
         this.roomModel.surfaceToLoad = param1;
      }
      
      public function changeRoom(param1:String) : *
      {
         this.roomModel.changeRoom(param1);
      }
      
      public function setScrollPos(param1:Number, param2:Number) : *
      {
         this.roomModel.setScrollPos(param1,param2);
      }
      
      public function setScrollTo(param1:Number, param2:Number) : *
      {
         this.roomModel.setScrollTo(param1,param2);
      }
      
      public function setRoomID(param1:String) : *
      {
         this.roomModel.roomID = param1;
      }
      
      public function roomIsChanged() : *
      {
         this.roomModel.roomIsChanged();
      }
      
      public function setBorders(param1:Number, param2:Number, param3:Number, param4:Number) : *
      {
         this.roomModel.borderBot = param2;
         this.roomModel.borderTop = param1;
         this.roomModel.borderLeft = param3;
         this.roomModel.borderRight = param4;
      }
      
      public function setMinMax(param1:Number, param2:Number, param3:Number, param4:Number) : *
      {
         this.roomModel.mapMinX = param1;
         this.roomModel.mapMinY = param2;
         this.roomModel.mapMaxX = param3;
         this.roomModel.mapMaxY = param4;
      }
      
      public function goExtreme(param1:String) : *
      {
         this.roomModel.setExtreme(param1);
      }
      
      public function setCollisonMap(param1:Sprite) : *
      {
         this.roomModel.collisionMap = param1;
      }
      
      public function setActions(param1:IActionGroup) : *
      {
         this.roomModel.actions = param1;
      }
      
      public function setPortals(param1:Array) : void
      {
         this.roomModel.portalArray = param1;
      }
      
      public function setRoomData(param1:Number, param2:Array) : *
      {
         this.roomModel.setRoomData(param1,param2);
      }
      
      public function getRoomData(param1:Number) : *
      {
         this.roomModel.getRoomData(param1);
      }
      
      public function setFetchedData(param1:Array) : *
      {
         this.roomModel.setUpdatedData(param1);
      }
      
      public function setCollision(param1:*, param2:IAvatar) : *
      {
         this.roomModel.collideAvatar = param2;
         this.roomModel.collisionChild = param1;
      }
      
      public function setItemCollison(param1:*, param2:*) : void
      {
         this.roomModel.setItemCollison(param1,param2);
      }
      
      public function setItemMapCollision(param1:ISurfaceObject) : void
      {
         this.roomModel.mapCollisionItem = param1;
      }
      
      public function silentMobUpdate(param1:String, param2:Array) : void
      {
         this.roomModel.silentMobUpdate(param1,param2);
      }
      
      public function refreshSurface() : *
      {
         this.roomModel.refreshSurface();
      }
      
      public function setCheckForItems(param1:Boolean) : *
      {
         this.roomModel.checkForBlockedItems = param1;
      }
      
      public function setRoomNumber(param1:Number) : *
      {
         this.roomModel.roomNumber = param1;
      }
      
      public function setRoomSubName(param1:String) : *
      {
         this.roomModel.roomSubName = param1;
      }
      
      public function setCanScroll(param1:Boolean) : *
      {
         this.roomModel.canScroll = param1;
      }
      
      public function setPathFindingMap(param1:Sprite) : void
      {
         this.roomModel.pathFindingMap = param1;
      }
      
      public function setAlreadyHere(param1:Number) : void
      {
         this.roomModel.alreadyHere = param1;
      }
      
      public function setArea(param1:String) : void
      {
         this.roomModel.area = param1;
      }
      
      public function setRoomPass(param1:String) : void
      {
         this.roomModel.createRoomPassword = param1;
      }
      
      public function setTemplate(param1:String) : void
      {
         this.roomModel.templateName = param1;
      }
      
      public function setSpecialRoomSub(param1:String) : void
      {
         this.roomModel.specialRoomSub(param1);
      }
      
      public function adjustScroll() : void
      {
         this.roomModel.adjustScroll();
      }
      
      public function roomIsReady() : void
      {
         this.roomModel.roomIsReady();
      }
      
      public function setRoomPerLoaded(param1:Number) : void
      {
         this.roomModel.perLoaded = param1;
      }
      
      public function showNodes() : void
      {
         this.roomModel.showNodes();
      }
      
      public function hideNodes() : void
      {
         this.roomModel.hideNodes();
      }
      
      public function showPaths() : void
      {
         this.roomModel.showPaths();
      }
      
      public function hidePaths() : void
      {
         this.roomModel.hidePaths();
      }
      
      public function setTweenSpeed(param1:Number) : void
      {
         this.roomModel.tweenSpeed = param1;
      }
      
      public function setRoomScrollDone() : void
      {
         this.roomModel.roomScrollDone();
      }
      
      public function setRoomInstance(param1:String) : void
      {
         this.roomModel.roomInstance = param1;
      }
      
      public function setAction(param1:String) : *
      {
         this.roomModel.actions.setAction(param1);
      }
      
      public function setWeather(param1:String) : void
      {
         this.roomModel.weather = param1;
      }
      
      public function flipBackground() : void
      {
         this.roomModel.flipBackground();
      }
      
      public function flipObjects() : void
      {
         this.roomModel.flipObjects();
      }
   }
}
