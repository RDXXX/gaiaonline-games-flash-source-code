package com.gaiaworld.room.view
{
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.house.controller.DebugController;
   import com.gaiaworld.room.constants.RoomConstants;
   import com.gaiaworld.room.model.RoomModel;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.net.URLRequest;
   
   public class RoomScroller extends Sprite
   {
       
      
      public var forceScroll:Boolean = false;
      
      private var avatarModel:AvatarModel;
      
      private var background:Loader;
      
      private var scrollSpeed:Number = 16;
      
      private var room:Surface;
      
      private var debugController:DebugController;
      
      private var roomModel:RoomModel;
      
      private var globalModel:GlobalModel;
      
      public function RoomScroller()
      {
         this.avatarModel = AvatarModel.getInstance();
         this.background = new Loader();
         this.debugController = new DebugController();
         this.roomModel = RoomModel.getInstance();
         this.globalModel = GlobalModel.getInstance();
         super();
         this.globalModel.addEventListener(GlobalConstants.WORLD_IS_BUILT,this.setUpEnterFrame);
         this.roomModel.addEventListener(RoomConstants.ADJUST_SCROLL,this.adjustScroll);
      }
      
      public function setRoom(param1:Surface) : *
      {
         this.room = param1;
         this.addChild(param1);
         if(this.roomModel.canScroll == true)
         {
            param1.x = 50;
            param1.y = -150;
         }
         else
         {
            this.x = 0;
            this.y = 0;
            param1.x = 0;
            param1.y = 0;
         }
      }
      
      private function setUpEnterFrame(param1:Event) : *
      {
         if(this.roomModel.canScroll == true)
         {
            this.removeEventListener(Event.ENTER_FRAME,this.adjustMap2);
            this.addEventListener(Event.ENTER_FRAME,this.adjustMap2);
         }
         else
         {
            this.x = 0;
            this.y = 0;
            this.room.x = 0;
            this.room.y = 0;
         }
      }
      
      public function setBackground(param1:String) : *
      {
         this.background.load(new URLRequest(param1));
         this.addChildAt(this.background,0);
      }
      
      public function setBackgroundClass(param1:Class) : *
      {
         var _loc2_:BitmapData = new param1(1024,1024);
         var _loc3_:Bitmap = new Bitmap(_loc2_);
         this.addChild(_loc3_);
         this.setChildIndex(this.room,this.numChildren - 1);
      }
      
      private function adjustScroll(param1:Event) : *
      {
         this.forceScroll = true;
         this.adjustMap2();
      }
      
      private function adjustMap2(param1:Event = null) : *
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         if(this.roomModel.canScroll == false)
         {
            return;
         }
         var _loc2_:IAvatar = this.avatarModel.avatar;
         var _loc3_:Number = int(_loc2_.x + this.x);
         var _loc4_:Number = int(_loc2_.y + this.y);
         this.debugController.setLoc(" x=" + this.x + " y=" + this.y + "av x=" + _loc2_.x + " av y=" + _loc2_.y);
         if(_loc2_.isWalking == true || this.forceScroll == true)
         {
            this.forceScroll = false;
            _loc5_ = this.roomModel.borderRight;
            _loc6_ = this.roomModel.borderLeft;
            _loc7_ = this.roomModel.borderTop;
            _loc8_ = this.roomModel.borderBot;
            _loc9_ = x;
            _loc10_ = y;
            if(_loc3_ > _loc5_)
            {
               _loc11_ = _loc5_ - _loc2_.x;
               _loc9_ = _loc11_;
            }
            if(_loc3_ < _loc6_)
            {
               _loc12_ = _loc6_ - _loc2_.x;
               _loc9_ = _loc12_;
            }
            if(_loc4_ > _loc8_)
            {
               _loc13_ = _loc8_ - _loc2_.y;
               _loc10_ = _loc13_;
            }
            if(_loc4_ < _loc7_)
            {
               _loc14_ = _loc7_ - _loc2_.y;
               _loc10_ = _loc14_;
            }
            if(_loc10_ > this.roomModel.mapMinY)
            {
               _loc10_ = this.roomModel.mapMinY;
            }
            if(_loc10_ < this.roomModel.mapMaxY)
            {
               _loc10_ = this.roomModel.mapMaxY;
            }
            if(_loc9_ > this.roomModel.mapMinX)
            {
               _loc9_ = this.roomModel.mapMinX;
            }
            if(_loc9_ < this.roomModel.mapMaxX)
            {
               _loc9_ = this.roomModel.mapMaxX;
            }
            _loc9_ = int(_loc9_);
            _loc10_ = int(_loc10_);
            this.x = _loc9_;
            this.y = _loc10_;
         }
      }
   }
}
