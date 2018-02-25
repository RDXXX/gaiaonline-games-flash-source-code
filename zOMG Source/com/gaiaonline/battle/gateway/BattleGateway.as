package com.gaiaonline.battle.gateway
{
   import com.gaiaonline.battle.PingTimer;
   import com.gaiaonline.battle.news.INewsConnector;
   import com.gaiaonline.battle.news.INewsEventHandler;
   import com.gaiaonline.battle.news.ITickerConnector;
   import com.gaiaonline.battle.news.ITwitterEventHandler;
   import com.gaiaonline.flexModulesAPIs.gatewayInterfaces.IBattleGateway;
   import com.gaiaonline.flexModulesAPIs.gatewayInterfaces.IBattleMessage;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.flexModulesAPIs.shopWidget.IShopInfoConnector;
   import com.gaiaonline.flexModulesAPIs.shopWidget.IShopInfoEventHandler;
   import com.gaiaonline.flexModulesAPIs.shopWidget.IShopItemPurchaseConnector;
   import com.gaiaonline.flexModulesAPIs.shopWidget.IShopItemPurchaseEventHandler;
   import com.gaiaonline.flexModulesAPIs.shopWidget.IShopRefresher;
   import com.gaiaonline.gateway.IGaiaGateway;
   import com.gaiaonline.gateway.events.GaiaChannelEvent;
   import com.gaiaonline.gateway.events.GaiaChatEvent;
   import com.gaiaonline.gateway.events.GaiaFunctionEvent;
   import com.gaiaonline.gateway.events.GaiaFunctionResponseEvent;
   import com.gaiaonline.gateway.events.GaiaLoginEvent;
   import com.gaiaonline.gsi.GSIEvent;
   import com.gaiaonline.gsi.GSIGateway;
   import com.gaiaonline.platform.friends.IFriendConnector;
   import com.gaiaonline.platform.friends.IFriendConnectorHandler;
   import com.gaiaonline.platform.gateway.IActorRelocateConnector;
   import com.gaiaonline.platform.gateway.IActorRelocateHandler;
   import com.gaiaonline.platform.gateway.IAreaLoadingConnector;
   import com.gaiaonline.platform.gateway.IAreaLoadingHandler;
   import com.gaiaonline.platform.gateway.ICollisionConnector;
   import com.gaiaonline.platform.gateway.IGSTConnector;
   import com.gaiaonline.platform.gateway.IPlayerInfoConnector;
   import com.gaiaonline.platform.gateway.IResponseHandler;
   import com.gaiaonline.platform.gateway.IUnhandledGSIEventHandler;
   import com.gaiaonline.platform.gateway.IUnhandledGameServerEventHandler;
   import com.gaiaonline.platform.gateway.PlatformGateway;
   import com.gaiaonline.platform.gateway.SFoxHangoutGateway;
   import com.gaiaonline.platform.login.ILoginConnector;
   import com.gaiaonline.platform.login.ILoginManager;
   import com.gaiaonline.platform.serverSelect.IServerSelectConnector;
   import com.gaiaonline.platform.serverSelect.IServerSelectConnectorHandler;
   import com.gaiaonline.utils.RegisterUtils;
   import com.gaiaonline.utils.signin.Authentication;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.utils.getTimer;
   import it.gotoandplay.smartfoxserver.SocketStats;
   
   public class BattleGateway extends EventDispatcher implements ILoginConnector, IServerSelectConnector, INewsConnector, IFriendConnector, ITickerConnector, IUnhandledGSIEventHandler, IShopInfoConnector, IShopItemPurchaseConnector, IShopRefresher, ICollisionConnector, IUnhandledGameServerEventHandler, IAreaLoadingConnector, IActorRelocateConnector, IGSTConnector, IPlayerInfoConnector, IBattleGateway
   {
      
      private static const DEFAULT_GSI_SUBDOMAIN:String = "derek.d21";
      
      private static const GSI_GET_NEWS:uint = 7021;
      
      private static const GSI_LOGIN_TEST:uint = 109;
      
      private static const GSI_GET_SERVER_LIST:uint = 1205;
      
      private static var LOGMESSAGES:Boolean = false;
      
      private static const GSI_TWITTER_FEED:uint = 7023;
      
      private static const GSI_GET_LEVEL_COLORS:uint = 115;
      
      private static const GSI_GET_USER_INFO:uint = 107;
      
      private static const GSI_GET_LINK_LIST:uint = 7012;
      
      private static const GSI_GET_FRIENDS_LIST:uint = 7004;
       
      
      private var pass:String;
      
      private var msgs:Object;
      
      private var _platformGateway:PlatformGateway = null;
      
      private var ip:String;
      
      public var sfServerName:String = "No Available";
      
      private var _logedIn:Boolean = false;
      
      private var gaiaId:String;
      
      private var _messageCount:Object;
      
      private var _shopItemPurchaseManagers:Array;
      
      private var _newsHandlers:Array;
      
      private var _friendHandlers:Array;
      
      private var _pingTimer:PingTimer = null;
      
      private var userLevel:String;
      
      private var port:uint;
      
      private var sfoxResponseCache:Object = null;
      
      private var _shopInfoManagers:Array;
      
      private var zone:String = "battle";
      
      private var pluginId:String = "G_BT_PLUGIN";
      
      private var userActive:Boolean;
      
      private var _tickerManagers:Array;
      
      private var _lastTrace:int;
      
      private var userName:String;
      
      public function BattleGateway(ip:String = "127.0.0.1", subdomain:String = "derek.d21", port:uint = 8080, pid:String = "G_BT_PLUGIN")
      {
         _newsHandlers = [];
         _shopInfoManagers = [];
         _shopItemPurchaseManagers = [];
         _friendHandlers = [];
         _tickerManagers = [];
         _messageCount = {};
         _lastTrace = getTimer();
         super();
         this.ip = ip;
         this.port = port;
         this.pluginId = pid;
         this.msgs = new Object();
         _platformGateway = new PlatformGateway(subdomain,this,this);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.CMD_UILISTENER,addListener,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(BattleEvent.ZOMG_LOGIN,onZomgLogin,false,0,true);
         this._pingTimer = new PingTimer(this);
      }
      
      public function getLevelColors(queue:Boolean = false) : void
      {
         handleGSI(GSI_GET_LEVEL_COLORS,queue);
      }
      
      public function gsiSendQueue() : void
      {
         gsiGateway.send();
      }
      
      private function onLoginFail(evt:GaiaLoginEvent) : void
      {
         var msg:IBattleMessage = new BattleMessage("Error",null);
         var txt:String = "SF Error : [ " + this.sfServerName + " ] " + evt.errorMsg;
         if(evt.errorMsg.toLowerCase().indexOf("i/o error") >= 0)
         {
            txt = "Unable to connect to server: " + this.sfServerName;
         }
         msg.setError(evt.error,txt);
         var be:BattleEvent = new BattleEvent(BattleEvent.SF_LOGIN_FAIL,msg);
         this.dispatchEvent(be);
      }
      
      public function setGSISubdomain(subdomain:String) : void
      {
         _platformGateway.setGSISubdomain(subdomain);
      }
      
      private function onZomgLogin(evt:GlobalEvent) : void
      {
         this._logedIn = true;
      }
      
      public function get pingTimer() : PingTimer
      {
         return this._pingTimer;
      }
      
      public function set gsiSubdomain(v:String) : void
      {
         this.gsiGateway.subdomain = v;
      }
      
      public function setSessionId(sessionId:String) : void
      {
         _platformGateway.setSessionId(sessionId);
      }
      
      private function gsiQueue(method:uint, ... args) : void
      {
         args.splice(0,0,method);
         this.gsiGateway.queue.apply(this.gsiGateway,args);
      }
      
      private function onFunctionCallToClientFromServer(evt:GaiaLoginEvent) : void
      {
      }
      
      public function registerForTickerEvents(tickerManager:ITwitterEventHandler) : void
      {
         RegisterUtils.register(this._tickerManagers,tickerManager);
      }
      
      public function getTweets() : void
      {
         this.gsiGateway.invoke(GSI_TWITTER_FEED,5);
      }
      
      private function onStorePurchaseSuccess(message:String) : void
      {
         var manager:IShopItemPurchaseEventHandler = null;
         for each(manager in _shopItemPurchaseManagers)
         {
            manager.onStorePurchaseSuccess(message);
         }
      }
      
      public function unregisterForFriendsEvents(manager:IFriendConnectorHandler) : void
      {
         RegisterUtils.unregister(_friendHandlers,manager);
      }
      
      private function logMessage(cmd:String) : void
      {
         var key:* = null;
         if(!_messageCount[cmd])
         {
            _messageCount[cmd] = 0;
         }
         _messageCount[cmd]++;
         var now:int = getTimer();
         if(now - _lastTrace > 5000)
         {
            trace("------------------------");
            for(key in _messageCount)
            {
               trace("COMMAND:",_messageCount[key],"x",key);
            }
            _messageCount = {};
            _lastTrace = now;
         }
      }
      
      public function isAuthenticated() : Boolean
      {
         return _platformGateway.isAuthenticated();
      }
      
      private function initSfoxGaiaGateway() : void
      {
         gameServerGateway.addEventListener(Event.CLOSE,onConnectionClose,false,0,true);
         gameServerGateway.addEventListener(IOErrorEvent.IO_ERROR,onSfIOError,false,0,true);
         gameServerGateway.addEventListener(GaiaLoginEvent.LOGIN_SUCCESS,onLogin,false,0,true);
         gameServerGateway.addEventListener(GaiaLoginEvent.LOGIN_FAIL,onLoginFail,false,0,true);
         gameServerGateway.addEventListener(GaiaChannelEvent.CHANNEL_JOIN,onChannelJoin,false,0,true);
         gameServerGateway.addEventListener(GaiaChannelEvent.CHANNEL_JOIN_ERROR,onChannelJoinError,false,0,true);
         gameServerGateway.addEventListener(GaiaChannelEvent.CHANNEL_LEAVE,onChannelLeave,false,0,true);
         gameServerGateway.addEventListener(GaiaChannelEvent.CHANNEL_CREATE,onChannelCreate,false,0,true);
         gameServerGateway.addEventListener(GaiaChatEvent.CHAT,onServerChat,false,0,true);
         gameServerGateway.addEventListener(GaiaFunctionResponseEvent.FUNCTION_ERROR,onFunctionResponseError,false,0,true);
         gameServerGateway.addEventListener(GaiaFunctionEvent.FUNCTION_CALL,onFunctionCallToClientFromServer,false,0,true);
         gameServerGateway.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onSecurityError,false,0,true);
      }
      
      public function onGsiCallBack(evt:GSIEvent) : void
      {
         var userData:Object = null;
         switch(evt.gsiMethod)
         {
            case GSI_GET_USER_INFO:
               userData = evt.gsiData;
               this.userName = userData.username;
               this.gaiaId = userData.gaia_id;
               this.userLevel = userData.user_level;
               break;
            case GSI_GET_LEVEL_COLORS:
               this.dispatchEvent(new BattleGSIEvent(BattleGSIEvent.LEVEL_COLORS_RECEIVED,evt.gsiMethod,evt.gsiData));
               break;
            case GSI_GET_LINK_LIST:
               this.dispatchEvent(new BattleGSIEvent(BattleGSIEvent.LINK_LIST_RECEIVED,evt.gsiMethod,evt.gsiData));
               break;
            case GSI_TWITTER_FEED:
               onTweetsSuccessful(evt.gsiData as Array);
               break;
            case GSI_GET_SERVER_LIST:
               this.dispatchEvent(new BattleGSIEvent(BattleGSIEvent.SERVER_LIST_RECEIVED,evt.gsiMethod,evt.gsiData));
               break;
            case GSI_GET_FRIENDS_LIST:
               onFriendsListReceived(evt.gsiData);
               break;
            case GSI_GET_NEWS:
               onNewsReceived(evt.gsiData);
               break;
            default:
               this.dispatchEvent(new GSIEvent(GSIEvent.LOADED,evt.gsiMethod,evt.gsiData));
         }
      }
      
      public function testLoginExists() : void
      {
         _platformGateway.testLoginExists();
      }
      
      public function getPlayerInfo(handler:IResponseHandler) : void
      {
         _platformGateway.getPlayerInfo(handler);
      }
      
      public function getLinkList(queue:Boolean = false) : void
      {
         handleGSI(GSI_GET_LINK_LIST,queue);
      }
      
      public function onGsiError(evt:GSIEvent) : void
      {
         var msg:IBattleMessage = null;
         var be:BattleEvent = null;
         var d:Object = null;
         var dd:Object = null;
         var s:String = null;
         switch(evt.gsiMethod)
         {
            case 107:
            case 108:
               msg = new BattleMessage("Error",null);
               msg.setError(parseInt(evt.gsiData[0]),processGsiMsg(evt.gsiData[1]));
               be = new BattleEvent(BattleEvent.LOGIN_FAIL,msg);
               this.dispatchEvent(be);
               break;
            case 1001:
               d = {"error":processGsiMsg(evt.gsiData[1])};
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ABUSE_REPORT_FAILED,d));
               break;
            case 7010:
               dd = {"error":processGsiMsg(evt.gsiData[1])};
               this.dispatchEvent(new GlobalEvent(GlobalEvent.GSI_ERROR,dd));
               break;
            case 9006:
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.INVITE_FAILED,null));
               break;
            case 0:
            case 7021:
               break;
            case GSI_TWITTER_FEED:
               trace("Unable to fetch Twitter data.");
               break;
            default:
               if(GlobalEvent != null)
               {
                  s = " null gsidata";
                  if(evt.gsiData != null)
                  {
                     s = String(evt.gsiData);
                  }
                  GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.GENERIC_ERR_MSG,{
                     "header":"GSI ERROR",
                     "message":s,
                     "reset":false
                  }));
               }
         }
      }
      
      public function getNonce(shopID:String, cookie:uint) : void
      {
         this.sendMsg(new BattleMessage(BattleEvent.GET_NONCE,{"cookie":cookie}));
      }
      
      public function getShopInfo(shopID:String) : void
      {
         this.sendMsg(new BattleMessage(BattleEvent.SHOP_INFO,{}));
      }
      
      private function sfoxPacketTypeCached(type:String) : Boolean
      {
         if(this.sfoxResponseCache)
         {
            return this.sfoxResponseCache[type];
         }
         return false;
      }
      
      public function handlePushMessage(bmsg:IBattleMessage, cmd:String = null) : void
      {
         var i:int = 0;
         var obj:Object = null;
         var gold:Object = null;
         var gcash:Object = null;
         var stat:String = null;
         var wei:int = 0;
         var weObj:Object = null;
         var weparams:Object = null;
         var enableParam:Boolean = false;
         var nonce:String = null;
         var nonceCookie:int = 0;
         if(cmd == null)
         {
            cmd = bmsg.cmd;
         }
         if(cmd == "getRoomActorInfo" && bmsg != null && bmsg.responseObj != null)
         {
            for(i = 0; i < bmsg.responseObj.length; i++)
            {
               obj = bmsg.responseObj[i];
               if(obj.tp != 3 && obj.url == null)
               {
                  trace("MISSING URL ON FULL ACTOR UPDATE");
               }
            }
         }
         if(this.hasEventListener(AdminCmdData.TYPE))
         {
            this.dispatchEvent(new AdminCmdData(cmd));
            this.dispatchEvent(new AdminCmdListener(cmd,bmsg));
         }
         if(this.sfoxPacketTypeCached(cmd))
         {
            this.cacheSfoxPacket(cmd,bmsg);
         }
         else
         {
            if(LOGMESSAGES)
            {
               logMessage(cmd);
            }
            switch(cmd)
            {
               case "actorJoins":
                  this.dispatchEvent(new BattleEvent(BattleEvent.AWARE_REMOVE,bmsg));
               case "300":
               case "actorUpdate":
               case "actorBeginsMove":
               case "rageUpdate":
               case "exhaustionUpdate":
               case "playerInfo":
               case "aggroUpdate":
               case "stateUpdate":
               case "getActorsInfo":
               case "actor":
                  this.dispatchEvent(new BattleEvent(BattleEvent.ACTOR_UPDATE,bmsg));
                  break;
               case "getRoomActorInfo":
                  this.dispatchEvent(new BattleEvent(BattleEvent.ACTOR_UPDATE,bmsg));
                  GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.HACK_EVENT_PRE_ACTOR_UPDATE,bmsg));
                  break;
               case "act":
                  this.dispatchEvent(new BattleEvent(BattleEvent.ACTOR_ACTION,bmsg));
                  break;
               case "301":
                  this.dispatchEvent(new BattleEvent(BattleEvent.ACTOR_LEAVE,bmsg));
                  break;
               case "104":
               case "105":
                  this.dispatchEvent(new BattleEvent(BattleEvent.LOOT,bmsg));
                  break;
               case "chat":
                  this.dispatchEvent(new BattleEvent(BattleEvent.CHAT,bmsg));
                  break;
               case "showEmoticon":
                  this.dispatchEvent(new BattleEvent(BattleEvent.CHAT_EMOTE,bmsg));
                  break;
               case "150":
                  this.dispatchEvent(new BattleEvent(BattleEvent.TEAM_UPDATE,bmsg));
                  break;
               case "invite":
                  this.dispatchEvent(new BattleEvent(BattleEvent.TEAM_INVITE_SERVER_RESPONSE,bmsg));
                  break;
               case "152":
                  this.dispatchEvent(new BattleEvent(BattleEvent.TEAM_INVITE,bmsg));
                  break;
               case "154":
                  this.dispatchEvent(new BattleEvent(BattleEvent.TEAM_INVITE_REJECTED,bmsg));
                  break;
               case "158":
                  this.dispatchEvent(new BattleEvent(BattleEvent.TEAM_MEMBER_GONE,bmsg));
                  break;
               case "quickMove":
                  this.dispatchEvent(new BattleEvent(BattleEvent.QUICK_MOVE,bmsg));
                  break;
               case "getIgnoreList":
                  this.dispatchEvent(new BattleEvent(BattleEvent.IGNORE_LIST,bmsg));
                  break;
               case "lookingForGroup":
                  this.dispatchEvent(new BattleEvent(BattleEvent.LFG_FLAG,bmsg));
                  break;
               case "pushMiniMapCmd":
                  this.dispatchEvent(new BattleEvent(BattleEvent.MINI_MAP_UPDATE,bmsg));
                  break;
               case "grantRing":
                  this.dispatchEvent(new BattleEvent(BattleEvent.GRANT_RING,bmsg));
                  break;
               case BattleEvent.GHI_LADDER_ADVANCE:
                  this.dispatchEvent(new BattleEvent(BattleEvent.GHI_LADDER_ADVANCE,bmsg));
                  break;
               case "quest":
                  this.dispatchEvent(new BattleEvent(BattleEvent.QUEST_UPDATE,bmsg));
                  break;
               case "moveRing":
                  this.dispatchEvent(new BattleEvent(BattleEvent.MOVE_RING,bmsg));
                  break;
               case "getItemInfo":
                  this.dispatchEvent(new BattleEvent(BattleEvent.ITEM_INFO,bmsg));
                  break;
               case BattleEvent.INVENTORY_INFO:
                  this.dispatchEvent(new BattleEvent(BattleEvent.INVENTORY_INFO,bmsg));
                  break;
               case "latchUpdate":
                  break;
               case "orb":
                  this.dispatchEvent(new BattleEvent(BattleEvent.ORB,bmsg));
                  break;
               case "changeRing":
                  this.dispatchEvent(new BattleEvent(BattleEvent.RING_UPDATE,bmsg));
                  break;
               case "adjacentAdd":
                  this.dispatchEvent(new BattleEvent(BattleEvent.AWARE_ADD,bmsg));
                  break;
               case "adjacentMoveStart":
                  this.dispatchEvent(new BattleEvent(BattleEvent.AWARE_START,bmsg));
                  break;
               case "adjacentMoveStop":
                  this.dispatchEvent(new BattleEvent(BattleEvent.AWARE_STOP,bmsg));
                  break;
               case "adjacentDeath":
                  this.dispatchEvent(new BattleEvent(BattleEvent.AWARE_DEATH,bmsg));
                  break;
               case "debugDrawTarget":
                  this.dispatchEvent(new BattleEvent(BattleEvent.DEBUG_DRAW_TARGET,bmsg));
                  break;
               case BattleEvent.WORLD_EVENT:
                  for(wei = 0; wei < bmsg.responseObj.length; wei++)
                  {
                     weObj = bmsg.responseObj[0];
                     weparams = weObj.parameters;
                     switch(weObj.bmt)
                     {
                        case "widget":
                           enableParam = weparams.widgetEnable != null?Boolean(weparams.widgetEnable):false;
                           GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.WIDGET_SHOW,{
                              "widgetName":weparams.widgetName,
                              "widgetShow":weparams.widgetShow,
                              "widgetEnable":weparams.widgetEnable,
                              "widgetPromptTitle":weparams.widgetPromptTitle,
                              "widgetPromptContent":weparams.widgetPromptContent
                           }));
                           break;
                        case "broadcast":
                           GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.WORLD_BROADCAST,{
                              "name":weparams.name,
                              "url":weparams.url,
                              "npcName":weparams.npcName,
                              "text":weparams.npcText,
                              "title":weparams.title,
                              "show":weparams.show
                           }));
                           break;
                        case "counter":
                           GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.WORLD_COUNTER,{
                              "name":weparams.name,
                              "title":weparams.title,
                              "value":weparams.value,
                              "show":weparams.show,
                              "goal":weparams.goal
                           }));
                           break;
                        case "clock":
                           GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.WORLD_TIMER,{
                              "name":weparams.name,
                              "title":weparams.title,
                              "start":weparams.start,
                              "finish":weparams.finish,
                              "show":weparams.show,
                              "playing":weparams.playing
                           }));
                           break;
                        default:
                           GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.GENERIC_WORLD_EVENT,weObj));
                     }
                  }
                  break;
               case "pylonStatus":
                  this.dispatchEvent(new BattleEvent(BattleEvent.PYLON_STAUTS,bmsg));
                  break;
               case "getConsumableInventory":
                  this.dispatchEvent(new BattleEvent(BattleEvent.CONSUMABLE_INVENTORY,bmsg));
                  break;
               case "getConsumableInfo":
                  this.dispatchEvent(new BattleEvent(BattleEvent.CONSUMABLE_INFO,bmsg));
                  break;
               case "userIsInControl":
                  onUserInControl(bmsg);
                  break;
               case "serverFull":
                  this.dispatchEvent(new BattleEvent(BattleEvent.SERVER_FULL,bmsg));
                  break;
               case "startCollectingStats":
                  this.dispatchEvent(new BattleEvent(BattleEvent.START_COLLECTING_STATS,bmsg));
                  break;
               case "serverErrorMessage":
                  this.dispatchEvent(new BattleEvent(BattleEvent.SERVER_MESSAGE,bmsg));
                  break;
               case BattleEvent.SHOP_INFO:
                  this.onShopInfoSuccess(bmsg);
                  break;
               case BattleEvent.GET_NONCE:
                  if(bmsg && bmsg.responseObj && bmsg.responseObj[0] && bmsg.responseObj[0].nonce)
                  {
                     nonce = bmsg.responseObj[0].nonce;
                     nonceCookie = parseInt(bmsg.responseObj[0].cookie);
                     this.onNonce(nonce,nonceCookie);
                  }
                  else
                  {
                     this.onNonceError();
                  }
                  break;
               case BattleEvent.BUY_STORE_ITEM:
                  this.onStorePurchaseResult(bmsg);
                  break;
               case BattleEvent.UI_BUTTON_MENU:
                  this.dispatchEvent(new BattleEvent(BattleEvent.UI_BUTTON_MENU,bmsg));
                  break;
               case BattleEvent.UI_BUTTON_MENU_REMOVE:
                  this.dispatchEvent(new BattleEvent(BattleEvent.UI_BUTTON_MENU_REMOVE,bmsg));
                  break;
               case BattleEvent.ORB_SWAP:
                  this.dispatchEvent(new BattleEvent(BattleEvent.ORB_SWAP,bmsg));
                  break;
               case BattleEvent.BLING_UPDATE:
                  gold = bmsg.responseObj[0].gold;
                  gcash = bmsg.responseObj[0].gcash;
                  if(gold)
                  {
                     GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.GOLD_UPDATE,{"count":Number(gold)}));
                  }
                  if(gcash)
                  {
                     GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.GCASH_UPDATE,{"count":int(gcash)}));
                  }
                  break;
               case "clientStat":
                  stat = bmsg.responseObj[0].stat;
                  GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.TRACKING_EVENT,stat));
                  break;
               case "inviteToBeFriend":
                  this.dispatchEvent(new BattleEvent(BattleEvent.INVITE_TO_BE_FRIEND,bmsg));
                  break;
               case "inviteFriendCompleted":
                  this.dispatchEvent(new BattleEvent(BattleEvent.INVITE_TO_FRIEND_COMPLETED,bmsg));
                  break;
               case "zomg_login":
                  this.dispatchEvent(new BattleEvent(BattleEvent.ZOMG_LOGIN,bmsg));
                  break;
               case "userLookup":
                  this.dispatchEvent(new BattleEvent(BattleEvent.USER_LOOKUP,bmsg));
                  break;
               case "chatRoomSpecs":
                  this.dispatchEvent(new BattleEvent(BattleEvent.JABBER_CHAT_ROOM_SPECS,bmsg));
            }
            processDispatchCmd(bmsg,cmd);
         }
      }
      
      private function cacheSfoxPacket(cmd:String, bmsg:IBattleMessage) : void
      {
         var cacheForType:Array = this.initSfoxResponseCache(cmd);
         var cachedSFoxResponse:CachedSFoxResponse = new CachedSFoxResponse(cmd,bmsg);
         cacheForType.push(cachedSFoxResponse);
      }
      
      private function onChannelCreate(evt:GaiaLoginEvent) : void
      {
      }
      
      private function onNonce(nonce:String, nonceCookie:uint) : void
      {
         var manager:IShopItemPurchaseEventHandler = null;
         for each(manager in _shopItemPurchaseManagers)
         {
            manager.onNonce(nonce,nonceCookie);
         }
      }
      
      public function get sessionId() : String
      {
         return _platformGateway.gsid;
      }
      
      private function onNewsReceived(data:Object) : void
      {
         var manager:INewsEventHandler = null;
         for each(manager in _newsHandlers)
         {
            manager.onNewsSuccess(data);
         }
      }
      
      public function getCollisionData(roomName:String, handler:IResponseHandler) : void
      {
         _platformGateway.getCollisionData(roomName,handler);
      }
      
      public function unregisterForShopItemPurchaseEvents(manager:IShopItemPurchaseEventHandler) : void
      {
         RegisterUtils.unregister(_shopItemPurchaseManagers,manager);
      }
      
      public function getNews(numOfNewsItems:uint = 10) : void
      {
         this.gsiGateway.invoke(GSI_GET_NEWS,numOfNewsItems);
      }
      
      public function get connectedToGameServer() : Boolean
      {
         return _platformGateway.connectedToGameServer;
      }
      
      private function onTweetsSuccessful(tweets:Array) : void
      {
         var twitterManager:ITwitterEventHandler = null;
         for each(twitterManager in this._tickerManagers)
         {
            twitterManager.onTweetsSuccessful(tweets);
         }
      }
      
      private function onStorePurchaseResult(bmsg:IBattleMessage) : void
      {
         var response:Object = null;
         var error:Number = NaN;
         var errorMessage:String = null;
         if(bmsg && bmsg.responseObj && bmsg.responseObj[0])
         {
            response = bmsg.responseObj[0];
            error = NaN;
            if(response.error)
            {
               error = bmsg.responseObj.error;
            }
            if(!isNaN(error))
            {
               errorMessage = response.errorMessage;
               onStorePurchaseError(error,errorMessage);
            }
            else if(bmsg.responseObj[0].buyResponse)
            {
               onStorePurchaseSuccess(bmsg.responseObj[0].buyResponse);
            }
            else
            {
               onStorePurchaseError(NaN,"Unable to get purchase results.");
            }
         }
         else
         {
            onStorePurchaseError(NaN,"Unable to get purchase results.");
         }
      }
      
      private function onStorePurchaseError(errorCode:Number, errorMessage:String) : void
      {
         var manager:IShopItemPurchaseEventHandler = null;
         for each(manager in _shopItemPurchaseManagers)
         {
            manager.onStorePurchaseError(errorCode,errorMessage);
         }
      }
      
      private function onUserInControl(battleMessage:IBattleMessage) : void
      {
         var allowUserMove:Boolean = true;
         var allowRingUse:Boolean = true;
         var allowConsumableUse:Boolean = true;
         var allowUsableUse:Boolean = true;
         var type:String = battleMessage.responseObj[0].type;
         switch(type)
         {
            case "root":
               allowUserMove = false;
               allowRingUse = true;
               allowConsumableUse = true;
               allowUsableUse = true;
               break;
            case "sleep":
               allowUserMove = false;
               allowRingUse = false;
               allowConsumableUse = false;
               allowUsableUse = false;
               break;
            case "player":
            default:
               allowUserMove = true;
               allowRingUse = true;
               allowConsumableUse = true;
               allowUsableUse = true;
         }
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALLOW_USER_MOVE,allowUserMove));
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALLOW_RING_USE,{"allow":allowRingUse}));
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALLOW_CONSUMABLE_USE,{
            "allow":allowConsumableUse,
            "allowCure":true
         }));
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALLOW_USABLE_USE,allowUsableUse));
      }
      
      public function getUserName() : String
      {
         return this.userName;
      }
      
      public function registerForRelocationEvents(handler:IActorRelocateHandler) : void
      {
         _platformGateway.registerForRelocationEvents(handler);
      }
      
      public function setSpaceName(spaceName:String) : void
      {
         this._platformGateway.setSpaceName(spaceName);
      }
      
      public function guestLogin(guestAvatarID:String, domain:String = null) : void
      {
         _platformGateway.guestLogin(guestAvatarID,domain);
      }
      
      public function unregisterForTickerEvents(tickerManager:ITwitterEventHandler) : void
      {
         RegisterUtils.unregister(this._tickerManagers,tickerManager);
      }
      
      public function registerForShopEvents(manager:IShopInfoEventHandler) : void
      {
         RegisterUtils.register(_shopInfoManagers,manager);
      }
      
      public function getServerList(spaceName:String = null) : void
      {
         var sn:String = this._platformGateway.spaceName;
         _platformGateway.getServerList(sn);
      }
      
      public function login(userName:String, password:String, domain:String = null) : void
      {
         _platformGateway.login(userName,password,domain);
      }
      
      public function registerForAreaLoadingEvents(handler:IAreaLoadingHandler) : void
      {
         _platformGateway.registerForAreaLoadingEvents(handler);
      }
      
      public function unregisterForShopEvents(manager:IShopInfoEventHandler) : void
      {
         RegisterUtils.unregister(_shopInfoManagers,manager);
      }
      
      public function uncacheSfoxPacketType(type:String) : void
      {
         var cachedResponse:CachedSFoxResponse = null;
         var hasTypeEntries:Boolean = false;
         var typeEntry:* = null;
         var cacheForType:Object = this.sfoxResponseCache && this.sfoxResponseCache[type];
         if(!cacheForType)
         {
            return;
         }
         delete this.sfoxResponseCache[type];
         for each(cachedResponse in cacheForType)
         {
            this.handlePushMessage(cachedResponse.bmsg,cachedResponse.cmd);
         }
         hasTypeEntries = false;
         for(typeEntry in this.sfoxResponseCache)
         {
            if(typeEntry && typeEntry.length)
            {
               hasTypeEntries = true;
               break;
            }
         }
         if(!hasTypeEntries)
         {
            this.sfoxResponseCache = null;
         }
      }
      
      public function onGameServerFunctionResponse(evt:GaiaFunctionResponseEvent) : void
      {
         var bmsg:IBattleMessage = null;
         var bmt:String = null;
         var obj:Object = evt.data;
         var responseObj:Object = obj.result.result;
         var cmd:String = obj.result.cmd;
         if(this.msgs[obj.cid] != null)
         {
            if(msgs[obj.cid] is IResponseHandler)
            {
               IResponseHandler(msgs[obj.cid]).onResponse(responseObj);
               delete msgs[obj.cid];
            }
            else
            {
               bmsg = BattleMessage(this.msgs[obj.cid]);
               bmsg.setResult(responseObj);
            }
         }
         else
         {
            bmt = "na";
            if(responseObj != null)
            {
               bmt = responseObj.bmt;
            }
            bmsg = new BattleMessage(bmt,null);
            bmsg.setResult(responseObj);
            this.handlePushMessage(bmsg,cmd);
         }
         if(this.msgs[obj.cid] != null)
         {
            delete this.msgs[obj.cid];
         }
      }
      
      private function onChannelJoin(evt:GaiaLoginEvent) : void
      {
      }
      
      private function get gsiGateway() : GSIGateway
      {
         return _platformGateway.gsiGateway;
      }
      
      public function registerForFriendsEvents(manager:IFriendConnectorHandler) : void
      {
         RegisterUtils.register(_friendHandlers,manager);
      }
      
      private function processDispatchCmd(bmsg:IBattleMessage, cmd:String) : void
      {
         var eventType:String = null;
         var msg:Object = null;
         if(null == bmsg)
         {
            return;
         }
         var responseArray:Array = bmsg.responseObj as Array;
         if(!responseArray)
         {
            return;
         }
         for each(msg in responseArray)
         {
            eventType = msg.bmt;
            if(LOGMESSAGES)
            {
               logMessage(eventType);
            }
            if(GlobalEvent.eventDispatcher.hasEventListener(eventType))
            {
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(eventType,msg,cmd));
            }
            if(msg.hasOwnProperty("debug") && msg["debug"])
            {
               if(this.hasEventListener(AdminMsg.TYPE))
               {
                  this.dispatchEvent(new AdminMsg(msg));
               }
            }
         }
      }
      
      public function logout() : void
      {
         var msg:IBattleMessage = new BattleMessage(BattleEvent.CLIENT_QUIT,null);
         this.sendMsg(msg);
      }
      
      private function onFriendsListReceived(data:Object) : void
      {
         var manager:IFriendConnectorHandler = null;
         for each(manager in _friendHandlers)
         {
            manager.onFriendsListReceived(data);
         }
      }
      
      private function onChannelJoinError(evt:GaiaLoginEvent) : void
      {
      }
      
      public function registerForNewsEvents(handler:INewsEventHandler) : void
      {
         RegisterUtils.register(_newsHandlers,handler);
      }
      
      public function gsiLogIn(zone:String, userName:String, password:String) : void
      {
         this.zone = zone;
         this.userName = userName;
         this.pass = password;
         this.gsiGateway.invoke(108,this.userName,Authentication.encrypt(this.pass));
      }
      
      public function gameServerLogin(ip:String, port:uint) : void
      {
         _platformGateway.gameServerLogin(ip,port);
      }
      
      public function get logedIn() : Boolean
      {
         return this._logedIn;
      }
      
      public function get gsiSubdomain() : String
      {
         return this.gsiGateway.subdomain;
      }
      
      private function initSfoxResponseCache(type:String) : Array
      {
         if(!this.sfoxResponseCache)
         {
            this.sfoxResponseCache = new Object();
         }
         var cacheForType:Array = this.sfoxResponseCache[type];
         if(!cacheForType)
         {
            cacheForType = new Array();
            this.sfoxResponseCache[type] = cacheForType;
         }
         return cacheForType;
      }
      
      private function onNonceError() : void
      {
         var manager:IShopItemPurchaseEventHandler = null;
         for each(manager in _shopItemPurchaseManagers)
         {
            manager.onNonceError();
         }
      }
      
      public function unregisterForNewsEvents(handler:INewsEventHandler) : void
      {
         RegisterUtils.unregister(_newsHandlers,handler);
      }
      
      public function set serverIp(v:String) : void
      {
         this.ip = v;
      }
      
      private function onServerChat(evt:GaiaLoginEvent) : void
      {
      }
      
      public function getFriendsList() : void
      {
         this.gsiInvoke(GSI_GET_FRIENDS_LIST,sessionId,12345,"friend");
      }
      
      public function getUserInfo(queue:Boolean = false) : void
      {
         handleGSI(GSI_GET_USER_INFO,queue,sessionId);
      }
      
      private function onSecurityError(evt:SecurityErrorEvent) : void
      {
      }
      
      public function createBattleMessage(command:String, requestObj:*) : IBattleMessage
      {
         var msg:IBattleMessage = new BattleMessage(command,requestObj);
         return msg;
      }
      
      public function cacheSfoxPacketType(type:String) : void
      {
         initSfoxResponseCache(type);
      }
      
      private function get gameServerGateway() : IGaiaGateway
      {
         return _platformGateway.smartfoxGateway;
      }
      
      private function onSfIOError(evt:IOErrorEvent) : void
      {
         trace("[SfGateway] : ","IO Error");
      }
      
      public function unregisterForLoginEvents(loginManager:ILoginManager) : void
      {
         _platformGateway.unregisterForLoginEvents(loginManager);
      }
      
      private function onFunctionResponseError(evt:GaiaLoginEvent) : void
      {
      }
      
      public function buyItem(shopID:String, nonce:String, itemId:Number) : void
      {
         this.sendMsg(new BattleMessage(BattleEvent.BUY_STORE_ITEM,{
            "nonce":nonce,
            "itemId":itemId
         }));
      }
      
      public function set sessionId(gsid:String) : void
      {
         _platformGateway.setSessionId(gsid);
      }
      
      private function addListener(ge:GlobalEvent) : void
      {
         var me:BattleGateway = null;
         var filterStr:String = null;
         var listenerType:String = null;
         me = this;
         var obj:Object = ge.data;
         if(obj)
         {
            filterStr = obj["eventFilter"];
            listenerType = obj["type"];
            GlobalEvent.eventDispatcher.addEventListener(listenerType,function(ge:GlobalEvent):void
            {
               var msg:IBattleMessage = null;
               var str:String = ge.data as String;
               if(str && (null == filterStr || -1 < str.indexOf(filterStr)))
               {
                  msg = new BattleMessage(GlobalEvent.CMD_UILISTENER,{
                     "type":listenerType,
                     "value":str,
                     "filterStr":filterStr
                  });
                  me.sendMsg(msg);
                  GlobalEvent.eventDispatcher.removeEventListener(listenerType,arguments.callee);
               }
            });
         }
      }
      
      public function getGSTTime(handler:IResponseHandler) : void
      {
         _platformGateway.getGSTTime(handler);
      }
      
      private function onShopInfoSuccess(bmsg:IBattleMessage) : void
      {
         var manager:IShopInfoEventHandler = null;
         var shopInfo:Array = null;
         for each(manager in _shopInfoManagers)
         {
            if(bmsg.responseObj as Array && bmsg.responseObj[0])
            {
               shopInfo = bmsg.responseObj[0].storeInfo as Array;
               if(shopInfo)
               {
                  manager.onShopInfoSuccess(shopInfo);
                  return;
               }
            }
            manager.onShopInfoError(null);
         }
      }
      
      public function onServerListReceived(data:Object) : void
      {
         this._platformGateway.onServerListReceived(data);
      }
      
      private function handleGSI(gsiNum:uint, queue:Boolean = false, ... args) : void
      {
         args.splice(0,0,gsiNum);
         if(queue)
         {
            gsiQueue.apply(this,args);
         }
         else
         {
            gsiInvoke.apply(this,args);
         }
      }
      
      private function onLogin(evt:GaiaLoginEvent) : void
      {
         this.dispatchEvent(new BattleEvent(BattleEvent.LOGIN));
      }
      
      private function createGameServerPacketFromBattleMessage(msg:IBattleMessage) : Object
      {
         return _platformGateway.createGameServerPacket(msg.commandName,msg.requestObjUnsafeForModifying);
      }
      
      public function registerForShopItemPurchaseEvents(manager:IShopItemPurchaseEventHandler) : void
      {
         RegisterUtils.register(_shopItemPurchaseManagers,manager);
      }
      
      public function get serverIp() : String
      {
         return this.ip;
      }
      
      public function gsiInvoke(method:int, ... args) : void
      {
         if(args.length > 1 || args.length == 0)
         {
            this.gsiGateway.invokeArray(method,args);
         }
         else
         {
            this.gsiGateway.invoke(method,args[0]);
         }
      }
      
      public function sendMsg(msg:IBattleMessage) : void
      {
         if(null == this.gameServerGateway)
         {
            throw new Error("SfoxGaiaGateway is not initialized!");
         }
         var csMsg:Object = createGameServerPacketFromBattleMessage(msg);
         var cid:int = callGameServerGateway(csMsg);
         if(msg.hasEventListener(BattleEvent.CALL_BACK))
         {
            msg.sentTime = getTimer();
            this.msgs[cid] = msg;
         }
      }
      
      private function onConnectionClose(evt:Event) : void
      {
         this.dispatchEvent(new BattleEvent(BattleEvent.CONNECTION_LOST));
      }
      
      public function registerForLoginEvents(loginManager:ILoginManager) : void
      {
         _platformGateway.registerForLoginEvents(loginManager);
      }
      
      public function registerForServerSelectEvents(manager:IServerSelectConnectorHandler) : void
      {
         _platformGateway.registerForServerSelectEvents(manager);
      }
      
      public function unregisterForServerSelectEvents(manager:IServerSelectConnectorHandler) : void
      {
         _platformGateway.unregisterForServerSelectEvents(manager);
      }
      
      private function processGsiMsg(msg:String) : String
      {
         var r:String = "";
         if(msg != null)
         {
            r = msg.split("+").join(" ");
         }
         return r;
      }
      
      public function refreshShopMetaInfo(shopID:String) : void
      {
         this.sendMsg(new BattleMessage(BattleEvent.SHOP_REFRESH_META_INFO,{}));
      }
      
      private function callGameServerGateway(packet:Object) : int
      {
         return _platformGateway.callGameServerGateway(packet);
      }
      
      private function onChannelLeave(evt:GaiaLoginEvent) : void
      {
      }
      
      public function get socketStats() : SocketStats
      {
         return SFoxHangoutGateway(gameServerGateway).stats;
      }
      
      public function sfLogIn(serverName:String, ip:String = null, port:int = -1) : void
      {
         this.sfServerName = serverName;
         if(ip != null)
         {
            this.ip = ip;
         }
         if(port >= 0)
         {
            this.port = port;
         }
         this.initSfoxGaiaGateway();
         _platformGateway.gameServerLogin(this.ip,this.port);
      }
   }
}

import com.gaiaonline.flexModulesAPIs.gatewayInterfaces.IBattleMessage;

class CachedSFoxResponse
{
    
   
   public var cmd:String = null;
   
   public var bmsg:IBattleMessage = null;
   
   function CachedSFoxResponse(cmd:String, bmsg:IBattleMessage)
   {
      super();
      this.cmd = cmd;
      this.bmsg = bmsg;
   }
}
