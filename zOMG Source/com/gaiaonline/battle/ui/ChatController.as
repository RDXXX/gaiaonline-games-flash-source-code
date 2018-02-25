package com.gaiaonline.battle.ui
{
   import com.gaiaonline.battle.GlobalColors;
   import com.gaiaonline.battle.emotes.EmoteManagerOld;
   import com.gaiaonline.battle.emotes.EmoteOld;
   import com.gaiaonline.battle.gateway.BattleGateway;
   import com.gaiaonline.battle.newactors.ActorManager;
   import com.gaiaonline.battle.ui.ChatUi.ChatMiniMessage;
   import com.gaiaonline.battle.userinput.ChatManager;
   import com.gaiaonline.flexModulesAPIs.FlexMenuItem;
   import com.gaiaonline.flexModulesAPIs.chat.IChat;
   import com.gaiaonline.flexModulesAPIs.chat.IChatEventHandler;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.flexModulesAPIs.managers.chat.DeSlasher;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import mx.collections.ArrayCollection;
   
   public class ChatController implements IChatEventHandler
   {
      
      private static var _sPattern:RegExp = /:[0-5][0-9]\s/;
      
      private static const ABUSE_HISTORY_LENGTH:uint = 50;
      
      private static const PROMPT_TEXT:String = "Hit [ENTER] to chat";
      
      private static const PROMPT_FORMAT:String = "<font color=\'#999999\' face=\'Arial\' size=\'12\'>[prompt]</font>";
      
      private static var _instance:ChatController;
      
      private static const MAX_MSG_LEN:uint = 250;
       
      
      private var _view:IChat = null;
      
      private var _emoteEnabled:Boolean = false;
      
      private var s_channelPrettyNameToCodeName:Dictionary;
      
      private var _emoteHandler:IEmoteEventHandler;
      
      public var chat_notify_interval:Timer;
      
      private var _channelFilters:Array;
      
      private var _sendChannel:String = "room";
      
      private var chat_notify:UiChatNotification;
      
      private var _viewFiltersData:ArrayCollection;
      
      private var _lastWisperName:String;
      
      private var _viewChannelData:ArrayCollection;
      
      private var _miniMessages:Array;
      
      private var s_channelPrettyNames:Array;
      
      private var _isMinimized:Boolean = false;
      
      private var _startDate:Date = null;
      
      private var _isVisible:Boolean = true;
      
      private var _isOpen:Boolean = false;
      
      private var _emoteManager:EmoteManagerOld;
      
      private var _chatReportLog:Array;
      
      public function ChatController(S:SingletonEnforcer#92, flexUiManagerImpl:IFlexUiManager, gateway:BattleGateway, emoteManager:EmoteManagerOld, emoteHandler:IEmoteEventHandler, registerHandler:IRegisterHandler)
      {
         s_channelPrettyNames = new Array();
         s_channelPrettyNameToCodeName = new Dictionary(true);
         _viewFiltersData = new ArrayCollection();
         _viewChannelData = new ArrayCollection();
         _channelFilters = new Array();
         _miniMessages = new Array();
         _chatReportLog = new Array();
         super();
         this._emoteManager = emoteManager;
         this._emoteHandler = emoteHandler;
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.USER_LEVEL_SET,onUserLevelSet,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.WHISPER_AUTOFILL,onWhisperAutofill,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.CHAT_MINI_MESSAGE_END,onChatMiniMessageEnd,false,0,true);
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.CHAT_MESSAGE_READY,onChatMessageReady,false,0,true);
         this._startDate = new Date();
         this.chat_notify = new UiChatNotification();
         this.chat_notify_interval = new Timer(5000,1);
         this.chat_notify_interval.addEventListener(TimerEvent.TIMER_COMPLETE,removeChatNotification,false,0,true);
      }
      
      private static function typeColor(type:String, received:Boolean, fromSystem:Boolean, fromServer:Boolean, setColor:Number) : int
      {
         var color:Object = null;
         if(!isNaN(setColor))
         {
            return setColor;
         }
         if(fromSystem || fromServer)
         {
            return GlobalColors.RED;
         }
         if(type == "whisper")
         {
            return !!received?int(GlobalColors.DARK_PURPLE):int(GlobalColors.LIGHT_PURPLE);
         }
         if(type != null)
         {
            color = ChatManager.s_colorLookup[type.toLowerCase()];
            if(color != null)
            {
               return int(color);
            }
         }
         return GlobalColors.WHITE;
      }
      
      public static function getInstance(flexUiManagerImpl:IFlexUiManager = null, gateway:BattleGateway = null, emoteManager:EmoteManagerOld = null, emoteHandler:IEmoteEventHandler = null, registerHandler:IRegisterHandler = null) : ChatController
      {
         if(_instance == null)
         {
            if(flexUiManagerImpl == null)
            {
               throw new Error("Haven\'t initialized ChatController");
            }
            _instance = new ChatController(new SingletonEnforcer#92(),flexUiManagerImpl,gateway,emoteManager,emoteHandler,registerHandler);
         }
         return _instance;
      }
      
      private static function htmlizeChatText(chat:ChatText) : String
      {
         var toString:String = null;
         var time:Date = null;
         var localTime:String = null;
         var color:int = typeColor(chat.type,chat.received,chat.fromSystem,chat.fromServer,chat.color);
         var message:* = chat.msg;
         var isError:Boolean = false;
         if(!chat.fromSystem && !chat.slashMe && chat.name != null && chat.name != "")
         {
            toString = !chat.received && chat.type == "whisper"?"to ":"";
            if(chat.received && !isNaN(chat.timestamp) && chat.timestamp < _instance.startTime)
            {
               time = new Date(chat.timestamp * 1000);
               localTime = null;
               if(time.getDate() == _instance.startDate.getDate() && time.getMonth() == _instance.startDate.getMonth())
               {
                  localTime = time.toLocaleTimeString();
               }
               else
               {
                  localTime = time.toLocaleString();
               }
               localTime = localTime.replace(_sPattern," ");
               message = "<I>" + toString + chat.name + " (" + localTime + "): " + message + "</I>";
            }
            else
            {
               message = "<B>" + toString + chat.name + ":</B>  " + message;
            }
         }
         else if(chat.type == "whisper" && (chat.errorMessage && chat.errorMessage.length))
         {
            color = 16711680;
            isError = true;
            message = chat.errorMessage;
         }
         if(chat.type == "dialog" && chat.name == ActorManager.getInstance().myActor.actorName)
         {
            color = 9498256;
         }
         if(chat.fromSystem || chat.slashMe || isError)
         {
            message = "<B>" + message + "</B>";
         }
         return "<FONT FACE=\'Arial\' SIZE=\'11\' COLOR=\'#" + color.toString(16) + "\' LETTERSPACING=\'0\' KERNING=\'0\'>" + message + "</FONT>";
      }
      
      public function sendChat(text:String) : void
      {
         if(ActorManager.getInstance().myActor.isGuestUser())
         {
            return;
         }
         var msg:String = "";
         var m:Array = text.split(String.fromCharCode(13));
         for(var i:int = 0; i < m.length; i++)
         {
            msg = msg + m[i];
         }
         if(this._view)
         {
            this._view.setInputText("");
         }
         GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.CHAT_SEND,{
            "channel":this._sendChannel,
            "msg":msg
         }));
         toggleFilterOn(this._sendChannel);
      }
      
      private function removeChatNotification(e:TimerEvent) : void
      {
         this.chat_notify.removeNotification();
      }
      
      private function autoColorTextInput() : void
      {
         var text:String = null;
         var color:Number = NaN;
         if(this._view)
         {
            text = this._view.getInputText();
            color = this.getTextAutoColor(text);
            this._view.setInputTextColor(color);
         }
      }
      
      private function canonicalizeName(userName:String) : String
      {
         return userName.split(" ").join("_");
      }
      
      public function getTextAutoColor(text:String) : Number
      {
         var deslasher:DeSlasher = null;
         var currentChannel:String = null;
         deslasher = new DeSlasher(text);
         var charsInTheCommand:int = deslasher.rawText.length - deslasher.deSlashedText.length;
         if(charsInTheCommand)
         {
            currentChannel = ChatManager.mapSlashToChannel(deslasher.channel);
            if(currentChannel == "none")
            {
               currentChannel = this._sendChannel;
            }
         }
         else
         {
            currentChannel = this._sendChannel;
         }
         return typeColor(currentChannel,false,false,false,NaN);
      }
      
      private function setSendChannel(channel:String) : void
      {
         this._sendChannel = channel;
         this.autoColorTextInput();
         toggleFilterOn(channel);
      }
      
      public function getAbuseLog() : String
      {
         var chatLog:String = this._chatReportLog.join(String.fromCharCode(13));
         return chatLog;
      }
      
      public function setFocus() : void
      {
         if(this._view)
         {
            this._view.setFocus();
         }
      }
      
      public function setIsVisible(visible:Boolean) : void
      {
         this._isVisible = visible;
      }
      
      public function onSendChannelChanged(channelPrettyName:String) : void
      {
         this.setSendChannel(this.s_channelPrettyNameToCodeName[channelPrettyName]);
         this._view.showWhisperPrompt(this._sendChannel == "whisper");
      }
      
      private function setEmoteEnabled(enabled:Boolean) : void
      {
         if(enabled == this._emoteEnabled)
         {
            return;
         }
         this._emoteEnabled = enabled;
         if(this._view)
         {
            this._view.enableEmotes(enabled);
         }
      }
      
      public function get isOpen() : Boolean
      {
         return this._isOpen;
      }
      
      public function set inputText(text:String) : void
      {
         if(this._view)
         {
            this._view.setInputText(text);
            this.autoColorTextInput();
         }
      }
      
      private function onUserLevelSet(e:GlobalEvent) : void
      {
         var isGuest:Boolean = e.data.isGuest;
         this.showRegisterPrompt(isGuest);
         this.setEmoteEnabled(!isGuest);
      }
      
      private function getIsVisible() : Boolean
      {
         return this._isVisible;
      }
      
      public function set isOpen(v:Boolean) : void
      {
         this._isOpen = v;
      }
      
      private function loadEmotes() : void
      {
         var e:EmoteOld = null;
         var emoteIcons:Array = null;
         var icon:Sprite = null;
         var emotes:Array = [];
         for each(e in this._emoteManager.emotes)
         {
            if(e.order > -1)
            {
               emotes.push(e);
            }
         }
         emotes = emotes.sortOn("order",Array.NUMERIC);
         emoteIcons = [];
         for each(e in emotes)
         {
            icon = e.getEmoteIcon();
            icon.name = e.id;
            emoteIcons.push(icon);
         }
         this._view.setEmotes(emoteIcons);
         this._view.enableEmotes(true);
      }
      
      public function getReplyToRecipientName() : String
      {
         return this._lastWisperName;
      }
      
      public function onTextLinkClicked(text:String) : void
      {
         var urlRequest:URLRequest = null;
         if(ActorManager.getInstance().myActor.isGuestUser())
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.INVALID_GUEST_OPERATION,{}));
            return;
         }
         var httpPrefix:String = "http://";
         var txtPrefix:String = text.substring(0,httpPrefix.length);
         if(txtPrefix == httpPrefix)
         {
            urlRequest = new URLRequest(text);
            navigateToURL(urlRequest,"_blank");
         }
      }
      
      public function get startDate() : Date
      {
         return this._startDate;
      }
      
      private function onChatMiniMessageEnd(e:GlobalEvent) : void
      {
         this._miniMessages.shift();
      }
      
      private function showRegisterPrompt(visible:Boolean) : void
      {
         if(this._view)
         {
            this._view.showInput(!visible);
            this._view.showGuestReg(visible);
         }
      }
      
      public function onRegister() : void
      {
      }
      
      private function onChatMessageReady(e:GlobalEvent) : void
      {
         var data:Object = e.data;
         this.addText(data.channel,data.actorId,data.actorName,data.message,data.received,data.fromSystem,data.fromServer,data.slashMe,data.color,data.timestamp,data.errorMessage);
      }
      
      public function get startTime() : Number
      {
         return this._startDate.time * 0.001;
      }
      
      public function onViewFilterChanged(name:String, toggled:Boolean) : void
      {
         var codeName:String = this.s_channelPrettyNameToCodeName[name];
         var index:int = this._channelFilters.indexOf(codeName);
         if(toggled && index < 0)
         {
            this._channelFilters.push(codeName);
         }
         else if(!toggled && index >= 0)
         {
            this._channelFilters.splice(index,1);
         }
         this._view.setChannelFilter(codeName,toggled);
      }
      
      private function prepareToWhisperTo(userName:String = null) : void
      {
         if(ActorManager.getInstance().myActor.isGuestUser())
         {
            GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.INVALID_GUEST_OPERATION,{}));
            return;
         }
         if(userName == null)
         {
            userName = this.getReplyToRecipientName();
         }
         if(userName == null)
         {
            return;
         }
         this.setSendChannel("whisper");
         userName = canonicalizeName(userName);
         this._view.setInputText(DeSlasher.WHISPER_PREFIX + " " + userName + " ");
      }
      
      private function onEmotesLoaded(e:GlobalEvent) : void
      {
         this.loadEmotes();
         GlobalEvent.eventDispatcher.removeEventListener(GlobalEvent.EMOTES_LOADED,onEmotesLoaded);
      }
      
      public function onEmote(emoticonID:String) : void
      {
         if(_emoteHandler)
         {
            _emoteHandler.onEmoteActivated(emoticonID);
         }
      }
      
      public function onEmotePopupChange(opening:Boolean) : void
      {
         if(_emoteHandler)
         {
            _emoteHandler.onEmotePopupChange(opening);
         }
      }
      
      public function addView(view:IChat) : void
      {
         this._view = view;
         this._view.setMaxInputChars(MAX_MSG_LEN);
         this._view.setPrompt(PROMPT_TEXT,PROMPT_FORMAT);
         this._view.setEventHandler(this);
         this._view.setViewFilters(this._viewFiltersData);
         this._view.setChannels(this._viewChannelData,0);
         this.loadEmotes();
         GlobalEvent.eventDispatcher.addEventListener(GlobalEvent.EMOTES_LOADED,onEmotesLoaded,false,0,true);
      }
      
      public function onMinimizedStateChanged(minimized:Boolean) : void
      {
         this._isMinimized = minimized;
         if(this._view)
         {
            this._view.setHistoryVisible(!minimized);
            this._view.setViewFiltersVisible(!minimized);
         }
      }
      
      private function toggleFilterOn(name:String) : void
      {
         var menuItem:FlexMenuItem = null;
         var index:int = this._channelFilters.indexOf(name);
         if(index >= 0)
         {
            this._channelFilters.splice(index,1);
         }
         this._view.setChannelFilter(name,false);
         for each(menuItem in this._viewFiltersData)
         {
            if(this.s_channelPrettyNameToCodeName[menuItem.label] == name)
            {
               menuItem.toggled = true;
               this._viewFiltersData.itemUpdated(menuItem,false,true);
            }
         }
      }
      
      public function addText(type:String, actorId:String, name:String, msg:String, received:Boolean = true, fromSystem:Boolean = false, fromServer:Boolean = false, slashMe:Boolean = false, color:Number = NaN, timestamp:Number = NaN, errorMessage:String = null) : void
      {
         if(this._view == null)
         {
            return;
         }
         if(msg)
         {
            msg = msg.split("<").join("&lt;").split(">").join("&gt;");
         }
         var obj:ChatText = new ChatText(type,name,msg,received,fromSystem,fromServer,slashMe,color,timestamp,errorMessage);
         var htmlText:String = htmlizeChatText(obj);
         this._view.addHtmlText(htmlText,type.toLowerCase());
         if(actorId != "" && actorId == ActorManager.getInstance().myActor.actorId || type == "dialog")
         {
            this._view.scrollToBottom();
         }
         if(this._channelFilters.indexOf(type.toLowerCase()) < 0)
         {
            if(this._isMinimized && this._isOpen)
            {
               this._miniMessages.push(new ChatMiniMessage(htmlText,DisplayObject(this._view).width - 10));
               GlobalEvent.eventDispatcher.dispatchEvent(new GlobalEvent(GlobalEvent.CHAT_MINI_MESSAGE_CREATED,{"messages":this._miniMessages}));
            }
            if(!this._isOpen)
            {
               this.chat_notify.showNotification(htmlText);
               this.chat_notify_interval.start();
            }
         }
         this._chatReportLog.push(obj.name + ": " + obj.msg);
         if(this._chatReportLog.length > ABUSE_HISTORY_LENGTH)
         {
            this._chatReportLog.shift();
         }
         if(type.toLowerCase() == "whisper" && actorId != ActorManager.getInstance().myActor.actorId)
         {
            this._lastWisperName = obj.name;
         }
      }
      
      private function onWhisperAutofill(e:GlobalEvent) : void
      {
         var data:Object = e.data;
         var actorName:String = data.actorName;
         this.prepareToWhisperTo(actorName);
      }
      
      public function addChanel(channelPrettyName:String, chanelCodeName:String) : void
      {
         this.s_channelPrettyNames.push(channelPrettyName);
         this.s_channelPrettyNameToCodeName[channelPrettyName] = chanelCodeName;
         addViewFilter(channelPrettyName);
      }
      
      private function addViewFilter(name:String) : void
      {
         var flexMenuItem:FlexMenuItem = new FlexMenuItem(name,"gamecheck");
         flexMenuItem.toggled = true;
         this._viewFiltersData.addItem(flexMenuItem);
         this._viewFiltersData.addItem(new FlexMenuItem("none","separator"));
         var menuItem:FlexMenuItem = new FlexMenuItem(name);
         menuItem.color = ChatManager.s_colorLookup[String(s_channelPrettyNameToCodeName[name]).toLowerCase()];
         this._viewChannelData.addItem(menuItem);
         menuItem = new FlexMenuItem("none","separator");
         this._viewChannelData.addItem(menuItem);
      }
   }
}

import flash.utils.getTimer;

final class ChatText
{
    
   
   public var msg:String;
   
   public var color:Number;
   
   public var received:Boolean;
   
   public var name:String;
   
   public var fromServer:Boolean;
   
   public var slashMe:Boolean;
   
   public var fromSystem:Boolean;
   
   public var type:String;
   
   public var time:int;
   
   public var timestamp:Number;
   
   public var errorMessage:String;
   
   function ChatText(type:String, name:String, msg:String, received:Boolean, fromSystem:Boolean, fromServer:Boolean, slashMe:Boolean, color:Number, timestamp:Number, errorMessage:String)
   {
      super();
      this.type = type;
      this.name = name;
      this.msg = msg;
      this.received = received;
      this.fromSystem = fromSystem;
      this.fromServer = fromServer;
      this.slashMe = slashMe;
      this.color = color;
      this.time = getTimer();
      this.timestamp = timestamp;
      this.errorMessage = errorMessage;
   }
}

class SingletonEnforcer#92
{
    
   
   function SingletonEnforcer#92()
   {
      super();
   }
}
