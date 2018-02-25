package com.gaiaonline.battle.map
{
   import com.gaiaonline.platform.actors.ITintable;
   import com.gaiaonline.utils.SpritePositionBubbler;
   
   public class MapObjectHolder extends SpritePositionBubbler implements ITintable
   {
       
      
      private var _tintableHandler:MapObject = null;
      
      public function MapObjectHolder(tintableHandler:MapObject)
      {
         super();
         _tintableHandler = tintableHandler;
      }
      
      public function getTintType() : TintTypes
      {
         return _tintableHandler.getTintType();
      }
      
      public function setTint(r:int, g:int, b:int) : void
      {
         _tintableHandler.setTint(r,g,b);
      }
   }
}
