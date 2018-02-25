package com.gaiaworld.global.view.ui
{
   import com.gaiaworld.avatar.constants.AvatarConstants;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.gobjects.controller.ObjectController;
   import com.gaiaworld.gobjects.model.ObjectModel;
   import com.gaiaworld.room.constants.MapConstants;
   import com.gaiaworld.room.controller.GpsController;
   import com.gaiaworld.room.model.GpsModel;
   import com.gaiaworld.room.model.RoomModel;
   import com.gaiaworld.room.view.JumpArrow;
   import com.gaiaworld.towns.smartphone.Pin;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class GpsDevice extends Sprite
   {
       
      
      public var compass:Compass;
      
      public var text1:TextField;
      
      private var gpsModel:GpsModel;
      
      private var roomModel:RoomModel;
      
      private var gpsController:GpsController;
      
      private var avatarModel:AvatarModel;
      
      private var objectController:ObjectController;
      
      private var objectModel:ObjectModel;
      
      private var pinPlaced:Boolean = false;
      
      private var pin:Pin;
      
      public function GpsDevice()
      {
         this.gpsModel = GpsModel.getInstance();
         this.roomModel = RoomModel.getInstance();
         this.gpsController = new GpsController();
         this.avatarModel = AvatarModel.getInstance();
         this.objectController = new ObjectController();
         this.objectModel = ObjectModel.getInstance();
         super();
         this.gpsModel.addEventListener(MapConstants.EVENT_DIRECTIONS_SET,this.setDir2);
         this.gpsModel.addEventListener(MapConstants.UPDATE_COMPASS,this.setDir2);
         this.avatarModel.addEventListener(AvatarConstants.AVATAR_IS_MOVING,this.setDir2);
         this.roomModel.addEventListener(GlobalConstants.CHANGE_ROOMS,this.changeRooms);
      }
      
      private function changeRooms(param1:Event) : void
      {
         this.pinPlaced = false;
         if(this.roomModel.surfaceToLoad == this.gpsModel.endRoom)
         {
            if(this.objectModel.isInRoom(this.pin))
            {
               this.objectController.removeItem(this.pin);
            }
            if(this.gpsModel.favFlag == true)
            {
               this.pinPlaced = true;
               this.pin = new Pin();
               this.pin.x = this.gpsModel.favX;
               this.pin.y = this.gpsModel.favY;
               this.objectController.addItem(this.pin,false);
            }
         }
      }
      
      private function setDir2(param1:Event) : void
      {
         var _loc3_:JumpArrow = null;
         var _loc4_:Number = NaN;
         if(this.gpsModel.favX == -1 && this.gpsModel.favY == -1)
         {
            return;
         }
         var _loc2_:String = this.gpsModel.nextRoomInDirections();
         if(_loc2_ != null && _loc2_ != this.roomModel.surfaceToLoad)
         {
            _loc3_ = this.roomModel.getPortal(_loc2_);
            if(_loc3_ != null)
            {
               _loc3_.alpha = 0.5;
               _loc4_ = this.getAngle(this.avatarModel.avatar.x,this.avatarModel.avatar.y,_loc3_.x,_loc3_.y);
               Compass(this.compass).setAngle(_loc4_);
            }
         }
         else if(this.gpsModel.favFlag == true)
         {
            if(this.gpsModel.favX != -1 && this.gpsModel.favY != -1)
            {
               _loc4_ = this.getAngle(this.avatarModel.avatar.x,this.avatarModel.avatar.y,this.gpsModel.favX,this.gpsModel.favY);
               Compass(this.compass).setAngle(_loc4_);
               if(this.objectModel.isInRoom(this.pin) == false)
               {
                  if(this.gpsModel.favFlag == true)
                  {
                     this.pinPlaced = true;
                     this.pin = new Pin();
                     this.pin.x = this.gpsModel.favX;
                     this.pin.y = this.gpsModel.favY;
                     this.objectController.addItem(this.pin,false);
                  }
               }
            }
         }
      }
      
      private function getAngle(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Number = Math.atan2(param4 - param2,param3 - param1) * (180 / Math.PI);
         return _loc5_ < 0?Number(_loc5_ + 360):Number(_loc5_);
      }
   }
}
