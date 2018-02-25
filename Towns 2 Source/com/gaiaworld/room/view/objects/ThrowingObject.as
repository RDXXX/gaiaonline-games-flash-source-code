package com.gaiaworld.room.view.objects
{
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.gobjects.constants.CollisionConstants;
   import com.gaiaworld.gobjects.controller.ObjectController;
   import com.gaiaworld.gobjects.controller.events.ObjectEvent;
   import com.gaiaworld.gobjects.model.ObjectModel;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.room.interfaces.IThrowingObject;
   import com.gaiaworld.room.util.ObjUtil;
   import com.gaiaworld.towns.vo.RoomObjectVo;
   import com.gaiaworld.user.model.UserModel;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class ThrowingObject extends Sprite implements IThrowingObject, ISurfaceObject
   {
       
      
      protected var targetX:Number;
      
      protected var targetY:Number;
      
      protected var speed:Number = 2;
      
      protected var xDir:Number = 1;
      
      protected var yDir:Number = -1;
      
      protected var avatarModel:AvatarModel;
      
      protected var moveTimer:Timer;
      
      protected var _depth2:Number = 0;
      
      protected var _avatar:IAvatar;
      
      protected var _dataProvider:RoomObjectVo;
      
      protected var objectController:ObjectController;
      
      protected var objectModel:ObjectModel;
      
      protected var userModel:UserModel;
      
      public function ThrowingObject()
      {
         this.avatarModel = AvatarModel.getInstance();
         this.moveTimer = new Timer(50);
         this.objectController = new ObjectController();
         this.objectModel = ObjectModel.getInstance();
         this.userModel = UserModel.getInstance();
         super();
         this.moveTimer.addEventListener(TimerEvent.TIMER,this.move,false,0,true);
      }
      
      public function isBlocked(param1:Boolean) : void
      {
         if(param1 == true)
         {
            this.stopAction();
         }
      }
      
      public function get myName() : String
      {
         return "";
      }
      
      public function setDelay(param1:Number) : void
      {
         this.moveTimer.delay = param1;
      }
      
      public function stopAction() : void
      {
         this.moveTimer.stop();
      }
      
      public function startAction() : void
      {
         this.moveTimer.start();
      }
      
      public function setAtAvatar() : void
      {
         this.x = this.avatar.x;
         this.y = this.avatar.y;
      }
      
      public function setProps(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         this.yDir = param3;
         this.xDir = param2;
         this.speed = param1;
         this.targetY = param5;
         this.targetX = param4;
      }
      
      public function get collideType() : String
      {
         return CollisionConstants.ALL_COLLISIONS;
      }
      
      public function get canCollide() : Boolean
      {
         return true;
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
      
      public function get avatar() : IAvatar
      {
         return this._avatar;
      }
      
      public function set avatar(param1:IAvatar) : void
      {
         this._avatar = param1;
      }
      
      public function get dataProvider() : RoomObjectVo
      {
         return this._dataProvider;
      }
      
      public function set dataProvider(param1:RoomObjectVo) : void
      {
         this._dataProvider = param1;
         this.setProps(this._dataProvider.speed,this._dataProvider.xDir,this._dataProvider.yDir,this._dataProvider.targetX,this._dataProvider.targetY);
      }
      
      protected function move(param1:TimerEvent) : *
      {
         this.x = this.x + this.xDir * this.speed;
         this.y = this.y + this.yDir * this.speed;
         if(ObjUtil.getDistance2(this.x,this.y,this.targetX,this.targetY) < 10)
         {
            this.stopAction();
         }
      }
      
      protected function updatePosOnServer() : void
      {
      }
      
      protected function updatedFromServer(param1:ObjectEvent) : void
      {
      }
   }
}
