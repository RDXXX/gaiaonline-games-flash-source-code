package com.gaiaworld.towns.smites
{
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.room.view.AnimatedObject;
   import flash.display.MovieClip;
   
   public class Lightning extends AnimatedObject implements ISurfaceObject
   {
       
      
      public var animation:MovieClip;
      
      public function Lightning()
      {
         super();
         MovieClip(this.animation).gotoAndPlay(1);
      }
   }
}
