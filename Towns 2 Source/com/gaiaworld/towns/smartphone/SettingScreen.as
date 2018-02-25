package com.gaiaworld.towns.smartphone
{
   import com.gaiaworld.avatar.controller.AvatarController;
   import com.gaiaworld.avatar.model.AvatarModel;
   import com.gaiaworld.game.model.GameModel;
   import com.gaiaworld.global.controller.GlobalController;
   import com.gaiaworld.global.model.GlobalModel;
   import com.gaiaworld.global.util.Preferences;
   import com.gaiaworld.sushi.controller.ChatController;
   import com.gaiaworld.towns.constants.PhoneConstants;
   import fl.controls.Button;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class SettingScreen extends Sprite
   {
       
      
      public var avatarSettings:AvatarSettings;
      
      public var btnAvatar:Button;
      
      public var btnChat:Button;
      
      public var historySettings:HistorySettings;
      
      private var chatController:ChatController;
      
      private var avatarController:AvatarController;
      
      private var avatarModel:AvatarModel;
      
      private var pref:Preferences;
      
      private var gameModel:GameModel;
      
      private var globalModel:GlobalModel;
      
      private var globalController:GlobalController;
      
      public function SettingScreen()
      {
         this.chatController = new ChatController();
         this.avatarController = new AvatarController();
         this.avatarModel = AvatarModel.getInstance();
         this.pref = Preferences.getInstance();
         this.gameModel = GameModel.getInstance();
         this.globalModel = GlobalModel.getInstance();
         this.globalController = new GlobalController();
         super();
         this.addEventListener(PhoneConstants.SHOW_SETTINGS_START,this.showStart);
         this.historySettings.visible = false;
         this.avatarSettings.visible = false;
         this.btnChat.addEventListener(MouseEvent.MOUSE_DOWN,this.showHistoryOptions);
         this.btnAvatar.addEventListener(MouseEvent.MOUSE_DOWN,this.showAvatarOptions);
         this.__setProp_btnAvatar_SettingScreen_Layer4_0();
         this.__setProp_btnChat_SettingScreen_Layer4_0();
      }
      
      private function buttonsOff() : *
      {
         this.btnChat.visible = false;
         this.btnAvatar.visible = false;
      }
      
      private function buttonsOn() : *
      {
         this.btnChat.visible = true;
         this.btnAvatar.visible = true;
      }
      
      private function showStart(param1:Event) : void
      {
         this.historySettings.visible = false;
         this.avatarSettings.visible = false;
         this.buttonsOn();
      }
      
      private function showHistoryOptions(param1:MouseEvent) : *
      {
         this.historySettings.visible = true;
         this.buttonsOff();
      }
      
      private function showAvatarOptions(param1:MouseEvent) : *
      {
         this.avatarSettings.init();
         this.avatarSettings.visible = true;
         this.buttonsOff();
      }
      
      function __setProp_btnAvatar_SettingScreen_Layer4_0() : *
      {
         try
         {
            this.btnAvatar["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.btnAvatar.emphasized = false;
         this.btnAvatar.enabled = true;
         this.btnAvatar.label = "Avatar Options";
         this.btnAvatar.labelPlacement = "right";
         this.btnAvatar.selected = false;
         this.btnAvatar.toggle = false;
         this.btnAvatar.visible = true;
         try
         {
            this.btnAvatar["componentInspectorSetting"] = false;
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      function __setProp_btnChat_SettingScreen_Layer4_0() : *
      {
         try
         {
            this.btnChat["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.btnChat.emphasized = false;
         this.btnChat.enabled = true;
         this.btnChat.label = "Chat Options";
         this.btnChat.labelPlacement = "right";
         this.btnChat.selected = false;
         this.btnChat.toggle = false;
         this.btnChat.visible = true;
         try
         {
            this.btnChat["componentInspectorSetting"] = false;
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
   }
}
