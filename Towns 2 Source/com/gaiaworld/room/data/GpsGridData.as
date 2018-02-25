package com.gaiaworld.room.data
{
   import com.gaiaworld.room.constants.MapConstants;
   
   public class GpsGridData
   {
       
      
      public var gridArray:Array;
      
      public function GpsGridData()
      {
         var _loc2_:int = 0;
         this.gridArray = new Array();
         super();
         var _loc1_:int = 0;
         while(_loc1_ < 20)
         {
            this.gridArray[_loc1_] = new Array();
            _loc2_ = 0;
            while(_loc2_ < 20)
            {
               this.gridArray[_loc1_][_loc2_] = "mt";
               _loc2_++;
            }
            _loc1_++;
         }
         this.setData();
      }
      
      private function setData() : *
      {
         this.gridArray[9][10] = MapConstants.WEST_MARKET;
         this.gridArray[9][11] = MapConstants.WEST_BEACH;
         this.gridArray[10][11] = MapConstants.SOUTH_BEACH;
         this.gridArray[11][11] = MapConstants.EAST_BEACH;
         this.gridArray[10][9] = MapConstants.GAMBINO_PARK;
         this.gridArray[10][10] = MapConstants.GAMBINO_MARKET;
         this.gridArray[10][9] = MapConstants.GAMBINO_SIDE_DOOR;
         this.gridArray[10][8] = MapConstants.GAMBINO_GARDENS;
         this.gridArray[11][10] = MapConstants.WEAPON;
         this.gridArray[12][10] = MapConstants.HOLLYWOOD_2;
         this.gridArray[11][9] = MapConstants.RALLY_ONE;
         this.gridArray[11][8] = MapConstants.RALLY_TWO;
         this.gridArray[12][9] = MapConstants.HOLLYWOOD_3;
         this.gridArray[12][11] = MapConstants.BUFFER_ROOM;
         this.gridArray[12][12] = MapConstants.HOLLYWOOD_1;
         this.gridArray[12][13] = MapConstants.HOLLYWOOD_4;
         this.gridArray[12][14] = MapConstants.HOLLYWOOD_5;
         this.gridArray[12][8] = MapConstants.HOLLYWOOD_7;
      }
   }
}
