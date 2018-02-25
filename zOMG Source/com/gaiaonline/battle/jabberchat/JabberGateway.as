package com.gaiaonline.battle.jabberchat
{
   import com.gaiaonline.battle.gateway.BattleEvent;
   import com.gaiaonline.battle.gateway.BattleMessage;
   import com.gaiaonline.flexModulesAPIs.gatewayInterfaces.IBattleEvent;
   import com.gaiaonline.flexModulesAPIs.gatewayInterfaces.IBattleGateway;
   import com.hurlant.crypto.tls.TLSConfig;
   import com.hurlant.crypto.tls.TLSEngine;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.system.Security;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import org.igniterealtime.xiff.conference.JabberRoom;
   import org.igniterealtime.xiff.core.UnescapedJID;
   import org.igniterealtime.xiff.core.XMPPTLSConnection;
   import org.igniterealtime.xiff.data.Message;
   import org.igniterealtime.xiff.data.Presence;
   import org.igniterealtime.xiff.events.ConnectionSuccessEvent;
   import org.igniterealtime.xiff.events.DisconnectionEvent;
   import org.igniterealtime.xiff.events.IncomingDataEvent;
   import org.igniterealtime.xiff.events.LoginEvent;
   import org.igniterealtime.xiff.events.MessageEvent;
   import org.igniterealtime.xiff.events.OutgoingDataEvent;
   import org.igniterealtime.xiff.events.PresenceEvent;
   import org.igniterealtime.xiff.events.RoomEvent;
   import org.igniterealtime.xiff.events.XIFFErrorEvent;
   
   public class JabberGateway extends EventDispatcher
   {
      
      public static const MESSAGE_RECEIVED:String = "JabberGatewayMessageRecieved";
      
      private static var _instance:JabberGateway;
       
      
      private var _roomNamesToChannel:Dictionary;
      
      private var _userSquashNameMap:Dictionary;
      
      private var _password:String;
      
      private var _sendMsgQueue:Dictionary;
      
      private var _channels:Dictionary;
      
      private var _userIdMap:Dictionary;
      
      private var _connectionTimer:Timer;
      
      private var _reconnect:Boolean = true;
      
      private var _server:String;
      
      private var _userId:String;
      
      private var _battleGateway:IBattleGateway;
      
      private var _receivedMsgQueue:Dictionary;
      
      private var _connection:XMPPTLSConnection;
      
      public function JabberGateway(battleGateway:IBattleGateway)
      {
         _userIdMap = new Dictionary(true);
         _userSquashNameMap = new Dictionary(true);
         _sendMsgQueue = new Dictionary(true);
         _receivedMsgQueue = new Dictionary(true);
         _channels = new Dictionary(true);
         _roomNamesToChannel = new Dictionary(true);
         super();
         trace("[JabberGateway constructor]");
         this._battleGateway = battleGateway;
         this._battleGateway.addEventListener(BattleEvent.ZOMG_LOGIN,onZomgLogin);
         this._battleGateway.addEventListener(BattleEvent.CONNECTION_LOST,onBattleGatewayConnectionLost);
         this._battleGateway.addEventListener(BattleEvent.USER_LOOKUP,onUserInfo);
         this._battleGateway.addEventListener(BattleEvent.JABBER_CHAT_ROOM_SPECS,onJabberChatRoomSpec);
         this._connection = new XMPPTLSConnection();
         _connection.port = 5222;
         var tlsConfig:TLSConfig = new TLSConfig(TLSEngine.CLIENT);
         tlsConfig.trustAllCertificates = true;
         _connection.config = tlsConfig;
         _connection.tls = true;
         _connection.addEventListener(DisconnectionEvent.DISCONNECT,onDisconnect);
         _connection.addEventListener(PresenceEvent.PRESENCE,onPresence);
         _connection.addEventListener(MessageEvent.MESSAGE,onMessage);
         _connection.addEventListener(OutgoingDataEvent.OUTGOING_DATA,onOutgoingData);
         _connection.addEventListener(ConnectionSuccessEvent.CONNECT_SUCCESS,onConnected);
         _connection.addEventListener(IncomingDataEvent.INCOMING_DATA,onIncommingData);
         _connection.addEventListener(LoginEvent.LOGIN,onLogin);
         _connection.addEventListener(XIFFErrorEvent.XIFF_ERROR,onError);
         this._connectionTimer = new Timer(30000);
         this._connectionTimer.addEventListener(TimerEvent.TIMER,onConnectionTimer);
      }
      
      public static function getInstance(battleGateway:IBattleGateway = null) : JabberGateway
      {
         if(!_instance && battleGateway)
         {
            _instance = new JabberGateway(battleGateway);
         }
         return _instance;
      }
      
      private function onRoomGroupMessage(evt:RoomEvent) : void
      {
         var userId:String = null;
         var je:JabberEvent = null;
         var room:JabberRoom = evt.target as JabberRoom;
         if(room)
         {
            userId = evt.nickname;
            if(this._userIdMap[userId] != null && this._userIdMap[userId].status == "done")
            {
               je = new JabberEvent(MESSAGE_RECEIVED);
               je.fromUserId = userId;
               je.fromUserName = this._userIdMap[userId].displayName;
               je.msg = evt.data.body;
               je.timeStamp = evt.data.time;
               je.channel = this._roomNamesToChannel[room.roomName];
               this.dispatchEvent(je);
            }
            else
            {
               this.addToReceivedQueue(userId,evt.data.body,evt.data.time,this._roomNamesToChannel[room.roomName]);
               if(this._userIdMap[userId] == null)
               {
                  this.getUserInfo(userId);
               }
            }
         }
      }
      
      private function onPresence(evt:PresenceEvent) : void
      {
      }
      
      private function getUserInfo(userInfo:String) : void
      {
         var msg:BattleMessage = new BattleMessage("userLookup",{"lookup":userInfo});
         this._battleGateway.sendMsg(msg);
      }
      
      private function addToReceivedQueue(userId:String, msg:String, timeStamp:Date = null, channel:String = null) : void
      {
         if(!this._receivedMsgQueue[userId])
         {
            this._receivedMsgQueue[userId] = new Array();
         }
         this._receivedMsgQueue[userId].push({
            "timeStamp":timeStamp,
            "msg":msg,
            "channel":channel
         });
      }
      
      private function sendJabberMsg(userId:String, msg:String) : void
      {
         var jid:UnescapedJID = new UnescapedJID(userId + "@" + this._server);
         var jMsg:Message = new Message(jid.escaped,null,msg,null,Message.TYPE_CHAT);
         this._connection.send(jMsg);
      }
      
      public function containChannel(channelName:String) : Boolean
      {
         return this._channels[channelName] != null;
      }
      
      private function onUserInfo(evt:IBattleEvent) : void
      {
         var lookup:String = null;
         var msg:JabberMessage = null;
         var displayName:String = null;
         var userId:String = null;
         var squashName:String = null;
         if(evt.battleMessage.responseObj[0].error)
         {
            if(evt.battleMessage.responseObj[0].lookup)
            {
               lookup = JabberMessage.getSquashName(evt.battleMessage.responseObj[0].lookup);
               if(this._sendMsgQueue[lookup])
               {
                  for each(msg in this._sendMsgQueue[lookup])
                  {
                     msg.isError = true;
                     msg.txt = evt.battleMessage.responseObj[0].errorMessage;
                     msg.dispatchEvent(new Event(JabberMessage.MESSAGE_READY));
                  }
                  delete this._sendMsgQueue[lookup];
               }
            }
         }
         else
         {
            displayName = evt.battleMessage.responseObj[0].name;
            userId = evt.battleMessage.responseObj[0].id;
            squashName = JabberMessage.getSquashName(displayName);
            this._userIdMap[userId] = {
               "value":squashName,
               "status":"done",
               "displayName":displayName
            };
            this._userSquashNameMap[squashName] = {
               "value":userId,
               "status":"done",
               "displayName":displayName
            };
            this.clearQueue(squashName,userId,displayName);
         }
      }
      
      public function disconnect() : void
      {
         this._connection.disconnect();
      }
      
      private function onMessage(evt:MessageEvent) : void
      {
         var je:JabberEvent = null;
         trace("[JabberGateway onMessage]",evt.data.from + ": " + evt.data.body);
         var userId:String = evt.data.from.toString().split("@")[0];
         if(this._roomNamesToChannel[userId])
         {
            return;
         }
         if(this._userIdMap[userId] != null && this._userIdMap[userId].status == "done")
         {
            je = new JabberEvent(MESSAGE_RECEIVED);
            je.fromUserId = userId;
            je.fromUserName = this._userIdMap[userId].displayName;
            je.msg = evt.data.body;
            je.timeStamp = evt.data.time;
            this.dispatchEvent(je);
         }
         else
         {
            this.addToReceivedQueue(userId,evt.data.body,evt.data.time);
            if(this._userIdMap[userId] == null)
            {
               this.getUserInfo(userId);
            }
         }
      }
      
      private function onJabberChatRoomSpec(evt:IBattleEvent) : void
      {
         var obj:Object = null;
         var room:JabberRoom = null;
         trace("[JabberGateway onJabberChatRoomSpec]");
         for each(obj in evt.battleMessage.responseObj)
         {
            if(!this._channels[obj.chatChannel])
            {
               room = new JabberRoom(this._connection);
               room.roomJID = new UnescapedJID(obj.name);
               this._channels[obj.chatChannel] = room;
               this._roomNamesToChannel[room.roomName] = obj.chatChannel;
               room.addEventListener(RoomEvent.GROUP_MESSAGE,onRoomGroupMessage);
               room.addEventListener(RoomEvent.ADMIN_ERROR,onRoomError);
               room.addEventListener(RoomEvent.BANNED_ERROR,onRoomError);
               room.addEventListener(RoomEvent.LOCKED_ERROR,onRoomError);
               room.addEventListener(RoomEvent.MAX_USERS_ERROR,onRoomError);
               room.addEventListener(RoomEvent.PASSWORD_ERROR,onRoomError);
               room.addEventListener(RoomEvent.REGISTRATION_REQ_ERROR,onRoomError);
               room.addEventListener(RoomEvent.NICK_CONFLICT,onRoomNickConflict);
               if(this._connection.isLoggedIn())
               {
                  room.join();
               }
            }
         }
      }
      
      private function onOutgoingData(evt:OutgoingDataEvent) : void
      {
         trace("[JabberGateway onOutgoingData]",evt.data);
      }
      
      private function onIncommingData(evt:IncomingDataEvent) : void
      {
         trace("[JabberGateway onIncommingData]",evt.data);
      }
      
      private function onConnectionTimer(evt:TimerEvent) : void
      {
         trace("[JabberGateway onConnectionTimer]",this._connection.isLoggedIn());
         if(!this._connection.isLoggedIn())
         {
            this._connection.connect();
         }
         else
         {
            this._connectionTimer.stop();
         }
      }
      
      private function clearQueue(squashName:String, userId:String, displayName:String) : void
      {
         var msg:JabberMessage = null;
         var receivedMsg:Object = null;
         var je:JabberEvent = null;
         if(this._sendMsgQueue[squashName])
         {
            for each(msg in this._sendMsgQueue[squashName])
            {
               msg.displayName = displayName;
               if(msg.channel == null)
               {
                  this.sendJabberMsg(userId,msg.txt);
                  msg.dispatchEvent(new Event(JabberMessage.MESSAGE_READY));
               }
               else
               {
                  this.sendJabberMsgToChannel(msg.channel,msg.txt);
               }
            }
            delete this._sendMsgQueue[squashName];
         }
         if(this._receivedMsgQueue[userId])
         {
            for each(receivedMsg in this._receivedMsgQueue[userId])
            {
               je = new JabberEvent(MESSAGE_RECEIVED);
               je.fromUserId = userId;
               je.fromUserName = squashName;
               je.msg = receivedMsg.msg;
               je.timeStamp = receivedMsg.timeStamp;
               je.channel = receivedMsg.channel;
               this.dispatchEvent(je);
            }
            delete this._receivedMsgQueue[userId];
         }
      }
      
      private function addToSendQueue(msg:JabberMessage) : void
      {
         if(!this._sendMsgQueue[msg.squashName])
         {
            this._sendMsgQueue[msg.squashName] = new Array();
         }
         this._sendMsgQueue[msg.squashName].push(msg);
      }
      
      private function onRoomError(evt:RoomEvent) : void
      {
         trace("[JabberGateway onRoomError] ",evt.type,evt.errorCode,evt.errorType,evt.errorCondition,evt.errorMessage);
      }
      
      private function onBattleGatewayConnectionLost(evt:IBattleEvent) : void
      {
         this._reconnect = false;
         this.disconnect();
      }
      
      private function onLogin(e:LoginEvent) : void
      {
         var room:JabberRoom = null;
         trace("[JabberGateway onLogin]");
         var presence:Presence = new Presence(null,_connection.jid.escaped,Presence.SHOW_CHAT,null,null,1);
         _connection.send(presence);
         for each(room in this._channels)
         {
            if(!room.isActive)
            {
               room.join();
            }
         }
      }
      
      private function onRoomNickConflict(evt:RoomEvent) : void
      {
         trace("[JabberGateway onRoomNickConflict] ");
      }
      
      public function sendMsg(msg:JabberMessage) : void
      {
         if(this._connection.isLoggedIn())
         {
            if(this._userSquashNameMap[msg.squashName] != null && this._userSquashNameMap[msg.squashName].status == "done")
            {
               msg.displayName = this._userSquashNameMap[msg.squashName].displayName;
               if(msg.channel == null)
               {
                  this.sendJabberMsg(this._userSquashNameMap[msg.squashName].value,msg.txt);
                  msg.dispatchEvent(new Event(JabberMessage.MESSAGE_READY));
               }
               else
               {
                  this.sendJabberMsgToChannel(msg.channel,msg.txt);
               }
            }
            else
            {
               this.addToSendQueue(msg);
               if(this._userSquashNameMap[msg.squashName] == null)
               {
                  this.getUserInfo(msg.squashName);
               }
            }
         }
         else
         {
            msg.isError = true;
            msg.txt = "You are not loged into Jabber";
            msg.dispatchEvent(new Event(JabberMessage.MESSAGE_READY));
         }
      }
      
      private function onDisconnect(evt:DisconnectionEvent) : void
      {
         var je:JabberEvent = new JabberEvent(MESSAGE_RECEIVED);
         je.errorMsg = "Connection to jabber lost";
         this.dispatchEvent(je);
         if(this._reconnect && !this._connectionTimer.running)
         {
            this._connectionTimer.start();
         }
      }
      
      private function onError(e:XIFFErrorEvent) : void
      {
         trace("[JabberGateway onError]",e.errorCode,e.errorMessage);
         var je:JabberEvent = new JabberEvent(MESSAGE_RECEIVED);
         je.errorMsg = "Jabber error [" + e.errorCode + "] : " + e.errorMessage;
         this.dispatchEvent(je);
      }
      
      private function onConnected(evt:ConnectionSuccessEvent) : void
      {
         this._connectionTimer.stop();
      }
      
      private function sendJabberMsgToChannel(channel:String, msg:String) : void
      {
         var room:JabberRoom = this._channels[channel] as JabberRoom;
         if(room)
         {
            trace(room.isActive);
            room.sendMessage(msg);
         }
      }
      
      private function onZomgLogin(evt:IBattleEvent) : void
      {
         trace("[JabberGateway onZomgLogin]");
         var data:Object = evt.battleMessage.responseObj[0];
         this._server = data.xmppServer;
         this._userId = data.id;
         this._password = data.xmppPass;
         Security.loadPolicyFile("xmlsocket://" + this._server + ":5222");
         _connection.useAnonymousLogin = false;
         _connection.username = this._userId;
         _connection.password = this._password;
         _connection.server = this._server;
         _connection.connect();
      }
   }
}
