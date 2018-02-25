package com.gaiaworld.towns.hood.util
{
   import com.gaiaonline.gsi.GSICompleteEvent;
   import com.gaiaonline.gsi.GSIGateway;
   import com.gaiaonline.serializers.JSONSerializer;
   import com.gaiaworld.global.controller.GlobalController;
   import com.gaiaworld.global.controller.MessageController;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.house.controller.HousingController;
   import com.gaiaworld.room.constants.MapConstants;
   import com.gaiaworld.room.controller.RoomController;
   import com.gaiaworld.towns.hood.controller.HoodController;
   import com.gaiaworld.towns.hood.vo.HomeVo;
   import com.gaiaworld.user.model.UserModel;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class DirectToHouse extends EventDispatcher
   {
       
      
      private var globalModel:GlobalModel;
      
      private var roomController:RoomController;
      
      private var gsi:GSIGateway;
      
      private var userModel:UserModel;
      
      private var housingController:HousingController;
      
      private var hoodController:HoodController;
      
      private var delayTimer:Timer;
      
      private var id:Number;
      
      private var homeVo:HomeVo;
      
      private var directToHood:DirectToHood;
      
      public function DirectToHouse()
      {
         this.globalModel = GlobalModel.getInstance();
         this.roomController = new RoomController();
         this.userModel = UserModel.getInstance();
         this.housingController = new HousingController();
         this.hoodController = new HoodController();
         this.delayTimer = new Timer(2000);
         this.directToHood = new DirectToHood();
         super();
         this.gsi = new GSIGateway(this.globalModel.gsiSubdomain);
         this.gsi.serializerClass = JSONSerializer;
      }
      
      public function gotDirectlyToHouse(param1:Number) : *
      {
         this.id = param1;
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.gotData);
         this.gsi.invoke(11001,"user",param1);
      }
      
      private function gotData(param1:GSICompleteEvent) : *
      {
         var _loc9_:MessageController = null;
         var _loc10_:GlobalController = null;
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.gotData);
         var _loc2_:Object = param1.methods[0].data[this.id];
         if(_loc2_ == null)
         {
            _loc9_ = new MessageController();
            _loc9_.setMessage("You have not set up a home yet!");
            _loc10_ = new GlobalController();
            _loc10_.hideChangeScreen();
            return;
         }
         var _loc3_:Number = Number(_loc2_.community);
         var _loc4_:Number = Number(_loc2_.plot);
         var _loc5_:Number = Number(_loc2_.style);
         var _loc6_:Number = Number(_loc2_.lock);
         var _loc7_:Number = Number(_loc2_.neighborhood);
         var _loc8_:String = _loc2_.houseName;
         this.homeVo = new HomeVo(_loc3_,_loc4_,_loc5_,_loc6_,this.id,_loc7_);
         this.housingController.setExitPlot(this.homeVo.plot);
         this.housingController.setHouseID(this.homeVo.user_id);
         this.hoodController.setCurrentHood(this.homeVo.hood);
         this.housingController.setHouseID(this.id);
         this.hoodController.addHome(this.homeVo);
         this.delayTimer.addEventListener(TimerEvent.TIMER,this.delayGoHouse);
         this.delayTimer.start();
      }
      
      private function delayGoHouse(param1:TimerEvent) : *
      {
         this.delayTimer.removeEventListener(TimerEvent.TIMER,this.delayGoHouse);
         this.delayTimer.stop();
         if(this.checkIsLocked() == false)
         {
            this.roomController.changeRoom(MapConstants.MED_HOUSE);
         }
         else
         {
            this.directToHood.gotoHood(this.homeVo.community,this.homeVo.hood);
         }
      }
      
      private function checkIsLocked() : Boolean
      {
         if(this.homeVo.lock == 0)
         {
            return false;
         }
         if(this.userModel.userID == this.homeVo.user_id)
         {
            return false;
         }
         if(this.homeVo.lock == 1 && this.userModel.isPal(this.homeVo.user_id) == true)
         {
            return false;
         }
         return true;
      }
   }
}
