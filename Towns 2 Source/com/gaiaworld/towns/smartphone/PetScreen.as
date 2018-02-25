package com.gaiaworld.towns.smartphone
{
   import com.gaiaworld.pets.cats.Cat;
   import com.gaiaworld.pets.constants.PetConstants;
   import com.gaiaworld.pets.model.PetModel;
   import com.gaiaworld.pets.pservices.PetService2;
   import com.gaiaworld.pets.view.FeedMenu;
   import com.gaiaworld.pets.view.PetToolTip;
   import com.gaiaworld.pets.vo.PetVo;
   import com.gaiaworld.sushi.constants.ChatConstants;
   import com.gaiaworld.sushi.controller.ChatController;
   import com.gaiaworld.towns.constants.PhoneConstants;
   import com.gaiaworld.user.model.UserModel;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class PetScreen extends Sprite
   {
       
      
      public var btnEnergy:SimpleButton;
      
      public var btnFeed:SimpleButton;
      
      public var btnHappy:SimpleButton;
      
      public var btnHealth:SimpleButton;
      
      public var btnHome:SimpleButton;
      
      public var btnWash:SimpleButton;
      
      public var energyBar:MovieClip;
      
      public var feedMenu:FeedMenu;
      
      public var happyBar:MovieClip;
      
      public var healthBar:MovieClip;
      
      public var nameBox:MovieClip;
      
      public var tt:PetToolTip;
      
      private var _dataProvider:PetVo;
      
      private var petHolder:Sprite;
      
      private var petService:PetService2;
      
      private var chatController:ChatController;
      
      private var petModel:PetModel;
      
      private var userModel:UserModel;
      
      private var menuStatus:String = "";
      
      public function PetScreen()
      {
         this.petHolder = new Sprite();
         this.chatController = new ChatController();
         this.petModel = PetModel.getInstance();
         this.userModel = UserModel.getInstance();
         super();
         this.addChildAt(this.petHolder,0);
         this.petHolder.x = 43;
         this.petHolder.y = 117;
         this.btnHealth.addEventListener(MouseEvent.MOUSE_OVER,this.showHealthTip);
         this.btnHealth.addEventListener(MouseEvent.MOUSE_OUT,this.hideTT);
         this.btnEnergy.addEventListener(MouseEvent.MOUSE_OVER,this.showEnergyTip);
         this.btnEnergy.addEventListener(MouseEvent.MOUSE_OUT,this.hideTT);
         this.btnHappy.addEventListener(MouseEvent.MOUSE_OVER,this.showHappyTip);
         this.btnHappy.addEventListener(MouseEvent.MOUSE_OUT,this.hideTT);
         this.nameBox.addEventListener(MouseEvent.MOUSE_OVER,this.showNameTip);
         this.nameBox.addEventListener(MouseEvent.MOUSE_OUT,this.hideTT);
         this.feedMenu.visible = false;
         this.btnFeed.addEventListener(MouseEvent.CLICK,this.toggleFeedMenu);
         this.btnWash.addEventListener(MouseEvent.CLICK,this.toggleWashMenu);
         this.petModel.addEventListener(PetConstants.PET_INFO_UPDATED,this.statsUpdated);
         this.btnHome.addEventListener(MouseEvent.CLICK,this.sendHome);
         this.petService = new PetService2();
      }
      
      private function sendHome(param1:Event) : void
      {
         if(this.petModel.selectedPet.userID != this.userModel.userID)
         {
            this.chatController.noteToSelf("You can only send your own pet home.");
            return;
         }
         this.chatController.sendUserMessage(ChatConstants.TAKE_AWAY_PET,this.userModel.userVo);
         this.dispatchEvent(new Event(PhoneConstants.SHOW_START_SCREEN,true));
         this.petService.deactivatePet();
      }
      
      private function statsUpdated(param1:Event) : void
      {
         this.dataProvider = this.petModel.myPet.dataProvider;
      }
      
      private function toggleFeedMenu(param1:MouseEvent) : void
      {
         if(this.petModel.selectedPet.userID != this.userModel.userID)
         {
            this.chatController.noteToSelf("You can only feed your own pet.");
            return;
         }
         if(this.petModel.myPet == null)
         {
            this.chatController.noteToSelf("You must equip your pet before feeding it.");
            return;
         }
         if(this.menuStatus == "feed")
         {
            this.feedMenu.visible = !this.feedMenu.visible;
         }
         else
         {
            this.feedMenu.visible = true;
         }
         if(this.feedMenu.visible == true)
         {
            this.menuStatus = "feed";
            FeedMenu(this.feedMenu).getItems();
         }
      }
      
      private function toggleWashMenu(param1:MouseEvent) : *
      {
         if(this.petModel.selectedPet.userID != this.userModel.userID)
         {
            this.chatController.noteToSelf("You can only feed your own pet.");
            return;
         }
         if(this.petModel.myPet == null)
         {
            this.chatController.noteToSelf("You must equip your pet before feeding it.");
            return;
         }
         if(this.menuStatus == "wash")
         {
            this.feedMenu.visible = !this.feedMenu.visible;
         }
         else
         {
            this.feedMenu.visible = true;
         }
         if(this.feedMenu.visible == true)
         {
            this.menuStatus = "wash";
            FeedMenu(this.feedMenu).getWashItems();
         }
      }
      
      public function get dataProvider() : PetVo
      {
         return this._dataProvider;
      }
      
      public function set dataProvider(param1:PetVo) : void
      {
         this._dataProvider = param1;
         var _loc2_:Number = this.getPercent(this._dataProvider.health,this._dataProvider.totalHealth);
         var _loc3_:Number = this.getPercent(this._dataProvider.energy,this._dataProvider.totalEnergy);
         var _loc4_:Number = this.getPercent(this._dataProvider.happiness,100);
         var _loc5_:Number = _loc2_ / 100 * 85;
         var _loc6_:Number = _loc3_ / 100 * 85;
         var _loc7_:Number = _loc4_ / 100 * 85;
         this.healthBar.hb.bar.width = _loc5_;
         this.energyBar.eb.bar.width = _loc6_;
         this.happyBar.hb.bar.width = _loc7_;
         this.nameBox.nameText.text = this._dataProvider.name;
         this.placePet();
      }
      
      private function getPercent(param1:Number, param2:Number) : *
      {
         return param1 / param2 * 100;
      }
      
      private function placePet() : *
      {
         while(this.petHolder.numChildren > 0)
         {
            this.petHolder.removeChildAt(0);
         }
         var _loc1_:Cat = new Cat();
         _loc1_.dataProvider = this.dataProvider;
         _loc1_.showName(false);
         _loc1_.setAction("wait");
         this.petHolder.addChild(_loc1_);
         _loc1_.scaleX = _loc1_.scaleX * 2;
         _loc1_.scaleY = _loc1_.scaleY * 2;
      }
      
      private function showNameTip(param1:MouseEvent) : void
      {
         PetToolTip(this.tt).showText("Click to change name");
         this.setChildIndex(this.tt,this.numChildren - 1);
      }
      
      private function hideTT(param1:Event) : *
      {
         this.tt.visible = false;
      }
      
      private function showHealthTip(param1:Event) : *
      {
         PetToolTip(this.tt).showText("Health - Use food to restore your pet\'s health");
         this.setChildIndex(this.tt,this.numChildren - 1);
      }
      
      private function showEnergyTip(param1:Event) : *
      {
         PetToolTip(this.tt).showText("Energy - Use sleep or energy bars to restore your pet\'s energy");
         this.setChildIndex(this.tt,this.numChildren - 1);
      }
      
      private function showHappyTip(param1:Event) : *
      {
         PetToolTip(this.tt).showText("Happiness - Walk your pet or play games to increase your pet\'s happiness");
         this.setChildIndex(this.tt,this.numChildren - 1);
      }
   }
}
