package com.gaiaworld.global.interfaces
{
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.room.interfaces.ITileVo;
   import com.gaiaworld.room.interfaces.IWorldObject;
   import flash.display.Sprite;
   
   public interface ISurface
   {
       
      
      function buildItemGrid() : void;
      
      function checkAvatarBlocked(param1:IAvatar) : void;
      
      function showBlockedAreas() : void;
      
      function addAvatar(param1:IAvatar) : void;
      
      function addOtherAvatar(param1:IAvatar) : void;
      
      function findNearestTile(param1:Number, param2:Number) : ITileVo;
      
      function getX() : Number;
      
      function getY() : Number;
      
      function getTileAt(param1:Number, param2:Number) : ITileVo;
      
      function addTalkBalloon(param1:IWorldObject) : void;
      
      function get alpha() : Number;
      
      function set alpha(param1:Number) : void;
      
      function get visible() : Boolean;
      
      function set visible(param1:Boolean) : void;
      
      function get clip() : Sprite;
      
      function addObject(param1:ISurfaceObject, param2:Boolean = false) : void;
      
      function removeObject(param1:ISurfaceObject) : void;
      
      function checkMapCollision(param1:ISurfaceObject) : Boolean;
      
      function isInRoom(param1:ISurfaceObject) : Boolean;
      
      function addTopItem(param1:Sprite) : void;
      
      function addToCollisionList(param1:ISurfaceObject) : void;
      
      function removeFromCollisionList(param1:ISurfaceObject) : void;
      
      function addAvatarToCollideList(param1:IAvatar) : void;
      
      function removeAvatarFromCollideList(param1:IAvatar) : void;
      
      function checkAvatarCollisions(param1:IAvatar) : void;
      
      function initActionsForAvatars() : *;
      
      function getNumberOfItems() : Number;
      
      function clearTopItems() : void;
   }
}
