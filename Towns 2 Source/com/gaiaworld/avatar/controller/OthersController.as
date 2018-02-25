package com.gaiaworld.avatar.controller
{
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.avatar.model.OthersModel;
   import com.gaiaworld.user.vo.UserVo;
   
   public class OthersController
   {
       
      
      private var othersModel:OthersModel;
      
      public function OthersController()
      {
         this.othersModel = OthersModel.getInstance();
         super();
      }
      
      public function broadcastUpdate(param1:String, param2:Number) : *
      {
         this.othersModel.broadcastUpdate(param1,param2);
      }
      
      public function registerOther(param1:IAvatar) : *
      {
         this.othersModel.registerOtherAv(param1);
      }
      
      public function removeOtherAvatar(param1:UserVo) : *
      {
         this.othersModel.removeAv(param1);
      }
      
      public function ignoreAvatar(param1:Number) : *
      {
         this.othersModel.ignoreID = param1;
      }
      
      public function unignoreAvatar(param1:Number) : *
      {
         this.othersModel.unIgnoreID = param1;
      }
      
      public function showAvatarMenu() : void
      {
         this.othersModel.showAvatarMenu();
      }
      
      public function hideAvatarMenu() : void
      {
         this.othersModel.hideAvatarMenu();
      }
      
      public function userGone(param1:UserVo) : *
      {
         this.othersModel.userGone(param1);
      }
      
      public function addJustJoined(param1:UserVo) : void
      {
         this.othersModel.addJustJoined(param1);
      }
      
      public function updateStatus(param1:IAvatar) : *
      {
         this.othersModel.onUpdateAvatarStatus(param1);
      }
      
      public function setSelctedAvatar(param1:IAvatar) : void
      {
         this.othersModel.selectedAvatar = param1;
      }
      
      public function setBadAv(param1:Number) : void
      {
         this.othersModel.setBadAv(param1);
      }
      
      public function smite(param1:Number) : *
      {
         this.othersModel.smite(param1);
      }
      
      public function hideAvatars() : void
      {
         this.othersModel.hideAvatars();
      }
      
      public function showAvatars() : void
      {
         this.othersModel.showAvatars();
      }
      
      public function takeOtherOffList(param1:UserVo) : *
      {
         this.othersModel.takeAvatarOffList(param1);
      }
      
      public function regEmote(param1:Number) : void
      {
         this.othersModel.regEmoteTime(param1);
      }
      
      public function regSend(param1:Number) : void
      {
         this.othersModel.regSendTime(param1);
      }
      
      public function muteUser(param1:UserVo) : void
      {
         this.othersModel.muteUser(param1.gaia_id);
      }
   }
}
