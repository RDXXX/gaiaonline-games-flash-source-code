package com.gaiaworld.global.view
{
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.avatar.model.AvatarModel;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class EmoteBalloon extends Sprite
   {
      
      public static const REMOVE_ME:String = "removeMe";
      
      private static const vspace:Number = 110;
       
      
      private var emoteLoader:Loader;
      
      private var balloonLoader:Loader;
      
      private var av:IAvatar;
      
      private var updateTimer:Timer;
      
      private var removeTimer:Timer;
      
      public function EmoteBalloon()
      {
         this.emoteLoader = new Loader();
         this.balloonLoader = new Loader();
         this.updateTimer = new Timer(100);
         this.removeTimer = new Timer(2000);
         super();
         this.balloonLoader.x = -12;
         this.balloonLoader.y = 20;
         this.addChild(this.balloonLoader);
         this.addChild(this.emoteLoader);
         this.updateTimer.addEventListener(TimerEvent.TIMER,this.update);
         this.removeTimer.addEventListener(TimerEvent.TIMER,this.removeBalloon);
      }
      
      public function showEmote(param1:String, param2:Number, param3:IAvatar) : *
      {
         this.av = param3;
         var _loc4_:* = "emotes/characters/" + param1 + ".swf";
         var _loc5_:* = "chat/balloons/" + String(param2) + ".swf";
         if(param2 == 1)
         {
            this.balloonLoader.visible = false;
         }
         else
         {
            this.balloonLoader.load(new URLRequest(_loc5_));
         }
         this.emoteLoader.load(new URLRequest(_loc4_));
         this.x = param3.x;
         this.y = param3.y - vspace;
         this.updateTimer.start();
         this.removeTimer.start();
      }
      
      public function emoteToSelf(param1:String, param2:Number) : *
      {
         var _loc3_:* = "emotes/" + param1 + ".swf";
         var _loc4_:* = "chat/balloons/" + String(param2) + ".swf";
         var _loc5_:AvatarModel = AvatarModel.getInstance();
         this.av = _loc5_.avatar;
         if(param2 == 1)
         {
            this.balloonLoader.visible = false;
         }
         else
         {
            this.balloonLoader.load(new URLRequest(_loc4_));
         }
         this.emoteLoader.load(new URLRequest(_loc3_));
         this.x = this.av.x;
         this.y = this.av.y - 140;
         this.updateTimer.start();
         this.removeTimer.start();
      }
      
      private function update(param1:TimerEvent) : *
      {
         this.x = this.av.x;
         this.y = this.av.y - vspace;
      }
      
      private function removeBalloon(param1:TimerEvent) : *
      {
         this.updateTimer.stop();
         this.removeTimer.stop();
         this.dispatchEvent(new Event("removeMe",false));
      }
   }
}
