package com.gaiaworld.room.view
{
   import com.gaiaworld.avatar.controller.events.MoveEvent;
   import com.gaiaworld.room.controller.events.JumpRoomEvent;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.room.model.RoomModel;
   import com.gaiaworld.towns.hood.controller.HoodController;
   import com.gaiaworld.towns.hood.model.HoodModel;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   
   public class NextArrow extends JumpArrow implements ISurfaceObject
   {
       
      
      public var btnJump2:SimpleButton;
      
      private var hoodModel:HoodModel;
      
      private var roomModel:RoomModel;
      
      private var hoodController:HoodController;
      
      public function NextArrow()
      {
         this.hoodModel = HoodModel.getInstance();
         this.roomModel = RoomModel.getInstance();
         this.hoodController = new HoodController();
         super();
      }
      
      override protected function pressed(param1:MouseEvent) : void
      {
         this.hoodController.setTransportFlag(true);
         this.hoodController.setJustArrived(false);
         this.hoodController.setPendingHood(this.hoodModel.nextHood);
         this.hoodController.setWander(true);
         this.dispatchEvent(new MoveEvent(MoveEvent.MOVE,this.x,this.y,true));
         this.dispatchEvent(new JumpRoomEvent(JumpRoomEvent.CHANGE_ROOM,this.hoodModel.nextX,this.hoodModel.nextY,this.roomModel.surfaceToLoad,true));
      }
      
      override public function steppedOn() : *
      {
         this.hoodController.setTransportFlag(true);
         this.hoodController.setJustArrived(false);
         this.hoodController.setWander(true);
         this.hoodController.setPendingHood(this.hoodModel.nextHood);
         this.hoodController.setPendingPos(this.hoodModel.nextX,this.hoodModel.nextY);
         this.dispatchEvent(new JumpRoomEvent(JumpRoomEvent.CHANGE_ROOM,this.hoodModel.nextX,this.hoodModel.nextY,this.roomModel.surfaceToLoad,true));
      }
   }
}
