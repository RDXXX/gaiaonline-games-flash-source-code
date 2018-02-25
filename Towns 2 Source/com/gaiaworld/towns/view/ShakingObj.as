package com.gaiaworld.towns.view
{
   import com.gaiaworld.avatar.controller.events.MoveEvent;
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.gobjects.controller.ObjectController;
   import com.gaiaworld.gobjects.model.ObjectModel;
   import com.gaiaworld.room.interfaces.IAnimatedObject;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.room.model.RoomModel;
   import com.gaiaworld.room.util.ObjUtil;
   import com.gaiaworld.room.view.AnimatedObject;
   import com.gaiaworld.towns.hood.model.HoodModel;
   import com.gaiaworld.user.controller.UserController;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class ShakingObj extends AnimatedObject implements IAnimatedObject, ISurfaceObject
   {
       
      
      private var globalModel:GlobalModel;
      
      public var obj2:MovieClip;
      
      protected var objectModel:ObjectModel;
      
      protected var myType:String = "s";
      
      protected var tall:Boolean = false;
      
      private var hoodModel:HoodModel;
      
      private var roomModel:RoomModel;
      
      private var removeTimer:Timer;
      
      private var gold:Gold;
      
      private var hasBeenShaken:Boolean = false;
      
      private var objectController:ObjectController;
      
      private var userController:UserController;
      
      public function ShakingObj()
      {
         this.globalModel = GlobalModel.getInstance();
         this.objectModel = ObjectModel.getInstance();
         this.hoodModel = HoodModel.getInstance();
         this.roomModel = RoomModel.getInstance();
         this.removeTimer = new Timer(2000);
         this.objectController = new ObjectController();
         this.userController = new UserController();
         super();
         this.objectModel.addEventListener(GlobalConstants.COINS,this.setCoins);
      }
      
      private function setCoins(param1:Event) : void
      {
         if(this.objectModel.shakenObj == this)
         {
            this.objectModel.removeEventListener(GlobalConstants.COINS,this.setCoins);
            if(this.objectModel.coins > 0)
            {
               this.userController.addGold(this.objectModel.coins);
               this.gold = new Gold();
               this.gold.x = this.x;
               this.gold.y = this.y;
               this.objectController.addItem(this.gold);
               this.gold.setNum(this.objectModel.coins);
               this.removeTimer.addEventListener(TimerEvent.TIMER,this.removeGold);
               this.removeTimer.start();
            }
         }
      }
      
      private function removeGold(param1:TimerEvent) : *
      {
         this.removeTimer.removeEventListener(TimerEvent.TIMER,this.removeGold);
         this.removeTimer.stop();
         if(this.contains(this.gold))
         {
            removeChild(this.gold);
         }
      }
      
      override protected function pressed(param1:MouseEvent) : void
      {
         if(this.distFromUser() < 150)
         {
            this.shake();
         }
         else
         {
            this.dispatchEvent(new MoveEvent(MoveEvent.MOVE,this.x + this.mouseX,this.y + this.mouseY,true));
         }
      }
      
      private function distFromUser() : Number
      {
         return ObjUtil.getDistance2(this.globalModel.currentX,this.globalModel.currentY,this.x,this.y);
      }
      
      protected function shake() : *
      {
         this.talk();
         this.obj2.gotoAndPlay(2);
         if(this.hasBeenShaken == true)
         {
            return;
         }
         this.objectController.setShakenObj(this);
         this.hasBeenShaken = true;
         var _loc1_:Array = new Array();
         _loc1_[0] = 1;
         _loc1_[1] = "";
         _loc1_[2] = this.myType;
         _loc1_[3] = int(this.x);
         _loc1_[4] = int(this.y);
         _loc1_[5] = this.hoodModel.currentHoodId;
         this.objectModel.dataExchange.callPlugin(_loc1_);
      }
      
      protected function talk() : void
      {
      }
      
      public function isMovingObject() : Boolean
      {
         return false;
      }
   }
}
