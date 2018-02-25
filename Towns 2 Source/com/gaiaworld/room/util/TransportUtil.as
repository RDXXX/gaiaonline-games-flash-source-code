package com.gaiaworld.room.util
{
   import com.gaiaworld.avatar.controller.AvatarController;
   import com.gaiaworld.global.controller.GlobalController;
   import com.gaiaworld.global.util.StringFunctions;
   import com.gaiaworld.gobjects.model.ObjectModel;
   import com.gaiaworld.house.controller.HousingController;
   import com.gaiaworld.house.model.HousingModel;
   import com.gaiaworld.room.controller.GpsController;
   import com.gaiaworld.room.controller.RoomController;
   import com.gaiaworld.room.model.GpsModel;
   import com.gaiaworld.room.vo.PosVo;
   import com.gaiaworld.sushi.constants.ChatConstants;
   import com.gaiaworld.sushi.model.ChatModel;
   import com.gaiaworld.towns.hood.controller.HoodController;
   import com.gaiaworld.towns.hood.model.HoodModel;
   import com.gaiaworld.towns.hood.services.NonPalHood;
   import com.gaiaworld.towns.hood.util.DirectToHood;
   import com.gaiaworld.towns.hood.util.DirectToHouse;
   import com.gaiaworld.towns.hood.vo.HomeVo;
   import com.gaiaworld.user.model.UserModel;
   import flash.events.Event;
   
   public class TransportUtil
   {
       
      
      public var bookmarkFlag:Boolean = false;
      
      private var gpsModel:GpsModel;
      
      private var roomController:RoomController;
      
      private var globalController:GlobalController;
      
      private var avatarController:AvatarController;
      
      private var hoodController:HoodController;
      
      private var hoodModel:HoodModel;
      
      private var gpsController:GpsController;
      
      private var housingModel:HousingModel;
      
      private var nonPalHood:NonPalHood;
      
      private var objectModel:ObjectModel;
      
      private var reconnectFlag:Boolean = false;
      
      private var chatModel:ChatModel;
      
      private var userModel:UserModel;
      
      private var housingController:HousingController;
      
      public function TransportUtil()
      {
         this.gpsModel = GpsModel.getInstance();
         this.roomController = new RoomController();
         this.globalController = new GlobalController();
         this.avatarController = new AvatarController();
         this.hoodController = new HoodController();
         this.hoodModel = HoodModel.getInstance();
         this.gpsController = new GpsController();
         this.housingModel = HousingModel.getInstance();
         this.nonPalHood = new NonPalHood();
         this.objectModel = ObjectModel.getInstance();
         this.chatModel = ChatModel.getInstance();
         this.userModel = UserModel.getInstance();
         this.housingController = new HousingController();
         super();
      }
      
      public function getAutoDest() : *
      {
         var _loc1_:String = null;
         var _loc3_:Array = null;
         var _loc4_:Number = NaN;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:Array = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Array = null;
         var _loc11_:Number = NaN;
         var _loc12_:DirectToHouse = null;
         var _loc13_:DirectToHood = null;
         if(this.reconnectFlag == false)
         {
            this.reconnect();
            return;
         }
         _loc1_ = this.gpsModel.trackVo.room_name;
         var _loc2_:String = "gambino";
         if(_loc1_.substr(0,5) == "house")
         {
            _loc2_ = "house";
         }
         if(StringFunctions.startsWith("houseArea",_loc1_))
         {
            _loc2_ = "housing";
         }
         if(this.gpsModel.trackVo != null)
         {
            _loc3_ = this.gpsModel.trackVo.room_name.split("_");
            _loc4_ = Number(_loc3_[0]);
            _loc5_ = this.gpsModel.getRoomName(_loc4_);
            if(_loc5_ != null)
            {
               _loc6_ = _loc5_.split("_");
               if(_loc6_ != null)
               {
                  if(_loc6_[0] == "vh")
                  {
                     _loc2_ = "hollywood";
                  }
               }
            }
            else
            {
               _loc5_ = _loc1_;
            }
         }
         if(StringFunctions.startsWith("RallyMap",_loc5_))
         {
            _loc2_ = "hollywood";
         }
         if(_loc2_ != "house")
         {
            this.housingController.isInHouse(false);
         }
         else
         {
            this.housingController.isInHouse(true);
         }
         switch(_loc2_)
         {
            case "housing":
               _loc7_ = _loc1_.split("_");
               _loc8_ = Number(_loc7_[2]);
               _loc9_ = Number(_loc7_[1]);
               if(this.hoodModel.currentCommunity != _loc8_ || this.hoodModel.currentHoodId != _loc9_)
               {
                  this.hoodController.setCurrentCommunity(_loc8_);
                  this.hoodController.setCurrentHood(_loc9_);
                  if(this.bookmarkFlag == false)
                  {
                     this.avatarController.setAtStartAfterJump(true);
                  }
                  _loc13_ = new DirectToHood();
                  _loc13_.gotoHood(_loc8_,_loc9_);
               }
               break;
            case "house":
               _loc10_ = _loc1_.split("_");
               _loc11_ = Number(_loc10_[1]);
               _loc12_ = new DirectToHouse();
               _loc12_.gotDirectlyToHouse(_loc11_);
               break;
            default:
               if(_loc5_ == "hell")
               {
                  _loc5_ = "hellMap";
               }
               this.avatarController.setAtStartAfterJump(true);
               this.roomController.setMapToLoad(_loc5_);
               this.objectModel.dataExchange.joinPlace(this.gpsModel.trackVo);
         }
      }
      
      private function findWayTo(param1:HomeVo) : *
      {
         var _loc2_:Number = NaN;
         var _loc3_:PosVo = null;
         if(this.hoodModel.currentCommunity != param1.community && this.hoodModel.currentHoodId != param1.hood)
         {
            this.hoodController.setCurrentCommunity(param1.community);
            this.hoodController.setCurrentHood(param1.hood);
            this.hoodController.setJustArrived(true);
            this.roomController.changeRoom(this.hoodModel.mapArray[param1.community]);
         }
         else
         {
            _loc2_ = param1.plot;
            _loc3_ = this.housingModel.exitLocations[_loc2_];
            this.gpsController.setFavCord(_loc3_.avX,_loc3_.avY);
            this.gpsController.setFavFlag(true);
         }
      }
      
      private function nonPalHoodGot(param1:Event) : void
      {
         this.findWayTo(this.nonPalHood.homeVo);
      }
      
      private function reconnect() : *
      {
         this.chatModel.addEventListener(ChatConstants.CONNECTED,this.connected);
         this.objectModel.dataExchange.connectOverrideFlag = true;
         this.objectModel.dataExchange.connect(this.gpsModel.trackVo.ip,this.gpsModel.trackVo.port);
      }
      
      private function connected(param1:Event) : void
      {
         this.chatModel.removeEventListener(ChatConstants.CONNECTED,this.connected);
         this.reconnectFlag = true;
         this.getAutoDest();
      }
   }
}
