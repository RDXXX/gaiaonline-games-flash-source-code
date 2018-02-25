package com.gaiaworld.towns.view
{
   import com.gaiaworld.avatar.view.WorldItem;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import flash.display.MovieClip;
   
   public class Gold extends WorldItem implements ISurfaceObject
   {
       
      
      public var goldDrop:MovieClip;
      
      public function Gold()
      {
         super();
      }
      
      public function setNum(param1:Number) : *
      {
         var _loc2_:MovieClip = this.getChildByName("goldDrop") as MovieClip;
         _loc2_.gotoAndPlay(2);
         _loc2_.numClip.numText.text = String(param1);
      }
   }
}
