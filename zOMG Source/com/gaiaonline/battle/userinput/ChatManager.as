package com.gaiaonline.battle.userinput
{
   import com.adobe.utils.StringUtil;
   import com.gaiaonline.battle.ApplicationInterfaces.ILinkManager;
   import com.gaiaonline.battle.ApplicationInterfaces.IUIFramework;
   import com.gaiaonline.battle.GlobalColors;
   import com.gaiaonline.battle.GlobalTexts;
   import com.gaiaonline.battle.gateway.BattleEvent;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.gateway.BattleMessage;
   import com.gaiaonline.battle.jabberchat.JabberEvent;
   import com.gaiaonline.battle.jabberchat.JabberGateway;
   import com.gaiaonline.battle.jabberchat.JabberMessage;
   import com.gaiaonline.battle.newactors.ActorManager;
   import com.gaiaonline.battle.newactors.BaseActor;
   import com.gaiaonline.battle.newactors.BaseActorEvent;
   import com.gaiaonline.battle.ui.AlertTypes;
   import com.gaiaonline.battle.ui.ChatController;
   import com.gaiaonline.battle.ui.DialogWindow;
   import com.gaiaonline.battle.ui.DialogWindowFactory;
   import com.gaiaonline.battle.ui.DialogWindowTypes;
   import com.gaiaonline.battle.userServerSettings.IGameSettings;
   import com.gaiaonline.battle.utils.BattleUtils;
   import com.gaiaonline.display.wordbubble.BubbleEvent;
   import com.gaiaonline.flexModulesAPIs.actorInfo.ActorTypes;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.flexModulesAPIs.managers.chat.DeSlasher;
   import com.gaiaonline.gsi.GSIEvent;
   import com.gaiaonline.utils.DisplayObjectUtils;
   import com.gaiaonline.utils.FrameTimer;
   import com.gaiaonline.utils.wordfilter.WordFilter;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Timer;
   
   public class ChatManager extends EventDispatcher
   {
      
      public static const s_colorLookup:Object = {
         "area":GlobalColors.AREA_CHANNEL,
         "room":GlobalColors.ROOM_CHANNEL,
         "team":GlobalColors.TEAM_CHANNEL,
         "clan":GlobalColors.CLAN_CHANNEL,
         "dialog":GlobalColors.DIALOG,
         "whisper":GlobalColors.WHISPER_CHANNEL,
         "server":GlobalColors.SERVER_CHANNEL
      };
      
      private static const MAX_GAIA_NAME_LEN:uint = 26;
      
      public static const REPORT_ABUSE_CALL_ID:int = 1001;
      
      private static const GAIA_NAME_TO_GAIAID:int = 9006;
      
      private static var s_mapSlashToChannel:Object = null;
       
      
      private var _jabberGateway:JabberGateway;
      
      private var _gateway:BattleGateway = null;
      
      private var _uiFramework:IUIFramework = null;
      
      private const MESSAGE_PENALTY_BOX_DURATION:Number = 5000.0;
      
      private var _ignoreList:Array;
      
      private var errorMap:Object;
      
      private var penaltyTimer:Timer;
      
      private const MESSAGE_TIME_WINDOW:int = 5000.0;
      
      private var _disableDialog:Boolean = false;
      
      private var _cachedChats:Array;
      
      private var _dialogOpen:Boolean = false;
      
      private var _wordFilterReady:Boolean = false;
      
      private var _gaiaNamesToLookup:Object;
      
      private var _frameTimer:FrameTimer;
      
      private var _gimLoginErrorShown:Boolean = false;
      
      private var _conversationHash:Object;
      
      private const MESSAGE_TIME_QUEUE_MAX_LEN:int = 3;
      
      private var _linkManager:ILinkManager = null;
      
      private var _gimEnabled:Boolean = false;
      
      private var _autoMoveInRange:Boolean = true;
      
      private var _pendingServerChatEvents:Array;
      
      private var _wordFilter:WordFilter = null;
      
      private var _inited:Boolean = false;
      
      private var isScripDialogOpen:Boolean = false;
      
      private var messageTimesQueue:Array;
      
      private var scriptDialogs:Array;
      
      private const REPLY_MESSAGE_MAX:uint = 5;
      
      private var _receivedIMCounter:uint = 0;
      
      public function ChatManager(gateway:BattleGateway, uiFramework:IUIFramework, linkManager:ILinkManager)
      {
         scriptDialogs = new Array();
         _cachedChats = new Array();
         _gaiaNamesToLookup = new Object();
         _conversationHash = new Object();
         _frameTimer = new FrameTimer(onFrameTimer);
         _ignoreList = [];
         messageTimesQueue = new Array();
         penaltyTimer = new Timer(MESSAGE_PENALTY_BOX_DURATION,1);
         _pendingServerChatEvents = [];
         errorMap = new Object();
         super();
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.USER_LEVEL_SET,onUserLevelSet);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.CONVERSATION_END,onConversationEnd);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.CHATTABLE_MSG,onChattableMessage);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.DIALOG_OPEN_STATUS_CHANGED,onDialogOpenStatusChanged);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.DISABLE_DIALOG,onDisableDialog);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.WORD_FILTER_READY,onWordFilterReady);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.INVITE_FAILED,onInviteFailed);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.USER_SETTINGS_LOADED,onGraphicsOptionChanged,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.GRAPHIC_OPTIONS_CHANGED,onGraphicsOptionChanged,false,0,true);
         this._gateway = gateway;
         this._uiFramework = uiFramework;
         this._linkManager = linkManager;
         this._frameTimer.startPerFrame();
         this._gateway.addEventListener(BattleEvent.USER_LOOKUP,onUserLookup,false,0,true);
         this._gateway.addEventListener(BattleEvent.CHAT,onServerChat,false,0,true);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.CHAT_SEND,onChatSend);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,GlobalEvent.CMD_DIALOG,onDialog);
         DisplayObjectUtils.addWeakListener(GlobalEvent.eventDispatcher,BubbleEvent.BTN_CLICK,onDialogBtnClick);
         this._jabberGateway = JabberGateway.getInstance(this._gateway);
         this._jabberGateway.addEventListener(JabberGateway.MESSAGE_RECEIVED,onJabberMessageReceived);
         IMProxyEvent.proxy.addEventListener(IMProxyEvent.IM_RECEIVED,onIMReceived,false,0,true);
         IMProxyEvent.proxy.addEventListener(IMProxyEvent.MESSAGE_DELIVERY_SUCCESS,onIMSuccess,false,0,true);
         setGimEnabled(false);
         IMProxyEvent.proxy.addEventListener(IMProxyEvent.LOGIN_SUCCESS,onLoginSuccess,false,0,true);
         IMProxyEvent.proxy.addEventListener(IMProxyEvent.NOT_LOGGED_IN,onNotLoggedIn,false,0,true);
         IMProxyEvent.proxy.addEventListener(IMProxyEvent.ACTION_REQUESTED_WITH_NO_SESSION,onIMError,false,0,true);
         IMProxyEvent.proxy.addEventListener(IMProxyEvent.LOGIN_ERROR,onIMError,false,0,true);
         IMProxyEvent.proxy.addEventListener(IMProxyEvent.MESSAGE_DELIVERY_FAILURE,onIMError,false,0,true);
         this._gateway.addEventListener(GSIEvent.LOADED,onGsiLoaded,false,0,true);
         this._gateway.addEventListener(GSIEvent.ERROR,onGsiError,false,0,true);
         _inited = true;
      }
      
      public static function mapSlashToChannel(slashCommand:String) : String
      {
         if(!s_mapSlashToChannel)
         {
            s_mapSlashToChannel = {};
            s_mapSlashToChannel[DeSlasher.WHISPER] = "whisper";
            s_mapSlashToChannel[DeSlasher.LOCAL] = "room";
            s_mapSlashToChannel[DeSlasher.BROADCAST] = "area";
            s_mapSlashToChannel[DeSlasher.CREW] = "team";
            s_mapSlashToChannel[DeSlasher.GUILD] = "clan";
            s_mapSlashToChannel[DeSlasher.SERVER] = "server";
            s_mapSlashToChannel[DeSlasher.STUCK] = "server";
            s_mapSlashToChannel[DeSlasher.INVITE] = "server";
            s_mapSlashToChannel[DeSlasher.SLASH_ME] = "none";
            s_mapSlashToChannel[DeSlasher.SLASH_ADMIN] = "none";
         }
         return s_mapSlashToChannel[slashCommand];
      }
      
      public function sendChat(param1:String, param2:String = "room", param3:String = null) : void
      {
         var _loc4_:DeSlasher = null;
         var _loc6_:String = null;
         var _loc7_:BattleMessage = null;
         var _loc8_:String = null;
         var _loc9_:JabberMessage = null;
         var _loc10_:Object = null;
         var _loc11_:BattleMessage = null;
         var _loc12_:JabberMessage = null;
         var _loc13_:int = 0;
         if(floodControlMessage())
         {
            return;
         }
         _loc4_ = new DeSlasher(param1);
         var _loc5_:String = mapSlashToChannel(_loc4_.channel);
         switch(_loc4_.channel)
         {
            case DeSlasher.WHISPER:
               param1 = _loc4_.deSlashedText;
               _loc6_ = _loc4_.recipient;
               if(_loc4_.reply)
               {
                  _loc6_ = ChatController.getInstance().getReplyToRecipientName();
               }
               if(_loc6_ == null)
               {
                  this.displaySystemMessage("There is no one to reply to.");
                  return;
               }
               if(!(param1 == null || param1 == ""))
               {
                  param2 = _loc5_;
                  _loc9_ = new JabberMessage(_loc6_,param1);
                  _loc9_.addEventListener(JabberMessage.MESSAGE_READY,onJabberMessageReady,false,0,true);
                  this._jabberGateway.sendMsg(_loc9_);
               }
               return;
            case DeSlasher.LOCAL:
            case DeSlasher.BROADCAST:
            case DeSlasher.CREW:
            case DeSlasher.GUILD:
            case DeSlasher.SERVER:
               param1 = _loc4_.deSlashedText;
               param2 = _loc5_;
               break;
            case DeSlasher.STUCK:
               param2 = _loc5_;
               _loc7_ = new BattleMessage(BattleEvent.STUCK,null);
               this._gateway.sendMsg(_loc7_);
               return;
            case DeSlasher.INVITE:
               param2 = _loc5_;
               if(!ActorManager.getInstance().myActor.isTeamLeader)
               {
                  this.displaySystemMessage("You cannot invite users to a crew unless you are the leader.");
                  return;
               }
               _loc8_ = _loc4_.deSlashedText;
               if(_loc8_ == null)
               {
                  this.displaySystemMessage("Who do you want to invite?");
                  return;
               }
               if(_loc8_.length > MAX_GAIA_NAME_LEN)
               {
                  this.showInviteNameError(_loc8_);
                  return;
               }
               param3 = this._gaiaNamesToLookup[_loc8_];
               if(param3 == null || param3 == "")
               {
                  this._gaiaNamesToLookup[_loc8_] = "";
                  _loc10_ = new Object();
                  _loc10_.lookup = _loc8_;
                  _loc11_ = new BattleMessage(BattleEvent.USER_LOOKUP,_loc10_);
                  this._gateway.sendMsg(_loc11_);
               }
               else
               {
                  if(param3 == ActorManager.getInstance().myActor.actorId)
                  {
                     onSelfInvite();
                     return;
                  }
                  this.inviteUser(this._gaiaNamesToLookup[_loc8_],_loc8_);
               }
               return;
            case DeSlasher.SLASH_ME:
               if(param2 == "area")
               {
                  this.displaySystemMessage("/me is not allowed on this channel.");
                  return;
               }
               break;
            case DeSlasher.SLASH_ADMIN:
               if(ActorManager.getInstance().myActor.isDev())
               {
                  if(_loc4_.deSlashedText == " panel")
                  {
                     GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.OPEN_ADMIN_PANEL,null));
                  }
                  else
                  {
                     this.displaySystemMessage("unsupported /admin command \'" + _loc4_.deSlashedText + "\'");
                  }
               }
               return;
            case DeSlasher.NONE:
         }
         if(this._jabberGateway.containChannel(param2))
         {
            _loc12_ = new JabberMessage(ActorManager.getInstance().myActor.actorName,param1);
            _loc12_.addEventListener(JabberMessage.MESSAGE_READY,onJabberMessageReady,false,0,true);
            _loc12_.channel = param2;
            this._jabberGateway.sendMsg(_loc12_);
         }
         else if(param1.length > 0)
         {
            switch(param2)
            {
               case "whisper":
                  sendWhisperWithGaiaId(param1,param3);
                  if(param1 == null || param1 == "")
                  {
                  }
                  break;
               case "clan":
                  _loc13_ = parseInt(ActorManager.getInstance().myActor.clanId);
                  if(_loc13_ <= -1)
                  {
                     this.displaySystemMessage("You are not a member of a clan.");
                     return;
                  }
                  break;
               case "team":
                  if(ActorManager.getInstance().myActor.inCrewState != BaseActor.CREW_STATE_IN)
                  {
                     this.displaySystemMessage("You are not a member of a crew.");
                     return;
                  }
                  sendChatThroughBattle(param1,param2,param3);
                  break;
               default:
                  sendChatThroughBattle(param1,param2,param3);
            }
         }
      }
      
      private function onChatSend(e:GlobalEvent) : void
      {
         var data:Object = e.data;
         var msg:String = data.msg;
         var channel:String = data.channel;
         var color:Number = !!e.data.color?Number(e.data.color):Number(NaN);
         this.sendChat(msg,channel,null);
      }
      
      private function onDialog(evt:GlobalEvent) : void
      {
         var okSuffix:String = null;
         var txt:String = null;
         var xmlized:XML = null;
         var zOMG:XML = null;
         var textList:XMLList = null;
         var textXML:XML = null;
         var r:Object = evt.data;
         if(r.isInfo == "1")
         {
            if(r.npcText != null && r.npcText != undefined)
            {
               if(handleDuplicateDialogs(r))
               {
                  return;
               }
               okSuffix = "<p align=\'right\'><a href =\'event:close\'>OK</a></p>";
               txt = r.npcText + okSuffix;
               xmlized = null;
               try
               {
                  xmlized = new XML(r.npcText);
               }
               catch(e:Error)
               {
                  trace(e);
               }
               if(xmlized != null && xmlized.name() == "zOMG")
               {
                  zOMG = xmlized[0];
                  textList = zOMG.text();
                  textXML = textList[0];
                  if(textList.length() > 0)
                  {
                     txt = textXML.toString();
                     delete xmlized.children()[textXML.childIndex()];
                     XML(xmlized).appendChild(new XML("<![CDATA[" + txt + okSuffix + "]]>"));
                     txt = xmlized.toXMLString();
                  }
                  if(r.con)
                  {
                     GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.TRACKING_EVENT,"tutorial_" + r.con));
                  }
               }
               this.scriptDialogs.push({
                  "txt":txt,
                  "con":r.con,
                  "dlg":r.dlg,
                  "npc":r.npc,
                  "isTutorial":r.isInfo == "1"
               });
               this.processNextScriptDialog();
               r.isNaturalDone = r.dlg == "DONE";
               r.dlg = "DONE";
               this.processDialog(r);
            }
         }
         else
         {
            if(handleDuplicateDialogs(r))
            {
               return;
            }
            this.processDialog(r);
         }
      }
      
      private function sendWhisperWithGaiaId(txt:String, userId:String) : void
      {
         var received:Boolean = false;
         showChat(txt,ActorManager.getInstance().myActor.actorId,"whisper",ActorManager.getInstance().myActor.actorName,received);
         var imProxyEvent:IMProxyEvent = new IMProxyEvent(IMProxyEvent.SEND_IM_WITH_GAIA_ID);
         imProxyEvent.message = txt;
         imProxyEvent.gaiaId = userId;
         IMProxyEvent.proxy.dispatchEvent(imProxyEvent);
      }
      
      private function onGsiError(evt:GSIEvent) : void
      {
         var err:Object = null;
         switch(evt.gsiMethod)
         {
            case REPORT_ABUSE_CALL_ID:
               err = {"error":evt.gsiData.error};
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ABUSE_REPORT_FAILED,err));
         }
      }
      
      private function tryToLogInToIM(isGuest:Boolean) : void
      {
         if(!_inited)
         {
            return;
         }
         if(!isGuest)
         {
            IMProxyEvent.proxy.dispatchEvent(new IMProxyEvent(IMProxyEvent.INIT));
         }
         else
         {
            IMProxyEvent.proxy.dispatchEvent(new IMProxyEvent(IMProxyEvent.SIGN_OFF));
         }
      }
      
      public function getDialogBtnInfo() : Object
      {
         return new Object();
      }
      
      private function onInviteSentCallBack(evt:BattleEvent) : void
      {
         BattleMessage(evt.target).removeEventListener(BattleEvent.CALL_BACK,onInviteSentCallBack);
      }
      
      private function onGraphicsOptionChanged(evt:GlobalEvent) : void
      {
         var data2:IGameSettings = evt.data as IGameSettings;
         if(data2)
         {
            this._autoMoveInRange = data2.getAutoMoveInRange();
         }
      }
      
      private function onFrameTimer() : void
      {
         var evt:BattleEvent = null;
         var i:int = 0;
         var msg:String = null;
         var actorId:String = null;
         var channel:String = null;
         var actorName:String = null;
         var timestamp:Number = NaN;
         var errorMessage:String = null;
         var fromSystem:Boolean = false;
         var actor:BaseActor = null;
         var received:Boolean = false;
         for each(evt in this._pendingServerChatEvents)
         {
            for(i = 0; i < evt.battleMessage.responseObj.length; i++)
            {
               msg = evt.battleMessage.responseObj[i].chatMessage;
               actorId = evt.battleMessage.responseObj[i].senderID;
               channel = evt.battleMessage.responseObj[i].chatChannel;
               actorName = evt.battleMessage.responseObj[i].name;
               timestamp = evt.battleMessage.responseObj[i].timestamp;
               errorMessage = evt.battleMessage.responseObj[i].errorMessage;
               fromSystem = false;
               actor = ActorManager.actorIdToActor(actorId);
               fromSystem = actor && !ActorTypes.isActor(actor.actorType);
               received = true;
               if(channel == "whisper" && actorId == ActorManager.getInstance().myActor.actorId && evt.battleMessage.responseObj[i].recipient)
               {
                  actorName = evt.battleMessage.responseObj[i].recipient;
                  received = false;
               }
               showChat(msg,actorId,channel,actorName,received,fromSystem,ChatManager.s_colorLookup[channel.toLocaleLowerCase()],timestamp,errorMessage);
            }
         }
         this._pendingServerChatEvents.length = 0;
      }
      
      private function processNextScriptDialog() : void
      {
         var obj:Object = null;
         var dw:DialogWindow = null;
         if(!this.isScripDialogOpen && this.scriptDialogs.length > 0)
         {
            obj = this.scriptDialogs.shift();
            dw = DialogWindowFactory.getInstance().getNewDialogWindow(this._uiFramework,this._linkManager,DialogWindowTypes.NORMAL,200);
            dw.autoCenterTop = true;
            dw.autoSize = true;
            dw.setHtmlText(obj.txt);
            dw.params = obj;
            dw.addEventListener("CLOSE",onScriptDialogClose);
            dw.supportHyperlinks = obj.isTutorial;
            this.isScripDialogOpen = true;
         }
      }
      
      private function onJabberMessageReceived(evt:JabberEvent) : void
      {
         var timeStamp:Number = NaN;
         var channel:String = null;
         if(evt.fromUserName && evt.msg)
         {
            timeStamp = NaN;
            if(evt.timeStamp)
            {
               timeStamp = evt.timeStamp.time / 1000;
            }
            channel = "whisper";
            if(evt.channel != null)
            {
               channel = evt.channel;
            }
            showChat(evt.msg,evt.fromUserId,channel,evt.fromUserName,true,false,NaN,timeStamp);
         }
         if(evt.errorMsg)
         {
            this.displaySystemMessage(evt.errorMsg);
         }
      }
      
      private function displaySystemMessage(message:String) : void
      {
         var received:Boolean = false;
         var fromSystem:Boolean = true;
         this.showChat(message,"","whisper","",received,fromSystem);
      }
      
      private function onInviteFailed(e:GlobalEvent) : void
      {
         this.displaySystemMessage("There is no user with that name.");
      }
      
      private function onIMSuccess(evt:IMProxyEvent) : void
      {
      }
      
      private function onGsiLoaded(evt:GSIEvent) : void
      {
         var reportId:int = 0;
         var data:Object = null;
         switch(evt.gsiMethod)
         {
            case REPORT_ABUSE_CALL_ID:
               reportId = parseInt(evt.gsiData as String);
               data = {"reportId":reportId};
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ABUSE_REPORTED,data));
         }
      }
      
      private function onIMReceived(evt:IMProxyEvent) : void
      {
         var received2:Boolean = false;
         var fromSystem:Boolean = false;
         var e:IMReceivedEvent = evt.imReceivedEvent;
         var received:Boolean = true;
         var channel:String = e.channel;
         if(e.channel == "guild")
         {
            if(e.guildId == ActorManager.getInstance().myActor.clanId)
            {
               e.channel = "clan";
            }
            else
            {
               return;
            }
         }
         else if(++this._receivedIMCounter <= this.REPLY_MESSAGE_MAX)
         {
            received2 = false;
            fromSystem = true;
            this.displaySystemMessage("Hit the Backspace key to reply to " + e.senderName);
         }
         showChat(e.message,e.senderId,e.channel,e.senderName,received);
      }
      
      private function log(... args) : void
      {
         var s:String = null;
         var p:* = null;
         for(p in args)
         {
            if(s == null)
            {
               if(args[p] == null)
               {
                  s = "null";
               }
               else
               {
                  s = args[p];
               }
            }
            else if(args[p] == null)
            {
               s = s = s + ", null";
            }
            else
            {
               s = s + "," + String(args[p]);
            }
         }
      }
      
      private function onUserLookup(event:BattleEvent) : void
      {
         var name:String = null;
         var id:String = null;
         var currMapping:String = null;
         var data:Object = event.battleMessage.responseObj[0];
         var lookup:String = data["lookup"];
         if(data.hasOwnProperty("error"))
         {
            this.showInviteNameError(lookup);
         }
         else
         {
            name = data["name"];
            id = data["id"];
            currMapping = this._gaiaNamesToLookup[name];
            if(currMapping == "")
            {
               this._gaiaNamesToLookup[name] = id;
               if(id == ActorManager.getInstance().myActor.actorId)
               {
                  onSelfInvite();
                  return;
               }
               this.inviteUser(id,name);
            }
         }
      }
      
      private function inviteUser(userId:String, userName:String) : void
      {
         if(parseInt(userId) > 0)
         {
            ActorManager.getInstance().myActor.inviteUser(userId,userName,onInviteSentCallBack);
         }
         else
         {
            this.displaySystemMessage("There is no user with the name " + userName);
         }
      }
      
      private function onConversationEnd(e:GlobalEvent) : void
      {
         var npcHash:Object = null;
         var convId:String = e.data.convId;
         if(convId != null)
         {
            for each(npcHash in _conversationHash)
            {
               delete npcHash[convId];
            }
         }
      }
      
      private function onServerChat(evt:BattleEvent) : void
      {
         this._pendingServerChatEvents.push(evt);
      }
      
      private function showMessageInBubble(channel:String) : Boolean
      {
         var show:Boolean = false;
         switch(channel)
         {
            case "area":
            case "room":
               show = true;
               break;
            default:
               show = false;
         }
         return show;
      }
      
      private function showInviteNameError(userName:String) : void
      {
         this.displaySystemMessage("There is no user with the name " + userName + " to send an invitation to.");
      }
      
      private function onIgnoreListUpdate(event:BaseActorEvent) : void
      {
         _ignoreList = event.actor.ignoreList;
      }
      
      private function onIMError(evt:IMProxyEvent) : void
      {
         var e:BattleIMEvent = evt.battleIMEvent;
         var errorMessage:String = e.errorMessage;
         if(e.errorCode && e.errorCode.length > 0)
         {
            errorMessage = errorMessage + (" (" + e.errorCode + ")");
         }
         this.displaySystemMessage(errorMessage);
      }
      
      private function floodControlMessage() : Boolean
      {
         var duration:Number = NaN;
         var now:Date = new Date();
         if(penaltyTimer.running)
         {
            return true;
         }
         if(messageTimesQueue.length < MESSAGE_TIME_QUEUE_MAX_LEN)
         {
            messageTimesQueue.push(now);
         }
         else
         {
            duration = now.getTime() - (messageTimesQueue[0] as Date).getTime();
            if(now.getTime() - (messageTimesQueue[0] as Date).getTime() > MESSAGE_TIME_WINDOW)
            {
               messageTimesQueue.shift();
               messageTimesQueue.push(now);
            }
            else
            {
               penaltyTimer.start();
               messageTimesQueue.length = 0;
               return true;
            }
         }
         return false;
      }
      
      private function onDialogCallBack(evt:BattleEvent) : void
      {
         var response:Object = null;
         var error:uint = 0;
         var requestObj:Object = null;
         var actor:BaseActor = null;
         trace("[ChatManager onDialogCallBack]");
         BattleMessage(evt.target).removeEventListener(BattleEvent.CALL_BACK,onDialogCallBack);
         var rObj:Object = evt.battleMessage.responseObj;
         for each(response in rObj)
         {
            if(response.hasOwnProperty("error") && response.error != null)
            {
               error = response.error;
            }
            if(error)
            {
               requestObj = evt.battleMessage.requestObjUnsafeForModifying;
               if(requestObj.npc)
               {
                  actor = ActorManager.actorIdToActor(requestObj.npc);
                  if(actor)
                  {
                     switch(error)
                     {
                        case 201:
                           this.showChat(GlobalTexts.getNpcOutOfRangeText(actor.actorName),actor.actorId,"room",actor.actorName);
                           continue;
                        default:
                           continue;
                     }
                  }
                  else
                  {
                     continue;
                  }
               }
               else
               {
                  continue;
               }
            }
            else
            {
               continue;
            }
         }
      }
      
      private function processDialog(r:Object) : void
      {
         var priority:int = 0;
         if(r.dlg == "DONE")
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.DIALOG_DATA_UPDATED,{"data":r}));
            tryToHideDialogButton();
         }
         var npc:String = r.npc;
         var actor:BaseActor = ActorManager.actorIdToActor(npc);
         if(r.state == 1 && actor != null)
         {
            actor.targetType = 4;
            priority = 0;
            if(r.priority != null)
            {
               priority = r.priority;
            }
            delete _conversationHash[npc];
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MAP_ADD_DIALOG_BUTTON,{
               "actor":actor,
               "priority":priority
            }));
            actor.Dialogable = true;
            tryToHideDialogButton();
         }
         else if(r.state == 2)
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MAP_SET_DIALOG_BUTTON_VISIBLE,{"visible":false}));
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.DIALOG_DATA_UPDATED,{"data":r}));
            ActorManager.resetAllTargetType();
         }
         else if(r.state == 0)
         {
            if(npc)
            {
               delete _conversationHash[npc];
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MAP_REMOVE_DIALOG,{"actor_id":npc}));
               if(actor)
               {
                  if(actor)
                  {
                     actor.resetTargetType();
                     actor.Dialogable = false;
                  }
               }
            }
            tryToHideDialogButton();
         }
      }
      
      private function onChatSentCallBack(evt:BattleEvent) : void
      {
         BattleMessage(evt.target).removeEventListener(BattleEvent.CALL_BACK,onChatSentCallBack);
      }
      
      private function onScriptDialogClose(evt:Event) : void
      {
         DialogWindow(evt.target).removeEventListener("CLOSE",onScriptDialogClose);
         var obj:Object = DialogWindow(evt.target).params;
         this.isScripDialogOpen = false;
         var params:Object = new Object();
         params.npc = obj.npc;
         params.con = obj.con;
         params.dlg = obj.dlg;
         params.opt = 0;
         var msg:BattleMessage = new BattleMessage("dialogClick",params);
         this._gateway.sendMsg(msg);
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.TUTORIAL_CLOSED,{}));
         this.processNextScriptDialog();
         DialogWindow(evt.target).removeEventListener("CLOSE",onScriptDialogClose);
      }
      
      private function onUserLevelSet(e:GlobalEvent) : void
      {
         var isGuest:Boolean = e.data.isGuest;
         tryToLogInToIM(isGuest);
      }
      
      public function bindIgnoreList(actor:BaseActor) : void
      {
         DisplayObjectUtils.addWeakListener(actor,BaseActorEvent.IGNORE_LIST_CHANGED,onIgnoreListUpdate);
      }
      
      private function onChattableMessage(e:GlobalEvent) : void
      {
         var data:Object = e.data;
         var type:String = data.type || "";
         var actorId:String = data.actorId || "";
         var name:String = data.name || "";
         var msg:String = data.msg || "";
         var received:Boolean = data.received !== undefined?Boolean(data.received):false;
         var fromSystem:Boolean = data.fromSystem !== undefined?Boolean(data.fromSystem):false;
         var color:Number = data.color !== undefined?Number(data.color):Number(NaN);
         this.showChat(msg,actorId,type,name,received,fromSystem,color);
      }
      
      private function onDisableDialog(e:GlobalEvent) : void
      {
         var data:Object = e.data;
         this._disableDialog = e.data.disable;
      }
      
      private function tryToHideDialogButton() : void
      {
         var isDialogOpen:Boolean = this._dialogOpen && !this._disableDialog;
         if(!isDialogOpen)
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MAP_SET_DIALOG_BUTTON_VISIBLE,{"visible":true}));
         }
      }
      
      private function onDialogBtnClick(evt:BubbleEvent) : void
      {
         var msg1:BattleMessage = null;
         var ba:BaseActor = evt.myActor as BaseActor;
         var range:Number = 250;
         if(ba.range > 0)
         {
            range = ba.range;
         }
         var params1:Object = {
            "npc":ba.actorId,
            "opt":-1
         };
         if(this._autoMoveInRange || ActorManager.getInstance().myActor.checkRange(ba,range))
         {
            msg1 = new BattleMessage("dialogClick",params1);
            msg1.addEventListener(BattleEvent.CALL_BACK,onDialogCallBack);
            this._gateway.sendMsg(msg1);
         }
         else
         {
            this.showChat(GlobalTexts.getNpcOutOfRangeText(ba.actorName),ba.actorId,"room",ba.actorName);
         }
      }
      
      private function sendGuildBroadcast(txt:String, guildId:String) : void
      {
         var imProxyEvent:IMProxyEvent = new IMProxyEvent(IMProxyEvent.SEND_IM_TO_GUILD);
         imProxyEvent.message = txt;
         imProxyEvent.guildId = guildId;
         IMProxyEvent.proxy.dispatchEvent(imProxyEvent);
      }
      
      private function onSelfInvite() : void
      {
         this.displaySystemMessage("Inviting yourself to your own crew--how polite!");
      }
      
      private function sendChatThroughBattle(txt:String, channel:String, userId:String) : void
      {
         var obj:Object = new Object();
         obj.chatMessage = txt;
         obj.chatChannel = channel;
         if(userId != null)
         {
            obj.targetID = userId;
         }
         var msg:BattleMessage = new BattleMessage("chat",obj);
         msg.addEventListener(BattleEvent.CALL_BACK,onChatSentCallBack);
         this._gateway.sendMsg(msg);
      }
      
      private function onWordFilterReady(e:Event) : void
      {
         var chat:Chat = null;
         _wordFilterReady = true;
         for each(chat in _cachedChats)
         {
            showChat(chat.msg,chat.actorId,chat.channel,chat.actorName);
         }
         _cachedChats = null;
      }
      
      private function onLoginSuccess(evt:IMProxyEvent) : void
      {
         var e:BattleIMEvent = evt.battleIMEvent;
         if(this._gimLoginErrorShown)
         {
            this.displaySystemMessage("You are logged into GIM!");
         }
         setGimEnabled(true);
         this._gimLoginErrorShown = false;
         BattleUtils.cleanObject(this.errorMap);
      }
      
      private function onNotLoggedIn(evt:IMProxyEvent) : void
      {
         var e:BattleIMEvent = evt.battleIMEvent;
         setGimEnabled(false);
         this._gimLoginErrorShown = true;
         var errorCode:String = evt.errorCode;
         if(!shownThisError(errorCode))
         {
            errorMap[errorCode] = true;
            if(e.errorMessage.length > 0)
            {
               this.displaySystemMessage(e.errorMessage);
            }
         }
      }
      
      private function onJabberMessageReady(evt:Event) : void
      {
         var channel:String = null;
         var msg:JabberMessage = evt.target as JabberMessage;
         if(msg)
         {
            msg.removeEventListener(JabberMessage.MESSAGE_READY,onJabberMessageReady);
            if(!msg.isError)
            {
               channel = "whisper";
               if(msg.channel != null)
               {
                  channel = msg.channel;
               }
               showChat(msg.txt,ActorManager.getInstance().myActor.actorId,channel,msg.displayName,false);
            }
            else
            {
               this.displaySystemMessage(msg.txt);
            }
         }
      }
      
      private function handleDuplicateDialogs(r:Object) : Boolean
      {
         var con:String = r.con;
         var npc:String = r.npc;
         var dlg:String = r.dlg;
         if(con != null && npc != null && dlg != null)
         {
            if(_conversationHash[npc] == null)
            {
               _conversationHash[npc] = new Object();
            }
            if(_conversationHash[npc][con] == null)
            {
               _conversationHash[npc][con] = new Object();
            }
            if(_conversationHash[npc][con][dlg] == null)
            {
               _conversationHash[npc][con][dlg] = true;
            }
            else if(r.dupe != null && r.dupe == true)
            {
               return true;
            }
         }
         return false;
      }
      
      private function onDialogOpenStatusChanged(e:GlobalEvent) : void
      {
         var data:Object = e.data;
         this._dialogOpen = e.data.open;
      }
      
      private function setGimEnabled(enabled:Boolean) : void
      {
         this._gimEnabled = enabled;
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.GIM_ENABLED_CHANGE,{"enabled":this._gimEnabled}));
      }
      
      private function shownThisError(errorCode:String) : Boolean
      {
         return errorMap[errorCode] != null;
      }
      
      public function showChat(msg:String, actorId:String, channel:String, actorName:String, received:Boolean = true, fromSystem:Boolean = false, color:Number = NaN, timestamp:Number = NaN, errorMessage:String = null) : void
      {
         var leftTrimmed:String = null;
         var prefix:String = null;
         if(!_wordFilterReady)
         {
            _cachedChats.push(new Chat(msg,actorId,channel,actorName));
            return;
         }
         if(_ignoreList && _ignoreList.indexOf(actorId) > -1)
         {
            return;
         }
         var actor:BaseActor = ActorManager.actorIdToActor(actorId);
         var doFilter:Boolean = !fromSystem && (actor == null || actor.actorType == ActorTypes.PLAYER);
         if(doFilter)
         {
            msg = WordFilter.clean(msg,ActorManager.getInstance().myActor.wordFilterLevel);
         }
         var fromServer:Boolean = false;
         var slashMe:Boolean = false;
         if(channel != "whisper" && channel != "area")
         {
            leftTrimmed = StringUtil.ltrim(msg);
            prefix = leftTrimmed.substr(0,DeSlasher.SLASH_ME.length);
            slashMe = prefix == DeSlasher.SLASH_ME || prefix == DeSlasher.SLASH_ME.toUpperCase();
            if(slashMe)
            {
               msg = actorName + msg.substr(DeSlasher.SLASH_ME.length);
            }
         }
         if(channel == "whisper")
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.ALERT,{"type":AlertTypes.MESSAGE_RECIEVED_OR_SENT}));
         }
         if(!slashMe && showMessageInBubble(channel))
         {
            if(actorId != null && actor != null)
            {
               if(actor.roomId == ActorManager.getInstance().myActor.roomId)
               {
                  actorName = actor.actorName;
                  GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.MAP_ADD_TEXT,{
                     "actor":actor,
                     "actorName":actor.actorName,
                     "actorBounds":actor.getActorBound(),
                     "message":msg,
                     "channel":channel
                  }));
               }
            }
         }
         var chatData:Object = {
            "channel":channel,
            "actorId":actorId,
            "actorName":actorName,
            "message":msg,
            "received":received,
            "fromSystem":fromSystem,
            "fromServer":fromServer,
            "slashMe":slashMe,
            "color":color,
            "timestamp":timestamp,
            "errorMessage":errorMessage
         };
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.CHAT_MESSAGE_READY,chatData));
      }
      
      private function sendWhisperWithGaiaName(txt:String, userName:String) : void
      {
         var received:Boolean = false;
         showChat(txt,ActorManager.getInstance().myActor.actorId,"whisper",userName,received);
         var imProxyEvent:IMProxyEvent = new IMProxyEvent(IMProxyEvent.SEND_IM_WITH_GAIA_NAME);
         imProxyEvent.message = txt;
         imProxyEvent.gaiaName = userName;
         IMProxyEvent.proxy.dispatchEvent(imProxyEvent);
      }
   }
}

class Chat
{
    
   
   private var _actorName:String = null;
   
   private var _msg:String = null;
   
   private var _channel:String = null;
   
   private var _actorId:String = null;
   
   function Chat(msg:String, actorId:String, channel:String, actorName:String)
   {
      super();
      this._msg = msg;
      this._actorId = actorId;
      this._channel = channel;
      this._actorName = actorName;
   }
   
   public function get actorName() : String
   {
      return _actorName;
   }
   
   public function get channel() : String
   {
      return _channel;
   }
   
   public function get actorId() : String
   {
      return _actorId;
   }
   
   public function get msg() : String
   {
      return _msg;
   }
}
