package com.gaiaworld.towns.objectGroups
{
   import com.gaiaworld.avatar.constants.AvatarConstants;
   import com.gaiaworld.avatar.controller.AvatarController;
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.avatar.model.OthersModel;
   import com.gaiaworld.gobjects.controller.ObjectController;
   import com.gaiaworld.gobjects.controller.events.ObjectEvent;
   import com.gaiaworld.gobjects.model.ObjectModel;
   import com.gaiaworld.towns.throwing.PaintBall;
   import com.gaiaworld.towns.vo.RoomObjectVo;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class PaintBalls
   {
       
      
      private var avatarModel:AvatarModel;
      
      private var objectController:ObjectController;
      
      private var objectModel:ObjectModel;
      
      private var othersModel:OthersModel;
      
      private var avatarController:AvatarController;
      
      private var disableTimer:Timer;
      
      private var canThrow:Boolean = true;
      
      private var index:Number = 0;
      
      public function PaintBalls()
      {
         this.avatarModel = AvatarModel.getInstance();
         this.objectController = new ObjectController();
         this.objectModel = ObjectModel.getInstance();
         this.othersModel = OthersModel.getInstance();
         this.avatarController = new AvatarController();
         this.disableTimer = new Timer(500);
         super();
         this.avatarModel.addEventListener(AvatarConstants.TARGET_UPDATED,this.userThrows,false,0,true);
         this.objectModel.addEventListener(ObjectEvent.UPDATED_FROM_SERVER,this.updatedFromServer,false,0,true);
         this.disableTimer.addEventListener(TimerEvent.TIMER,this.reset,false,0,true);
      }
      
      private function updatedFromServer(param1:ObjectEvent) : void
      {
         var _loc4_:PaintBall = null;
         var _loc2_:RoomObjectVo = new RoomObjectVo();
         _loc2_.fromString(param1.paramString);
         var _loc3_:IAvatar = this.othersModel.getAvatarByID(_loc2_.owner);
         if(_loc3_ != null)
         {
            _loc4_ = new PaintBall(_loc3_);
            _loc4_.dataProvider = _loc2_;
            _loc4_.index = this.index;
            this.index++;
            this.objectController.addItem(_loc4_,true);
            _loc4_.otherStart();
         }
      }
      
      private function userThrows(param1:Event) : *
      {
         if(this.avatarModel.throwingFlag == false || this.avatarModel.keyIsDown == true || this.canThrow == false)
         {
            return;
         }
         if(this.avatarModel.keyWasUsed == true)
         {
            return;
         }
         this.canThrow = false;
         this.disableTimer.start();
         var _loc2_:PaintBall = new PaintBall(this.avatarModel.avatar);
         _loc2_.index = this.index;
         this.index++;
         this.objectController.addItem(_loc2_,true);
         _loc2_.startAction();
      }
      
      public function robotThrows(param1:IAvatar) : *
      {
         var _loc2_:PaintBall = new PaintBall(param1);
         _loc2_.index = this.index;
         this.index++;
         this.objectController.addItem(_loc2_,true);
         _loc2_.robotStart();
      }
      
      private function reset(param1:TimerEvent) : void
      {
         this.disableTimer.stop();
         this.canThrow = true;
      }
   }
}
