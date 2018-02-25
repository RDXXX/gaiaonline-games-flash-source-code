package com.gaiaworld.pets.model
{
   import com.gaiaworld.global.util.BSearch;
   import com.gaiaworld.pets.constants.PetConstants;
   import com.gaiaworld.pets.interfaces.IPet;
   import com.gaiaworld.pets.vo.PetItemVo;
   import com.gaiaworld.pets.vo.PetVo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class PetModel extends EventDispatcher
   {
      
      private static var instance:PetModel;
       
      
      private var _myPet:IPet;
      
      private var _followUser:Boolean = true;
      
      public var petArray:Vector.<IPet>;
      
      public var speed:Number = 8;
      
      public var paused:Boolean = false;
      
      private var _selectedPet:PetVo;
      
      private var _pathArray:Array;
      
      public var hasSoulOfFluff:Boolean = true;
      
      public var soulID:Number = -1;
      
      public var myPetName:String;
      
      public var pendingName:String;
      
      public var activeID:Number = 0;
      
      private var _petGrantID:Number;
      
      public var petItems:Array;
      
      public var foodIndex:Number = 1;
      
      private var _foodArray:Array;
      
      private var _petItemToBuy:PetItemVo;
      
      public var petMessage:String;
      
      public var grantPetFlag:Boolean = false;
      
      public var hasPet:Boolean = false;
      
      public var selectedPetClip:IPet;
      
      private var _numberOfPets:Number = 0;
      
      private var _justEquipped:PetVo;
      
      public var newPet:Number;
      
      public var raceStartHealth:Number = 0;
      
      public var oldHeath:Number;
      
      public var oldEnergy:Number;
      
      public var oldHappy:Number;
      
      public var checkID:Number;
      
      public function PetModel()
      {
         this.petArray = new Vector.<IPet>();
         this._pathArray = new Array();
         this.petItems = new Array();
         super();
      }
      
      public static function getInstance() : PetModel
      {
         if(instance == null)
         {
            instance = new PetModel();
         }
         return instance;
      }
      
      public function get followUser() : Boolean
      {
         return this._followUser;
      }
      
      public function set followUser(param1:Boolean) : void
      {
         this._followUser = param1;
         this.dispatchEvent(new Event(PetConstants.CAN_FOLLOW_USER_CHANGED,true));
      }
      
      public function get pathArray() : Array
      {
         return this._pathArray;
      }
      
      public function set pathArray(param1:Array) : void
      {
         this._pathArray = param1;
         this.followUser = false;
         this.dispatchEvent(new Event(PetConstants.FOLLOW_PATH,true));
      }
      
      public function get selectedPet() : PetVo
      {
         return this._selectedPet;
      }
      
      public function set selectedPet(param1:PetVo) : void
      {
         this._selectedPet = param1;
         this.dispatchEvent(new Event(PetConstants.PET_SELECTED,true));
      }
      
      public function get petGrantID() : Number
      {
         return this._petGrantID;
      }
      
      public function set petGrantID(param1:Number) : void
      {
         this._petGrantID = param1;
         this.dispatchEvent(new Event(PetConstants.GRANT_PET,true));
      }
      
      public function get myPet() : IPet
      {
         return this._myPet;
      }
      
      public function set myPet(param1:IPet) : void
      {
         this._myPet = param1;
         if(this._myPet != null)
         {
            this.activeID = this.myPet.dataProvider.itemSerial;
         }
         this.dispatchEvent(new Event(PetConstants.MY_PET_SET,true));
      }
      
      public function get petItemToBuy() : PetItemVo
      {
         return this._petItemToBuy;
      }
      
      public function set petItemToBuy(param1:PetItemVo) : void
      {
         this._petItemToBuy = param1;
         this.dispatchEvent(new Event(PetConstants.PET_ITEM_TO_BUY_SELECTED,true));
      }
      
      public function get foodArray() : Array
      {
         return this._foodArray;
      }
      
      public function set foodArray(param1:Array) : void
      {
         this._foodArray = param1;
         this.dispatchEvent(new Event(PetConstants.FOOD_ITEMS_SET,true));
      }
      
      public function get justEquipped() : PetVo
      {
         return this._justEquipped;
      }
      
      public function set justEquipped(param1:PetVo) : void
      {
         this._justEquipped = param1;
         this.dispatchEvent(new Event(PetConstants.JUST_EQUIPPED,true));
      }
      
      public function get numberOfPets() : Number
      {
         return this._numberOfPets;
      }
      
      public function set numberOfPets(param1:Number) : void
      {
         this._numberOfPets = param1;
         this.dispatchEvent(new Event(PetConstants.NUMBER_OF_PETS_SET,true));
      }
      
      public function regPet(param1:IPet) : *
      {
         var _loc2_:Number = NaN;
         if(param1.dataProvider)
         {
            _loc2_ = this.getPetIndex(param1.dataProvider.itemSerial);
            if(_loc2_ == -1)
            {
               this.petArray.push(param1);
            }
            else
            {
               this.petArray[_loc2_] = param1;
            }
         }
      }
      
      public function getPet(param1:Number) : IPet
      {
         var _loc2_:Number = this.petArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.petArray[_loc3_].dataProvider != null)
            {
               if(this.petArray[_loc3_].dataProvider.itemSerial == param1)
               {
                  return this.petArray[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function getPet2(param1:Number) : *
      {
         var _loc4_:IPet = null;
         var _loc5_:Number = NaN;
         var _loc2_:Array = new Array();
         var _loc3_:Array = BSearch.vectToArray(this.petArray);
         _loc3_.sortOn("petID",Array.NUMERIC);
         for each(_loc4_ in _loc3_)
         {
            _loc2_.push(_loc4_.petID);
         }
         _loc5_ = BSearch.search(_loc2_,param1,0);
         if(_loc5_ == -1)
         {
            return null;
         }
         return this.petArray[_loc5_];
      }
      
      public function getPetByUserID(param1:Number) : IPet
      {
         var _loc2_:Number = this.petArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.petArray[_loc3_].dataProvider != null)
            {
               if(this.petArray[_loc3_].dataProvider.userID == param1)
               {
                  return this.petArray[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function deRegPetByUserID(param1:Number) : *
      {
         var _loc2_:Number = this.petArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.petArray[_loc3_].dataProvider != null)
            {
               if(this.petArray[_loc3_].dataProvider.userID == param1)
               {
                  this.petArray.splice(_loc3_,1);
               }
            }
            _loc3_++;
         }
      }
      
      public function getPetIndex(param1:Number) : Number
      {
         var _loc2_:Number = this.petArray.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.petArray[_loc3_].dataProvider != null)
            {
               if(this.petArray[_loc3_].dataProvider.itemSerial == param1)
               {
                  return _loc3_;
               }
            }
            _loc3_++;
         }
         return -1;
      }
      
      public function setAction(param1:Number, param2:String) : void
      {
         var _loc3_:IPet = this.getPet(param1);
         if(_loc3_ != null)
         {
            _loc3_.setAction(param2);
         }
      }
      
      public function setPos(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:IPet = this.getPet(param1);
         if(_loc4_ != null)
         {
            _loc4_.clip.x = param2;
            _loc4_.clip.y = param3;
         }
      }
      
      public function clearPets() : void
      {
         this.petArray = new Vector.<IPet>();
      }
      
      public function callUpdate() : void
      {
         this.dispatchEvent(new Event(PetConstants.REFRESH_PET,true));
      }
      
      public function showBlazeModal() : *
      {
         this.dispatchEvent(new Event(PetConstants.SHOW_BLAZE_MODAL,true));
      }
      
      public function grantPep() : void
      {
         this.dispatchEvent(new Event(PetConstants.GRANT_PEP,true));
      }
      
      public function nameMyPet(param1:String) : void
      {
         this.pendingName = param1;
         this.dispatchEvent(new Event(PetConstants.NAME_MY_PET,true));
      }
      
      public function confirmName() : *
      {
         this.myPetName = this.pendingName;
         this.myPet.dataProvider.name = this.pendingName;
         this.dispatchEvent(new Event(PetConstants.NAME_MY_PET_CONFIRMED,true));
      }
      
      public function hitByBomb() : void
      {
         this.dispatchEvent(new Event(PetConstants.HIT_BY_BOMB,true));
      }
      
      public function startrace() : void
      {
         this.raceStartHealth = this.myPet.dataProvider.health;
         this.dispatchEvent(new Event(PetConstants.START_RACE,true));
      }
      
      public function endRace() : void
      {
         this.dispatchEvent(new Event(PetConstants.END_RACE,true));
      }
      
      public function updateInfo(param1:Number, param2:Number, param3:Number, param4:Boolean, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean) : void
      {
         if(this.myPet == null)
         {
            return;
         }
      }
      
      public function getHousePets() : *
      {
         this.dispatchEvent(new Event(PetConstants.GET_HOUSE_PETS,true));
      }
      
      public function equipSelectedPet() : void
      {
         this.dispatchEvent(new Event(PetConstants.EQUIP_SELECTED_PET,true));
      }
      
      public function setPetItems(param1:Array) : *
      {
         this.petItems = param1;
         this.dispatchEvent(new Event(PetConstants.PET_ITEMS_TO_SELL_SET,true));
      }
      
      public function updatePetStat(param1:PetVo) : *
      {
         if(this.myPet != null)
         {
            this.myPet.dataProvider = param1;
            this.dispatchEvent(new Event(PetConstants.PET_INFO_UPDATED,true));
         }
         else
         {
            this.justEquipped = param1;
         }
      }
      
      public function setJustEquipped(param1:PetVo) : *
      {
         this.justEquipped = param1;
         this.dispatchEvent(new Event(PetConstants.JUST_EQUIPPED,true));
      }
      
      public function deactivateMyPet() : void
      {
         this.dispatchEvent(new Event(PetConstants.DEACTIVATE_MY_PET,true));
      }
      
      public function setMessage(param1:String) : void
      {
         this.petMessage = param1;
         this.dispatchEvent(new Event(PetConstants.MESSAGE_SET,true));
      }
      
      public function putToBed() : void
      {
         this.dispatchEvent(new Event(PetConstants.PUT_TO_BED,true));
      }
      
      public function putToBedDone() : void
      {
         this.dispatchEvent(new Event(PetConstants.PUT_TO_BED_DONE,true));
      }
      
      public function setWalking() : void
      {
         this.dispatchEvent(new Event(PetConstants.WALK_THE_PET,true));
      }
      
      public function washMyPet() : void
      {
         this.dispatchEvent(new Event(PetConstants.WASH_MY_PET,true));
      }
      
      public function petIsWashed() : void
      {
         this.dispatchEvent(new Event(PetConstants.PET_IS_WASHED,true));
      }
      
      public function swapPets() : void
      {
         this.dispatchEvent(new Event(PetConstants.SWAP_PETS,true));
      }
      
      public function removeMyPet() : void
      {
         this.dispatchEvent(new Event(PetConstants.REMOVE_MY_PET,true));
      }
      
      public function myPetRemoved() : void
      {
         this.dispatchEvent(new Event(PetConstants.MY_PET_REMOVED,true));
      }
      
      public function closeDialog() : void
      {
         this.dispatchEvent(new Event(PetConstants.CLOSE_DIALOG,true));
      }
      
      public function closePetBox() : void
      {
         this.dispatchEvent(new Event(PetConstants.CLOSE_PET_BOX,true));
      }
      
      public function stopPetWalk() : void
      {
         this.dispatchEvent(new Event(PetConstants.STOP_WALK_THE_PET,true));
      }
      
      public function getAllMyPets() : void
      {
         this.dispatchEvent(new Event(PetConstants.GET_ALL_MY_PETS,true));
      }
      
      public function deactivateDone() : void
      {
         this.dispatchEvent(new Event(PetConstants.DEACTIVATE_DONE,true));
      }
      
      public function activatePet(param1:Number) : void
      {
         this.newPet = param1;
         this.dispatchEvent(new Event(PetConstants.ACTIVATE_NEW_PET,true));
      }
      
      public function checkPetForID(param1:Number) : void
      {
         this.checkID = param1;
         this.dispatchEvent(new Event(PetConstants.CHECK_FOR_PET_BY_ID,true));
      }
      
      public function showBreedModal() : void
      {
         this.dispatchEvent(new Event(PetConstants.SHOW_BREEDING_MODAL,true));
      }
      
      public function hideBlazeModal() : void
      {
         this.dispatchEvent(new Event(PetConstants.HIDE_BLAZE_MODAL,true));
      }
      
      public function hideBreedingModal() : void
      {
         this.dispatchEvent(new Event(PetConstants.HIDE_BREEDING_MODAL,true));
      }
      
      public function hideMenuItems() : void
      {
         this.dispatchEvent(new Event(PetConstants.HIDE_PET_MENU_ITEMS,true));
      }
   }
}
