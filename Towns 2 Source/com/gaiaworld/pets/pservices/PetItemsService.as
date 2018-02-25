package com.gaiaworld.pets.pservices
{
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.global.controller.MessageController;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.global.util.DebugTool;
   import com.gaiaworld.passport.events.GMCompleteEvent;
   import com.gaiaworld.passport.services.GMapi;
   import com.gaiaworld.pets.constants.PPConstants;
   import com.gaiaworld.pets.controller.PetController;
   import com.gaiaworld.pets.model.PetModel;
   import com.gaiaworld.pets.util.PetVoUtil;
   import com.gaiaworld.pets.vo.BuyPetVo;
   import com.gaiaworld.pets.vo.PetFoodVo;
   import com.gaiaworld.pets.vo.PetItemVo;
   import com.gaiaworld.pets.vo.PetVo;
   import com.gaiaworld.sushi.constants.ChatConstants;
   import com.gaiaworld.sushi.controller.ChatController;
   import com.gaiaworld.user.model.UserModel;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class PetItemsService extends EventDispatcher
   {
      
      public static const GOT_PET_ITEMS:String = "gotPetItems";
      
      public static const GOT_PETS_FOR_SALE:String = "gotPetsForSale";
      
      public static const ITEM_PURCHASE_COMPLETE:String = "itemPurchaseComplete";
      
      public static const PET_ITEM_USED:String = "petItemUsed";
       
      
      private var api:GMapi;
      
      private var petModel:PetModel;
      
      private var globalModel:GlobalModel;
      
      private var userModel:UserModel;
      
      private var avatarModel:AvatarModel;
      
      private var petController:PetController;
      
      private var messageController:MessageController;
      
      private var chatController:ChatController;
      
      public var petArray:Array;
      
      public var itemArray:Array;
      
      public var searchType:String;
      
      public function PetItemsService()
      {
         this.petModel = PetModel.getInstance();
         this.globalModel = GlobalModel.getInstance();
         this.userModel = UserModel.getInstance();
         this.avatarModel = AvatarModel.getInstance();
         this.petController = new PetController();
         this.messageController = new MessageController();
         this.chatController = new ChatController();
         super();
         this.api = new GMapi(this.globalModel.gsiSubdomain);
      }
      
      public function buyPet(param1:Number) : void
      {
         var _loc2_:Object = {
            "item_id":param1,
            "user_id":this.userModel.userID
         };
         this.api.addEventListener(GMCompleteEvent.COMPLETED,this.boughtPetComplete);
         this.api.invoke(PPConstants.BUY_PET,_loc2_);
      }
      
      private function boughtPetComplete(param1:GMCompleteEvent) : void
      {
         this.api.removeEventListener(GMCompleteEvent.COMPLETED,this.boughtPetComplete);
         DebugTool.pr(param1.obj);
         var _loc2_:Number = param1.obj.data.new_pet;
         if(this.petModel.myPet == null)
         {
            this.petController.activatePet(_loc2_);
            this.chatController.sendUserMessage(ChatConstants.CHECK_FOR_PET,this.userModel.userVo);
         }
         else
         {
            this.messageController.setMessage("Your new pet has been delived to your home");
         }
      }
      
      public function getPetItems(param1:String = "") : *
      {
         this.searchType = param1;
         this.api.addEventListener(GMCompleteEvent.COMPLETED,this.gotPetItems);
         this.api.invoke(PPConstants.GET_CONSUMABLES);
      }
      
      private function gotPetItems(param1:GMCompleteEvent) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Object = null;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:String = null;
         var _loc15_:Number = NaN;
         var _loc16_:int = 0;
         var _loc17_:String = null;
         var _loc18_:String = null;
         var _loc19_:PetItemVo = null;
         this.api.removeEventListener(GMCompleteEvent.COMPLETED,this.gotPetItems);
         this.itemArray = new Array();
         var _loc2_:Object = param1.obj.data.all_consumables;
         var _loc3_:Number = _loc2_.length;
         for(_loc4_ in _loc2_)
         {
            _loc5_ = _loc2_[_loc4_];
            _loc6_ = _loc5_.name;
            _loc7_ = _loc5_.desc;
            _loc8_ = _loc5_.thumb;
            _loc9_ = _loc5_.gold;
            _loc10_ = _loc5_.gcash;
            _loc11_ = JSON.parse(_loc5_.blob);
            _loc12_ = _loc11_.length;
            if(_loc10_ != -1)
            {
               _loc13_ = _loc10_;
               _loc14_ = "gCash";
            }
            else
            {
               _loc13_ = _loc9_;
               _loc14_ = "gold";
            }
            _loc15_ = _loc5_.id;
            _loc16_ = 0;
            while(_loc16_ < _loc12_)
            {
               _loc17_ = _loc11_[_loc16_].trait;
               _loc18_ = "other";
               if(_loc17_ == "hunger" || _loc17_ == "energy")
               {
                  _loc18_ = "food";
               }
               if(_loc18_ == this.searchType || this.searchType == "other" && _loc18_ != "food")
               {
                  _loc19_ = new PetItemVo(_loc4_,_loc8_,_loc6_,_loc13_,_loc14_,"",_loc7_,"",_loc18_,"");
                  this.itemArray.push(_loc19_);
               }
               _loc16_++;
            }
         }
         this.dispatchEvent(new Event(GOT_PET_ITEMS,true));
      }
      
      public function getMyPetItems(param1:String = "") : *
      {
         this.searchType = param1;
         var _loc2_:Object = {"user_id":this.userModel.userID};
         this.api.addEventListener(GMCompleteEvent.COMPLETED,this.gotMyPetItems);
         this.api.invoke(PPConstants.GET_MY_CONSUMABLES,_loc2_);
      }
      
      private function gotMyPetItems(param1:GMCompleteEvent) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:Number = NaN;
         var _loc10_:String = null;
         var _loc11_:Object = null;
         var _loc12_:String = null;
         var _loc13_:String = null;
         var _loc14_:PetFoodVo = null;
         this.api.removeEventListener(GMCompleteEvent.COMPLETED,this.gotMyPetItems);
         var _loc2_:Object = param1.obj.data.owned_consumables;
         var _loc3_:Array = new Array();
         for(_loc4_ in _loc2_)
         {
            _loc5_ = _loc2_[_loc4_];
            _loc6_ = _loc5_.name;
            _loc7_ = _loc5_.desc;
            _loc8_ = _loc5_.thumb;
            _loc9_ = Number(_loc5_.qty);
            _loc10_ = _loc5_.blob;
            if(_loc10_ != null)
            {
               _loc11_ = JSON.parse(_loc5_.blob);
               _loc12_ = _loc11_[0].trait;
               _loc13_ = _loc12_;
               if(_loc12_ == "hunger" || _loc12_ == "energy")
               {
                  _loc13_ = "food";
               }
               if(_loc13_ == this.searchType)
               {
                  _loc14_ = new PetFoodVo(_loc6_,_loc8_,_loc7_,_loc9_,_loc4_);
                  _loc3_.push(_loc14_);
               }
            }
         }
         this.petController.setFoodItems(_loc3_);
      }
      
      public function usePetItem(param1:Number) : *
      {
         var _loc2_:Object = {
            "item_id":param1,
            "user_id":this.userModel.userID,
            "pet_serial":this.petModel.myPet.dataProvider.itemSerial
         };
         this.api.addEventListener(GMCompleteEvent.COMPLETED,this.petItemUsed);
         this.api.invoke(PPConstants.USE_PET_ITEM,_loc2_);
      }
      
      private function petItemUsed(param1:GMCompleteEvent) : void
      {
         this.api.removeEventListener(GMCompleteEvent.COMPLETED,this.petItemUsed);
         DebugTool.pr(param1.obj.data.outcome);
         var _loc2_:PetVo = PetVoUtil.makePetVo(param1.obj.data.outcome,this.avatarModel.avatar);
         this.petController.updateStats(_loc2_);
         this.dispatchEvent(new Event(PET_ITEM_USED,true));
      }
      
      public function buyPetItem(param1:Number, param2:Number) : *
      {
         var _loc3_:Object = {
            "item_id":param1,
            "user_id":this.userModel.userID
         };
         this.api.addEventListener(GMCompleteEvent.COMPLETED,this.boughtPetItem);
         this.api.invoke(PPConstants.BUY_PET_ITEM,_loc3_);
      }
      
      private function boughtPetItem(param1:GMCompleteEvent) : void
      {
         DebugTool.pr(param1.obj);
         var _loc2_:Number = param1.obj.data.new_pet;
         if(_loc2_ != -1)
         {
            this.dispatchEvent(new Event(ITEM_PURCHASE_COMPLETE,true));
         }
      }
      
      public function getPetsForSale() : *
      {
         this.api.addEventListener(GMCompleteEvent.COMPLETED,this.gotPetsForSale);
         this.api.invoke(PPConstants.GET_ALL_PETS_FOR_SALE);
      }
      
      private function gotPetsForSale(param1:GMCompleteEvent) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:String = null;
         var _loc11_:Number = NaN;
         var _loc12_:String = null;
         var _loc13_:BuyPetVo = null;
         this.petArray = new Array();
         this.api.removeEventListener(GMCompleteEvent.COMPLETED,this.gotPetsForSale);
         for(_loc2_ in param1.obj.data.pet_indices)
         {
            _loc3_ = param1.obj.data.pet_indices[_loc2_];
            _loc4_ = _loc3_.name;
            _loc5_ = _loc3_.desc;
            _loc6_ = _loc3_.thumb;
            _loc7_ = _loc3_.species;
            _loc8_ = Number(_loc3_.gold);
            _loc9_ = Number(_loc3_.gcash);
            _loc10_ = _loc3_.breed;
            if(_loc9_ == -1)
            {
               _loc11_ = _loc8_;
               _loc12_ = "gold";
            }
            else
            {
               _loc11_ = _loc9_;
               _loc12_ = "gCash";
            }
            _loc13_ = new BuyPetVo(_loc2_,_loc4_,_loc5_,_loc6_,_loc11_,_loc12_,_loc7_,_loc10_);
            this.petArray.push(_loc13_);
         }
         this.dispatchEvent(new Event(GOT_PETS_FOR_SALE,true));
      }
   }
}
