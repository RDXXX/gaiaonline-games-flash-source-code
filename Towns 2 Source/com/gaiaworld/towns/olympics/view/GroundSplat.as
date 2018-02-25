package com.gaiaworld.towns.olympics.view
{
   import com.gaiaworld.avatar.view.WorldItem;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.room.interfaces.IWorldItem;
   import flash.display.MovieClip;
   import flash.geom.ColorTransform;
   
   public class GroundSplat extends WorldItem implements ISurfaceObject, IWorldItem
   {
       
      
      public var splats:MovieClip;
      
      public function GroundSplat()
      {
         super();
         this.rotation = int(Math.random() * 360);
         MovieClip(this.splats).gotoAndStop(int(Math.random() * 4) + 1);
      }
      
      public function setColor(param1:Number) : void
      {
         var _loc2_:ColorTransform = MovieClip(this.splats.splat).transform.colorTransform;
         _loc2_.color = param1;
         MovieClip(this.splats.splat).transform.colorTransform = _loc2_;
      }
   }
}
