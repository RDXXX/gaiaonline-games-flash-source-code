package com.gaiaworld.towns.hood.services
{
   import com.gaiaonline.gsi.GSICompleteEvent;
   import com.gaiaonline.gsi.GSIGateway;
   import com.gaiaonline.serializers.JSONSerializer;
   import com.gaiaworld.avatar.controller.AvatarController;
   import com.gaiaworld.global.constants.GsiConstants;
   import com.gaiaworld.global.controller.GlobalController;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.house.controller.DebugController;
   import com.gaiaworld.room.controller.RoomController;
   import com.gaiaworld.sushi.controller.ChatController;
   import com.gaiaworld.towns.constants.LLGsiConstants;
   import com.gaiaworld.towns.hood.constants.HoodConstants;
   import com.gaiaworld.towns.hood.controller.HoodController;
   import com.gaiaworld.towns.hood.model.HoodModel;
   import com.gaiaworld.towns.hood.vo.HomeVo;
   import com.gaiaworld.towns.hood.vo.InviteVo;
   import com.gaiaworld.user.model.UserModel;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class HoodService extends EventDispatcher
   {
       
      
      private var gsi:GSIGateway;
      
      private var globalModel:GlobalModel;
      
      private var userModel:UserModel;
      
      private var hoodModel:HoodModel;
      
      private var hoodController:HoodController;
      
      private var mySwitch:String = "";
      
      private var roomController:RoomController;
      
      private var globalController:GlobalController;
      
      private var avatarController:AvatarController;
      
      private var saveFlag:Boolean = false;
      
      private var dc:DebugController;
      
      public function HoodService()
      {
         this.globalModel = GlobalModel.getInstance();
         this.userModel = UserModel.getInstance();
         this.hoodModel = HoodModel.getInstance();
         this.hoodController = new HoodController();
         this.roomController = new RoomController();
         this.globalController = new GlobalController();
         this.avatarController = new AvatarController();
         this.dc = new DebugController();
         super();
         this.gsi = new GSIGateway(this.globalModel.gsiSubdomain);
         this.gsi.serializerClass = JSONSerializer;
         this.hoodModel.addEventListener(HoodConstants.GET_MY_HOME_LOC,this.getMyHome);
         this.hoodModel.addEventListener(HoodConstants.GET_FRIENDS_HOME_LOC,this.getFriendsHomes);
         this.hoodModel.addEventListener(HoodConstants.SET_MY_HOOD_LOC,this.setMyHood);
         this.hoodModel.addEventListener(HoodConstants.GET_HOOD,this.getHood);
         this.hoodModel.addEventListener(HoodConstants.CONFIRM_MOVE_PLOTS,this.moveHouse);
         this.hoodModel.addEventListener(HoodConstants.REQUEST_PLOT,this.requestPlot);
         this.hoodModel.addEventListener(HoodConstants.GET_MY_INVITES,this.getMyInvites);
         this.hoodModel.addEventListener(HoodConstants.MOVE_INTO_HOOD,this.moveIntoHood);
         this.hoodModel.addEventListener(HoodConstants.LEAVE_HOOD,this.leaveHood);
      }
      
      private function moveIntoHood(param1:Event) : void
      {
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.moveComplete);
         this.gsi.invoke(LLGsiConstants.MOVE_INTO_HOOD,this.hoodModel.currentCommunity,this.hoodModel.currentHoodId,this.hoodModel.movePlot,"",1,1,"");
      }
      
      private function moveComplete(param1:GSICompleteEvent) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Boolean = false;
         var _loc12_:String = null;
         var _loc13_:HomeVo = null;
         var _loc2_:ChatController = new ChatController();
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.moveComplete);
         var _loc3_:Number = Number(param1.methods[0].data);
         if(!isNaN(_loc3_))
         {
            switch(_loc3_)
            {
               case 2:
                  break;
               case 3:
                  _loc2_.noteToSelf("You don\'t have permission to live here");
                  this.globalController.loadScreen("dialogs/requestPlot.swf");
                  break;
               case 4:
                  _loc2_.noteToSelf("That plot is occupied");
                  break;
               case 5:
            }
         }
         else
         {
            _loc4_ = param1.methods[0].data;
            _loc5_ = Number(_loc4_.community);
            _loc6_ = Number(_loc4_.plot);
            _loc7_ = Number(_loc4_.style);
            _loc8_ = Number(_loc4_.lock);
            _loc9_ = Number(_loc4_.neighborhood);
            _loc10_ = Number(_loc4_.is_landlord);
            _loc11_ = _loc10_ == 1?true:false;
            _loc12_ = _loc4_.name;
            _loc13_ = new HomeVo(_loc5_,_loc6_,_loc7_,_loc8_,this.userModel.userID,_loc9_,_loc12_,_loc11_);
            this.hoodController.setMyHomeInfo(_loc13_);
            this.hoodController.hidePlotSigns();
            this.globalController.loadScreen("dialogs/chooseStyle.swf");
         }
      }
      
      private function getMyInvites(param1:Event = null) : void
      {
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.gotMyInvites);
         this.gsi.invoke(GsiConstants.GET_MY_INVITES);
      }
      
      private function gotMyInvites(param1:GSICompleteEvent) : *
      {
         var _loc5_:Object = null;
         var _loc6_:InviteVo = null;
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.gotMyInvites);
         var _loc2_:Array = new Array();
         var _loc3_:Number = param1.methods[0].data.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.methods[0].data[_loc4_];
            _loc6_ = new InviteVo(_loc5_.community,_loc5_.neighborhood);
            _loc2_.push(_loc6_);
            _loc4_++;
         }
         this.hoodController.setInvites(_loc2_);
      }
      
      private function getHomeLocations(param1:Array) : *
      {
         if(param1 == null)
         {
            this.switchToHood();
            return;
         }
         if(param1.length == 0)
         {
            this.switchToHood();
            return;
         }
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.gotHomes);
         this.gsi.invoke(GsiConstants.GET_HOOD_LOC,"user",param1);
      }
      
      private function gotHomes(param1:GSICompleteEvent) : void
      {
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:Boolean = false;
         var _loc12_:Object = null;
         var _loc13_:Number = NaN;
         var _loc14_:Array = null;
         var _loc15_:* = undefined;
         var _loc16_:HomeVo = null;
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.gotHomes);
         var _loc2_:Object = param1.methods[0].data;
         if(_loc2_ == null)
         {
         }
         if(_loc2_ is String)
         {
            return;
         }
         var _loc11_:String = "";
         if(_loc2_ == "")
         {
            if(this.mySwitch == "myHome")
            {
               this.hoodController.setMyHood(-1);
               this.hoodController.setMyHomeInfo(null);
            }
            if(this.mySwitch == "friendsHome")
            {
            }
         }
         else
         {
            if(this.mySwitch == "myHome" || this.mySwitch == "myHome2")
            {
               _loc12_ = param1.methods[0].data[this.userModel.userID];
               if(_loc12_ == null)
               {
                  this.hoodController.setMyHood(0);
                  this.hoodController.setMyCommunity(0);
                  this.hoodController.setMyHomeInfo(null);
               }
               else
               {
                  _loc4_ = Number(_loc12_.community);
                  _loc6_ = Number(_loc12_.plot);
                  _loc7_ = Number(_loc12_.style);
                  _loc8_ = Number(_loc12_.locked);
                  _loc5_ = Number(_loc12_.neighborhood);
                  _loc13_ = Number(_loc12_.is_landlord);
                  _loc10_ = _loc13_ == 1?true:false;
                  _loc11_ = _loc12_.name;
                  this.hoodController.setMyHood(_loc5_);
                  this.hoodController.setMyCommunity(_loc4_);
                  this.hoodController.setMyHomeInfo(new HomeVo(_loc4_,_loc6_,_loc7_,_loc8_,this.userModel.userID,_loc5_,_loc11_,_loc10_));
               }
            }
            if(this.mySwitch == "myHome2")
            {
               this.avatarController.hideAvatar();
               this.hoodController.setJustArrived(true);
               this.hoodController.setCurrentCommunity(this.hoodModel.myCommunity);
               this.hoodController.setCurrentHood(this.hoodModel.myHood);
               this.roomController.changeRoom(this.hoodModel.mapArray[this.hoodModel.myCommunity]);
               this.globalController.unloadScreen();
            }
            if(this.mySwitch == "friendsHome")
            {
               this.hoodController.clearFriends();
               _loc14_ = new Array();
               for(_loc15_ in _loc2_)
               {
                  _loc4_ = Number(_loc2_[_loc15_].community);
                  _loc6_ = Number(_loc2_[_loc15_].plot);
                  _loc7_ = Number(_loc2_[_loc15_].style);
                  _loc5_ = Number(_loc2_[_loc15_].neighborhood);
                  _loc8_ = Number(_loc2_[_loc15_].locked);
                  if(isNaN(_loc4_) == false)
                  {
                     if(_loc4_ != 0)
                     {
                        _loc9_ = _loc2_[_loc15_].neighborhood;
                        _loc16_ = new HomeVo(_loc4_,_loc6_,_loc7_,_loc8_,_loc15_,_loc9_);
                        _loc14_.push(_loc16_);
                     }
                  }
               }
               this.hoodController.setMyFriendsHomes(_loc14_);
            }
         }
      }
      
      private function leaveHood(param1:Event) : *
      {
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.hoodLeft);
         this.gsi.invoke(GsiConstants.LEAVE_HOOD);
      }
      
      private function hoodLeft(param1:GSICompleteEvent) : *
      {
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.hoodLeft);
         this.hoodController.setMyHomeInfo(null);
         this.hoodController.setMyHood(-1);
         this.hoodController.setMyCommunity(-1);
      }
      
      private function getFriendsHomes(param1:Event) : *
      {
         this.mySwitch = "friendsHome";
         this.getHomeLocations(this.userModel.getPalIds());
      }
      
      private function getMyHome(param1:Event) : *
      {
         this.mySwitch = "myHome";
         var _loc2_:Array = [this.userModel.userID];
         this.getHomeLocations(_loc2_);
      }
      
      private function setMyHood(param1:Event) : *
      {
         this.setHomeLoc(this.hoodModel.selectedCommunity);
      }
      
      public function setHomeLoc(param1:int, param2:int = 1, param3:int = 1, param4:int = 0) : *
      {
         this.saveFlag = true;
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.homeSet);
         this.gsi.queue(GsiConstants.SAVE_HOOD_LOC,param1,param2,param3,param4);
         this.gsi.send();
      }
      
      private function homeSet(param1:GSICompleteEvent) : void
      {
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.homeSet);
         var _loc2_:String = param1.methods[0].data;
         this.mySwitch = "myHome2";
         var _loc3_:Array = [this.userModel.userID];
         this.getHomeLocations(_loc3_);
      }
      
      private function getHood(param1:Event) : *
      {
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.hoodGot);
         this.dc.dtrace("com=" + String(this.hoodModel.currentCommunity) + " hood=" + String(this.hoodModel.currentHoodId));
         this.gsi.invoke(GsiConstants.GET_HOOD_LOC,"neighborhood",this.hoodModel.currentHoodId,this.hoodModel.currentCommunity);
      }
      
      private function hoodGot(param1:GSICompleteEvent) : *
      {
         var _loc4_:* = undefined;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:HomeVo = null;
         var _loc2_:Vector.<HomeVo> = new Vector.<HomeVo>();
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.hoodGot);
         var _loc3_:Object = param1.methods[0].data;
         for(_loc4_ in _loc3_)
         {
            _loc5_ = _loc3_[_loc4_].user_id;
            _loc6_ = Number(_loc3_[_loc4_].community);
            _loc7_ = Number(param1.methods[0].data[_loc4_].plot);
            _loc8_ = Number(param1.methods[0].data[_loc4_].style);
            _loc9_ = Number(param1.methods[0].data[_loc4_].lock);
            _loc10_ = new HomeVo(_loc6_,_loc7_,_loc8_,_loc9_,_loc5_,this.hoodModel.currentHoodId);
            _loc2_.push(_loc10_);
         }
         this.hoodController.setPlotData(_loc2_);
         this.getMyInvites();
      }
      
      private function moveHouse(param1:Event) : *
      {
         var _loc2_:Number = this.hoodModel.movePlot;
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.houseMoved);
         this.gsi.invoke(GsiConstants.SAVE_USER_HOOD_OPTIONS,this.hoodModel.currentCommunity,this.hoodModel.currentHoodId,_loc2_,this.hoodModel.myHome.home_style,this.hoodModel.myHome.lock,this.hoodModel.myHome.houseName);
      }
      
      private function houseMoved(param1:GSICompleteEvent) : void
      {
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.houseMoved);
      }
      
      private function requestPlot(param1:Event) : *
      {
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.plotRequested);
         this.gsi.invoke(LLGsiConstants.SEND_REQUEST_TO_JOIN,this.hoodModel.currentCommunity,this.hoodModel.currentHoodId);
      }
      
      private function plotRequested(param1:GSICompleteEvent) : *
      {
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.plotRequested);
      }
      
      private function switchToHood() : *
      {
         if(this.saveFlag == true)
         {
            this.saveFlag = false;
            this.avatarController.hideAvatar();
            this.hoodController.setJustArrived(true);
            this.hoodController.setCurrentCommunity(this.hoodModel.myCommunity);
            this.hoodController.setCurrentHood(this.hoodModel.myHood);
            this.roomController.changeRoom(this.hoodModel.mapArray[this.hoodModel.myCommunity]);
            this.globalController.unloadScreen();
         }
      }
   }
}
