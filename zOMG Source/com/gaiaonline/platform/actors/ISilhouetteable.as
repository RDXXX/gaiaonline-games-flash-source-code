package com.gaiaonline.platform.actors
{
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public interface ISilhouetteable extends IDisplayObject
   {
       
      
      function getDisplaySprite() : Sprite;
      
      function get zpos() : Number;
      
      function get actorFootX() : Number;
      
      function set scalingDirty(param1:Boolean) : void;
      
      function getCopyOfSpriteToBeSilhouetted() : Sprite;
      
      function get displaySilhouette() : Boolean;
      
      function get scale() : Point;
      
      function get scalingDirty() : Boolean;
      
      function get actorFootY() : Number;
   }
}
