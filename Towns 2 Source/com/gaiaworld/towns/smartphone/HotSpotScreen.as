package com.gaiaworld.towns.smartphone
{
   import com.gaiaworld.avatar.controller.AvatarController;
   import com.gaiaworld.room.constants.MapConstants;
   import com.gaiaworld.room.controller.GpsController;
   import com.gaiaworld.room.controller.RoomController;
   import com.gaiaworld.room.model.RoomModel;
   import flash.events.Event;
   
   public class HotSpotScreen extends PhoneList
   {
      
      public static const SHOW_COMPASS:String = "showCompass";
       
      
      private var gpsController:GpsController;
      
      private var roomModel:RoomModel;
      
      private var roomArray:Array;
      
      private var roomController:RoomController;
      
      private var avatarController:AvatarController;
      
      public function HotSpotScreen()
      {
         this.gpsController = new GpsController();
         this.roomModel = RoomModel.getInstance();
         this.roomController = new RoomController();
         this.avatarController = new AvatarController();
         super();
         dataProvider = ["Gambino Market","Hollywood","Rally","Forest"];
         this.roomArray = [MapConstants.GAMBINO_MARKET,MapConstants.HOLLYWOOD_2,MapConstants.RALLY_ONE,MapConstants.FOREST];
      }
      
      override protected function itemClicked(param1:Event) : *
      {
         var _loc2_:PhoneField = param1.target as PhoneField;
         this.findLoc(this.roomArray[_loc2_.index]);
      }
      
      private function findLoc(param1:String) : *
      {
         this.avatarController.setAtStartAfterJump(true);
         this.roomController.changeRoom(param1);
      }
   }
}
