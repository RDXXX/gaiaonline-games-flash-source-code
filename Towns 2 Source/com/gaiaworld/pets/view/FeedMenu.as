package com.gaiaworld.pets.view
{
   import com.gaiaworld.pets.constants.PetConstants;
   import com.gaiaworld.pets.controller.PetController;
   import com.gaiaworld.pets.events.PetFoodEvent;
   import com.gaiaworld.pets.model.PetModel;
   import com.gaiaworld.pets.pservices.PetItemsService;
   import com.gaiaworld.pets.vo.PetFoodVo;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class FeedMenu extends Sprite
   {
       
      
      public var btnClose:SimpleButton;
      
      private var petItemService:PetItemsService;
      
      private var petModel:PetModel;
      
      private var petController:PetController;
      
      private var foodClip:Sprite;
      
      private var mode:String = "";
      
      public function FeedMenu()
      {
         this.petItemService = new PetItemsService();
         this.petModel = PetModel.getInstance();
         this.petController = new PetController();
         this.foodClip = new Sprite();
         super();
         this.addChild(this.foodClip);
         this.petModel.addEventListener(PetConstants.FOOD_ITEMS_SET,this.foodItemsSet);
         this.addEventListener(PetFoodEvent.FEED_PET,this.useItem);
         this.btnClose.addEventListener(MouseEvent.CLICK,this.closeMe);
      }
      
      private function closeMe(param1:Event) : void
      {
         this.visible = false;
      }
      
      private function useItem(param1:PetFoodEvent) : void
      {
         this.petItemService.addEventListener(PetItemsService.PET_ITEM_USED,this.usedItem);
         this.petItemService.usePetItem(param1.petFoodVo.itemID);
         this.visible = false;
         this.clearItems();
      }
      
      private function usedItem(param1:Event) : void
      {
         if(this.mode == "feed")
         {
            this.petController.doAction(this.petModel.myPet.petID,"eat:1");
         }
         else
         {
            this.petController.doAction(this.petModel.myPet.petID,"wash");
         }
      }
      
      private function clearItems() : *
      {
         while(this.foodClip.numChildren > 0)
         {
            this.foodClip.removeChildAt(0);
         }
      }
      
      private function foodItemsSet(param1:Event) : void
      {
         var _loc6_:PetFoodVo = null;
         var _loc7_:PetFoodItem = null;
         this.clearItems();
         var _loc2_:Number = -63;
         var _loc3_:Number = -39;
         var _loc4_:Number = this.petModel.foodArray.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = this.petModel.foodArray[_loc5_];
            _loc7_ = new PetFoodItem();
            _loc7_.dataProvider = this.petModel.foodArray[_loc5_];
            _loc7_.x = _loc2_;
            _loc7_.y = _loc3_;
            this.foodClip.addChild(_loc7_);
            _loc2_ = _loc2_ + 40;
            if(_loc2_ > 36)
            {
               _loc2_ = -63;
               _loc3_ = _loc3_ + 30;
            }
            _loc5_++;
         }
      }
      
      public function getItems() : *
      {
         this.mode = "feed";
         this.petItemService.getMyPetItems("food");
      }
      
      public function getWashItems() : *
      {
         this.mode = "wash";
         this.petItemService.getMyPetItems("health");
      }
   }
}
