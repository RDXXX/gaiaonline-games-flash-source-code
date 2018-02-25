package com.gaiaworld.global.view
{
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.avatar.model.OthersModel;
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.sushi.constants.ChatConstants;
   import com.gaiaworld.sushi.controller.events.ChatEvent;
   import com.gaiaworld.sushi.model.ChatModel;
   import com.gaiaworld.user.model.UserModel;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class EmoteLayer extends Sprite
   {
       
      
      private var globalModel:GlobalModel;
      
      private var chatModel:ChatModel;
      
      private var userModel:UserModel;
      
      private var avatarModel:AvatarModel;
      
      private var othersModel:OthersModel;
      
      private var emoteArray:Array;
      
      public function EmoteLayer()
      {
         this.globalModel = GlobalModel.getInstance();
         this.chatModel = ChatModel.getInstance();
         this.userModel = UserModel.getInstance();
         this.avatarModel = AvatarModel.getInstance();
         this.othersModel = OthersModel.getInstance();
         this.emoteArray = new Array();
         super();
         this.globalModel.addEventListener(GlobalConstants.WORLD_IS_BUILT,this.init);
      }
      
      private function init(param1:Event) : *
      {
         this.chatModel.addEventListener(ChatEvent.EMOTE_RECEIVED,this.newEmote);
         this.chatModel.addEventListener(ChatConstants.EMOTE_TO_SELF,this.emoteToSelf);
      }
      
      private function newEmote(param1:ChatEvent) : *
      {
         var _loc3_:IAvatar = null;
         var _loc4_:EmoteBalloon = null;
         var _loc2_:Array = param1.param.split(":");
         if(this.userModel.userID == param1.userVo.gaia_id)
         {
            _loc3_ = this.avatarModel.avatar;
         }
         else
         {
            _loc3_ = this.othersModel.getAvatar(param1.userVo);
         }
         if(_loc3_ != null)
         {
            if(_loc3_.clip.visible == true || this.userModel.userVo.user_level > 50)
            {
               _loc4_ = new EmoteBalloon();
               _loc4_.addEventListener(EmoteBalloon.REMOVE_ME,this.removeMe);
               this.addChild(_loc4_);
               _loc4_.showEmote(_loc2_[2],Number(_loc2_[1]),_loc3_);
            }
         }
      }
      
      private function emoteToSelf(param1:Event) : *
      {
         var _loc2_:Sprite = this.avatarModel.avatar as Sprite;
         var _loc3_:EmoteBalloon = new EmoteBalloon();
         _loc3_.addEventListener(EmoteBalloon.REMOVE_ME,this.removeMe);
         this.addChild(_loc3_);
         _loc3_.emoteToSelf(this.chatModel.selfEmote,2);
      }
      
      private function removeMe(param1:Event) : void
      {
         this.removeChild(param1.target as EmoteBalloon);
      }
   }
}
