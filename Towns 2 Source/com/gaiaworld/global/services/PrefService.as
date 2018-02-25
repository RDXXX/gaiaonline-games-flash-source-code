package com.gaiaworld.global.services
{
   import com.gaiaonline.gsi.GSICompleteEvent;
   import com.gaiaonline.gsi.GSIGateway;
   import com.gaiaonline.serializers.JSONSerializer;
   import com.gaiaworld.avatar.controller.AvatarController;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.game.controller.GameController;
   import com.gaiaworld.game.model.GameModel;
   import com.gaiaworld.global.constants.GlobalConstants;
   import com.gaiaworld.global.constants.GsiConstants;
   import com.gaiaworld.global.controller.GlobalController;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.global.util.DebugTool;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class PrefService extends EventDispatcher
   {
       
      
      private var gateway:GSIGateway;
      
      private var globalModel:GlobalModel;
      
      private var gameModel:GameModel;
      
      private var avatarModel:AvatarModel;
      
      private var avatarController:AvatarController;
      
      private var gameController:GameController;
      
      private var globalController:GlobalController;
      
      public function PrefService()
      {
         this.globalModel = GlobalModel.getInstance();
         this.gameModel = GameModel.getInstance();
         this.avatarModel = AvatarModel.getInstance();
         this.avatarController = new AvatarController();
         this.gameController = new GameController();
         this.globalController = new GlobalController();
         super();
         this.gateway = new GSIGateway(this.globalModel.gsiSubdomain);
         this.gateway.serializerClass = JSONSerializer;
         this.globalModel.addEventListener(GlobalConstants.SAVE_PREFENCES,this.setPrefs);
      }
      
      public function getPrefs() : *
      {
         this.gateway.addEventListener(GSICompleteEvent.COMPLETE,this.gotPrefs);
         this.gateway.invoke(GsiConstants.USER_PREF,"get");
      }
      
      private function gotPrefs(param1:GSICompleteEvent) : void
      {
         this.gateway.removeEventListener(GSICompleteEvent.COMPLETE,this.gotPrefs);
         DebugTool.pr(param1.methods[0].data);
         if(param1.methods[0].data == null || param1.methods[0].data == "")
         {
            return;
         }
         var _loc2_:Number = param1.methods[0].data.popUp;
         var _loc3_:Boolean = _loc2_ != 0?true:false;
         var _loc4_:Number = Number(param1.methods[0].data.walkSpeed);
         var _loc5_:Number = Number(param1.methods[0].data.fontSize);
         var _loc6_:Number = Number(param1.methods[0].data.fontIndex);
         var _loc7_:Number = Number(param1.methods[0].data.historyBackColor);
         var _loc8_:Number = Number(param1.methods[0].data.historyAlpha);
         var _loc9_:Number = param1.methods[0].data.showAFK;
         var _loc10_:Boolean = _loc9_ != 0?true:false;
         var _loc11_:Number = param1.methods[0].data.showIsTyping;
         var _loc12_:Boolean = _loc11_ != 0?true:false;
         var _loc13_:Number = param1.methods[0].data.useAnimations;
         if(isNaN(_loc5_))
         {
            _loc5_ = 12;
         }
         if(isNaN(_loc6_))
         {
            _loc6_ = 0;
         }
         if(isNaN(_loc7_))
         {
            _loc7_ = 1184274;
         }
         if(isNaN(_loc4_))
         {
            _loc4_ = 6;
         }
         if(isNaN(_loc8_))
         {
            _loc8_ = 1;
         }
         if(isNaN(_loc13_))
         {
            _loc13_ = 2;
         }
         var _loc14_:Boolean = _loc13_ != 2?true:false;
         this.gameController.showPhoneOnNewChallenge(_loc3_);
         this.globalController.setFontIndex(_loc6_);
         this.globalController.setHistoryTextSize(_loc5_);
         this.globalController.showAFK(_loc10_);
         this.globalController.showIsTyping(_loc12_);
         this.globalController.redrawHistory(_loc7_,_loc8_);
         this.avatarController.setWalkSpeed(_loc4_);
         this.avatarController.showAnimated(_loc14_);
      }
      
      private function setPrefs(param1:Event) : *
      {
         var _loc2_:Number = this.gameModel.showPhone == true?Number(1):Number(0);
         var _loc3_:Number = this.avatarModel.walkSpeed;
         var _loc4_:Number = this.globalModel.historyTextSize;
         var _loc5_:Number = this.globalModel.fontIndex;
         var _loc6_:Number = this.globalModel.historyBackColor;
         var _loc7_:Number = this.globalModel.historyAlpha;
         var _loc8_:Number = this.globalModel.showAFK == true?Number(1):Number(0);
         var _loc9_:Number = this.globalModel.showIsTyping == true?Number(1):Number(0);
         var _loc10_:Number = this.avatarModel.useAnimations == true?Number(1):Number(2);
         var _loc11_:Object = {
            "walkSpeed":_loc3_,
            "popUp":_loc2_,
            "fontIndex":_loc5_,
            "fontSize":_loc4_,
            "historyBackColor":_loc6_,
            "historyAlpha":_loc7_,
            "showAFK":_loc8_,
            "showIsTyping":_loc9_,
            "useAnimations":_loc10_
         };
         DebugTool.pr(_loc11_);
         this.gateway.addEventListener(GSICompleteEvent.COMPLETE,this.savedPrefs);
         this.gateway.invoke(GsiConstants.USER_PREF,"set",JSON.stringify(_loc11_));
      }
      
      private function savedPrefs(param1:GSICompleteEvent) : void
      {
         this.gateway.removeEventListener(GSICompleteEvent.COMPLETE,this.savedPrefs);
      }
   }
}
