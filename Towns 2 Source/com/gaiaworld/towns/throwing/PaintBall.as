package com.gaiaworld.towns.throwing
{
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.gobjects.constants.CollisionConstants;
   import com.gaiaworld.gobjects.controller.events.ObjectEvent;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.room.interfaces.IThrowingObject;
   import com.gaiaworld.room.util.ObjUtil;
   import com.gaiaworld.room.view.objects.ThrowingObject;
   import com.gaiaworld.towns.olympics.constants.OlympicConstants;
   import com.gaiaworld.towns.olympics.view.GroundSplat;
   import com.gaiaworld.towns.vo.RoomObjectVo;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class PaintBall extends ThrowingObject implements IThrowingObject, ISurfaceObject
   {
      
      public static const MY_NAME:String = "paintball";
       
      
      private var delayTimer:Timer;
      
      private var colorArray:Array;
      
      public var team:Number = 0;
      
      public var hasHit:Boolean = false;
      
      public var index:Number = 0;
      
      private var destroyTimer:Timer;
      
      public function PaintBall(param1:IAvatar)
      {
         this.delayTimer = new Timer(500);
         this.colorArray = [0,0,15249156,11673896,1471131];
         this.destroyTimer = new Timer(2000);
         this.avatar = param1;
         super();
         this.delayTimer.addEventListener(TimerEvent.TIMER,this.removeMe,false,0,true);
         this.team = param1.dataProvider.team;
         this.graphics.beginFill(this.colorArray[this.team],1);
         this.graphics.drawCircle(0,0,4);
         this.graphics.endFill();
         this.avatar.clip.dispatchEvent(new Event(OlympicConstants.PAINTBALL_SPIT,true));
         this.destroyTimer.addEventListener(TimerEvent.TIMER,this.removeMe);
         this.destroyTimer.start();
      }
      
      private function removeMe(param1:TimerEvent) : void
      {
         moveTimer.stop();
         this.destroyTimer.stop();
         this.delayTimer.stop();
         moveTimer.removeEventListener(TimerEvent.TIMER,this.move);
         this.delayTimer.removeEventListener(TimerEvent.TIMER,this.removeMe);
         this.destroyTimer.removeEventListener(TimerEvent.TIMER,this.removeMe);
         objectModel.removeEventListener(ObjectEvent.UPDATED_FROM_SERVER,updatedFromServer);
         objectController.removeItem(this);
      }
      
      override public function get myName() : String
      {
         return MY_NAME;
      }
      
      override public function startAction() : void
      {
         setAtAvatar();
         setDelay(10);
         this.y = this.y - 150;
         var _loc1_:Number = ObjUtil.getRandian(avatarModel.targetX,avatarModel.targetY,this.x,this.y);
         var _loc2_:Number = Math.cos(_loc1_) * speed;
         var _loc3_:Number = Math.sin(_loc1_) * speed;
         _dataProvider = new RoomObjectVo(MY_NAME,this.x,this.y,_loc2_,_loc3_,8,userModel.userID,avatarModel.targetX,avatarModel.targetY);
         setProps(8,_loc2_,_loc3_,avatarModel.targetX,avatarModel.targetY);
         moveTimer.start();
         objectController.registerObject(_dataProvider);
         if(_dataProvider.mobID == null)
         {
            _dataProvider.mobID = objectModel.findMobID(MY_NAME);
         }
         if(_dataProvider.mobID == null)
         {
            _dataProvider.mobID = objectModel.getNewMobID(MY_NAME,_dataProvider.toArray(),true);
         }
         this.updatePosOnServer();
      }
      
      public function otherStart() : *
      {
         objectModel.addEventListener(ObjectEvent.UPDATED_FROM_SERVER,updatedFromServer);
         setAtAvatar();
         setDelay(10);
         this.y = this.y - 150;
         setProps(8,_dataProvider.xDir,_dataProvider.yDir,_dataProvider.targetX,_dataProvider.targetY);
         moveTimer.start();
      }
      
      public function robotStart() : *
      {
         setAtAvatar();
         setDelay(10);
         this.y = this.y - 150;
         var _loc1_:Number = int(Math.random() * 3) - 1;
         var _loc2_:Number = int(Math.random() * 3) - 1;
         var _loc3_:Number = avatarModel.avatar.clip.x;
         var _loc4_:Number = avatarModel.avatar.clip.y;
         setProps(8,_loc1_,_loc2_,_loc3_,_loc4_);
         moveTimer.start();
      }
      
      override public function stopAction() : void
      {
         var _loc1_:GroundSplat = new GroundSplat();
         _loc1_.setColor(this.colorArray[this.team]);
         this.addChild(_loc1_);
         this.graphics.clear();
         moveTimer.stop();
         moveTimer.removeEventListener(TimerEvent.TIMER,this.move);
         this.delayTimer.start();
      }
      
      override protected function move(param1:TimerEvent) : *
      {
         this.x = this.x + xDir * speed;
         this.y = this.y + yDir * speed;
         this.rotation++;
         if(ObjUtil.getDistance2(this.x,this.y,targetX,targetY) < 10)
         {
            this.stopAction();
         }
         if(objectModel.checkCollisionMap(this) == true)
         {
            this.stopAction();
         }
         this.dispatchEvent(new Event(GlobalConstants.MOVING,true));
      }
      
      override protected function updatePosOnServer() : void
      {
         if(this.avatar == avatarModel.avatar)
         {
            objectController.updateObject(_dataProvider,true);
         }
      }
      
      override public function get collideType() : String
      {
         return CollisionConstants.AVATAR_ONLY;
      }
   }
}
