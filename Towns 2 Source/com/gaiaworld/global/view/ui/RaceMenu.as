package com.gaiaworld.global.view.ui
{
   import com.gaiaworld.room.constants.MapConstants;
   import com.gaiaworld.room.controller.RoomController;
   import com.gaiaworld.user.model.UserModel;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class RaceMenu extends Sprite
   {
       
      
      public var bg:MovieClip;
      
      public var btnPractice:SimpleButton;
      
      private var roomController:RoomController;
      
      private var userModel:UserModel;
      
      public function RaceMenu()
      {
         this.roomController = new RoomController();
         this.userModel = UserModel.getInstance();
         super();
         this.btnPractice.addEventListener(MouseEvent.MOUSE_DOWN,this.practiceRace);
      }
      
      private function practiceRace(param1:MouseEvent) : void
      {
         this.roomController.setSpecialRoomSub(this.userModel.userVo.userName);
         this.roomController.changeRoom(MapConstants.RALLY_GAME);
      }
   }
}
