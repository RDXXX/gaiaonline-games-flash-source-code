package com.gaiaworld.towns.hood.model
{
   import com.gaiaworld.towns.hood.constants.HoodConstants;
   import com.gaiaworld.towns.hood.vo.HomeVo;
   import com.gaiaworld.towns.hood.vo.InviteVo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class HoodModel extends EventDispatcher
   {
      
      private static var instance:HoodModel;
       
      
      private var _currentHoodId:Number = 0;
      
      private var _currentCommunity:Number = 0;
      
      public var myHood:Number = 0;
      
      public var homeVo:HomeVo;
      
      public var myCommunity:int = -1;
      
      private var _plotArray:Vector.<HomeVo>;
      
      public var friendsHomeArray:Array;
      
      public var housingMap:String;
      
      public var mapArray:Array;
      
      public var selectedCommunity:Number = 0;
      
      private var _myHome:HomeVo;
      
      public var movePlot:Number;
      
      public var town:String;
      
      private var _houseOpt:HomeVo;
      
      private var _justArrived:Boolean = false;
      
      private var _sentRequestArray:Array;
      
      public var inviteArray:Array;
      
      public var nameArray:Array;
      
      public var hoodNameArray:Array;
      
      public var exitHouseFlag:Boolean = false;
      
      public var exitPlot:Number = 0;
      
      public var hasLandLord:Boolean = true;
      
      public var justCreated:Boolean = false;
      
      public var transportFlag:Boolean = false;
      
      public var nextX:Number = 0;
      
      public var nextY:Number = 0;
      
      public var prevX:Number = 0;
      
      public var prevY:Number = 0;
      
      public var nextHood:Number;
      
      public var prevHood:Number;
      
      public var pendingHood:Number;
      
      public var wanderFlag:Boolean = false;
      
      public var pendingX:Number;
      
      public var pendingY:Number;
      
      public var selectedHouse:HomeVo;
      
      private var _liftFloor:Number = 1;
      
      public function HoodModel()
      {
         this.friendsHomeArray = new Array();
         this.mapArray = new Array();
         super();
         this.mapArray = ["","housing_gambino","housing_durem","housing_barton","housing_akea"];
         this.nameArray = ["","Gambino","Durem","Barton","Aekea"];
         this.hoodNameArray = ["","Gambino Outer Islands","Durem Depot","Barton Heights","Aekea Estates"];
      }
      
      public static function getInstance() : HoodModel
      {
         if(instance == null)
         {
            instance = new HoodModel();
         }
         return instance;
      }
      
      public function getMyHomeLoc() : *
      {
         this.dispatchEvent(new Event(HoodConstants.GET_MY_HOME_LOC,true));
      }
      
      public function getMyFriendsHomes() : *
      {
         this.dispatchEvent(new Event(HoodConstants.GET_FRIENDS_HOME_LOC,true));
      }
      
      public function setMyHome() : *
      {
         this.dispatchEvent(new Event(HoodConstants.SET_MY_HOOD_LOC,true));
      }
      
      public function getHood() : void
      {
         this.dispatchEvent(new Event(HoodConstants.GET_HOOD,true));
      }
      
      public function get plotArray() : Vector.<HomeVo>
      {
         return this._plotArray;
      }
      
      public function set plotArray(param1:Vector.<HomeVo>) : void
      {
         this._plotArray = param1;
         this.dispatchEvent(new Event(HoodConstants.PLOTS_SET,true));
      }
      
      public function get houseOpt() : HomeVo
      {
         return this._houseOpt;
      }
      
      public function set houseOpt(param1:HomeVo) : void
      {
         this._houseOpt = param1;
         this.dispatchEvent(new Event(HoodConstants.GOT_OPT,true));
      }
      
      public function get sentRequestArray() : Array
      {
         return this._sentRequestArray;
      }
      
      public function set sentRequestArray(param1:Array) : void
      {
         this._sentRequestArray = param1;
         this.dispatchEvent(new Event(HoodConstants.SENT_REQUESTS_SET,true));
      }
      
      public function get myHome() : HomeVo
      {
         return this._myHome;
      }
      
      public function set myHome(param1:HomeVo) : void
      {
         this._myHome = param1;
         this.dispatchEvent(new Event(HoodConstants.MY_HOME_DATA_READY,false));
      }
      
      public function get liftFloor() : Number
      {
         return this._liftFloor;
      }
      
      public function set liftFloor(param1:Number) : void
      {
         this._liftFloor = param1;
         this.dispatchEvent(new Event(HoodConstants.ELEVATOR_GOTO_FLOOR,true));
      }
      
      public function get justArrived() : Boolean
      {
         return this._justArrived;
      }
      
      public function set justArrived(param1:Boolean) : void
      {
         this._justArrived = param1;
         this.dispatchEvent(new Event(HoodConstants.JUST_ARRIVED_CHANGED,true));
      }
      
      public function get currentHoodId() : Number
      {
         return this._currentHoodId;
      }
      
      public function set currentHoodId(param1:Number) : void
      {
         this._currentHoodId = param1;
         this.dispatchEvent(new Event(HoodConstants.HOOD_CHANGED,true));
      }
      
      public function get currentCommunity() : Number
      {
         return this._currentCommunity;
      }
      
      public function set currentCommunity(param1:Number) : void
      {
         this._currentCommunity = param1;
         this.dispatchEvent(new Event(HoodConstants.COMMUNITY_CHANGED,true));
      }
      
      public function setFriendData(param1:Array) : *
      {
         var _loc2_:Number = param1.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.friendsHomeArray.push(param1[_loc3_]);
            _loc3_++;
         }
         this.dispatchEvent(new Event(HoodConstants.MY_FRIENDS_HOME_DATA_SET,false));
      }
      
      public function clearFriends() : *
      {
         this.friendsHomeArray = [];
      }
      
      public function addHomeVo(param1:HomeVo) : *
      {
         this.friendsHomeArray.push(param1);
      }
      
      public function getFriendsInCommunity(param1:Number) : Array
      {
         var _loc5_:HomeVo = null;
         var _loc2_:Array = new Array();
         var _loc3_:Number = this.friendsHomeArray.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.friendsHomeArray[_loc4_];
            if(_loc5_.community == param1)
            {
               _loc2_.push(_loc5_);
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function getHomeVo(param1:Number) : HomeVo
      {
         var _loc4_:HomeVo = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc2_:Number = this.friendsHomeArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.friendsHomeArray[_loc3_];
            if(_loc4_ != null)
            {
               if(_loc4_.user_id == param1)
               {
                  return _loc4_;
               }
            }
            _loc3_++;
         }
         if(this.plotArray != null)
         {
            _loc5_ = this.plotArray.length;
            _loc6_ = 0;
            while(_loc6_ < _loc5_)
            {
               if(this._plotArray[_loc6_] != null)
               {
                  if(this.plotArray[_loc6_].user_id == param1)
                  {
                     return this.plotArray[_loc6_];
                  }
               }
               _loc6_++;
            }
         }
         return null;
      }
      
      public function moveMyHouse(param1:Number) : void
      {
         this.movePlot = param1;
         this.dispatchEvent(new Event(HoodConstants.MOVE_PLOTS,true));
      }
      
      public function optionsUpdated() : void
      {
         this.dispatchEvent(new Event(HoodConstants.OPTIONS_ARE_UPDATED,true));
      }
      
      public function requestPlot() : void
      {
         this.dispatchEvent(new Event(HoodConstants.REQUEST_PLOT,true));
      }
      
      public function confirmMovePlot() : *
      {
         this.dispatchEvent(new Event(HoodConstants.CONFIRM_MOVE_PLOTS,true));
      }
      
      public function setInvites(param1:Array) : *
      {
         this.inviteArray = param1;
      }
      
      public function getInvites() : *
      {
         this.dispatchEvent(new Event(HoodConstants.GET_MY_INVITES,true));
      }
      
      public function hasPermission() : Boolean
      {
         var _loc3_:InviteVo = null;
         var _loc1_:Number = this.inviteArray.length;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = this.inviteArray[_loc2_];
            if(_loc3_.community == this.currentCommunity && _loc3_.hood)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function getHouseOf(param1:Number) : HomeVo
      {
         var _loc2_:Number = this._plotArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this._plotArray[_loc3_].user_id == param1)
            {
               return this.homeVo;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function moveIntoHood() : void
      {
         this.dispatchEvent(new Event(HoodConstants.MOVE_INTO_HOOD,true));
      }
      
      public function inMyHood() : Boolean
      {
         if(this.myHome == null)
         {
            return false;
         }
         if(this.myHome.community == 0 || this.myHome.hood == 0)
         {
            return false;
         }
         if(this.currentCommunity == 0 || this.currentHoodId == 0)
         {
            return false;
         }
         if(this.myHome.community == this.currentCommunity && this.myHome.hood == this.currentHoodId)
         {
            return true;
         }
         return false;
      }
      
      public function showSigns() : void
      {
         this.dispatchEvent(new Event(HoodConstants.SHOW_SIGNS,true));
      }
      
      public function hideSigns() : void
      {
         this.dispatchEvent(new Event(HoodConstants.HIDE_SIGNS,true));
      }
      
      public function leaveHood() : void
      {
         this.dispatchEvent(new Event(HoodConstants.LEAVE_HOOD,true));
      }
      
      public function showLiftMenu() : void
      {
         this.dispatchEvent(new Event(HoodConstants.SHOW_ELEVATOR_MENU,true));
      }
      
      public function cancelLift() : void
      {
         this.dispatchEvent(new Event(HoodConstants.ELEVATOR_CANCEL,true));
      }
      
      public function moveIntoHoodSuccess() : void
      {
         this.dispatchEvent(new Event(HoodConstants.MOVE_INTO_HOOD_SUCCESS,true));
      }
      
      public function floorReached() : void
      {
         this.dispatchEvent(new Event(HoodConstants.ELEVATOR_FLOOR_REACHED,true));
      }
      
      public function callLift() : void
      {
         this.dispatchEvent(new Event(HoodConstants.CALL_LIFT,true));
      }
   }
}
