package com.gaiaworld.towns.smartphone
{
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.global.constants.MessageConstants;
   import com.gaiaworld.global.constants.SmartPhoneConstants;
   import com.gaiaworld.global.controller.MessageController;
   import com.gaiaworld.towns.constants.LLGsiConstants;
   import com.gaiaworld.towns.constants.PhoneConstants;
   import com.gaiaworld.towns.hood.model.HoodModel;
   import com.gaiaworld.towns.hood.util.DirectToHouse;
   import com.gaiaworld.towns.services.LLService;
   import com.gaiaworld.user.model.UserModel;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class StartScreen extends Sprite
   {
       
      
      public var btnBookmark:SimpleButton;
      
      public var btnChallenges:SimpleButton;
      
      public var btnFav:SimpleButton;
      
      public var btnGoHome:SimpleButton;
      
      public var btnHousing:SimpleButton;
      
      public var btnLandLord:SimpleButton;
      
      public var btnPals:SimpleButton;
      
      public var btnScreen2:SimpleButton;
      
      public var btnSettings:SimpleButton;
      
      public var btnWorld:SimpleButton;
      
      public var cf:ChallengeFlag;
      
      public var recCount:MovieClip;
      
      private var hoodModel:HoodModel;
      
      private var llService:LLService;
      
      private var userModel:UserModel;
      
      private var messageController:MessageController;
      
      public function StartScreen()
      {
         this.hoodModel = HoodModel.getInstance();
         this.userModel = UserModel.getInstance();
         this.messageController = new MessageController();
         super();
         this.btnFav.addEventListener(MouseEvent.MOUSE_DOWN,this.getFav);
         this.btnPals.addEventListener(MouseEvent.MOUSE_DOWN,this.getPals);
         this.btnBookmark.addEventListener(MouseEvent.MOUSE_DOWN,this.getBookmarks);
         this.btnSettings.addEventListener(MouseEvent.MOUSE_DOWN,this.getSettings);
         this.btnChallenges.addEventListener(MouseEvent.MOUSE_DOWN,this.showChallenges);
         this.btnGoHome.addEventListener(MouseEvent.MOUSE_DOWN,this.goHome);
         this.btnLandLord.addEventListener(MouseEvent.MOUSE_DOWN,this.showLandLordOptions);
         this.btnScreen2.visible = false;
         this.btnWorld.addEventListener(MouseEvent.CLICK,this.showWorldMap);
      }
      
      private function showWorldMap(param1:MouseEvent) : void
      {
         this.dispatchEvent(new Event(SmartPhoneConstants.SHOW_WORLD_MAP,true));
      }
      
      private function showAppScreen2(param1:MouseEvent) : void
      {
         this.dispatchEvent(new Event(PhoneConstants.SHOW_APPS2,true));
      }
      
      private function goHome(param1:MouseEvent) : void
      {
         var _loc2_:DirectToHouse = new DirectToHouse();
         _loc2_.gotDirectlyToHouse(this.userModel.userID);
         this.dispatchEvent(new Event(GlobalConstants.HIDE_PHONE,true));
      }
      
      public function init() : *
      {
         ChallengeFlag(this.cf).init();
         if(this.hoodModel.myHome == null)
         {
            this.btnLandLord.alpha = 0.5;
         }
         else if(this.hoodModel.myHome.is_landlord == false)
         {
            this.btnLandLord.alpha = 0.5;
         }
         else
         {
            this.btnLandLord.alpha = 1;
         }
         if(this.hoodModel.myHome == null || this.hoodModel.inMyHood() == false)
         {
            this.btnHousing.alpha = 0.5;
            this.btnHousing.addEventListener(MouseEvent.MOUSE_DOWN,this.explainHousingsOptions);
            this.btnHousing.removeEventListener(MouseEvent.MOUSE_DOWN,this.showHousingOptions);
         }
         else
         {
            this.btnHousing.alpha = 1;
            this.btnHousing.removeEventListener(MouseEvent.MOUSE_DOWN,this.explainHousingsOptions);
            this.btnHousing.addEventListener(MouseEvent.MOUSE_DOWN,this.showHousingOptions);
         }
         this.llService = new LLService();
         this.refeshReqReceivedData();
      }
      
      private function explainHousingsOptions(param1:MouseEvent) : void
      {
         this.messageController.setMessage(MessageConstants.ONLY_IN_HOUSING,true,18);
      }
      
      private function refeshReqReceivedData() : *
      {
         this.llService.addEventListener(LLGsiConstants.GOT_ALL_INVITES_REC_BY_HOOD,this.gotReqData);
         this.llService.getHoodInvitesRec();
      }
      
      private function gotReqData(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         this.llService.removeEventListener(LLGsiConstants.GOT_ALL_INVITES_REC_BY_HOOD,this.gotReqData);
         this.recCount.visible = false;
         if(this.llService.recArray != null)
         {
            _loc2_ = this.llService.recArray.length;
            if(_loc2_ > 0)
            {
               this.recCount.countText.text = String(_loc2_);
               this.recCount.visible = true;
               this.recCount.ninePlus.visible = false;
               if(_loc2_ > 8)
               {
                  this.recCount.countText.visible = false;
                  this.recCount.ninePlus.visible = true;
               }
            }
         }
      }
      
      private function showLandLordOptions(param1:MouseEvent) : void
      {
         if(this.hoodModel.myHome.is_landlord == true)
         {
            this.dispatchEvent(new Event(SmartPhoneConstants.LANDLORD,true));
         }
      }
      
      private function showChallenges(param1:MouseEvent) : void
      {
         this.dispatchEvent(new Event(SmartPhoneConstants.CHALLENGES,true));
      }
      
      private function getBookmarks(param1:MouseEvent) : void
      {
         this.dispatchEvent(new Event(SmartPhoneConstants.BOOKMARKS,true));
      }
      
      private function getSettings(param1:MouseEvent) : void
      {
         this.dispatchEvent(new Event(SmartPhoneConstants.SETTINGS,true));
      }
      
      private function getEvents(param1:MouseEvent) : void
      {
         this.dispatchEvent(new Event(SmartPhoneConstants.G_EVENTS,true));
      }
      
      private function getPals(param1:MouseEvent) : void
      {
         this.dispatchEvent(new Event(SmartPhoneConstants.FRIENDS,true));
      }
      
      private function getFav(param1:MouseEvent) : void
      {
         this.dispatchEvent(new Event(SmartPhoneConstants.FAVORITES,true));
      }
      
      private function showHousingOptions(param1:MouseEvent) : *
      {
         this.dispatchEvent(new Event(SmartPhoneConstants.HOUSING_OPTIONS,true));
      }
   }
}
