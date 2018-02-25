package com.gaiaworld.user.services
{
   import com.gaiaonline.gsi.GSICompleteEvent;
   import com.gaiaonline.gsi.GSIGateway;
   import com.gaiaonline.serializers.JSONSerializer;
   import com.gaiaworld.global.constants.GsiConstants;
   import com.gaiaworld.global.constants.MessageConstants;
   import com.gaiaworld.global.controller.MessageController;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.house.controller.DebugController;
   import com.gaiaworld.user.controller.UserController;
   import com.gaiaworld.user.model.UserModel;
   import com.gaiaworld.user.vo.PalVo;
   import com.gaiaworld.user.vo.UserVo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class UserDataLoader extends EventDispatcher
   {
       
      
      private var gateway:GSIGateway;
      
      private var userController:UserController;
      
      private var userModel:UserModel;
      
      private var debugController:DebugController;
      
      private var userVo:UserVo;
      
      private var globalModel:GlobalModel;
      
      private var messageController:MessageController;
      
      public function UserDataLoader()
      {
         this.userController = new UserController();
         this.userModel = UserModel.getInstance();
         this.debugController = new DebugController();
         this.globalModel = GlobalModel.getInstance();
         this.messageController = new MessageController();
         super();
         this.gateway = new GSIGateway(this.globalModel.gsiSubdomain);
         this.gateway.serializerClass = JSONSerializer;
      }
      
      public function getSid() : void
      {
         this.gateway.addEventListener(GSICompleteEvent.COMPLETE,this.gotSid);
         this.gateway.queue(GsiConstants.GET_SID);
         this.gateway.send();
      }
      
      private function gotSid(param1:GSICompleteEvent) : *
      {
         trace("got sid");
         var _loc2_:String = param1.methods[0].data;
         trace("sid=" + _loc2_);
         this.gateway.removeEventListener(GSICompleteEvent.COMPLETE,this.gotSid);
         this.userController.setSid(_loc2_);
         this.getUserInfo();
      }
      
      private function getUserInfo() : *
      {
         this.gateway.addEventListener(GSICompleteEvent.COMPLETE,this.gotUserInfo);
         this.gateway.queue(GsiConstants.GET_USER_ID,this.userModel.sid);
         this.gateway.send();
      }
      
      private function gotUserInfo(param1:GSICompleteEvent) : *
      {
         this.gateway.removeEventListener(GSICompleteEvent.COMPLETE,this.gotUserInfo);
         var _loc2_:Number = param1.methods[0].data.gaia_id;
         var _loc3_:Number = param1.methods[0].data.user_active;
         if(_loc3_ == 0)
         {
            this.messageController.setMessage("You Need To Verify Your Email Address Before Using The Flash Spaces");
            return;
         }
         this.userController.setGaiaId(_loc2_);
         this.userVo = new UserVo();
         this.userVo.fromObj(param1.methods[0].data);
         this.userVo.userName = unescape(this.userVo.userName);
         if(isNaN(this.userVo.gaia_id))
         {
            this.messageController.setMessage(MessageConstants.ALREADY_LOGGED_IN_SPACES,false);
            return;
         }
         this.userVo.x = this.globalModel.startX;
         this.userVo.y = this.globalModel.startY;
         if(this.globalModel.isHangout == true)
         {
            if(this.globalModel.isInSittingGame == false)
            {
               this.userController.setUserData(this.userVo);
            }
            else
            {
               this.getUserGold();
            }
         }
         else
         {
            this.getUserGold();
         }
      }
      
      private function getUserGold() : *
      {
         this.gateway.addEventListener(GSICompleteEvent.COMPLETE,this.userGoldGot);
         this.gateway.queue(GsiConstants.GET_USER_GOLD,this.userModel.userID);
         this.gateway.send();
      }
      
      private function userGoldGot(param1:GSICompleteEvent) : *
      {
         this.gateway.removeEventListener(GSICompleteEvent.COMPLETE,this.userGoldGot);
         var _loc2_:Number = Number(param1.methods[0].data);
         this.userController.setUserGold(_loc2_);
         this.getIgnoreList();
      }
      
      private function getUserHood() : *
      {
         this.gateway.addEventListener(GSICompleteEvent.COMPLETE,this.gotTheHood);
         this.gateway.queue(GsiConstants.GET_HOOD,this.userModel.userID);
         this.gateway.send();
      }
      
      private function gotTheHood(param1:GSICompleteEvent) : *
      {
         this.gateway.removeEventListener(GSICompleteEvent.COMPLETE,this.gotTheHood);
         var _loc2_:Number = Number(param1.methods[0].data.hood);
         this.userController.setUserHood(_loc2_);
         this.getIgnoreList();
      }
      
      private function getZipRange() : *
      {
         this.gateway.addEventListener(GSICompleteEvent.COMPLETE,this.gotZipRange);
         this.gateway.queue(GsiConstants.GET_ZIP_RANGE,this.userModel.hood,this.userModel.sid);
         this.gateway.send();
      }
      
      private function gotZipRange(param1:GSICompleteEvent) : *
      {
         var _loc4_:Number = NaN;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         this.gateway.removeEventListener(GSICompleteEvent.COMPLETE,this.gotZipRange);
         var _loc2_:Number = param1.methods[0].data.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(param1.methods[0].data[_loc3_].user_id)
            {
               _loc4_ = param1.methods[0].data[_loc3_].user_id;
               if(_loc4_ == this.userModel.userID)
               {
                  _loc5_ = param1.methods[0].data[_loc3_].xyr;
                  _loc6_ = _loc5_.split(",");
                  this.userController.setDoorPos(Number(_loc6_[0]),Number(_loc6_[1]),Number(_loc6_[2]));
               }
            }
            _loc3_++;
         }
         this.getIgnoreList();
      }
      
      private function getIgnoreList() : *
      {
         this.gateway.addEventListener(GSICompleteEvent.COMPLETE,this.listDone);
         this.gateway.queue(GsiConstants.IGNORE_LIST,this.userModel.sid);
         this.gateway.send();
      }
      
      private function listDone(param1:GSICompleteEvent) : *
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:String = null;
         this.gateway.removeEventListener(GSICompleteEvent.COMPLETE,this.listDone);
         try
         {
            _loc2_ = param1.methods[0].data.length;
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               _loc4_ = param1.methods[0].data[_loc3_];
               this.userController.ignore(_loc4_);
               _loc3_++;
            }
         }
         catch(e:Error)
         {
         }
         this.getFriends();
      }
      
      private function getFriends() : *
      {
         this.gateway.addEventListener(GSICompleteEvent.COMPLETE,this.gotFriends);
         this.gateway.queue(GsiConstants.FRIEND_LIST,this.userModel.userID);
         this.gateway.send();
      }
      
      private function gotFriends(param1:GSICompleteEvent) : *
      {
         var _loc5_:PalVo = null;
         this.gateway.removeEventListener(GSICompleteEvent.COMPLETE,this.gotFriends);
         var _loc2_:Number = param1.methods[0].data.length;
         if(param1.methods[0].data[0] != null)
         {
            if(Number(param1.methods[0].data[0]) < 0)
            {
               this.userController.setUserData(this.userVo);
               return;
            }
         }
         if(param1.methods[0].data[0] == "-5")
         {
            this.userController.setUserData(this.userVo);
            return;
         }
         var _loc3_:Array = new Array();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc5_ = new PalVo();
            _loc5_.fromObj(param1.methods[0].data[_loc4_]);
            _loc3_.push(_loc5_);
            _loc4_++;
         }
         _loc3_.sortOn("userName",Array.CASEINSENSITIVE);
         this.userController.setPals(_loc3_);
         this.userController.setUserData(this.userVo);
      }
      
      private function gotAuth(param1:Event) : *
      {
      }
   }
}
