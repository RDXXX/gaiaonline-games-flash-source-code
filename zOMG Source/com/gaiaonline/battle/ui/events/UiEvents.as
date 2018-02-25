package com.gaiaonline.battle.ui.events
{
   import flash.events.Event;
   
   public class UiEvents extends Event
   {
      
      public static const PD_RING_CLICK:String = "PaperDollRingClick";
      
      public static const GL_PROMOTE:String = "GroupListPromoteLeader";
      
      public static const CHAT_SHOW_MINIZED:String = "ChatShowMinized";
      
      public static const LFG_REFRESH:String = "RefreshLFGList";
      
      public static const AI_MENU_CLICK:String = "ActorMenuClick";
      
      public static const EMOTE_OPEN:String = "OnChatPanelEmoteClick";
      
      public static const SET_MUSIC_VOLUME:String = "musicVolume";
      
      public static const MUSIC_PLAYER_LINK_CLICK:String = "MusicPlayerLink";
      
      public static const SET_SFX_VOLUME:String = "sfxVolume";
      
      public static const CHAT_CHANGE_CHANNEL:String = "OnChatChannelChange";
      
      public static const VERIFY:String = "Verify";
      
      public static const TAB_CLICK:String = "OnTabClick";
      
      public static const CALL_RECREWT:String = "CallRecrewtPanel";
      
      public static const GL_KICK:String = "GroupListKickUser";
      
      public static const LAYOUT_RESET:String = "ResetGameLayout2Default";
      
      public static const REGISTER:String = "Register";
      
      public static const CHAT_SHOW_HISTORY:String = "ChatShowHistory";
      
      public static const ML_INVITE:String = "MemberListInvite";
      
      public static const OPEN_UI_SWAP_ORBS:String = "OpenUiSwapOrbs";
      
      public static const RING_UPGRADE:String = "RingUpgrade";
      
      public static const TAB_IS_ACTIVE:String = "OnActivateTab";
      
      public static const ML_RING_CLICK:String = "MemberListRingClick";
      
      public static const GL_LEAVE:String = "GroupListLeaveGroup";
      
      public static const RING_SALVAGE:String = "RingSalvage";
       
      
      public var value:Object;
      
      public var userId:Object;
      
      public var ringId:Object;
      
      public var command:String;
      
      public function UiEvents(type:String, command:String)
      {
         super(type);
         this.command = command;
      }
      
      override public function clone() : Event
      {
         var clone:UiEvents = new UiEvents(this.type,this.command);
         clone.value = this.value;
         clone.ringId = this.ringId;
         clone.userId = this.userId;
         return clone;
      }
   }
}
