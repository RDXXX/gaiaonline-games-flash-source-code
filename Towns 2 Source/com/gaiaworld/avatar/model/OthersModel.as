package com.gaiaworld.avatar.model
{
   import com.gaiaworld.avatar.constants.AvatarConstants;
   import com.gaiaworld.avatar.controller.events.AvatarMoveEvent;
   import com.gaiaworld.avatar.controller.events.OtherEvent;
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.global.util.BSearch;
   import com.gaiaworld.sushi.constants.ChatConstants;
   import com.gaiaworld.sushi.controller.events.ChatEvent;
   import com.gaiaworld.user.vo.UserVo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.getTimer;
   
   public class OthersModel extends EventDispatcher
   {
      
      private static var instance:OthersModel;
       
      
      private var _ignoreID:Number;
      
      private var _unIgnoreID:Number;
      
      private var othersArray:Array;
      
      public var justJoined:Array;
      
      public var badAv:IAvatar;
      
      private var _selectedAvatar:IAvatar;
      
      public var badID:Number;
      
      public var smiteNumber:Number;
      
      public var emoteTimeArray:Array;
      
      private var sendTimeArray:Array;
      
      private var muteArray:Array;
      
      public function OthersModel()
      {
         this.othersArray = new Array();
         this.justJoined = new Array();
         this.emoteTimeArray = new Array();
         this.sendTimeArray = new Array();
         this.muteArray = new Array();
         super();
      }
      
      public static function getInstance() : OthersModel
      {
         if(instance == null)
         {
            instance = new OthersModel();
         }
         return instance;
      }
      
      public function allAvatars() : Array
      {
         return this.othersArray;
      }
      
      public function getNumberOfUsersHere() : Number
      {
         var _loc4_:IAvatar = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = this.othersArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.othersArray[_loc3_];
            if(_loc4_.clip != null)
            {
               _loc1_++;
            }
            _loc3_++;
         }
         return _loc1_;
      }
      
      public function registerOtherAv(param1:IAvatar) : *
      {
         if(this.isThereAlready(param1.dataProvider) == false)
         {
            this.othersArray.push(param1);
         }
      }
      
      public function getAvatar(param1:UserVo) : IAvatar
      {
         var _loc4_:IAvatar = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:Number = this.othersArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.othersArray[_loc3_];
            if(_loc4_ != null)
            {
               if(_loc4_.dataProvider.gaia_id == param1.gaia_id)
               {
                  return _loc4_;
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function getOthersUserVo(param1:Number) : UserVo
      {
         var _loc4_:IAvatar = null;
         var _loc2_:Number = this.othersArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.othersArray[_loc3_];
            if(_loc4_ != null)
            {
               if(_loc4_.dataProvider.gaia_id == param1)
               {
                  return _loc4_.dataProvider;
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function getAvatarByID(param1:Number) : IAvatar
      {
         var _loc4_:IAvatar = null;
         var _loc2_:Number = this.othersArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.othersArray[_loc3_];
            if(_loc4_ != null)
            {
               if(_loc4_.dataProvider.gaia_id == param1)
               {
                  return _loc4_;
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function getAvatarByID2(param1:Number) : IAvatar
      {
         var _loc3_:IAvatar = null;
         var _loc4_:Number = NaN;
         var _loc2_:Array = new Array();
         this.othersArray.sortOn("userID",Array.NUMERIC);
         for each(_loc3_ in this.othersArray)
         {
            _loc2_.push(_loc3_.dataProvider.gaia_id);
         }
         _loc4_ = BSearch.search(_loc2_,param1,0);
         if(_loc4_ == -1)
         {
            return null;
         }
         return this.othersArray[_loc4_];
      }
      
      public function setBadAv(param1:Number) : *
      {
         this.badID = param1;
         this.badAv = this.getAvatarByID(param1);
      }
      
      public function smite(param1:Number) : *
      {
         this.smiteNumber = param1;
         this.dispatchEvent(new Event(ChatConstants.SMITE,true));
      }
      
      public function takeAvatarOffList(param1:UserVo) : *
      {
         var _loc4_:IAvatar = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:Number = this.othersArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.othersArray[_loc3_];
            if(_loc4_ != null)
            {
               if(_loc4_.dataProvider.gaia_id == param1.gaia_id)
               {
                  this.othersArray.splice(_loc3_,1);
                  return;
               }
            }
            _loc3_++;
         }
      }
      
      public function removeAv(param1:UserVo) : *
      {
         this.dispatchEvent(new ChatEvent(ChatEvent.USER_HAS_LEFT_ROOM,param1,"",true));
      }
      
      public function userGone(param1:UserVo) : *
      {
         var _loc5_:IAvatar = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:Number = -1;
         var _loc3_:Number = this.othersArray.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.othersArray[_loc4_];
            if(_loc5_ != null)
            {
               if(_loc5_.dataProvider.gaia_id == param1.gaia_id)
               {
                  _loc5_.resetAvatar();
                  _loc5_.destroy();
                  _loc2_ = _loc4_;
               }
            }
            _loc4_++;
         }
         if(_loc2_ != -1)
         {
            this.othersArray.splice(_loc2_,1);
         }
      }
      
      public function isThereAlready(param1:UserVo) : Boolean
      {
         var _loc4_:IAvatar = null;
         var _loc2_:Number = this.othersArray.length;
         if(param1 == null)
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.othersArray[_loc3_];
            if(_loc4_ != null)
            {
               if(_loc4_.dataProvider != null)
               {
                  if(_loc4_.dataProvider.gaia_id == param1.gaia_id)
                  {
                     return true;
                  }
               }
            }
            _loc3_++;
         }
         return false;
      }
      
      public function broadcastUpdate(param1:String, param2:Number) : *
      {
         var _loc3_:Array = param1.split(":");
         var _loc4_:String = _loc3_.shift();
         var _loc5_:String = _loc3_.join(":");
         this.dispatchEvent(new OtherEvent(OtherEvent.OTHER_ACTION,param2,_loc4_,_loc5_,false));
      }
      
      public function showAvatarMenu() : void
      {
         this.dispatchEvent(new Event(AvatarConstants.SHOW_AVATAR_MENU,true));
      }
      
      public function hideAvatarMenu() : void
      {
         this.dispatchEvent(new Event(AvatarConstants.HIDE_AVATAR_MENU,true));
      }
      
      public function get ignoreID() : Number
      {
         return this._ignoreID;
      }
      
      public function set ignoreID(param1:Number) : void
      {
         this._ignoreID = param1;
         this.dispatchEvent(new Event(ChatConstants.IGNORE,true));
      }
      
      public function get unIgnoreID() : Number
      {
         return this._unIgnoreID;
      }
      
      public function set unIgnoreID(param1:Number) : void
      {
         this._unIgnoreID = param1;
         this.dispatchEvent(new Event(ChatConstants.UNIGNORE,true));
      }
      
      public function get selectedAvatar() : IAvatar
      {
         return this._selectedAvatar;
      }
      
      public function set selectedAvatar(param1:IAvatar) : void
      {
         this._selectedAvatar = param1;
         this.dispatchEvent(new Event(AvatarConstants.AVATAR_SELECTED,true));
      }
      
      public function getNumberOfOthers() : Number
      {
         return this.othersArray.length;
      }
      
      public function getOtherAt(param1:Number) : IAvatar
      {
         return this.othersArray[param1];
      }
      
      public function addJustJoined(param1:UserVo) : void
      {
         this.justJoined.push(param1);
      }
      
      public function onUpdateAvatarStatus(param1:IAvatar) : *
      {
         this.dispatchEvent(new AvatarMoveEvent(AvatarMoveEvent.STATUS_CHANGED,param1,true));
      }
      
      public function hideAvatars() : void
      {
         var _loc3_:IAvatar = null;
         var _loc1_:Number = this.othersArray.length;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = this.othersArray[_loc2_];
            _loc3_.clip.visible = false;
            _loc2_++;
         }
      }
      
      public function showAvatars() : void
      {
         var _loc3_:IAvatar = null;
         var _loc1_:Number = this.othersArray.length;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = this.othersArray[_loc2_];
            _loc3_.clip.visible = true;
            _loc2_++;
         }
      }
      
      public function updateUserColor(param1:uint, param2:Object) : void
      {
      }
      
      public function getLastSend(param1:Number) : Number
      {
         var _loc2_:Number = 0;
         if(this.sendTimeArray[param1])
         {
            _loc2_ = this.sendTimeArray[param1];
         }
         return _loc2_;
      }
      
      public function getLastEmote(param1:Number) : Number
      {
         var _loc2_:Number = 0;
         if(this.emoteTimeArray[param1])
         {
            _loc2_ = this.emoteTimeArray[param1];
         }
         return _loc2_;
      }
      
      public function regEmoteTime(param1:Number) : void
      {
         this.emoteTimeArray[param1] = getTimer();
      }
      
      public function regSendTime(param1:Number) : void
      {
         this.sendTimeArray[param1] = getTimer();
      }
      
      public function muteUser(param1:Number) : void
      {
         this.muteArray[param1] = 1;
      }
      
      public function isUserMute(param1:Number) : Boolean
      {
         if(this.muteArray[param1] == 1)
         {
            return true;
         }
         return false;
      }
   }
}
