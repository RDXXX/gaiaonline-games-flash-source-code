package com.gaiaworld.towns.services
{
   import com.gaiaonline.gsi.GSICompleteEvent;
   import com.gaiaonline.gsi.GSIGateway;
   import com.gaiaonline.serializers.JSONSerializer;
   import com.gaiaworld.global.constants.GsiConstants;
   import com.gaiaworld.global.controller.MessageController;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.sushi.controller.ChatController;
   import com.gaiaworld.towns.constants.LLGsiConstants;
   import com.gaiaworld.towns.hood.model.HoodModel;
   import com.gaiaworld.user.model.UserModel;
   import com.gaiaworld.user.util.LLUserInfo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class LLService extends EventDispatcher
   {
       
      
      private var gsi:GSIGateway;
      
      private var globalModel:GlobalModel;
      
      private var userModel:UserModel;
      
      private var hoodModel:HoodModel;
      
      private var llUserInfo:LLUserInfo;
      
      public var hoodArray:Array;
      
      public var inviteArray:Array;
      
      public var recArray:Array;
      
      public var peopleInHood:Array;
      
      private var chatController:ChatController;
      
      private var dataSwitch:String = "";
      
      public function LLService()
      {
         this.globalModel = GlobalModel.getInstance();
         this.userModel = UserModel.getInstance();
         this.hoodModel = HoodModel.getInstance();
         this.inviteArray = new Array();
         this.recArray = new Array();
         this.peopleInHood = new Array();
         this.chatController = new ChatController();
         super();
         this.gsi = new GSIGateway(this.globalModel.gsiSubdomain);
         this.gsi.serializerClass = JSONSerializer;
      }
      
      public function inviteToMyHood(param1:Number) : *
      {
         this.dataSwitch = "inviteToHood";
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.inviteSent);
         this.gsi.invoke(LLGsiConstants.INVITE_TO_HOOD,param1,this.hoodModel.myHome.community,this.hoodModel.myHome.hood);
      }
      
      private function inviteSent(param1:GSICompleteEvent) : void
      {
         var _loc2_:MessageController = new MessageController();
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.inviteSent);
         var _loc3_:Number = Number(param1.methods[0].data);
         if(isNaN(_loc3_) == true)
         {
            this.dispatchEvent(new Event(LLGsiConstants.SHOW_INVITE_CONFIRM,true));
         }
         else
         {
            switch(_loc3_)
            {
               case 2:
                  _loc2_.setPhoneMessage("You are not the landlord!");
                  break;
               case 3:
                  _loc2_.setPhoneMessage("That person already has a home!");
                  break;
               case 4:
                  _loc2_.setPhoneMessage("That user has already been invited");
            }
         }
      }
      
      public function getHoodInvitesSent() : *
      {
         this.dataSwitch = "getInvitesSent";
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.hoodInvitesSentLoaded);
         this.gsi.invoke(LLGsiConstants.GET_ALL_INVITES_SENT_BY_HOOD,this.hoodModel.myHome.community,this.hoodModel.myHome.hood);
      }
      
      private function hoodInvitesSentLoaded(param1:GSICompleteEvent) : void
      {
         var _loc3_:* = undefined;
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.hoodInvitesSentLoaded);
         this.llUserInfo = new LLUserInfo();
         this.llUserInfo.addEventListener(LLUserInfo.LL_USER_INFO_READY,this.PalDataReady);
         var _loc2_:Array = new Array();
         for(_loc3_ in param1.methods[0].data)
         {
            _loc2_.push(_loc3_);
         }
         this.llUserInfo.getUsersData(_loc2_);
      }
      
      private function PalDataReady(param1:Event) : *
      {
         this.llUserInfo.removeEventListener(LLUserInfo.LL_USER_INFO_READY,this.PalDataReady);
         this.inviteArray = this.llUserInfo.users;
         this.dispatchEvent(new Event(LLGsiConstants.GOT_ALL_INVITES_SENT_BY_HOOD,true));
      }
      
      public function getHoodInvitesRec() : *
      {
         this.dataSwitch = "getInvitesRec";
         if(this.hoodModel.myHome == null)
         {
            return;
         }
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.gotHoodInvitesRec);
         this.gsi.invoke(LLGsiConstants.GET_ALL_INVITES_REC_BY_HOOD,this.hoodModel.myHome.community,this.hoodModel.myHome.hood);
      }
      
      private function gotHoodInvitesRec(param1:GSICompleteEvent) : void
      {
         var _loc4_:* = undefined;
         this.llUserInfo = new LLUserInfo();
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.gotHoodInvitesRec);
         this.llUserInfo.addEventListener(LLUserInfo.LL_USER_INFO_READY,this.gotHoodIviteDataReady);
         var _loc2_:Number = param1.methods[0].data.length;
         var _loc3_:Array = new Array();
         for(_loc4_ in param1.methods[0].data)
         {
            _loc3_.push(_loc4_);
         }
         this.llUserInfo.getUsersData(_loc3_);
      }
      
      private function gotHoodIviteDataReady(param1:Event) : *
      {
         this.recArray = this.llUserInfo.users;
         this.llUserInfo.removeEventListener(LLUserInfo.LL_USER_INFO_READY,this.gotHoodIviteDataReady);
         this.dispatchEvent(new Event(LLGsiConstants.GOT_ALL_INVITES_REC_BY_HOOD,true));
      }
      
      public function requestToJoinCurrentHood() : *
      {
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.requestSent);
         this.gsi.invoke(LLGsiConstants.SEND_REQUEST_TO_JOIN,this.hoodModel.currentCommunity,this.hoodModel.currentHoodId);
      }
      
      private function requestSent(param1:GSICompleteEvent) : void
      {
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.requestSent);
      }
      
      public function getRequestISent() : *
      {
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.gotRequests);
         this.gsi.invoke(LLGsiConstants.SEND_REQUEST_TO_JOIN,this.userModel.userID);
      }
      
      private function gotRequests(param1:GSICompleteEvent) : void
      {
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.gotRequests);
      }
      
      public function denyRequest(param1:Number) : *
      {
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.denyDone);
         this.gsi.invoke(LLGsiConstants.REQUEST_DENIED,"deny",param1,this.hoodModel.myHome.community,this.hoodModel.myHome.hood);
      }
      
      private function denyDone(param1:GSICompleteEvent) : *
      {
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.denyDone);
         this.dispatchEvent(new Event(LLGsiConstants.DENY_DONE,true));
         this.getHoodInvitesRec();
      }
      
      public function accept(param1:Number) : *
      {
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.acceptDone);
         this.gsi.invoke(LLGsiConstants.ACCEPT_REQUEST,"accept",param1,this.hoodModel.myHome.community,this.hoodModel.myHome.hood);
      }
      
      private function acceptDone(param1:GSICompleteEvent) : void
      {
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.acceptDone);
         this.dispatchEvent(new Event(LLGsiConstants.ACCEPT_DONE,true));
         this.getHoodInvitesRec();
      }
      
      public function getPeopleInHood() : *
      {
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.hoodFolkGot);
         this.gsi.invoke(GsiConstants.GET_HOOD_LOC,"neighborhood",this.hoodModel.myHome.hood,this.hoodModel.myHome.community);
      }
      
      public function evict(param1:Number) : void
      {
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.userEvicted);
         this.gsi.invoke(GsiConstants.EVICT_USER,param1);
      }
      
      public function removeInvite(param1:Number) : void
      {
         this.gsi.addEventListener(GSICompleteEvent.COMPLETE,this.inviteRemoved);
         this.gsi.invoke(LLGsiConstants.RESCIND_INVITE,param1,this.hoodModel.myHome.community,this.hoodModel.myHome.hood);
      }
      
      private function inviteRemoved(param1:GSICompleteEvent) : void
      {
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.inviteRemoved);
         this.getHoodInvitesSent();
      }
      
      private function userEvicted(param1:GSICompleteEvent) : void
      {
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.userEvicted);
         this.getPeopleInHood();
      }
      
      private function hoodFolkGot(param1:GSICompleteEvent) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.gsi.removeEventListener(GSICompleteEvent.COMPLETE,this.hoodFolkGot);
         this.hoodArray = new Array();
         var _loc2_:Object = param1.methods[0].data;
         for(_loc3_ in _loc2_)
         {
            _loc4_ = _loc2_[_loc3_].user_id;
            _loc5_ = _loc2_[_loc3_].plot;
            if(_loc5_ != 0)
            {
               this.hoodArray.push(_loc4_);
            }
         }
         if(this.hoodArray != null)
         {
            this.llUserInfo = new LLUserInfo();
            this.llUserInfo.addEventListener(LLUserInfo.LL_USER_INFO_READY,this.hoodPeopleReady);
            this.llUserInfo.getUsersData(this.hoodArray);
         }
      }
      
      private function hoodPeopleReady(param1:Event) : void
      {
         this.peopleInHood = this.llUserInfo.users;
         this.llUserInfo.removeEventListener(LLUserInfo.LL_USER_INFO_READY,this.hoodPeopleReady);
         this.dispatchEvent(new Event(LLGsiConstants.GOT_HOOD_PEOPLE_IDS,true));
      }
   }
}
