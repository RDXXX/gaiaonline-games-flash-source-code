package com.gaiaworld.house.controller
{
   import com.gaiaworld.house.model.HousingModel;
   
   public class HousingController
   {
       
      
      private var housingModel:HousingModel;
      
      public function HousingController()
      {
         this.housingModel = HousingModel.getInstance();
         super();
      }
      
      public function setHouseID(param1:Number) : *
      {
         this.housingModel.house_id = param1;
      }
      
      public function setExitPlot(param1:Number) : *
      {
         this.housingModel.plotIndex = param1;
      }
      
      public function setExitLocations(param1:Array) : void
      {
         this.housingModel.exitLocations = param1;
      }
      
      public function isInHouse(param1:Boolean) : void
      {
         this.housingModel.isInHouse = param1;
      }
   }
}
