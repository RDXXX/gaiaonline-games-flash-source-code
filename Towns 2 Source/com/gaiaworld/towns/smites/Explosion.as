package com.gaiaworld.towns.smites
{
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.room.view.AnimatedObject;
   import com.gaiaworld.user.vo.UserVo;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class Explosion extends AnimatedObject implements ISurfaceObject
   {
      
      public static const ANI_DONE:String = "aniDone";
       
      
      public var animation:MovieClip;
      
      public var userVo:UserVo;
      
      public function Explosion()
      {
         super();
         this.depth2 = 1000;
         MovieClip(this.animation).gotoAndPlay(2);
         this.addEventListener(Event.ENTER_FRAME,this.checkAnimation);
      }
      
      private function checkAnimation(param1:Event) : void
      {
         if(MovieClip(this.animation).currentFrame == 48)
         {
            this.dispatchEvent(new Event(ANI_DONE,true));
         }
      }
   }
}
