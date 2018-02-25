package com.gaiaonline.battle.map
{
   import com.gaiaonline.battle.utils.RasterizationStore;
   import com.gaiaonline.utils.SpritePositionBubbler;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public interface IMap extends IMapRoomManager
   {
       
      
      function addActor(param1:SpritePositionBubbler) : void;
      
      function setMapHolder(param1:IMapHolder) : void;
      
      function getColliionTypeAt(param1:Number, param2:Number) : uint;
      
      function isLightsOn() : Boolean;
      
      function drawCollisionMap() : void;
      
      function getEmoteLayer() : Sprite;
      
      function getRasterizationStore() : RasterizationStore;
      
      function removeActor(param1:SpritePositionBubbler) : void;
      
      function addMask(param1:DisplayObject) : void;
      
      function setCollisionShowing(param1:Boolean) : void;
      
      function isMapLoaded() : Boolean;
      
      function getMapDisplayObject() : DisplayObjectContainer;
      
      function isNullChamber() : Boolean;
      
      function isCollisionShowing() : Boolean;
      
      function removeMask(param1:DisplayObject) : void;
   }
}
