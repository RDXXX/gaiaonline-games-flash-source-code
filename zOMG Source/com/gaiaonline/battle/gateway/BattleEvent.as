package com.gaiaonline.battle.gateway
{
   import com.gaiaonline.flexModulesAPIs.gatewayInterfaces.IBattleEvent;
   import com.gaiaonline.flexModulesAPIs.gatewayInterfaces.IBattleMessage;
   import flash.events.Event;
   
   public class BattleEvent extends Event implements IBattleEvent
   {
      
      public static const AWARE_ADD:String = "awareness_add";
      
      public static const AWARE_START:String = "awareness_start";
      
      public static const QUICK_MOVE:String = "quickMove";
      
      public static const CONSUMABLE_INFO:String = "getConsumableInfo";
      
      public static const SERVER_FULL:String = "serverFull";
      
      public static const LOGIN_EXISTS:String = "Login_exists";
      
      public static const AWARE_DEATH:String = "awareness_death";
      
      public static const MINI_MAP_UPDATE:String = "MiniMapUpdate";
      
      public static const USER_IN_CONTROL:String = "userIsInControl";
      
      public static const TEAM_INVITE_REJECTED:String = "Team_Invite_Rejected";
      
      public static const ORB_SWAP:String = "orbSwap";
      
      public static const UI_BUTTON_MENU:String = "uiButtonMenu";
      
      public static const CALL_BACK:String = "Call_Back";
      
      public static const SHOP_REFRESH_META_INFO:String = "refreshShopMetainfo";
      
      public static const TEAM_INVITE:String = "Team_Invite";
      
      public static const JABBER_CHAT_ROOM_SPECS:String = "chatRoomSpecs";
      
      public static const TEAM_MEMBER_GONE:String = "Team_Member_Gone";
      
      public static const CLIENT_QUIT:String = "clientQuit";
      
      public static const LOGIN:String = "Login";
      
      public static const PLAYER_INFO:String = "received_player_info";
      
      public static const BUY_STORE_ITEM:String = "buyStoreItem";
      
      public static const LOGIN_FAIL:String = "Login_fail";
      
      public static const START_COLLECTING_STATS:String = "startCollectingStats";
      
      public static const CHAT:String = "Chat";
      
      public static const LFG_FLAG:String = "LookingForGroupFlag";
      
      public static const CONSUMABLE_INVENTORY:String = "getConsumableInventory";
      
      public static const ITEM_INFO:String = "ItemInfo";
      
      public static const AWARE_STOP:String = "awareness_stop";
      
      public static const SHOP_INFO:String = "getStoreInfo";
      
      public static const GSI_LOGIN:String = "GsiLogin";
      
      public static const UI_BUTTON_MENU_REMOVE:String = "uiButtonMenuRemove";
      
      public static const LOGIN_NEEDED:String = "Login_needed";
      
      public static const WORLD_EVENT:String = "worldEvent";
      
      public static const USER_LOOKUP:String = "userLookup";
      
      public static const ACTOR_UPDATE:String = "Actor_Update";
      
      public static const STUCK:String = "stuck";
      
      public static const GET_NONCE:String = "nonce";
      
      public static const GRANT_RING:String = "grantRing";
      
      public static const ZOMG_LOGIN:String = "zomg_login";
      
      public static const AWARE_REMOVE:String = "awareness_remove";
      
      public static const IS_COMBAT:String = "isCombat";
      
      public static const ACTOR_LEAVE:String = "Actor_Leave";
      
      public static const LOOT:String = "Loot";
      
      public static const TEAM_INVITE_SERVER_RESPONSE:String = "Team_Invite_Server_Response";
      
      public static const CHAT_EMOTE:String = "Chat_Emote";
      
      public static const ORB:String = "orb";
      
      public static const SF_LOGIN_FAIL:String = "sf_login_fail";
      
      public static const BLING_UPDATE:String = "bling";
      
      public static const RING_UPDATE:String = "changeRing";
      
      public static const INVENTORY_INFO:String = "getInventoryInfo";
      
      public static const INVITE_TO_BE_FRIEND:String = "inviteToBeFriend";
      
      public static const MOVE_RING:String = "MoveRing";
      
      public static const INVITE_TO_FRIEND_COMPLETED:String = "inviteFriendCompleted";
      
      public static const ACTOR_ACTION:String = "Actor_Actrion";
      
      public static const GHI_LADDER_ADVANCE:String = "ghiLadderAdvance";
      
      public static const DEBUG_DRAW_TARGET:String = "debugDrawTarget";
      
      public static const SERVER_MESSAGE:String = "serverMessage";
      
      public static const CONNECTION_LOST:String = "Connection_lost";
      
      public static const QUEST_UPDATE:String = "questUpdate";
      
      public static const PYLON_STAUTS:String = "pylonStatus";
      
      public static const IGNORE_LIST:String = "IgnoreList";
      
      public static const TEAM_UPDATE:String = "Team_Update";
       
      
      private var myMessage:IBattleMessage;
      
      public function BattleEvent(type:String, msg:IBattleMessage = null)
      {
         super(type,false,false);
         this.myMessage = msg;
      }
      
      public function getBattleMessage() : IBattleMessage
      {
         if(this.myMessage == null)
         {
            trace("[BEVT] no BattleMessage to return, make a null one.");
            return new BattleMessage("null",null);
         }
         return this.myMessage;
      }
      
      public function get gwMessage() : IBattleMessage
      {
         return getBattleMessage();
      }
      
      public function get battleMessage() : IBattleMessage
      {
         return getBattleMessage();
      }
   }
}
