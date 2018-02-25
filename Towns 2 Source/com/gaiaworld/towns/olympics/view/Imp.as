package com.gaiaworld.towns.olympics.view
{
   import com.gaiaworld.avatar.constants.AvatarConstants;
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.avatar.view.WorldItem;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.room.interfaces.IWorldObject;
   import com.gaiaworld.towns.olympics.constants.OlympicConstants;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.media.Sound;
   import flash.utils.Timer;
   import hObjects.AllImps;
   
   public class Imp extends WorldItem implements ISurfaceObject, IWorldObject
   {
       
      
      public var allImps:AllImps;
      
      private var av:IAvatar;
      
      private var avatarModel:AvatarModel;
      
      private var resetTimer:Timer;
      
      private var spitSound:Sound;
      
      public function Imp()
      {
         this.avatarModel = AvatarModel.getInstance();
         this.resetTimer = new Timer(500);
         this.spitSound = new SpitSound();
         super();
         this.avatarModel.addEventListener(AvatarConstants.TARGET_UPDATED,this.turnImp);
         this.resetTimer.addEventListener(TimerEvent.TIMER,this.resetImp);
      }
      
      private function resetImp(param1:TimerEvent) : void
      {
         this.resetTimer.stop();
         MovieClip(this.allImps.imp).gotoAndStop(1);
      }
      
      private function turnImp(param1:Event) : *
      {
         var _loc2_:Number = this.av.getDir() == AvatarConstants.DIR_LEFT?Number(-1):Number(1);
         this.scaleX = _loc2_;
      }
      
      private function spit(param1:Event) : void
      {
         var _loc2_:Number = this.av.getDir() == AvatarConstants.DIR_LEFT?Number(-1):Number(1);
         this.scaleX = _loc2_;
         MovieClip(this.allImps.imp).gotoAndStop(2);
         this.resetTimer.start();
         this.spitSound.play();
      }
      
      public function setAvatar(param1:IAvatar) : *
      {
         this.av = param1;
         MovieClip(this.allImps).gotoAndStop(param1.dataProvider.team);
         this.av.clip.addEventListener(OlympicConstants.PAINTBALL_SPIT,this.spit);
      }
   }
}
