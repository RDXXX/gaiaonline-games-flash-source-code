package com.gaiaworld.user.model
{
   import com.gaiaworld.user.constants.UserConstants;
   import com.gaiaworld.user.vo.PalTrackVo;
   import com.gaiaworld.user.vo.PalVo;
   import com.gaiaworld.user.vo.UserVo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class UserModel extends EventDispatcher
   {
      
      private static var instance:UserModel;
       
      
      public var userVo:UserVo;
      
      public var otherVo:UserVo;
      
      public var sid:String;
      
      public var userID:Number = -1;
      
      public var hood:Number = -1;
      
      public var doorX:Number = 0;
      
      public var doorY:Number = 0;
      
      public var doorR:Number = 0;
      
      public var palArray:Array;
      
      private var _onlinePals:Vector.<PalTrackVo>;
      
      public var otherID:Number;
      
      private var _address:String;
      
      private var _gold:Number = 0;
      
      private var ignoreArray:Array;
      
      public var nonPals:Array;
      
      private var _isScaz:Boolean = false;
      
      public var pSetting:Number = 0;
      
      public var isHellBanned:Boolean = false;
      
      public var stealth:Boolean = false;
      
      public var palsOnly:Boolean = false;
      
      private var _gCash:Number = 0;
      
      public function UserModel()
      {
         this.userVo = new UserVo();
         this.otherVo = new UserVo();
         this.ignoreArray = new Array();
         this.nonPals = new Array();
         super();
      }
      
      public static function getInstance() : UserModel
      {
         if(instance == null)
         {
            instance = new UserModel();
         }
         return instance;
      }
      
      public function describeUserVo() : *
      {
      }
      
      public function setDataSilent(param1:UserVo) : *
      {
         this.userVo = param1;
      }
      
      public function setData(param1:UserVo) : *
      {
         this.userVo = param1;
         this.userID = param1.gaia_id;
         this.dispatchEvent(new Event(UserConstants.USER_DATA_SET,true));
      }
      
      public function setOtherData(param1:UserVo) : *
      {
         this.otherVo = param1;
         this.otherID = param1.gaia_id;
         this.dispatchEvent(new Event(UserConstants.OTHER_USER_DATA_SET,true));
      }
      
      public function ignore(param1:String) : void
      {
         this.ignoreArray.push(param1);
      }
      
      public function checkIfIgnored(param1:Number) : Boolean
      {
         var _loc2_:Number = this.ignoreArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(param1 == this.ignoreArray[_loc3_])
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public function get gold() : Number
      {
         return this._gold;
      }
      
      public function set gold(param1:Number) : void
      {
         this._gold = param1;
         this.dispatchEvent(new Event(UserConstants.USER_GOLD_SET,true));
      }
      
      public function addGold(param1:Number) : *
      {
         this._gold = this._gold + param1;
         this.gold = this._gold;
      }
      
      public function subGold(param1:Number) : *
      {
         this._gold = this._gold - param1;
         this.gold = this._gold;
      }
      
      public function get address() : String
      {
         return this._address;
      }
      
      public function set address(param1:String) : void
      {
         this._address = param1;
         this.dispatchEvent(new Event(UserConstants.ADDRESS_SET,true));
      }
      
      public function get onlinePals() : Vector.<PalTrackVo>
      {
         return this._onlinePals;
      }
      
      public function set onlinePals(param1:Vector.<PalTrackVo>) : void
      {
         this._onlinePals = param1;
         this.updateFriends();
         this.dispatchEvent(new Event(UserConstants.ONLINE_PALS_UPDATED));
      }
      
      public function get isScaz() : Boolean
      {
         return this._isScaz;
      }
      
      public function set isScaz(param1:Boolean) : void
      {
         this._isScaz = param1;
         this.dispatchEvent(new Event(UserConstants.SCAS_UPDATED,true));
      }
      
      public function get gCash() : Number
      {
         return this._gCash;
      }
      
      public function set gCash(param1:Number) : void
      {
         this._gCash = param1;
         this.dispatchEvent(new Event(UserConstants.USER_CASH_SET,true));
      }
      
      public function isPalOnline(param1:Number) : Boolean
      {
         var _loc2_:Number = this.onlinePals.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.onlinePals[_loc3_].id == param1)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public function updateFriends() : *
      {
         if(this.palArray == null)
         {
            return;
         }
         var _loc1_:Number = this.palArray.length;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            if(this.palArray[_loc2_] != null)
            {
               this.palArray[_loc2_].isOnline = this.isPalOnline(this.palArray[_loc2_].id);
            }
            _loc2_++;
         }
      }
      
      public function getTracker(param1:Number) : PalTrackVo
      {
         var _loc2_:Number = this.onlinePals.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.onlinePals[_loc3_].id == param1)
            {
               return this.onlinePals[_loc3_];
            }
            _loc3_++;
         }
         return null;
      }
      
      public function isPal(param1:Number) : Boolean
      {
         var _loc4_:PalVo = null;
         if(!this.palArray)
         {
            return false;
         }
         var _loc2_:Number = this.palArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.palArray[_loc3_];
            if(_loc4_.id == param1)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public function getPalIds() : Array
      {
         var _loc4_:PalVo = null;
         if(this.palArray == null)
         {
            return [];
         }
         var _loc1_:Array = new Array();
         var _loc2_:Number = this.palArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.palArray[_loc3_];
            _loc1_.push(_loc4_.id);
            _loc3_++;
         }
         return _loc1_;
      }
      
      public function getPalByID(param1:Number) : PalVo
      {
         var _loc4_:PalVo = null;
         if(this.palArray == null)
         {
            return null;
         }
         var _loc2_:Number = this.palArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.palArray[_loc3_];
            if(_loc4_.id == param1)
            {
               return _loc4_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function setPathFinding(param1:Boolean) : void
      {
         if(this.userVo != null)
         {
            this.userVo.pathFinding = param1;
         }
      }
      
      public function park(param1:Number) : void
      {
         this.userVo.carSlot = param1;
      }
      
      public function setSpeed(param1:Number) : *
      {
         if(param1 > 15)
         {
            param1 = 15;
         }
         this.userVo.speed = param1;
      }
      
      public function addNonPal(param1:PalVo) : *
      {
         this.nonPals.push(param1);
      }
      
      public function isOnNonPalList(param1:Number) : Boolean
      {
         var _loc4_:PalVo = null;
         var _loc2_:Number = this.nonPals.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.nonPals[_loc3_];
            if(_loc4_.id == param1)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public function getNonPalByID(param1:Number) : PalVo
      {
         var _loc4_:PalVo = null;
         var _loc2_:Number = this.nonPals.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.nonPals[_loc3_];
            if(_loc4_.id == param1)
            {
               return _loc4_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function setVisible(param1:Boolean) : void
      {
         this.userVo.visible = param1;
         this.stealth = !param1;
         this.dispatchEvent(new Event(UserConstants.USER_DATA_SET,true));
      }
   }
}
