package com.gaiaworld.room.view
{
   import com.gaiaworld.ads.controller.MsController;
   import com.gaiaworld.avatar.controller.AvatarController;
   import com.gaiaworld.global.controller.GlobalController;
   import com.gaiaworld.gobjects.controller.ObjectController;
   import com.gaiaworld.room.controller.GpsController;
   import com.gaiaworld.room.controller.RoomController;
   import flash.display.Sprite;
   
   public class BaseMap extends Sprite
   {
       
      
      protected var globalController:GlobalController;
      
      protected var avatarController:AvatarController;
      
      protected var roomController:RoomController;
      
      protected var gpsController:GpsController;
      
      protected var objectController:ObjectController;
      
      protected var msController:MsController;
      
      protected var directionArray:Array;
      
      public function BaseMap()
      {
         this.globalController = new GlobalController();
         this.avatarController = new AvatarController();
         this.roomController = new RoomController();
         this.gpsController = new GpsController();
         this.objectController = new ObjectController();
         this.msController = new MsController();
         super();
         this.avatarController.setUserControl(true);
      }
      
      public function destroy() : *
      {
      }
   }
}
