package com.gaiaworld.avatar.util
{
   import com.gaiaworld.avatar.constants.AvatarConstants;
   import com.gaiaworld.avatar.controller.AvatarController;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.global.TheStage;
   import com.gaiaworld.global.controller.EventController;
   import com.gaiaworld.global.controller.GlobalController;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.sushi.controller.ChatController;
   import com.gaiaworld.sushi.controller.events.ChatEvent;
   import com.gaiaworld.user.controller.UserController;
   import com.gaiaworld.user.model.UserModel;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class KeyUtil
   {
       
      
      private var avatarController:AvatarController;
      
      private var globalController:GlobalController;
      
      private var avatarModel:AvatarModel;
      
      private var globalModel:GlobalModel;
      
      private var userController:UserController;
      
      private var eventController:EventController;
      
      private const left:uint = 37;
      
      private const up:uint = 38;
      
      private const right:uint = 39;
      
      private const down:uint = 40;
      
      private const ctr:uint = 17;
      
      private const jKey:uint = 74;
      
      private const lKey:uint = 76;
      
      private const shift:uint = 16;
      
      private const sKey:uint = 83;
      
      private var keyIndex:Number = 0;
      
      private var keyTimer:Timer;
      
      private var keyIsDown:Boolean = false;
      
      private var disableTimer:Timer;
      
      private var canKneel:Boolean = true;
      
      private var leftIsDown:Boolean = false;
      
      private var rightIsDown:Boolean = false;
      
      private var upIsDown:Boolean = false;
      
      private var downIsDown:Boolean = false;
      
      private var keyVal:Number = 0;
      
      private var lastVal:Number = 1000;
      
      private var chatController:ChatController;
      
      private var userModel:UserModel;
      
      public function KeyUtil()
      {
         this.avatarController = new AvatarController();
         this.globalController = new GlobalController();
         this.avatarModel = AvatarModel.getInstance();
         this.globalModel = GlobalModel.getInstance();
         this.userController = new UserController();
         this.eventController = new EventController();
         this.keyTimer = new Timer(210);
         this.disableTimer = new Timer(2000);
         this.chatController = new ChatController();
         this.userModel = UserModel.getInstance();
         super();
         this.eventController.addEventListener(TheStage.getInstance().STAGE,KeyboardEvent.KEY_DOWN,this.keyDown);
         this.eventController.addEventListener(TheStage.getInstance().STAGE,KeyboardEvent.KEY_UP,this.keyUp);
         this.eventController.addEventListener(this.disableTimer,TimerEvent.TIMER,this.enableKneel);
         this.eventController.addEventListener(this.keyTimer,TimerEvent.TIMER,this.repeatKey);
      }
      
      private function enableKneel(param1:TimerEvent) : void
      {
         this.canKneel = true;
      }
      
      private function keyDown(param1:KeyboardEvent) : void
      {
         this.avatarController.keyIsDown();
         this.keyIsDown = true;
         this.keyIndex = 0;
         switch(param1.keyCode)
         {
            case this.left:
               if(this.avatarModel.allowArrowKeys == true)
               {
                  this.keyIndex = 1;
                  this.leftIsDown = true;
                  this.avatarController.keyWasUsed(true);
                  this.avatarController.disablePathFinding();
                  break;
               }
               this.globalController.keyPressed("left");
               return;
            case this.right:
               if(this.avatarModel.allowArrowKeys == true)
               {
                  this.keyIndex = 2;
                  this.rightIsDown = true;
                  this.avatarController.keyWasUsed(true);
                  this.avatarController.disablePathFinding();
                  break;
               }
               this.globalController.keyPressed("right");
               return;
            case this.up:
               if(this.avatarModel.allowArrowKeys == true)
               {
                  this.keyIndex = 3;
                  this.upIsDown = true;
                  this.avatarController.keyWasUsed(true);
                  this.avatarController.disablePathFinding();
                  break;
               }
               this.globalController.keyPressed("up");
               return;
            case this.down:
               if(this.avatarModel.allowArrowKeys == true)
               {
                  this.keyIndex = 4;
                  this.downIsDown = true;
                  this.avatarController.keyWasUsed(true);
                  this.avatarController.disablePathFinding();
                  break;
               }
               this.globalController.keyPressed("down");
               return;
            case 97:
               this.downIsDown = true;
               this.leftIsDown = true;
               this.avatarController.disablePathFinding();
               this.avatarController.keyWasUsed(true);
               break;
            case 98:
               this.downIsDown = true;
               this.avatarController.keyWasUsed(true);
               this.avatarController.disablePathFinding();
               break;
            case 99:
               this.downIsDown = true;
               this.rightIsDown = true;
               this.avatarController.keyWasUsed(true);
               this.avatarController.disablePathFinding();
               break;
            case 100:
               this.avatarController.disablePathFinding();
               this.leftIsDown = true;
               break;
            case 102:
               this.rightIsDown = true;
               this.avatarController.disablePathFinding();
               this.avatarController.keyWasUsed(true);
               break;
            case 103:
               this.upIsDown = true;
               this.leftIsDown = true;
               this.avatarController.disablePathFinding();
               this.avatarController.keyWasUsed(true);
               break;
            case 104:
               this.upIsDown = true;
               this.avatarController.disablePathFinding();
               this.avatarController.keyWasUsed(true);
               break;
            case 105:
               this.upIsDown = true;
               this.rightIsDown = true;
               this.avatarController.disablePathFinding();
               this.avatarController.keyWasUsed(true);
               break;
            case this.jKey:
               if(param1.ctrlKey == true)
               {
                  this.globalController.getJournal();
               }
               break;
            case this.lKey:
               if(param1.ctrlKey == true)
               {
               }
               break;
            case this.sKey:
               if(param1.ctrlKey == true)
               {
                  if(this.canKneel == true)
                  {
                     this.avatarController.doAction(AvatarConstants.ACTION_KNEEL);
                  }
                  this.canKneel = false;
                  this.disableTimer.start();
               }
               break;
            case this.shift:
               this.userController.setSpeed(this.avatarModel.runSpeed);
               this.avatarController.setSpeed(this.avatarModel.runSpeed);
               this.chatController.setNewEvent(new ChatEvent(ChatEvent.UPDATE_SPEED,this.userModel.userVo,"",true));
         }
         if(param1.keyCode == this.shift)
         {
            this.avatarController.shiftIsDown(true);
         }
         else
         {
            this.avatarController.shiftIsDown(false);
         }
         this.keyTimer.start();
         this.moveAv();
      }
      
      private function keyUp(param1:KeyboardEvent) : *
      {
         if(this.globalModel.isInSittingGame == true)
         {
            this.keyTimer.stop();
         }
         switch(param1.keyCode)
         {
            case this.left:
               this.leftIsDown = false;
               break;
            case this.right:
               this.rightIsDown = false;
               break;
            case this.up:
               this.upIsDown = false;
               break;
            case this.down:
               this.downIsDown = false;
               break;
            case this.shift:
               this.userController.setSpeed(this.avatarModel.walkSpeed);
               this.avatarController.setSpeed(this.avatarModel.walkSpeed);
               this.chatController.setNewEvent(new ChatEvent(ChatEvent.UPDATE_SPEED,this.userModel.userVo,"",true));
         }
         if(param1.keyCode > 95 && param1.keyCode < 106)
         {
            this.leftIsDown = false;
            this.rightIsDown = false;
            this.upIsDown = false;
            this.downIsDown = false;
         }
         this.keyIndex = 0;
         this.keyIsDown = false;
         this.moveAv();
         if(param1.keyCode != this.ctr)
         {
            if(this.keyVal == 0)
            {
               this.avatarController.keyIsUp();
               if(param1.keyCode == this.left || param1.keyCode == this.right || param1.keyCode == this.up || param1.keyCode == this.down)
               {
                  if(this.avatarModel.avatar.isKneeling == false)
                  {
                     this.avatarController.setKeyTarget(this.avatarModel.avatar.x + this.avatarModel.movingX,this.avatarModel.avatar.y + this.avatarModel.movingY);
                  }
                  this.keyTimer.stop();
               }
            }
         }
         else
         {
            this.avatarController.keyIsUp();
         }
         if(param1.keyCode == this.shift)
         {
            this.avatarController.shiftIsDown(false);
         }
      }
      
      private function repeatKey(param1:TimerEvent) : *
      {
         this.moveAv();
      }
      
      private function moveAv() : *
      {
         this.keyVal = 0;
         if(this.leftIsDown == true)
         {
            this.keyVal = this.keyVal + 1;
         }
         if(this.rightIsDown == true)
         {
            this.keyVal = this.keyVal + 2;
         }
         if(this.upIsDown == true)
         {
            this.keyVal = this.keyVal + 4;
         }
         if(this.downIsDown == true)
         {
            this.keyVal = this.keyVal + 8;
         }
         if(this.lastVal == this.keyVal)
         {
            return;
         }
         if(this.globalModel.isInSittingGame == true)
         {
            if(this.keyVal == 1 || this.keyVal == 2)
            {
               this.avatarController.kneel();
               this.avatarController.setFace(AvatarConstants.FACE_FRONT);
            }
            if(this.keyVal == 1)
            {
               this.avatarController.setDir(AvatarConstants.DIR_LEFT);
            }
            if(this.keyVal == 2)
            {
               this.avatarController.setDir(AvatarConstants.DIR_RIGHT);
            }
            return;
         }
         if(this.keyVal == 1)
         {
            this.avatarController.moveLeft();
         }
         if(this.keyVal == 2)
         {
            this.avatarController.moveRight();
         }
         if(this.keyVal == 4)
         {
            this.avatarController.moveUp();
         }
         if(this.keyVal == 8)
         {
            this.avatarController.moveDown();
         }
         if(this.keyVal == 5)
         {
            this.avatarController.moveNW();
         }
         if(this.keyVal == 6)
         {
            this.avatarController.moveNE();
         }
         if(this.keyVal == 9)
         {
            this.avatarController.moveSW();
         }
         if(this.keyVal == 10)
         {
            this.avatarController.moveSE();
         }
         this.lastVal = this.keyVal;
      }
   }
}
