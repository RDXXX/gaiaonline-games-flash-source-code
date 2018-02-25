package com.gaiaworld.pets.controller
{
   import com.gaiaworld.pets.interfaces.IPet;
   import com.gaiaworld.pets.model.PetModel;
   import com.gaiaworld.pets.vo.PetItemVo;
   import com.gaiaworld.pets.vo.PetVo;
   
   public class PetController
   {
       
      
      private var petModel:PetModel;
      
      public function PetController()
      {
         this.petModel = PetModel.getInstance();
         super();
      }
      
      public function doAction(param1:Number, param2:String) : *
      {
         this.petModel.setAction(param1,param2);
      }
      
      public function setPos(param1:Number, param2:Number, param3:Number) : *
      {
         this.petModel.setPos(param1,param2,param3);
      }
      
      public function setFollow(param1:Boolean) : *
      {
         this.petModel.followUser = param1;
      }
      
      public function regPet(param1:IPet) : void
      {
         this.petModel.regPet(param1);
      }
      
      public function setMyPet(param1:IPet) : void
      {
         this.petModel.myPet = param1;
      }
      
      public function clearPets() : void
      {
         this.petModel.clearPets();
      }
      
      public function followPath(param1:Array) : *
      {
         this.petModel.pathArray = param1;
      }
      
      public function setSpeed(param1:Number) : void
      {
         this.petModel.speed = param1;
      }
      
      public function setPause(param1:Boolean) : void
      {
         this.petModel.paused = param1;
      }
      
      public function updatePet() : void
      {
         this.petModel.callUpdate();
      }
      
      public function selectPet(param1:PetVo) : void
      {
         this.petModel.selectedPet = param1;
      }
      
      public function showBlazeModal() : *
      {
         this.petModel.showBlazeModal();
      }
      
      public function setHasSoul(param1:Boolean) : void
      {
         this.petModel.hasSoulOfFluff = param1;
      }
      
      public function setSoulID(param1:Number) : void
      {
         this.petModel.soulID = param1;
      }
      
      public function grantPet(param1:Number) : *
      {
         this.petModel.petGrantID = param1;
      }
      
      public function grantPep() : void
      {
         this.petModel.grantPep();
      }
      
      public function setMyPetName(param1:String) : void
      {
         this.petModel.nameMyPet(param1);
      }
      
      public function hitByBomb() : void
      {
         this.petModel.hitByBomb();
      }
      
      public function startrace() : void
      {
         this.petModel.startrace();
      }
      
      public function endRace() : void
      {
         this.petModel.endRace();
      }
      
      public function updateInfo(param1:Number, param2:Number, param3:Number, param4:Boolean, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean) : void
      {
         this.petModel.updateInfo(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function getHousePets() : *
      {
         this.petModel.getHousePets();
      }
      
      public function equipSelectedPet() : void
      {
         this.petModel.equipSelectedPet();
      }
      
      public function setActiveID(param1:Number) : void
      {
         this.petModel.activeID = param1;
      }
      
      public function setItems(param1:Array) : void
      {
         this.petModel.setPetItems(param1);
      }
      
      public function selectItemToBuy(param1:PetItemVo) : void
      {
         this.petModel.petItemToBuy = param1;
      }
      
      public function setFoodItems(param1:Array) : void
      {
         this.petModel.foodArray = param1;
      }
      
      public function updateStats(param1:PetVo) : *
      {
         this.petModel.updatePetStat(param1);
      }
      
      public function setFoodIndex(param1:Number) : void
      {
         this.petModel.foodIndex = param1;
      }
      
      public function setGrantFlag(param1:Boolean) : void
      {
         this.petModel.grantPetFlag = param1;
      }
      
      public function deactivateMyPet() : *
      {
         this.petModel.deactivateMyPet();
      }
      
      public function setMessage(param1:String) : void
      {
         this.petModel.setMessage(param1);
      }
      
      public function putToBed() : void
      {
         this.petModel.putToBed();
      }
      
      public function putToBedDone() : void
      {
         this.petModel.putToBedDone();
      }
      
      public function setJustEquipped(param1:PetVo) : void
      {
         this.petModel.justEquipped = param1;
      }
      
      public function setWalking() : void
      {
         this.petModel.setWalking();
      }
      
      public function washMyPet() : void
      {
         this.petModel.washMyPet();
      }
      
      public function petIsWashed() : void
      {
         this.petModel.petIsWashed();
      }
      
      public function swapPets() : void
      {
         this.petModel.swapPets();
      }
      
      public function removeMyPet() : void
      {
         this.petModel.removeMyPet();
      }
      
      public function myPetHasBeenRemoved() : void
      {
         this.petModel.myPetRemoved();
      }
      
      public function closeDialog() : void
      {
         this.petModel.closeDialog();
      }
      
      public function closePetBox() : void
      {
         this.petModel.closePetBox();
      }
      
      public function stopPetWalk() : void
      {
         this.petModel.stopPetWalk();
      }
      
      public function getAllMyPets() : void
      {
         this.petModel.getAllMyPets();
      }
      
      public function hasPet(param1:Boolean) : void
      {
         this.petModel.hasPet = param1;
      }
      
      public function setNumberOfPets(param1:Number) : void
      {
         this.petModel.numberOfPets = param1;
      }
      
      public function selectPetClip(param1:IPet) : void
      {
         this.petModel.selectedPetClip = param1;
      }
      
      public function confirmName() : void
      {
         this.petModel.confirmName();
      }
      
      public function petDeactivateDone() : void
      {
         this.petModel.deactivateDone();
      }
      
      public function deRegPetByUserID(param1:Number) : *
      {
         this.petModel.deRegPetByUserID(param1);
      }
      
      public function activatePet(param1:Number) : void
      {
         this.petModel.activatePet(param1);
      }
      
      public function checkForPetForID(param1:Number) : *
      {
         this.petModel.checkPetForID(param1);
      }
      
      public function showBreedModal() : void
      {
         this.petModel.showBreedModal();
      }
      
      public function hideBlazeModal() : void
      {
         this.petModel.hideBlazeModal();
      }
      
      public function hideBreedModal() : void
      {
         this.petModel.hideBreedingModal();
      }
      
      public function hideMenuItems() : *
      {
         this.petModel.hideMenuItems();
      }
   }
}
