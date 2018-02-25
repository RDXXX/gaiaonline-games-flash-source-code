package com.gaiaworld.pets.view
{
   import com.gaiaworld.avatar.controller.AvatarController;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.room.view.WorldItem2;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class AvatarFood extends WorldItem2 implements ISurfaceObject
   {
       
      
      public var foods:MovieClip;
      
      private var removeTimer:Timer;
      
      private var avatarController:AvatarController;
      
      public function AvatarFood()
      {
         this.removeTimer = new Timer(2000);
         this.avatarController = new AvatarController();
         super();
      }
      
      public function setFood(param1:Number) : *
      {
         MovieClip(this.foods.food2).gotoAndStop(param1);
         this.removeTimer.addEventListener(TimerEvent.TIMER,this.removeMe);
         this.removeTimer.start();
      }
      
      private function removeMe(param1:TimerEvent) : *
      {
         this.removeTimer.removeEventListener(TimerEvent.TIMER,this.removeMe);
         this.removeTimer.stop();
         this.avatarController.removeItem(this);
      }
   }
}
