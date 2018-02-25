package com.gaiaworld.room.data
{
   import com.gaiaworld.room.constants.MapConstants;
   import com.gaiaworld.room.controller.GpsController;
   import com.gaiaworld.room.vo.RoomMapVo;
   
   public class TownMapData
   {
       
      
      public var mapArray:Vector.<RoomMapVo>;
      
      private var gpsController:GpsController;
      
      public function TownMapData()
      {
         this.mapArray = new Vector.<RoomMapVo>();
         this.gpsController = new GpsController();
         super();
      }
      
      public function fillData() : *
      {
         this.mapArray = new Vector.<RoomMapVo>();
         this.mapArray.push(new RoomMapVo(15,MapConstants.GAMBINO_GARDENS,[MapConstants.GAMBINO_SIDE_DOOR]));
         this.mapArray.push(new RoomMapVo(16,MapConstants.GAMBINO_PARK,[MapConstants.GAMBINO_MARKET]));
         this.mapArray.push(new RoomMapVo(17,MapConstants.GAMBINO_MARKET,[MapConstants.GAMBINO_GARDENS,MapConstants.GAMBINO_PARK,MapConstants.WEAPON]));
         this.mapArray.push(new RoomMapVo(18,MapConstants.WEAPON,[MapConstants.GAMBINO_MARKET,MapConstants.HOLLYWOOD_2]));
         this.mapArray.push(new RoomMapVo(19,MapConstants.GAMBINO_SIDE_DOOR,[MapConstants.GAMBINO_MARKET]));
         this.mapArray.push(new RoomMapVo(21,MapConstants.RALLY_ONE,[MapConstants.HOLLYWOOD_1,MapConstants.RALLY_TWO]));
         this.mapArray.push(new RoomMapVo(22,MapConstants.HOLLYWOOD_1,[MapConstants.HOLLYWOOD_2,MapConstants.HOLLYWOOD_4,MapConstants.HOLLYWOOD_6]));
         this.mapArray.push(new RoomMapVo(23,MapConstants.HOLLYWOOD_2,[MapConstants.HOLLYWOOD_3,MapConstants.WEAPON,MapConstants.HOLLYWOOD_1]));
         this.mapArray.push(new RoomMapVo(24,MapConstants.HOLLYWOOD_3,[MapConstants.HOLLYWOOD_2,MapConstants.RALLY_ONE]));
         this.mapArray.push(new RoomMapVo(25,MapConstants.HOLLYWOOD_4,[MapConstants.HOLLYWOOD_3,MapConstants.HOLLYWOOD_5]));
         this.mapArray.push(new RoomMapVo(30,MapConstants.HOLLYWOOD_5,[MapConstants.HOLLYWOOD_4]));
         this.mapArray.push(new RoomMapVo(26,MapConstants.HOLLYWOOD_6,[MapConstants.HOLLYWOOD_1]));
         this.mapArray.push(new RoomMapVo(27,MapConstants.RALLY_TWO,[MapConstants.RALLY_ONE]));
         this.mapArray.push(new RoomMapVo(28,MapConstants.WEST_MARKET));
         this.mapArray.push(new RoomMapVo(29,MapConstants.RALLY_TWO));
         this.mapArray.push(new RoomMapVo(30,MapConstants.SOUTH_BEACH));
         this.mapArray.push(new RoomMapVo(31,MapConstants.EAST_BEACH));
         this.mapArray.push(new RoomMapVo(32,MapConstants.WEST_BEACH));
         this.mapArray.push(new RoomMapVo(33,MapConstants.CROWS_NEST_DOOR));
         this.mapArray.push(new RoomMapVo(34,MapConstants.CROWS_NEST_ISLAND));
         this.mapArray.push(new RoomMapVo(35,MapConstants.CROWS_NEST_SHIP));
         this.mapArray.push(new RoomMapVo(36,MapConstants.CLUB));
         this.mapArray.push(new RoomMapVo(37,MapConstants.BATHROOM));
         this.mapArray.push(new RoomMapVo(38,MapConstants.RALLY_STORE));
         this.mapArray.push(new RoomMapVo(39,MapConstants.TOWER));
         this.mapArray.push(new RoomMapVo(40,MapConstants.HEAVEN));
         this.mapArray.push(new RoomMapVo(41,MapConstants.HELL));
         this.mapArray.push(new RoomMapVo(42,MapConstants.EDAY));
         this.gpsController.setMapData(this.mapArray);
      }
   }
}
