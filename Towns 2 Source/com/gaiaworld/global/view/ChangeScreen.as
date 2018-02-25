package com.gaiaworld.global.view
{
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.global.util.ChangeMessageUtil;
   import com.gaiaworld.room.constants.RoomConstants;
   import com.gaiaworld.room.model.RoomModel;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class ChangeScreen extends Sprite
   {
       
      
      public var text1:TextField;
      
      public var text2:TextField;
      
      private var roomModel:RoomModel;
      
      private var globalModel:GlobalModel;
      
      private var delayTimer:Timer;
      
      private var avatarModel:AvatarModel;
      
      private var changeMessage:ChangeMessageUtil;
      
      private var slowTimer:Timer;
      
      public function ChangeScreen()
      {
         this.roomModel = RoomModel.getInstance();
         this.globalModel = GlobalModel.getInstance();
         this.delayTimer = new Timer(2000);
         this.avatarModel = AvatarModel.getInstance();
         this.changeMessage = new ChangeMessageUtil();
         this.slowTimer = new Timer(5000);
         super();
         this.roomModel.addEventListener(GlobalConstants.CHANGE_ROOMS,this.roomChanged);
         this.roomModel.addEventListener(RoomConstants.PER_LOADED_UPDATED,this.perUpdated);
         this.globalModel.addEventListener(GlobalConstants.HIDE_CHANGE_SCREEN,this.roomSet);
         this.delayTimer.addEventListener(TimerEvent.TIMER,this.delayDone);
         this.alpha;
         this.text1.text = this.changeMessage.getMessage();
         this.text2.visible = false;
         this.slowTimer.addEventListener(TimerEvent.TIMER,this.showPer);
         this.slowTimer.start();
      }
      
      private function perUpdated(param1:Event) : void
      {
         this.text2.text = "Loading " + String(this.roomModel.perLoaded) + "%";
      }
      
      private function roomSet(param1:Event) : void
      {
         this.slowTimer.removeEventListener(TimerEvent.TIMER,this.showPer);
         this.slowTimer.stop();
         this.text2.visible = false;
         this.delayTimer.start();
      }
      
      private function showPer(param1:TimerEvent) : *
      {
         this.slowTimer.removeEventListener(TimerEvent.TIMER,this.showPer);
         this.text2.visible = true;
      }
      
      private function roomChanged(param1:Event) : void
      {
         this.text1.text = this.changeMessage.getMessage();
         if(this.avatarModel.avatar)
         {
            this.avatarModel.avatar.clip.visible = false;
         }
         this.visible = true;
         this.slowTimer.addEventListener(TimerEvent.TIMER,this.showPer);
         this.slowTimer.start();
      }
      
      private function delayDone(param1:TimerEvent) : *
      {
         this.delayTimer.stop();
         this.visible = false;
         this.avatarModel.avatar.clip.visible = true;
      }
   }
}
