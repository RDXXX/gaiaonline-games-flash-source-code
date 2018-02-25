package com.gaiaworld.global.view.ui
{
   import com.gaiaworld.avatar.constants.AvatarConstants;
   import com.gaiaworld.avatar.controller.AvatarController;
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.avatar.model.OthersModel;
   import com.gaiaworld.global.constants.SmartPhoneConstants;
   import com.gaiaworld.gobjects.constants.CollisionConstants;
   import com.gaiaworld.room.constants.MapConstants;
   import com.gaiaworld.room.constants.RoomConstants;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.room.model.GpsModel;
   import com.gaiaworld.room.model.RoomModel;
   import com.gaiaworld.room.util.ObjUtil;
   import com.gaiaworld.room.view.JumpArrow;
   import com.gaiaworld.towns.constants.PhoneConstants;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class AvatarCompass extends Sprite implements ISurfaceObject
   {
       
      
      private var compass:Compass;
      
      private var avatarModel:AvatarModel;
      
      private var avatarController:AvatarController;
      
      private var othersModel:OthersModel;
      
      private var roomModel:RoomModel;
      
      private var gpsModel:GpsModel;
      
      private var _depth2:Number;
      
      private var updateTimer:Timer;
      
      private var safeCount:Number = 0;
      
      public function AvatarCompass()
      {
         this.compass = new Compass();
         this.avatarModel = AvatarModel.getInstance();
         this.avatarController = new AvatarController();
         this.othersModel = OthersModel.getInstance();
         this.roomModel = RoomModel.getInstance();
         this.gpsModel = GpsModel.getInstance();
         this.updateTimer = new Timer(100);
         super();
         this.gpsModel.addEventListener(MapConstants.EVENT_DIRECTIONS_SET,this.startTrack);
         this.gpsModel.addEventListener(MapConstants.UPDATE_COMPASS,this.setDir);
         this.avatarModel.addEventListener(AvatarConstants.AVATAR_IS_MOVING,this.setDir);
         this.roomModel.addEventListener(RoomConstants.ROOM_IS_READY,this.roomChanged);
         this.addChild(this.compass);
         this.updateTimer.addEventListener(TimerEvent.TIMER,this.updateFollow,false,0,true);
      }
      
      private function roomChanged(param1:Event) : void
      {
         this.safeCount = 0;
      }
      
      private function startTrack(param1:Event) : *
      {
         this.visible = true;
         if(this.safeCount < 10)
         {
            this.setDir();
         }
      }
      
      public function get clip() : Sprite
      {
         return this as Sprite;
      }
      
      public function get depth2() : Number
      {
         return this._depth2;
      }
      
      public function set depth2(param1:Number) : void
      {
         this._depth2 = param1;
      }
      
      public function get myName() : String
      {
         return "avCompass";
      }
      
      public function get canCollide() : Boolean
      {
         return false;
      }
      
      public function get collideType() : String
      {
         return CollisionConstants.NO_COLLISION;
      }
      
      private function setDir(param1:Event = null) : void
      {
         var _loc2_:Number = NaN;
         if(this.gpsModel.navagationOn == false)
         {
            return;
         }
         if(this.safeCount > 100)
         {
            return;
         }
         this.safeCount++;
         var _loc3_:String = this.gpsModel.nextRoomInDirections();
         this.dispatchEvent(new Event(PhoneConstants.SHOW_COMPASS));
         if(_loc3_ == null)
         {
            if(this.gpsModel.hotSpotFlag == true)
            {
               this.dispatchEvent(new Event(SmartPhoneConstants.STOP_NAV,true));
            }
            else if(this.gpsModel.roomImIn == MapConstants.WEAPON)
            {
               this.gpsModel.getDirections2(this.gpsModel.roomImIn,this.gpsModel.finalRoom);
            }
            if(this.gpsModel.favFlag == false)
            {
            }
         }
         var _loc4_:JumpArrow = this.roomModel.getPortal(_loc3_);
         if(_loc4_ != null)
         {
            _loc2_ = ObjUtil.getAngle(this.avatarModel.avatar.x,this.avatarModel.avatar.y,_loc4_.x,_loc4_.y);
            this.compass.setAngle(_loc2_);
         }
         else if(this.gpsModel.favX != -1 && this.gpsModel.favY != -1)
         {
            _loc2_ = ObjUtil.getAngle(this.avatarModel.avatar.x,this.avatarModel.avatar.y,this.gpsModel.favX,this.gpsModel.favY);
            Compass(this.compass).setAngle(_loc2_);
         }
         else if(this.gpsModel.palToFollow != null)
         {
            this.updateFollow();
            this.updateTimer.start();
         }
      }
      
      private function updateFollow(param1:TimerEvent = null) : *
      {
         var _loc2_:Number = NaN;
         var _loc3_:IAvatar = null;
         if(this.gpsModel.palToFollow != null)
         {
            _loc3_ = this.othersModel.getAvatarByID(this.gpsModel.palToFollow.id);
            if(_loc3_ != null)
            {
               _loc2_ = ObjUtil.getAngle(this.avatarModel.avatar.x,this.avatarModel.avatar.y,_loc3_.x,_loc3_.y);
               Compass(this.compass).setAngle(_loc2_);
            }
         }
         else
         {
            this.updateTimer.stop();
            this.updateTimer.removeEventListener(TimerEvent.TIMER,this.updateFollow);
         }
      }
   }
}
