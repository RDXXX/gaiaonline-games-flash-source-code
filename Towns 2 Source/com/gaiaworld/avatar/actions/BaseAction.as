package com.gaiaworld.avatar.actions
{
   import com.gaiaworld.avatar.constants.AvatarConstants;
   import com.gaiaworld.avatar.interfaces.IAction;
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.global.controller.EventController;
   import com.gaiaworld.room.interfaces.IWorldItem;
   import com.gaiaworld.room.model.RoomModel;
   import com.gaiaworld.sushi.controller.ChatController;
   import com.gaiaworld.sushi.controller.events.ChatEvent;
   import com.gaiaworld.user.controller.UserController;
   import com.gaiaworld.user.model.UserModel;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class BaseAction extends EventDispatcher implements IAction
   {
       
      
      protected var userController:UserController;
      
      protected var chatController:ChatController;
      
      protected var userModel:UserModel;
      
      protected var roomModel:RoomModel;
      
      protected var eventController:EventController;
      
      protected var item:IWorldItem;
      
      protected var av:IAvatar;
      
      public function BaseAction()
      {
         this.userController = new UserController();
         this.chatController = new ChatController();
         this.userModel = UserModel.getInstance();
         this.roomModel = RoomModel.getInstance();
         this.eventController = new EventController();
         super();
         this.eventController.addEventListener(this.roomModel,GlobalConstants.CHANGE_ROOMS,this.roomChange);
      }
      
      public function setAvatar(param1:IAvatar) : void
      {
      }
      
      public function setItem(param1:IWorldItem) : void
      {
      }
      
      public function stopAction() : void
      {
      }
      
      public function startAction() : void
      {
      }
      
      private function roomChange(param1:Event) : void
      {
         this.eventController.removeEventListener(this.roomModel,GlobalConstants.CHANGE_ROOMS,this.roomChange);
         this.stopAction();
      }
      
      protected function updatePosOnServer() : *
      {
         var _loc1_:String = AvatarConstants.UPDATE_POS + ":" + String(this.av.clip.x) + ":" + String(this.av.clip.y) + ":" + this.av.getDir() + ":" + this.av.getFace();
         this.userController.updatePos(this.av.clip.x,this.av.clip.y);
         this.userController.updateDir(this.av.getDir(),this.av.getFace());
         this.chatController.setNewEvent(new ChatEvent(ChatEvent.AVATAR_UPDATE,this.userModel.userVo,_loc1_,false));
      }
      
      protected function updateMovementOnServer() : *
      {
         var _loc1_:String = null;
         if(this.av.isWalking != true)
         {
            _loc1_ = AvatarConstants.STAND_STILL + ":" + this.av.getDir() + ":" + this.av.getFace();
            this.chatController.setNewEvent(new ChatEvent(ChatEvent.AVATAR_UPDATE,this.userModel.userVo,_loc1_,false));
         }
      }
      
      protected function updateSpecial() : *
      {
         var _loc1_:String = null;
         if(this.av.isKneeling == true)
         {
            _loc1_ = AvatarConstants.ACTION_KNEEL + ":" + this.av.clip.x + ":" + this.av.clip.y + ":" + this.av.getDir() + ":" + this.av.getFace();
            this.chatController.setNewEvent(new ChatEvent(ChatEvent.AVATAR_UPDATE,this.userModel.userVo,_loc1_,false));
         }
      }
      
      protected function turnToObj(param1:Number) : *
      {
         switch(param1)
         {
            case 1:
               if(this.av.isWalking == true)
               {
                  this.av.walk(AvatarConstants.DIR_RIGHT,AvatarConstants.FACE_BACK);
               }
               else
               {
                  this.av.standStill(AvatarConstants.DIR_RIGHT,AvatarConstants.FACE_BACK);
               }
               break;
            case 2:
               if(this.av.isWalking == true)
               {
                  this.av.walk(AvatarConstants.DIR_LEFT,AvatarConstants.FACE_FRONT);
               }
               else
               {
                  this.av.standStill(AvatarConstants.DIR_LEFT,AvatarConstants.FACE_FRONT);
               }
               break;
            case 3:
               if(this.av.isWalking == true)
               {
                  this.av.walk(AvatarConstants.DIR_LEFT,AvatarConstants.FACE_BACK);
               }
               else
               {
                  this.av.standStill(AvatarConstants.DIR_LEFT,AvatarConstants.FACE_BACK);
               }
               break;
            case 4:
               if(this.av.isWalking == true)
               {
                  this.av.walk(AvatarConstants.DIR_RIGHT,AvatarConstants.FACE_FRONT);
               }
               else
               {
                  this.av.standStill(AvatarConstants.DIR_RIGHT,AvatarConstants.FACE_FRONT);
               }
         }
      }
   }
}
