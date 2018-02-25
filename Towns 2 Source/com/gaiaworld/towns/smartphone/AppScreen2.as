package com.gaiaworld.towns.smartphone
{
   import com.gaiaworld.global.constants.SmartPhoneConstants;
   import com.gaiaworld.global.controller.GlobalController;
   import com.gaiaworld.towns.constants.PhoneConstants;
   import com.gaiaworld.user.constants.UserConstants;
   import com.gaiaworld.user.model.UserModel;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class AppScreen2 extends Sprite
   {
       
      
      public var btnRooms:MovieClip;
      
      public var btnServers:MovieClip;
      
      public var btnStart:SimpleButton;
      
      public var btnWorld:SimpleButton;
      
      private var globalController:GlobalController;
      
      private var userModel:UserModel;
      
      public function AppScreen2()
      {
         this.globalController = new GlobalController();
         this.userModel = UserModel.getInstance();
         super();
         this.addEventListener(Event.ADDED_TO_STAGE,this.added);
         this.mouseEnabled = false;
      }
      
      private function added(param1:Event) : *
      {
         this.removeEventListener(Event.ADDED_TO_STAGE,this.added);
         this.btnStart.addEventListener(MouseEvent.CLICK,this.showStart);
         this.btnRooms.addEventListener(MouseEvent.CLICK,this.showRoomScreen);
         this.btnRooms.useHandCursor = true;
         this.btnRooms.buttonMode = true;
         this.btnServers.addEventListener(MouseEvent.CLICK,this.showServers);
         this.userModel.addEventListener(UserConstants.USER_DATA_SET,this.userInfoSet);
      }
      
      private function userInfoSet(param1:Event) : *
      {
         this.btnRooms.visible = false;
         this.btnServers.visible = false;
      }
      
      private function showWorldMap(param1:MouseEvent) : void
      {
         this.dispatchEvent(new Event(SmartPhoneConstants.SHOW_WORLD_MAP,true));
      }
      
      private function showServers(param1:MouseEvent) : void
      {
         this.globalController.loadScreen("dialogs/ServerChooser.swf");
      }
      
      private function showRoomScreen(param1:MouseEvent) : *
      {
         this.dispatchEvent(new Event(PhoneConstants.SHOW_ROOMS,true));
      }
      
      private function showStart(param1:MouseEvent) : void
      {
         this.dispatchEvent(new Event(PhoneConstants.SHOW_START_SCREEN,true));
      }
   }
}
