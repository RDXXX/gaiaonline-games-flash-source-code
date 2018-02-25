package com.gaiaworld.avatar.controller
{
   import com.gaiaworld.avatar.constants.AvatarConstants;
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.avatar.vo.PathVo;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   
   public class AvatarController
   {
       
      
      private var avatarModel:AvatarModel;
      
      public function AvatarController()
      {
         this.avatarModel = AvatarModel.getInstance();
         super();
      }
      
      public function setTarget(param1:Number, param2:Number) : *
      {
         this.avatarModel.setTarget(param1,param2);
      }
      
      public function setKeyTarget(param1:Number, param2:Number) : *
      {
         this.avatarModel.setKeyTarget(param1,param2);
      }
      
      public function findPath(param1:Number, param2:Number) : *
      {
         this.avatarModel.tryTarget(param1,param2);
      }
      
      public function setGridCoords(param1:Number, param2:Number) : *
      {
         this.avatarModel.gridX = param1;
         this.avatarModel.gridZ = param2;
      }
      
      public function setGlobal(param1:Number, param2:Number) : *
      {
         this.avatarModel.globalX = param1;
         this.avatarModel.globalY = param2;
      }
      
      public function setMoving(param1:Number, param2:Number) : *
      {
         this.avatarModel.movingX = param1;
         this.avatarModel.movingY = param2;
      }
      
      public function setPos(param1:Number, param2:Number) : *
      {
         this.avatarModel.setPos(param1,param2);
      }
      
      public function doAction(param1:String) : *
      {
         this.avatarModel.doAction(param1);
      }
      
      public function setAtStart() : *
      {
         this.avatarModel.setAtStart();
      }
      
      public function setAvatar(param1:IAvatar) : *
      {
         this.avatarModel.avatar = param1;
      }
      
      public function moveUp() : *
      {
         this.avatarModel.moveUp();
      }
      
      public function moveDown() : *
      {
         this.avatarModel.moveDown();
      }
      
      public function moveLeft() : *
      {
         this.avatarModel.moveLeft();
      }
      
      public function moveRight() : *
      {
         this.avatarModel.moveRight();
      }
      
      public function moveNW() : *
      {
         this.avatarModel.moveNW();
      }
      
      public function moveNE() : *
      {
         this.avatarModel.moveNE();
      }
      
      public function moveSE() : *
      {
         this.avatarModel.moveSE();
      }
      
      public function moveSW() : *
      {
         this.avatarModel.moveSW();
      }
      
      public function updateCurrent(param1:Number, param2:Number) : *
      {
         this.avatarModel.currentY = param2;
         this.avatarModel.currentX = param1;
      }
      
      public function setBlocked(param1:Boolean) : void
      {
         this.avatarModel.isBlocked = param1;
      }
      
      public function keyIsUp() : *
      {
         this.avatarModel.keyIsDown = false;
      }
      
      public function keyIsDown() : *
      {
         this.avatarModel.keyIsDown = true;
      }
      
      public function keyWasUsed(param1:Boolean) : *
      {
         this.avatarModel.keyWasUsed = param1;
      }
      
      public function setTransportCoords(param1:Number, param2:Number, param3:String) : *
      {
         this.avatarModel.transportFlag = true;
         this.avatarModel.transportX = param1;
         this.avatarModel.transportY = param2;
         this.avatarModel.transportRoom = param3;
      }
      
      public function clearTransport() : *
      {
         this.avatarModel.transportFlag = false;
      }
      
      public function setSpeed(param1:Number) : void
      {
         this.avatarModel.setSpeed(param1);
      }
      
      public function setDelay(param1:Number) : void
      {
         this.avatarModel.avatarDelay = param1;
      }
      
      public function showReflection(param1:Boolean) : *
      {
         this.avatarModel.showReflection = param1;
      }
      
      public function setThrowFlag(param1:Boolean) : void
      {
         this.avatarModel.throwingFlag = param1;
      }
      
      public function setUserControl(param1:Boolean, param2:String = "") : void
      {
         this.avatarModel.userControl = param1;
         if(this.avatarModel.avatar != null)
         {
            this.avatarModel.avatar.isLocked = !param1;
         }
      }
      
      public function addItemToAvatar(param1:Number, param2:Number, param3:ISurfaceObject) : *
      {
         this.avatarModel.avatar.attachItem(param1,param2,param3);
      }
      
      public function removeItem(param1:ISurfaceObject) : *
      {
         this.avatarModel.avatar.removeItem(param1);
      }
      
      public function nextSpot() : void
      {
         this.avatarModel.nextSpot();
      }
      
      public function setPath(param1:Vector.<PathVo>) : *
      {
         this.avatarModel.pfArray = param1;
      }
      
      public function setPathFinding(param1:Boolean) : *
      {
         this.avatarModel.pathFinding = param1;
         if(this.avatarModel.avatar != null && this.avatarModel.userControl == true)
         {
            if(this.avatarModel.avatar.dataProvider != null)
            {
               this.avatarModel.avatar.dataProvider.pathFinding = param1;
            }
         }
      }
      
      public function setSx(param1:Number) : *
      {
         this.avatarModel.avatar.sx = param1;
      }
      
      public function setSy(param1:Number) : *
      {
         this.avatarModel.avatar.sy = param1;
      }
      
      public function setScale(param1:Number) : void
      {
         this.avatarModel.avatar.clip.scaleX = param1 / 100;
         this.avatarModel.avatar.clip.scaleY = param1 / 100;
         this.avatarModel.scale = param1;
      }
      
      public function setUseFullCollision(param1:Boolean) : *
      {
         this.avatarModel.useFullCollision = param1;
      }
      
      public function stand() : void
      {
         this.avatarModel.avatar.doStand();
      }
      
      public function showMenus(param1:Boolean) : *
      {
         this.avatarModel.showMenus = param1;
      }
      
      public function showShadow(param1:Boolean) : *
      {
         this.avatarModel.showShadow = param1;
      }
      
      public function showMod() : void
      {
         this.avatarModel.avatar.clip.alpha = 1;
         if(this.avatarModel.avatar.dataProvider != null)
         {
            this.avatarModel.avatar.dataProvider.visible = true;
         }
      }
      
      public function hideMod() : void
      {
         this.avatarModel.avatar.clip.alpha = 0.5;
         if(this.avatarModel.avatar.dataProvider != null)
         {
            this.avatarModel.avatar.dataProvider.visible = false;
         }
      }
      
      public function kneel() : *
      {
         this.avatarModel.avatar.doKneel();
      }
      
      public function setFace(param1:String) : *
      {
         this.avatarModel.avatar.setFace(param1);
      }
      
      public function setDir(param1:String) : *
      {
         this.avatarModel.avatar.setDir(param1);
      }
      
      public function hideAvatar() : void
      {
         this.avatarModel.avatar.clip.visible = false;
      }
      
      public function showAvatar() : void
      {
         this.avatarModel.avatar.clip.visible = true;
      }
      
      public function setDepth(param1:Number) : void
      {
         this.avatarModel.avatar.depth2 = param1;
      }
      
      public function setImage(param1:String) : void
      {
         this.avatarModel.avatarStrip = param1;
      }
      
      public function setIgnoreY(param1:Boolean) : void
      {
         this.avatarModel.ignoreY = param1;
      }
      
      public function setIgnoreX(param1:Boolean) : void
      {
         this.avatarModel.ignoreX = param1;
      }
      
      public function setTextSize(param1:Number) : *
      {
         this.avatarModel.userNameTextSize = param1;
      }
      
      public function setUseWhiteText(param1:Boolean) : *
      {
         this.avatarModel.useWhiteText = param1;
      }
      
      public function disablePathFinding() : void
      {
         this.avatarModel.disablePathFinding();
      }
      
      public function setAtStartAfterJump(param1:Boolean) : void
      {
         this.avatarModel.setAtStartAfterJump = param1;
      }
      
      public function shiftIsDown(param1:Boolean) : void
      {
         this.avatarModel.shiftIsDown = param1;
      }
      
      public function setWalkSpeed(param1:Number) : void
      {
         this.avatarModel.walkSpeed = param1;
      }
      
      public function setRunSpeed(param1:Number) : void
      {
         this.avatarModel.runSpeed = param1;
      }
      
      public function showMoving() : void
      {
         this.avatarModel.showMoving();
      }
      
      public function updateOnStop(param1:Boolean) : void
      {
         this.avatarModel.updateOnStop = param1;
      }
      
      public function updateServerOnMove(param1:Boolean) : void
      {
         this.avatarModel.updateServerOnMove = param1;
      }
      
      public function shake() : void
      {
         this.avatarModel.shake();
      }
      
      public function setCanUseKeys(param1:Boolean) : void
      {
         this.avatarModel.allowArrowKeys = param1;
      }
      
      public function flip() : void
      {
         this.avatarModel.doAction(AvatarConstants.ACTION_FLIP);
      }
      
      public function jump() : void
      {
         this.avatarModel.doAction(AvatarConstants.ACTION_JUMP);
      }
      
      public function ignoreMap(param1:Boolean) : *
      {
         this.avatarModel.ignoreCMap = param1;
      }
      
      public function fly() : void
      {
         this.avatarModel.doAction(AvatarConstants.ACTION_FLY);
      }
      
      public function stopFly() : void
      {
         this.avatarModel.doAction(AvatarConstants.ACTION_STOP_FLY);
      }
      
      public function changeAnimatedItemX(param1:Number) : void
      {
         this.avatarModel.animatedItemX = param1;
      }
      
      public function changeAnimatedItemY(param1:Number) : void
      {
         this.avatarModel.animatedItemY = param1;
      }
      
      public function showAnimated(param1:Boolean) : void
      {
         this.avatarModel.useAnimations = param1;
      }
   }
}
