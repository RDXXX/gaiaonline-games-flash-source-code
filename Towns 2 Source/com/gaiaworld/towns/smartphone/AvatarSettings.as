package com.gaiaworld.towns.smartphone
{
   import com.gaiaworld.avatar.controller.AvatarController;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.game.controller.GameController;
   import com.gaiaworld.game.model.GameModel;
   import com.gaiaworld.global.controller.GlobalController;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.sushi.controller.ChatController;
   import com.gaiaworld.sushi.model.ChatModel;
   import com.gaiaworld.towns.constants.PhoneConstants;
   import fl.controls.Button;
   import fl.controls.CheckBox;
   import fl.controls.Slider;
   import fl.events.SliderEvent;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class AvatarSettings extends Sprite
   {
       
      
      public var aText:TextField;
      
      public var btnAfk:CheckBox;
      
      public var btnAnimated:CheckBox;
      
      public var btnChallengeOpt:CheckBox;
      
      public var btnChatOpt:CheckBox;
      
      public var btnClose:Button;
      
      public var btnEmbed:CheckBox;
      
      public var btnType:CheckBox;
      
      public var slider2:Slider;
      
      private var chatController:ChatController;
      
      private var avatarController:AvatarController;
      
      private var avatarModel:AvatarModel;
      
      private var gameModel:GameModel;
      
      private var globalModel:GlobalModel;
      
      private var globalController:GlobalController;
      
      private var gameController:GameController;
      
      private var chatModel:ChatModel;
      
      public function AvatarSettings()
      {
         this.chatController = new ChatController();
         this.avatarController = new AvatarController();
         this.avatarModel = AvatarModel.getInstance();
         this.gameModel = GameModel.getInstance();
         this.globalModel = GlobalModel.getInstance();
         this.globalController = new GlobalController();
         this.gameController = new GameController();
         this.chatModel = ChatModel.getInstance();
         super();
         this.addEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
         CheckBox(this.btnChatOpt).addEventListener(MouseEvent.CLICK,this.chatOptionsClick);
         CheckBox(this.btnChallengeOpt).addEventListener(MouseEvent.CLICK,this.popUpOptClick);
         CheckBox(this.btnEmbed).addEventListener(MouseEvent.CLICK,this.useEmbed);
         CheckBox(this.btnAfk).addEventListener(MouseEvent.CLICK,this.afkOpt);
         CheckBox(this.btnType).addEventListener(MouseEvent.CLICK,this.showType);
         CheckBox(this.btnAnimated).addEventListener(MouseEvent.CLICK,this.showAnimated);
         Slider(this.slider2).addEventListener(SliderEvent.CHANGE,this.sliderWalkChanged);
         CheckBox(this.btnChatOpt).tabEnabled = false;
         CheckBox(this.btnChallengeOpt).tabEnabled = false;
         CheckBox(this.btnEmbed).tabEnabled = false;
         Slider(this.slider2).tabEnabled = false;
         CheckBox(this.btnChatOpt).focusEnabled = false;
         CheckBox(this.btnChallengeOpt).focusEnabled = false;
         CheckBox(this.btnEmbed).focusEnabled = false;
         Slider(this.slider2).focusEnabled = false;
         this.btnClose.addEventListener(MouseEvent.MOUSE_DOWN,this.close);
         this.__setProp_btnClose_AvatarSettings_Layer1_0();
         this.__setProp_btnChatOpt_AvatarSettings_Layer1_0();
         this.__setProp_btnChallengeOpt_AvatarSettings_Layer1_0();
         this.__setProp_btnEmbed_AvatarSettings_Layer1_0();
         this.__setProp_slider2_AvatarSettings_Layer1_0();
         this.__setProp_btnAfk_AvatarSettings_Layer1_0();
         this.__setProp_btnType_AvatarSettings_Layer1_0();
         this.__setProp_btnAnimated_AvatarSettings_Layer1_0();
      }
      
      private function showAnimated(param1:MouseEvent) : void
      {
         this.avatarController.showAnimated(CheckBox(this.btnAnimated).selected);
      }
      
      private function showType(param1:MouseEvent) : void
      {
         this.globalController.showIsTyping(CheckBox(this.btnType).selected);
      }
      
      private function afkOpt(param1:MouseEvent) : void
      {
         this.globalController.showAFK(CheckBox(this.btnAfk).selected);
      }
      
      private function useEmbed(param1:MouseEvent) : void
      {
         this.globalController.setUseEmbededFont(!CheckBox(this.btnEmbed).selected);
      }
      
      private function close(param1:Event) : *
      {
         this.visible = false;
         this.globalController.savePrefs();
         this.dispatchEvent(new Event(PhoneConstants.SHOW_SETTINGS_START,true));
      }
      
      private function sliderWalkChanged2(param1:Event) : void
      {
      }
      
      private function popUpOptClick(param1:MouseEvent) : void
      {
         this.gameController.showPhoneOnNewChallenge(CheckBox(this.btnChallengeOpt).selected);
      }
      
      private function chatOptionsClick(param1:MouseEvent) : void
      {
         this.chatController.canShowBalloons(CheckBox(this.btnChatOpt).selected);
      }
      
      private function sliderWalkChanged(param1:SliderEvent) : void
      {
         this.avatarController.setWalkSpeed(Slider(this.slider2).value);
         this.updateSpeeds();
      }
      
      private function updateSpeeds() : *
      {
         this.avatarController.setSpeed(this.avatarModel.walkSpeed);
      }
      
      private function addedToStage(param1:Event) : *
      {
         this.removeEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
         this.init();
      }
      
      public function init() : *
      {
         Slider(this.slider2).value = this.avatarModel.walkSpeed;
         CheckBox(this.btnChallengeOpt).selected = this.gameModel.showPhone;
         CheckBox(this.btnChatOpt).selected = this.chatModel.canShowBalloons;
         CheckBox(this.btnEmbed).selected = this.globalModel.useEmbed;
         CheckBox(this.btnAfk).selected = this.globalModel.showAFK;
         CheckBox(this.btnType).selected = this.globalModel.showIsTyping;
         CheckBox(this.btnAnimated).selected = this.avatarModel.useAnimations;
      }
      
      function __setProp_btnClose_AvatarSettings_Layer1_0() : *
      {
         try
         {
            this.btnClose["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.btnClose.emphasized = false;
         this.btnClose.enabled = true;
         this.btnClose.label = "save & close";
         this.btnClose.labelPlacement = "right";
         this.btnClose.selected = false;
         this.btnClose.toggle = false;
         this.btnClose.visible = true;
         try
         {
            this.btnClose["componentInspectorSetting"] = false;
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      function __setProp_btnChatOpt_AvatarSettings_Layer1_0() : *
      {
         try
         {
            this.btnChatOpt["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.btnChatOpt.enabled = true;
         this.btnChatOpt.label = "";
         this.btnChatOpt.labelPlacement = "right";
         this.btnChatOpt.selected = true;
         this.btnChatOpt.visible = true;
         try
         {
            this.btnChatOpt["componentInspectorSetting"] = false;
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      function __setProp_btnChallengeOpt_AvatarSettings_Layer1_0() : *
      {
         try
         {
            this.btnChallengeOpt["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.btnChallengeOpt.enabled = true;
         this.btnChallengeOpt.label = "";
         this.btnChallengeOpt.labelPlacement = "right";
         this.btnChallengeOpt.selected = true;
         this.btnChallengeOpt.visible = true;
         try
         {
            this.btnChallengeOpt["componentInspectorSetting"] = false;
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      function __setProp_btnEmbed_AvatarSettings_Layer1_0() : *
      {
         try
         {
            this.btnEmbed["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.btnEmbed.enabled = true;
         this.btnEmbed.label = "";
         this.btnEmbed.labelPlacement = "right";
         this.btnEmbed.selected = false;
         this.btnEmbed.visible = true;
         try
         {
            this.btnEmbed["componentInspectorSetting"] = false;
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      function __setProp_slider2_AvatarSettings_Layer1_0() : *
      {
         try
         {
            this.slider2["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.slider2.direction = "horizontal";
         this.slider2.enabled = true;
         this.slider2.liveDragging = false;
         this.slider2.maximum = 12;
         this.slider2.minimum = 1;
         this.slider2.snapInterval = 0;
         this.slider2.tickInterval = 0;
         this.slider2.value = 0;
         this.slider2.visible = true;
         try
         {
            this.slider2["componentInspectorSetting"] = false;
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      function __setProp_btnAfk_AvatarSettings_Layer1_0() : *
      {
         try
         {
            this.btnAfk["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.btnAfk.enabled = true;
         this.btnAfk.label = "";
         this.btnAfk.labelPlacement = "right";
         this.btnAfk.selected = false;
         this.btnAfk.visible = true;
         try
         {
            this.btnAfk["componentInspectorSetting"] = false;
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      function __setProp_btnType_AvatarSettings_Layer1_0() : *
      {
         try
         {
            this.btnType["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.btnType.enabled = true;
         this.btnType.label = "";
         this.btnType.labelPlacement = "right";
         this.btnType.selected = false;
         this.btnType.visible = true;
         try
         {
            this.btnType["componentInspectorSetting"] = false;
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      function __setProp_btnAnimated_AvatarSettings_Layer1_0() : *
      {
         try
         {
            this.btnAnimated["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.btnAnimated.enabled = true;
         this.btnAnimated.label = "";
         this.btnAnimated.labelPlacement = "right";
         this.btnAnimated.selected = false;
         this.btnAnimated.visible = true;
         try
         {
            this.btnAnimated["componentInspectorSetting"] = false;
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
   }
}
