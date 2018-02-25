package com.gaiaworld.room.controller
{
   import com.gaiaworld.room.model.GpsModel;
   import com.gaiaworld.room.vo.RoomMapVo;
   import com.gaiaworld.user.vo.PalTrackVo;
   import com.gaiaworld.user.vo.PalVo;
   
   public class GpsController
   {
       
      
      private var gpsModel:GpsModel;
      
      public function GpsController()
      {
         this.gpsModel = GpsModel.getInstance();
         super();
      }
      
      public function setMapData(param1:Vector.<RoomMapVo>) : *
      {
         this.gpsModel.setMapData(param1);
      }
      
      public function setDirectionData(param1:Array) : void
      {
         this.gpsModel.directionArray = param1;
      }
      
      public function getDirectons(param1:String, param2:String) : void
      {
         this.gpsModel.getDirections(param1,param2);
      }
      
      public function setMyRoom(param1:String) : void
      {
         this.gpsModel.updateRoom(param1);
      }
      
      public function setBookmarks(param1:Array) : void
      {
         this.gpsModel.bookmarkArray = param1;
      }
      
      public function setFavFlag(param1:Boolean) : *
      {
         this.gpsModel.favFlag = param1;
      }
      
      public function setFavCord(param1:Number, param2:Number) : *
      {
         this.gpsModel.favX = param1;
         this.gpsModel.favY = param2;
         this.gpsModel.favFlag = true;
      }
      
      public function setPalToFollow(param1:PalVo) : void
      {
         this.gpsModel.palToFollow = param1;
      }
      
      public function setNavState(param1:Boolean) : *
      {
         this.gpsModel.navagationOn = param1;
      }
      
      public function setHotSpots(param1:Boolean) : void
      {
         this.gpsModel.hotSpotFlag = param1;
      }
      
      public function setRoomImIn(param1:String) : void
      {
         this.gpsModel.roomImIn = param1;
      }
      
      public function setTrackVo(param1:PalTrackVo) : void
      {
         this.gpsModel.trackVo = param1;
      }
      
      public function setFinal(param1:String) : void
      {
         this.gpsModel.finalRoom = param1;
      }
   }
}
