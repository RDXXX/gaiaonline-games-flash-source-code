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
   
   public class PrevArrow extends JumpArrow implements ISurfaceObject
   {
       
      
      public var btnJump2:SimpleButton;
      
      private var hoodModel:HoodModel;
      
      private var hoodController:HoodController;
      
      private var roomModel:RoomModel;
      
      public function PrevArrow()
      {
         this.hoodModel = HoodModel.getInstance();
         this.hoodController = new HoodController();
         this.roomModel = RoomModel.getInstance();
         super();
      }
      
      override protected function pressed(param1:MouseEvent) : void
      {
         this.hoodController.setJustArrived(false);
         this.hoodController.setTransportFlag(true);
         this.hoodController.setPendingHood(this.hoodModel.prevHood);
         this.hoodController.setWander(true);
         this.dispatchEvent(new MoveEvent(MoveEvent.MOVE,this.x,this.y,true));
         this.dispatchEvent(new JumpRoomEvent(JumpRoomEvent.CHANGE_ROOM,this.hoodModel.prevX,this.hoodModel.prevY,this.roomModel.surfaceToLoad,true));
      }
      
      override public function steppedOn() : *
      {
         this.hoodController.setTransportFlag(true);
         this.hoodController.setJustArrived(false);
         this.hoodController.setPendingHood(this.hoodModel.prevHood);
         this.hoodController.setWander(true);
         this.hoodController.setPendingPos(this.hoodModel.prevX,this.hoodModel.prevY);
         this.dispatchEvent(new JumpRoomEvent(JumpRoomEvent.CHANGE_ROOM,this.hoodModel.prevX,this.hoodModel.prevY,this.roomModel.surfaceToLoad,true));
      }
   }
}
