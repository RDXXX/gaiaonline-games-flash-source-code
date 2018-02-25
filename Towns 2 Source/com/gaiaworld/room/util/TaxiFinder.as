package com.gaiaworld.room.util
{
   import com.gaiaworld.room.constants.MapConstants;
   import com.gaiaworld.room.controller.GpsController;
   import com.gaiaworld.room.model.GpsModel;
   import com.gaiaworld.room.model.RoomModel;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class TaxiFinder extends EventDispatcher
   {
       
      
      private var roomModel:RoomModel;
      
      private var gpsController:GpsController;
      
      private var gpsModel:GpsModel;
      
      public function TaxiFinder()
      {
         this.roomModel = RoomModel.getInstance();
         this.gpsController = new GpsController();
         this.gpsModel = GpsModel.getInstance();
         super();
         this.gpsModel.addEventListener(MapConstants.PAL_FOLLOW_UPDATED,this.findNearestTaxi);
      }
      
      private function findNearestTaxi(param1:Event) : *
      {
         switch(this.roomModel.surfaceToLoad)
         {
            case MapConstants.HOUSING_AKEA:
               this.gpsController.setFavCord(500,1430);
               this.gpsController.setFavFlag(true);
               break;
            case MapConstants.HOUSING_DUREM:
               this.gpsController.setFavCord(752,1619);
               this.gpsController.setFavFlag(true);
               break;
            case MapConstants.HOUSING_BARTON:
               this.gpsController.setFavCord(104,634);
               this.gpsController.setFavFlag(true);
               break;
            case MapConstants.HOUSING_GAMBINO:
               this.gpsController.setFavCord(1621,1198);
               this.gpsController.setFavFlag(true);
               break;
            case "vh_map2":
               this.gpsController.setFavCord(682,1200);
               this.gpsController.setFavFlag(true);
         }
         if(this.roomModel.surfaceToLoad == MapConstants.WEAPON)
         {
            if(this.gpsModel.targetRoom != MapConstants.GAMBINO_GARDENS && this.gpsModel.targetRoom != MapConstants.GAMBINO_MARKET && this.gpsModel.targetRoom != MapConstants.GAMBINO_PARK && this.gpsModel.targetRoom != MapConstants.GAMBINO_SIDE_DOOR && this.gpsModel.targetRoom != MapConstants.WEAPON)
            {
               this.gpsController.setFavCord(1570,1290);
               this.gpsController.setFavFlag(true);
            }
         }
      }
   }
}
