package com.gaiaworld.pets.pservices
{
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.global.util.DebugTool;
   import com.gaiaworld.passport.events.GMCompleteEvent;
   import com.gaiaworld.passport.services.GMapi;
   import com.gaiaworld.pets.constants.PPConstants;
   import com.gaiaworld.pets.constants.PetConstants;
   import com.gaiaworld.pets.controller.PetController;
   import com.gaiaworld.pets.model.PetModel;
   import com.gaiaworld.pets.util.PetVoUtil;
   import com.gaiaworld.pets.vo.PetItemVo;
   import com.gaiaworld.pets.vo.PetVo;
   import com.gaiaworld.user.model.UserModel;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class PetService2 extends EventDispatcher
   {
       
      
      public var allPets:Array;
      
      private var petModel:PetModel;
      
      private var globalModel:GlobalModel;
      
      private var userModel:UserModel;
      
      private var petController:PetController;
      
      private var avatarModel:AvatarModel;
      
      public var newActivePet:PetVo;
      
      public var powerUpItems:Array;
      
      private var api:GMapi;
      
      public function PetService2()
      {
         this.allPets = new Array();
         this.petModel = PetModel.getInstance();
         this.globalModel = GlobalModel.getInstance();
         this.userModel = UserModel.getInstance();
         this.petController = new PetController();
         this.avatarModel = AvatarModel.getInstance();
         super();
         this.api = new GMapi(this.globalModel.gsiSubdomain);
         this.petModel.addEventListener(PetConstants.ACTIVATE_NEW_PET,this.activatePet);
      }
      
      private function activatePet(param1:Event) : void
      {
         var _loc2_:Object = {
            "serial":this.petModel.newPet,
            "active_or_not":1
         };
         this.api.addEventListener(GMCompleteEvent.COMPLETED,this.petMadeActive);
         this.api.invoke(PPConstants.SET_PET_ACTIVE,_loc2_);
      }
      
      private function petMadeActive(param1:GMCompleteEvent) : void
      {
         DebugTool.pr(param1.obj);
         this.api.removeEventListener(GMCompleteEvent.COMPLETED,this.petMadeActive);
         var _loc2_:Boolean = param1.obj.data.success;
         if(_loc2_ == true)
         {
            this.petController.checkForPetForID(this.userModel.userID);
         }
      }
      
      public function deactivatePet() : *
      {
         var _loc1_:Object = null;
         if(this.petModel.myPet)
         {
            _loc1_ = {
               "serial":this.petModel.myPet.petID,
               "active_or_not":0
            };
            this.api.addEventListener(GMCompleteEvent.COMPLETED,this.petDeactivated);
            this.api.invoke(PPConstants.SET_PET_ACTIVE,_loc1_);
         }
      }
      
      private function petDeactivated(param1:GMCompleteEvent) : void
      {
         this.api.removeEventListener(GMCompleteEvent.COMPLETED,this.petDeactivated);
         this.petController.petDeactivateDone();
         this.petController.deRegPetByUserID(this.userModel.userID);
      }
      
      private function namePet(param1:Event) : void
      {
      }
      
      public function buyPet(param1:Number) : *
      {
         var _loc2_:Object = {
            "user_id":this.userModel.userID,
            "item_id":param1
         };
      }
      
      private function purchaseComplete(param1:GMCompleteEvent) : *
      {
         var _loc2_:Number = Number(param1.obj.new_pet);
         this.getAPet(_loc2_);
      }
      
      public function getActivePets(param1:Number, param2:IAvatar) : *
      {
         var _loc3_:Object = {"user_id":this.userModel.userID};
         this.api.addEventListener(GMCompleteEvent.COMPLETED,this.gotActivePets);
         this.api.invoke(PPConstants.GET_ALL_PETS,_loc3_);
      }
      
      private function gotActivePets(param1:GMCompleteEvent) : void
      {
      }
      
      public function getAllMyPets() : *
      {
         var _loc1_:Object = {"user_id":this.userModel.userID};
         this.api.addEventListener(GMCompleteEvent.COMPLETED,this.gotAllMyPets);
         this.api.invoke(PPConstants.GET_ALL_PETS,_loc1_);
      }
      
      private function gotAllMyPets(param1:GMCompleteEvent) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:Object = null;
         var _loc5_:PetVo = null;
         this.allPets = [];
         var _loc2_:Object = param1.obj.data.list_of_pet_ids;
         for(_loc3_ in _loc2_)
         {
            _loc4_ = param1.obj.data.list_of_pet_ids[_loc3_];
            _loc5_ = PetVoUtil.makePetVo(_loc4_,this.avatarModel.avatar);
            this.allPets.push(_loc5_);
         }
         this.dispatchEvent(new Event(PetConstants.GOT_ALL_PETS,true));
      }
      
      public function getAPet(param1:Number) : *
      {
         var _loc2_:Object = {"serial":param1};
         this.api.addEventListener(GMCompleteEvent.COMPLETED,this.gotAPet);
         this.api.invoke(PPConstants.READ_PETS,_loc2_);
      }
      
      private function gotAPet(param1:GMCompleteEvent) : void
      {
         this.api.removeEventListener(GMCompleteEvent.COMPLETED,this.gotAPet);
         DebugTool.pr(param1.obj);
         this.newActivePet = PetVoUtil.makePetVo(param1.obj.data.pet_data,this.avatarModel.avatar);
         this.dispatchEvent(new Event(PetConstants.GOT_A_PET,true));
      }
      
      public function getPowerUps() : void
      {
         var _loc1_:Object = {
            "type":"breed",
            "user_id":this.userModel.userID
         };
         this.api.addEventListener(GMCompleteEvent.COMPLETED,this.gotPowerUps);
         this.api.invoke(PPConstants.GET_MY_CONSUMABLES,_loc1_);
      }
      
      private function gotPowerUps(param1:GMCompleteEvent) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:PetItemVo = null;
         this.api.removeEventListener(GMCompleteEvent.COMPLETED,this.gotPowerUps);
         this.powerUpItems = [];
         var _loc2_:Object = param1.obj.data.owned_consumables;
         for(_loc3_ in _loc2_)
         {
            _loc4_ = _loc2_[_loc3_];
            _loc5_ = _loc4_.name;
            _loc6_ = _loc4_.desc;
            _loc7_ = _loc4_.thumb;
            _loc8_ = Number(_loc4_.gold);
            _loc9_ = Number(_loc4_.gcash);
            _loc10_ = _loc4_.qty;
            _loc11_ = new PetItemVo(_loc3_,_loc7_,_loc5_,0,"","",_loc6_,"","breed","");
            _loc11_.q = _loc10_;
            this.powerUpItems.push(_loc11_);
         }
         this.dispatchEvent(new Event(PetConstants.GOT_POWER_UPS,true));
      }
   }
}
