package com.gaiaworld.towns.hood.util
{
   import com.gaiaworld.room.controller.RoomController;
   import com.gaiaworld.towns.hood.controller.HoodController;
   import com.gaiaworld.towns.hood.model.HoodModel;
   
   public class DirectToHood
   {
       
      
      private var hoodModel:HoodModel;
      
      private var hoodController:HoodController;
      
      private var roomController:RoomController;
      
      public function DirectToHood()
      {
         this.hoodModel = HoodModel.getInstance();
         this.hoodController = new HoodController();
         this.roomController = new RoomController();
         super();
      }
      
      public function gotoHood(param1:Number, param2:Number) : *
      {
         this.hoodController.setJustArrived(false);
         this.hoodController.setCurrentHood(param2);
         this.hoodController.setCurrentCommunity(param1);
         this.hoodController.setTransportFlag(true);
         this.roomController.changeRoom(this.hoodModel.mapArray[param1]);
      }
      
      public function getReadyForHood(param1:Number, param2:Number) : *
      {
         this.hoodController.setJustArrived(false);
         this.hoodController.setCurrentHood(param2);
         this.hoodController.setCurrentCommunity(param1);
         this.hoodController.setTransportFlag(true);
         this.roomController.setMapToLoad(this.hoodModel.mapArray[param1]);
      }
   }
}
