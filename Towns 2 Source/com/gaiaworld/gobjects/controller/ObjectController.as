package com.gaiaworld.gobjects.controller
{
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.global.interfaces.ICollision;
   import com.gaiaworld.global.interfaces.ISurface;
   import com.gaiaworld.gobjects.model.ObjectModel;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.sushi.interfaces.IDataExchange;
   import com.gaiaworld.towns.view.ShakingObj;
   import com.gaiaworld.towns.vo.RoomObjectVo;
   import flash.display.Sprite;
   
   public class ObjectController
   {
       
      
      private var objectModel:ObjectModel;
      
      public function ObjectController()
      {
         this.objectModel = ObjectModel.getInstance();
         super();
      }
      
      public function setSurface(param1:ISurface) : *
      {
         this.objectModel.room = param1;
      }
      
      public function setDataExchange(param1:IDataExchange) : *
      {
         this.objectModel.dataExchange = param1;
      }
      
      public function updateObject(param1:RoomObjectVo, param2:Boolean) : void
      {
         this.objectModel.updateObject(param1,param2);
      }
      
      public function updateArray(param1:RoomObjectVo) : *
      {
         this.objectModel.updateArray(param1);
      }
      
      public function updateObjectSilent(param1:RoomObjectVo, param2:Boolean) : void
      {
         this.objectModel.updateObjectSilent(param1,param2);
      }
      
      public function addItem(param1:ISurfaceObject, param2:Boolean = false) : void
      {
         this.objectModel.addItem(param1,param2);
      }
      
      public function removeItem(param1:ISurfaceObject) : *
      {
         this.objectModel.removeItem(param1);
      }
      
      public function registerObject(param1:RoomObjectVo) : void
      {
         this.objectModel.registerObject(param1);
      }
      
      public function callPlugin(param1:Array) : void
      {
         this.objectModel.callPlugin(param1);
      }
      
      public function addItemToCollisionList(param1:ISurfaceObject) : void
      {
         this.objectModel.addToCollisionList(param1);
      }
      
      public function removeFromCollisionList(param1:ISurfaceObject) : void
      {
         this.objectModel.removeFromCollisionList(param1);
      }
      
      public function addAvToCollisionList(param1:IAvatar) : void
      {
         this.objectModel.addAvToCollisionList(param1);
      }
      
      public function removeAvatarFromCollisionList(param1:IAvatar) : void
      {
         this.objectModel.removeAvatarFromCollisionList(param1);
      }
      
      public function checkAvatarToAvatar(param1:IAvatar) : *
      {
         this.objectModel.checkAvatarToAvatar(param1);
      }
      
      public function addStationaryItem(param1:ISurfaceObject) : void
      {
         this.objectModel.addStationaryItem(param1);
      }
      
      public function removeStationaryObject(param1:ISurfaceObject) : void
      {
         this.objectModel.removeStationaryItem(param1);
      }
      
      public function clearStationaryItem() : void
      {
         this.objectModel.clearStationaryObjects();
      }
      
      public function setCollisionActions(param1:ICollision) : *
      {
         this.objectModel.collisionActions = param1;
      }
      
      public function startAnimation(param1:String) : void
      {
         this.objectModel.animationToStart = param1;
      }
      
      public function animationDone(param1:String) : void
      {
         this.objectModel.animationComplete = param1;
      }
      
      public function setCoins(param1:Number) : void
      {
         this.objectModel.coins = param1;
      }
      
      public function setShakenObj(param1:ShakingObj) : void
      {
         this.objectModel.shakenObj = param1;
      }
      
      public function addTopItem(param1:Sprite) : *
      {
         this.objectModel.addTopItem(param1);
      }
      
      public function clearTopItems() : void
      {
         this.objectModel.clearTopItems();
      }
   }
}
