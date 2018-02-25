package com.gaiaworld.room.view
{
   import com.gaiaworld.avatar.controller.AvatarController;
   import com.gaiaworld.avatar.controller.events.MoveEvent;
   import com.gaiaworld.global.controller.GlobalController;
   import com.gaiaworld.room.controller.RoomController;
   import com.gaiaworld.room.controller.events.JumpRoomEvent;
   import com.gaiaworld.room.interfaces.IAnimatedObject;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   
   public class JumpArrow extends AnimatedObject implements IAnimatedObject, ISurfaceObject
   {
       
      
      public var btnJump:SimpleButton;
      
      public var room:String;
      
      public var startX:Number = -1;
      
      public var startY:Number = -1;
      
      private var roomController:RoomController;
      
      private var globalController:GlobalController;
      
      public var isMovingObject:Boolean = false;
      
      private var _myName:String;
      
      private var avatarController:AvatarController;
      
      public function JumpArrow()
      {
         this.roomController = new RoomController();
         this.globalController = new GlobalController();
         this.avatarController = new AvatarController();
         super();
         this.buttonMode = true;
         this.useHandCursor = true;
         this.addEventListener(MouseEvent.MOUSE_DOWN,this.pressed);
         this.tabEnabled = false;
      }
      
      override protected function pressed(param1:MouseEvent) : void
      {
         this.dispatchEvent(new MoveEvent(MoveEvent.MOVE,this.x,this.y,true));
         this.dispatchEvent(new JumpRoomEvent(JumpRoomEvent.CHANGE_ROOM,this.startX,this.startY,this.room,true));
      }
      
      public function steppedOn() : *
      {
         this.avatarController.setAtStartAfterJump(false);
         this.dispatchEvent(new JumpRoomEvent(JumpRoomEvent.CHANGE_ROOM,this.startX,this.startY,this.room,true));
      }
      
      override public function getMyName() : String
      {
         return "jump arrow";
      }
      
      override public function get depth2() : Number
      {
         return 10000000;
      }
      
      override public function get myName() : String
      {
         return "jump arrow";
      }
   }
}
