package com.gaiaworld.towns.smartphone.landLord
{
   import com.gaiaworld.sushi.controller.ChatController;
   import com.gaiaworld.towns.constants.LLGsiConstants;
   import com.gaiaworld.towns.constants.PhoneConstants;
   import com.gaiaworld.towns.hood.constants.HoodConstants;
   import com.gaiaworld.towns.hood.model.HoodModel;
   import com.gaiaworld.towns.services.LLService;
   import com.gaiaworld.towns.smartphone.PhoneItemButton;
   import com.gaiaworld.user.events.PalEvent;
   import com.gaiaworld.user.model.UserModel;
   import com.gaiaworld.user.vo.PalVo;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class LandLordScreen extends Sprite
   {
       
      
      public var btnBack:SimpleButton;
      
      public var btnEvict:PhoneItemButton;
      
      public var btnInvite:PhoneItemButton;
      
      public var btnRecRequest:PhoneItemButton;
      
      public var btnSentRequests:PhoneItemButton;
      
      public var evictScreen:EvictScreen;
      
      public var landLordInviteScreen:LandLordInviteScreen;
      
      public var llTitle:MovieClip;
      
      public var recScreen:RequestScreen;
      
      public var srScreen:SentRequestScreen;
      
      private var userModel:UserModel;
      
      private var llService:LLService;
      
      private var hoodModel:HoodModel;
      
      private var currentAction:String = "";
      
      private var currentUser:PalVo;
      
      private var confirmBox:ConfirmBox;
      
      private var inviteConfirm:InviteConfirm;
      
      private var evictConfirm:EvictConfirm;
      
      private var chatController:ChatController;
      
      public function LandLordScreen()
      {
         this.userModel = UserModel.getInstance();
         this.llService = new LLService();
         this.hoodModel = HoodModel.getInstance();
         this.chatController = new ChatController();
         super();
         PhoneItemButton(this.btnInvite).text = "Invite a friend";
         PhoneItemButton(this.btnSentRequests).text = "Show Requests Sent";
         PhoneItemButton(this.btnRecRequest).text = "Show Requests Received";
         PhoneItemButton(this.btnEvict).text = "Evict Neighbors";
         PhoneItemButton(this.btnInvite).addEventListener(MouseEvent.MOUSE_DOWN,this.showInviteScreen);
         PhoneItemButton(this.btnSentRequests).addEventListener(MouseEvent.MOUSE_DOWN,this.showSentRequest);
         PhoneItemButton(this.btnRecRequest).addEventListener(MouseEvent.MOUSE_DOWN,this.showReceived);
         PhoneItemButton(this.btnEvict).addEventListener(MouseEvent.MOUSE_DOWN,this.showEvictScreen);
         this.addEventListener(PalEvent.INVITE_TO_HOOD,this.invite);
         this.hoodModel.addEventListener(HoodConstants.SENT_REQUESTS_SET,this.sentRequestSent);
         this.llService.addEventListener(LLGsiConstants.GOT_ALL_INVITES_SENT_BY_HOOD,this.gotInvitesSent);
         this.llService.addEventListener(LLGsiConstants.GOT_ALL_INVITES_REC_BY_HOOD,this.gotInvitesRec);
         this.llService.addEventListener(LLGsiConstants.GOT_HOOD_PEOPLE_IDS,this.gotHoodPeopleIDs);
         this.llService.addEventListener(LLGsiConstants.SHOW_INVITE_CONFIRM,this.showSent);
         this.addEventListener(LLGsiConstants.LANDLORD_BACK,this.showLandLordStart);
         this.allOff();
         this.addEventListener(PalEvent.ACCEPT_INVITE,this.acceptInvite);
         this.addEventListener(PalEvent.DENY_INVITE,this.denyInvite);
         this.addEventListener(PalEvent.EVICT,this.evict);
         this.addEventListener(PalEvent.REMOVE_INVITE,this.removeInvite);
         this.addEventListener(ConfirmBox.SAY_YES,this.sayYes);
         this.addEventListener(ConfirmBox.SAY_NO,this.sayNo);
         this.addEventListener(InviteConfirm.BOX_CLOSED,this.boxClosed);
         this.addEventListener(EvictConfirm.EVICT_BOX_CLOSED,this.evictBoxClosed);
         this.btnBack.addEventListener(MouseEvent.MOUSE_DOWN,this.goBack);
         this.refeshData();
      }
      
      private function refeshData() : *
      {
         this.llService.getHoodInvitesRec();
      }
      
      private function showLandLordStart(param1:Event) : void
      {
         this.buttonsOn();
         this.btnBack.visible = true;
         this.allOff();
         this.refeshData();
      }
      
      private function goBack(param1:MouseEvent) : void
      {
         this.dispatchEvent(new Event(PhoneConstants.SHOW_START_SCREEN,true));
      }
      
      private function removeInvite(param1:PalEvent) : void
      {
         this.llService.removeInvite(param1.palVo.id);
      }
      
      private function boxClosed(param1:Event) : void
      {
         if(this.inviteConfirm != null)
         {
            if(this.contains(this.inviteConfirm))
            {
               this.removeChild(this.inviteConfirm);
            }
         }
         this.checkCountForRec();
      }
      
      private function evictBoxClosed(param1:Event) : *
      {
         this.allOff();
         if(this.evictConfirm != null)
         {
            if(this.contains(this.evictConfirm))
            {
               this.removeChild(this.evictConfirm);
            }
         }
         this.buttonsOn();
      }
      
      private function sayYes(param1:Event) : void
      {
         if(this.currentAction == "deny")
         {
            this.llService.denyRequest(this.currentUser.id);
            this.allOff();
            this.buttonsOn();
         }
         if(this.currentAction == "accept")
         {
            this.llService.accept(this.currentUser.id);
            this.showSent();
         }
         if(this.currentAction == "evict")
         {
            this.llService.evict(this.currentUser.id);
            this.showEvict();
            this.chatController.sendUserMessage("evict!:" + String(this.currentUser.id),this.userModel.userVo);
         }
         this.hideConfirm();
      }
      
      private function showEvict(param1:Event = null) : *
      {
         this.hideEvictConfirm();
         this.evictConfirm = new EvictConfirm();
         this.addChild(this.evictConfirm);
      }
      
      private function showSent(param1:Event = null) : *
      {
         this.hideConfirm();
         this.inviteConfirm = new InviteConfirm();
         this.addChild(this.inviteConfirm);
      }
      
      private function sayNo(param1:Event) : void
      {
         this.hideConfirm();
      }
      
      private function acceptInvite(param1:PalEvent) : void
      {
         this.currentAction = "accept";
         this.currentUser = param1.palVo;
         this.showConfirm();
      }
      
      private function denyInvite(param1:PalEvent) : void
      {
         this.currentAction = "deny";
         this.currentUser = param1.palVo;
         this.showConfirm();
      }
      
      private function evict(param1:PalEvent) : *
      {
         this.currentAction = "evict";
         this.currentUser = param1.palVo;
         this.showConfirm();
      }
      
      private function showConfirm() : *
      {
         this.confirmBox = new ConfirmBox();
         this.addChild(this.confirmBox);
      }
      
      private function hideConfirm() : *
      {
         if(this.confirmBox != null)
         {
            if(this.contains(this.confirmBox))
            {
               this.removeChild(this.confirmBox);
            }
         }
      }
      
      private function hideEvictConfirm() : *
      {
         if(this.evictConfirm != null)
         {
            if(this.contains(this.evictConfirm))
            {
               this.removeChild(this.evictConfirm);
            }
         }
      }
      
      private function gotInvitesRec(param1:Event) : void
      {
         this.recScreen.dataProvider = this.llService.recArray;
         this.checkCountForRec();
      }
      
      private function gotInvitesSent(param1:Event) : void
      {
         this.allOff();
         this.buttonsOff();
         this.srScreen.visible = true;
         this.srScreen.dataProvider = this.llService.inviteArray;
      }
      
      private function invite(param1:PalEvent) : void
      {
         if(param1.type == PalEvent.INVITE_TO_HOOD)
         {
            this.llService.inviteToMyHood(param1.palVo.id);
         }
      }
      
      private function buttonsOff() : *
      {
         this.llTitle.visible = false;
         PhoneItemButton(this.btnInvite).visible = false;
         PhoneItemButton(this.btnSentRequests).visible = false;
         PhoneItemButton(this.btnRecRequest).visible = false;
         PhoneItemButton(this.btnEvict).visible = false;
      }
      
      private function buttonsOn() : *
      {
         this.llTitle.visible = true;
         PhoneItemButton(this.btnInvite).visible = true;
         PhoneItemButton(this.btnSentRequests).visible = true;
         PhoneItemButton(this.btnRecRequest).visible = true;
         PhoneItemButton(this.btnEvict).visible = true;
         this.checkCountForRec();
         this.btnBack.visible = true;
      }
      
      private function checkCountForRec() : *
      {
         if(this.llService.recArray != null)
         {
            if(this.llService.recArray.length > 0)
            {
               PhoneItemButton(this.btnRecRequest).addPulse();
            }
            else
            {
               PhoneItemButton(this.btnRecRequest).removePulse();
            }
         }
      }
      
      private function allOff() : *
      {
         this.srScreen.visible = false;
         this.landLordInviteScreen.visible = false;
         this.recScreen.visible = false;
         this.evictScreen.visible = false;
      }
      
      public function startUp() : *
      {
         this.landLordInviteScreen.visible = false;
         this.srScreen.visible = false;
      }
      
      private function showReceived(param1:Event) : *
      {
         this.buttonsOff();
         this.allOff();
         this.recScreen.visible = true;
      }
      
      private function showInviteScreen(param1:Event) : *
      {
         this.buttonsOff();
         this.btnBack.visible = false;
         this.landLordInviteScreen.dataProvider = this.userModel.palArray;
         this.landLordInviteScreen.visible = true;
      }
      
      private function showSentRequest(param1:Event) : *
      {
         this.btnBack.visible = false;
         this.llService.getHoodInvitesSent();
      }
      
      private function sentRequestSent(param1:Event) : *
      {
         this.srScreen.dataProvider = this.hoodModel.sentRequestArray;
         this.srScreen.visible = true;
      }
      
      private function gotHoodPeopleIDs(param1:Event) : *
      {
         this.evictScreen.dataProvider = this.llService.peopleInHood;
         this.evictScreen.visible = true;
      }
      
      private function showEvictScreen(param1:Event) : *
      {
         this.buttonsOff();
         this.btnBack.visible = false;
         this.llService.getPeopleInHood();
      }
   }
}
