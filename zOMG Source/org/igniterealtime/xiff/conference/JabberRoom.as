package org.igniterealtime.xiff.conference
{
   import org.igniterealtime.xiff.collections.ArrayCollection;
   import org.igniterealtime.xiff.core.EscapedJID;
   import org.igniterealtime.xiff.core.UnescapedJID;
   import org.igniterealtime.xiff.core.XMPPConnection;
   import org.igniterealtime.xiff.data.IExtension;
   import org.igniterealtime.xiff.data.IQ;
   import org.igniterealtime.xiff.data.Message;
   import org.igniterealtime.xiff.data.Presence;
   import org.igniterealtime.xiff.data.XMPPStanza;
   import org.igniterealtime.xiff.data.forms.FormExtension;
   import org.igniterealtime.xiff.data.muc.MUC;
   import org.igniterealtime.xiff.data.muc.MUCAdminExtension;
   import org.igniterealtime.xiff.data.muc.MUCBaseExtension;
   import org.igniterealtime.xiff.data.muc.MUCExtension;
   import org.igniterealtime.xiff.data.muc.MUCItem;
   import org.igniterealtime.xiff.data.muc.MUCOwnerExtension;
   import org.igniterealtime.xiff.data.muc.MUCStatus;
   import org.igniterealtime.xiff.data.muc.MUCUserExtension;
   import org.igniterealtime.xiff.events.DisconnectionEvent;
   import org.igniterealtime.xiff.events.MessageEvent;
   import org.igniterealtime.xiff.events.PresenceEvent;
   import org.igniterealtime.xiff.events.PropertyChangeEvent;
   import org.igniterealtime.xiff.events.RoomEvent;
   
   public class JabberRoom extends ArrayCollection
   {
      
      public static const AFFILIATION_ADMIN:String = MUC.AFFILIATION_ADMIN;
      
      public static const ROLE_NONE:String = MUC.ROLE_NONE;
      
      public static const AFFILIATION_OWNER:String = MUC.AFFILIATION_OWNER;
      
      public static const ROLE_VISITOR:String = MUC.ROLE_VISITOR;
      
      public static const AFFILIATION_NONE:String = MUC.AFFILIATION_NONE;
      
      public static const AFFILIATION_MEMBER:String = MUC.AFFILIATION_MEMBER;
      
      public static const ROLE_PARTICIPANT:String = MUC.ROLE_PARTICIPANT;
      
      private static var roomStaticConstructed:Boolean = RoomStaticConstructor();
      
      private static var staticConstructorDependencies:Array = [FormExtension,MUC];
      
      public static const ROLE_MODERATOR:String = MUC.ROLE_MODERATOR;
      
      public static const AFFILIATION_OUTCAST:String = MUC.AFFILIATION_OUTCAST;
       
      
      private var _password:String;
      
      private var _active:Boolean;
      
      private var affiliationExtension:MUCBaseExtension;
      
      private var _affiliation:String;
      
      private var pendingNickname:String;
      
      private var myIsReserved:Boolean;
      
      private var _nickname:String;
      
      private var _role:String;
      
      private var _roomJID:UnescapedJID;
      
      private var affiliationArgs:Array;
      
      private var _anonymous:Boolean = true;
      
      private var _subject:String;
      
      private var _connection:XMPPConnection;
      
      public function JabberRoom(aConnection:XMPPConnection = null)
      {
         affiliationArgs = [];
         super();
         setActive(false);
         if(aConnection != null)
         {
            connection = aConnection;
         }
         affiliationExtension = new MUCAdminExtension();
      }
      
      private static function RoomStaticConstructor() : Boolean
      {
         MUC.enable();
         FormExtension.enable();
         return true;
      }
      
      private function grant_response(iq:IQ) : void
      {
         affiliationArgs = [];
         var event:RoomEvent = new RoomEvent(RoomEvent.AFFILIATION_CHANGE_COMPLETE);
         dispatchEvent(event);
      }
      
      public function get anonymous() : Boolean
      {
         return _anonymous;
      }
      
      public function revoke(jids:Array) : void
      {
         grant(JabberRoom.AFFILIATION_NONE,jids);
      }
      
      private function setActive(state:Boolean) : void
      {
         var oldActive:Boolean = _active;
         _active = state;
         if(_active != oldActive)
         {
            dispatchChangeEvent("active",_active,oldActive);
         }
      }
      
      public function invite(jid:UnescapedJID, reason:String) : void
      {
         var message:Message = new Message(roomJID.escaped);
         var userExt:MUCUserExtension = new MUCUserExtension();
         userExt.invite(jid.escaped,undefined,reason);
         message.addExtension(userExt);
         _connection.send(message);
      }
      
      public function set roomName(value:String) : void
      {
         roomJID = new UnescapedJID(value + "@" + conferenceServer);
      }
      
      public function set conferenceServer(value:String) : void
      {
         roomJID = new UnescapedJID(roomName + "@" + value);
      }
      
      public function get conferenceServer() : String
      {
         return _roomJID.domain;
      }
      
      public function ban(jids:Array) : void
      {
         var banJID:UnescapedJID = null;
         var iq:IQ = new IQ(roomJID.escaped,IQ.TYPE_SET,null,ban_response,ban_error);
         var adminExt:MUCAdminExtension = new MUCAdminExtension();
         for each(banJID in jids)
         {
            adminExt.addItem(JabberRoom.AFFILIATION_OUTCAST,null,null,banJID.escaped,null,null);
         }
         iq.addExtension(adminExt);
         _connection.send(iq);
      }
      
      public function destroy(reason:String, alternateJID:UnescapedJID = null, callback:Function = null) : void
      {
         var jid:EscapedJID = null;
         var iq:IQ = new IQ(roomJID.escaped,IQ.TYPE_SET);
         var ownerExt:MUCOwnerExtension = new MUCOwnerExtension();
         if(alternateJID != null)
         {
            jid = alternateJID.escaped;
         }
         iq.callback = callback;
         ownerExt.destroy(reason,jid);
         iq.addExtension(ownerExt);
         _connection.send(iq);
      }
      
      public function set nickname(value:String) : void
      {
         var presence:Presence = null;
         if(isActive)
         {
            pendingNickname = value;
            presence = new Presence(new EscapedJID(userJID + "/" + value));
            _connection.send(presence);
         }
         else
         {
            _nickname = value;
         }
      }
      
      private function admin_error(iq:IQ) : void
      {
         var event:RoomEvent = new RoomEvent(RoomEvent.ADMIN_ERROR);
         event.errorCondition = iq.errorCondition;
         event.errorMessage = iq.errorMessage;
         event.errorType = iq.errorType;
         event.errorCode = iq.errorCode;
         dispatchEvent(event);
      }
      
      public function get password() : String
      {
         return _password;
      }
      
      public function cancelConfiguration() : void
      {
         var iq:IQ = new IQ(roomJID.escaped,IQ.TYPE_SET);
         var ownerExt:MUCOwnerExtension = new MUCOwnerExtension();
         var form:FormExtension = new FormExtension();
         form.type = FormExtension.TYPE_CANCEL;
         ownerExt.addExtension(form);
         iq.addExtension(ownerExt);
         _connection.send(iq);
      }
      
      public function get roomName() : String
      {
         return _roomJID.node;
      }
      
      public function kickOccupant(occupantNick:String, reason:String) : void
      {
         var iq:IQ = null;
         var adminExt:MUCAdminExtension = null;
         if(isActive)
         {
            iq = new IQ(roomJID.escaped,IQ.TYPE_SET,XMPPStanza.generateID("kick_occupant_"));
            adminExt = new MUCAdminExtension(iq.getNode());
            adminExt.addItem(null,MUC.ROLE_NONE,occupantNick,null,null,reason);
            iq.addExtension(adminExt);
            _connection.send(iq);
         }
      }
      
      public function requestConfiguration() : void
      {
         var iq:IQ = new IQ(roomJID.escaped,IQ.TYPE_GET,null,requestConfiguration_response,requestConfiguration_error);
         var ownerExt:MUCOwnerExtension = new MUCOwnerExtension();
         iq.addExtension(ownerExt);
         _connection.send(iq);
      }
      
      public function grant(affiliation:String, jids:Array) : void
      {
         var jid:UnescapedJID = null;
         affiliationArgs = arguments;
         var iq:IQ = new IQ(roomJID.escaped,IQ.TYPE_SET,null,grant_response,grant_error);
         for each(jid in jids)
         {
            affiliationExtension.addItem(affiliation,null,null,jid.escaped,null,null);
         }
         iq.addExtension(affiliationExtension as IExtension);
         _connection.send(iq);
      }
      
      public function sendPrivateMessage(recipientNickname:String, body:String = null, htmlBody:String = null) : void
      {
         var message:Message = null;
         if(isActive)
         {
            message = new Message(new EscapedJID(roomJID + "/" + recipientNickname),null,body,htmlBody,Message.TYPE_CHAT);
            _connection.send(message);
         }
      }
      
      private function requestAffiliations_response(iq:IQ) : void
      {
         var adminExt:MUCAdminExtension = null;
         var items:Array = null;
         var event:RoomEvent = null;
         if(iq.type == IQ.TYPE_RESULT)
         {
            adminExt = iq.getAllExtensionsByNS(MUCAdminExtension.NS)[0];
            items = adminExt.getAllItems();
            event = new RoomEvent(RoomEvent.AFFILIATIONS);
            event.data = items;
            dispatchEvent(event);
         }
      }
      
      public function requestAffiliations(affiliation:String) : void
      {
         var iq:IQ = new IQ(roomJID.escaped,IQ.TYPE_GET,null,requestAffiliations_response,requestAffiliations_error);
         var adminExt:MUCAdminExtension = new MUCAdminExtension();
         adminExt.addItem(affiliation);
         iq.addExtension(adminExt);
         _connection.send(iq);
      }
      
      public function setOccupantVoice(occupantNick:String, voice:Boolean) : void
      {
         var iq:IQ = null;
         var adminExt:MUCAdminExtension = null;
         if(isActive)
         {
            iq = new IQ(roomJID.escaped,IQ.TYPE_SET,XMPPStanza.generateID("voice_"));
            adminExt = new MUCAdminExtension(iq.getNode());
            adminExt.addItem(null,!!voice?MUC.ROLE_PARTICIPANT:MUC.ROLE_VISITOR,occupantNick);
            iq.addExtension(adminExt);
            _connection.send(iq);
         }
      }
      
      public function set password(value:String) : void
      {
         _password = value;
      }
      
      public function leave() : void
      {
         var leavePresence:Presence = null;
         if(isActive)
         {
            leavePresence = new Presence(userJID.escaped,null,Presence.TYPE_UNAVAILABLE);
            _connection.send(leavePresence);
            removeAll();
            _connection.removeEventListener(MessageEvent.MESSAGE,handleEvent);
            _connection.removeEventListener(DisconnectionEvent.DISCONNECT,handleEvent);
         }
      }
      
      private function admin_response(iq:IQ) : void
      {
      }
      
      public function join(createReserved:Boolean = false, joinPresenceExtensions:Array = null) : Boolean
      {
         var muc:MUCExtension = new MUCExtension();
         if(password != null)
         {
            muc.password = password;
         }
         return joinWithExplicitMUCExtension(createReserved,muc,joinPresenceExtensions);
      }
      
      private function requestAffiliations_error(iq:IQ) : void
      {
         admin_error(iq);
      }
      
      public function set connection(value:XMPPConnection) : void
      {
         if(_connection != null)
         {
            _connection.removeEventListener(MessageEvent.MESSAGE,handleEvent);
            _connection.removeEventListener(PresenceEvent.PRESENCE,handleEvent);
            _connection.removeEventListener(DisconnectionEvent.DISCONNECT,handleEvent);
         }
         _connection = value;
         _connection.addEventListener(MessageEvent.MESSAGE,handleEvent,false,0,true);
         _connection.addEventListener(PresenceEvent.PRESENCE,handleEvent,false,0,true);
         _connection.addEventListener(DisconnectionEvent.DISCONNECT,handleEvent,false,0,true);
      }
      
      private function grant_error(iq:IQ) : void
      {
         if(affiliationExtension is MUCAdminExtension && affiliationArgs.length > 0)
         {
            affiliationExtension = new MUCOwnerExtension();
            grant.apply(null,affiliationArgs);
         }
         else
         {
            affiliationArgs = [];
            admin_error(iq);
         }
      }
      
      private function unlockRoom(isReserved:Boolean) : void
      {
         var iq:IQ = null;
         var ownerExt:MUCOwnerExtension = null;
         var form:FormExtension = null;
         if(isReserved)
         {
            requestConfiguration();
         }
         else
         {
            iq = new IQ(roomJID.escaped,IQ.TYPE_SET);
            ownerExt = new MUCOwnerExtension();
            form = new FormExtension();
            form.type = FormExtension.TYPE_SUBMIT;
            ownerExt.addExtension(form);
            iq.addExtension(ownerExt);
            _connection.send(iq);
         }
      }
      
      public function get userJID() : UnescapedJID
      {
         if(_roomJID != null)
         {
            return new UnescapedJID(_roomJID.bareJID + "/" + nickname);
         }
         return null;
      }
      
      public function get roomJID() : UnescapedJID
      {
         return _roomJID;
      }
      
      public function get subject() : String
      {
         return _subject;
      }
      
      public function getOccupantNamed(name:String) : RoomOccupant
      {
         var occ:RoomOccupant = null;
         for each(occ in this)
         {
            if(occ.displayName == name)
            {
               return occ;
            }
         }
         return null;
      }
      
      public function joinWithExplicitMUCExtension(createReserved:Boolean, mucExtension:MUCExtension, joinPresenceExtensions:Array = null) : Boolean
      {
         var joinExt:* = undefined;
         if(!_connection.isActive() || isActive)
         {
            return false;
         }
         myIsReserved = createReserved;
         var joinPresence:Presence = new Presence(userJID.escaped);
         joinPresence.addExtension(mucExtension);
         if(joinPresenceExtensions != null)
         {
            for each(joinExt in joinPresenceExtensions)
            {
               joinPresence.addExtension(joinExt);
            }
         }
         _connection.send(joinPresence);
         return true;
      }
      
      public function allow(jids:Array) : void
      {
         grant(JabberRoom.AFFILIATION_NONE,jids);
      }
      
      private function configure_response(iq:IQ) : void
      {
         var event:RoomEvent = new RoomEvent(RoomEvent.CONFIGURE_ROOM_COMPLETE);
         dispatchEvent(event);
      }
      
      public function get isActive() : Boolean
      {
         return _active;
      }
      
      private function handleEvent(eventObj:Object) : void
      {
         var userExt:MUCUserExtension = null;
         var message:Message = null;
         var userExts:Array = null;
         var roomEvent:RoomEvent = null;
         var form:Array = null;
         var presence:Presence = null;
         var status:MUCStatus = null;
         switch(eventObj.type)
         {
            case "message":
               message = eventObj.data;
               userExts = message.getAllExtensionsByNS(MUCUserExtension.NS);
               if(isThisRoom(message.from.unescaped))
               {
                  if(message.type == Message.TYPE_GROUPCHAT)
                  {
                     if(message.subject != null)
                     {
                        _subject = message.subject;
                        roomEvent = new RoomEvent(RoomEvent.SUBJECT_CHANGE);
                        roomEvent.subject = message.subject;
                        dispatchEvent(roomEvent);
                     }
                     else if(!userExts || userExts.length == 0 || !userExts[0].hasStatusCode(100))
                     {
                        roomEvent = new RoomEvent(RoomEvent.GROUP_MESSAGE);
                        roomEvent.nickname = message.from.resource;
                        roomEvent.data = message;
                        dispatchEvent(roomEvent);
                     }
                  }
                  else if(message.type == Message.TYPE_NORMAL)
                  {
                     form = message.getAllExtensionsByNS(FormExtension.NS)[0];
                     if(form)
                     {
                        roomEvent = new RoomEvent(RoomEvent.CONFIGURE_ROOM);
                        roomEvent.data = form;
                        dispatchEvent(roomEvent);
                     }
                  }
                  else if(message.type == Message.TYPE_CHAT)
                  {
                     roomEvent = new RoomEvent(RoomEvent.PRIVATE_MESSAGE);
                     roomEvent.data = message;
                     dispatchEvent(roomEvent);
                  }
               }
               else if(isThisUser(message.to.unescaped) && message.type == Message.TYPE_CHAT)
               {
                  roomEvent = new RoomEvent(RoomEvent.PRIVATE_MESSAGE);
                  roomEvent.data = message;
                  dispatchEvent(roomEvent);
               }
               else if(userExts != null && userExts.length > 0)
               {
                  userExt = userExts[0];
                  if(userExt && userExt.type == MUCUserExtension.TYPE_DECLINE)
                  {
                     roomEvent = new RoomEvent(RoomEvent.DECLINED);
                     roomEvent.from = userExt.reason;
                     roomEvent.reason = userExt.reason;
                     roomEvent.data = message;
                     dispatchEvent(roomEvent);
                  }
               }
               break;
            case "presence":
               for each(presence in eventObj.data)
               {
                  if(presence.type == Presence.TYPE_ERROR)
                  {
                     switch(presence.errorCode)
                     {
                        case 401:
                           roomEvent = new RoomEvent(RoomEvent.PASSWORD_ERROR);
                           break;
                        case 403:
                           roomEvent = new RoomEvent(RoomEvent.BANNED_ERROR);
                           break;
                        case 404:
                           roomEvent = new RoomEvent(RoomEvent.LOCKED_ERROR);
                           break;
                        case 407:
                           roomEvent = new RoomEvent(RoomEvent.REGISTRATION_REQ_ERROR);
                           break;
                        case 409:
                           roomEvent = new RoomEvent(RoomEvent.NICK_CONFLICT);
                           roomEvent.nickname = nickname;
                           break;
                        case 503:
                           roomEvent = new RoomEvent(RoomEvent.MAX_USERS_ERROR);
                           break;
                        default:
                           roomEvent = new RoomEvent("MUC Error of type: " + presence.errorCode);
                     }
                     roomEvent.errorCode = presence.errorCode;
                     roomEvent.errorMessage = presence.errorMessage;
                     dispatchEvent(roomEvent);
                  }
                  else if(isThisRoom(presence.from.unescaped))
                  {
                     if(presence.from.resource == pendingNickname)
                     {
                        _nickname = pendingNickname;
                        pendingNickname = null;
                     }
                     userExt = presence.getAllExtensionsByNS(MUCUserExtension.NS)[0];
                     for each(status in userExt.statuses)
                     {
                        switch(status.code)
                        {
                           case 100:
                           case 172:
                              _anonymous = false;
                              continue;
                           case 174:
                              _anonymous = true;
                              continue;
                           case 201:
                              unlockRoom(myIsReserved);
                              continue;
                           default:
                              continue;
                        }
                     }
                     updateRoomRoster(presence);
                     if(presence.type == Presence.TYPE_UNAVAILABLE && isActive && isThisUser(presence.from.unescaped))
                     {
                        setActive(false);
                        if(userExt.type == MUCUserExtension.TYPE_DESTROY)
                        {
                           roomEvent = new RoomEvent(RoomEvent.ROOM_DESTROYED);
                        }
                        else
                        {
                           roomEvent = new RoomEvent(RoomEvent.ROOM_LEAVE);
                        }
                        dispatchEvent(roomEvent);
                        _connection.removeEventListener(PresenceEvent.PRESENCE,handleEvent);
                     }
                  }
               }
               break;
            case "disconnection":
               setActive(false);
               removeAll();
               roomEvent = new RoomEvent(RoomEvent.ROOM_LEAVE);
               dispatchEvent(roomEvent);
         }
      }
      
      public function isThisUser(sender:UnescapedJID) : Boolean
      {
         var value:* = false;
         if(userJID != null)
         {
            value = sender.toString().toLowerCase() == userJID.toString().toLowerCase();
         }
         return value;
      }
      
      public function set roomJID(jid:UnescapedJID) : void
      {
         _roomJID = jid;
      }
      
      public function getMessage(body:String = null, htmlBody:String = null) : Message
      {
         var message:Message = new Message(roomJID.escaped,null,body,htmlBody,Message.TYPE_GROUPCHAT);
         return message;
      }
      
      private function requestConfiguration_response(iq:IQ) : void
      {
         var event:RoomEvent = null;
         var ownerExt:MUCOwnerExtension = iq.getAllExtensionsByNS(MUCOwnerExtension.NS)[0];
         var form:FormExtension = ownerExt.getAllExtensionsByNS(FormExtension.NS)[0];
         if(form.type == FormExtension.TYPE_REQUEST)
         {
            event = new RoomEvent(RoomEvent.CONFIGURE_ROOM);
            event.data = form;
            dispatchEvent(event);
         }
      }
      
      public function sendMessage(body:String = null, htmlBody:String = null) : void
      {
         var message:Message = null;
         if(isActive)
         {
            message = new Message(roomJID.escaped,null,body,htmlBody,Message.TYPE_GROUPCHAT);
            _connection.send(message);
         }
      }
      
      public function changeSubject(newSubject:String) : void
      {
         var message:Message = null;
         if(isActive)
         {
            message = new Message(roomJID.escaped,null,null,null,Message.TYPE_GROUPCHAT,newSubject);
            _connection.send(message);
         }
      }
      
      public function get connection() : XMPPConnection
      {
         return _connection;
      }
      
      public function configure(fieldmap:Object) : void
      {
         var form:FormExtension = null;
         var iq:IQ = new IQ(roomJID.escaped,IQ.TYPE_SET,null,configure_response,configure_error);
         var ownerExt:MUCOwnerExtension = new MUCOwnerExtension();
         if(fieldmap is FormExtension)
         {
            form = FormExtension(fieldmap);
         }
         else
         {
            form = new FormExtension();
            fieldmap["FORM_TYPE"] = ["http://jabber.org/protocol/muc#roomconfig"];
            form.setFields(fieldmap);
         }
         form.type = FormExtension.TYPE_SUBMIT;
         ownerExt.addExtension(form);
         iq.addExtension(ownerExt);
         _connection.send(iq);
      }
      
      private function ban_error(iq:IQ) : void
      {
         admin_error(iq);
      }
      
      public function get role() : String
      {
         return _role;
      }
      
      public function isThisRoom(sender:UnescapedJID) : Boolean
      {
         var value:* = false;
         if(_roomJID != null)
         {
            value = sender.bareJID.toLowerCase() == roomJID.bareJID.toLowerCase();
         }
         return value;
      }
      
      override public function toString() : String
      {
         return "[object Room]";
      }
      
      private function configure_error(iq:IQ) : void
      {
         admin_error(iq);
      }
      
      private function dispatchChangeEvent(name:String, newValue:*, oldValue:*) : void
      {
         var event:PropertyChangeEvent = new PropertyChangeEvent(PropertyChangeEvent.CHANGE);
         event.name = name;
         event.newValue = newValue;
         event.oldValue = oldValue;
         dispatchEvent(event);
      }
      
      private function ban_response(iq:IQ) : void
      {
      }
      
      public function get nickname() : String
      {
         return _nickname == null?_connection.username:_nickname;
      }
      
      public function decline(jid:UnescapedJID, reason:String) : void
      {
         var message:Message = new Message(roomJID.escaped);
         var userExt:MUCUserExtension = new MUCUserExtension();
         userExt.decline(jid.escaped,undefined,reason);
         message.addExtension(userExt);
         _connection.send(message);
      }
      
      private function requestConfiguration_error(iq:IQ) : void
      {
         admin_error(iq);
      }
      
      public function sendMessageWithExtension(message:Message) : void
      {
         if(isActive)
         {
            _connection.send(message);
         }
      }
      
      private function updateRoomRoster(aPresence:Presence) : void
      {
         var roomEvent:RoomEvent = null;
         var oldAffiliation:String = null;
         var oldRole:String = null;
         var userExt:MUCUserExtension = null;
         var status:MUCStatus = null;
         var userNickname:String = aPresence.from.unescaped.resource;
         var userExts:Array = aPresence.getAllExtensionsByNS(MUCUserExtension.NS);
         var item:MUCItem = userExts[0].getAllItems()[0];
         if(isThisUser(aPresence.from.unescaped))
         {
            oldAffiliation = _affiliation;
            _affiliation = item.affiliation;
            if(_affiliation != oldAffiliation)
            {
               dispatchChangeEvent("affiliation",_affiliation,oldAffiliation);
            }
            oldRole = _role;
            _role = item.role;
            if(_role != oldRole)
            {
               dispatchChangeEvent("role",_role,oldRole);
            }
            if(!isActive && aPresence.type != Presence.TYPE_UNAVAILABLE)
            {
               setActive(true);
               roomEvent = new RoomEvent(RoomEvent.ROOM_JOIN);
               dispatchEvent(roomEvent);
            }
         }
         var occupant:RoomOccupant = getOccupantNamed(userNickname);
         if(occupant)
         {
            if(aPresence.type == Presence.TYPE_UNAVAILABLE)
            {
               removeItemAt(getItemIndex(occupant));
               userExt = aPresence.getAllExtensionsByNS(MUCUserExtension.NS)[0];
               for each(status in userExt.statuses)
               {
                  switch(status.code)
                  {
                     case 301:
                        roomEvent = new RoomEvent(RoomEvent.USER_BANNED);
                        roomEvent.nickname = userNickname;
                        roomEvent.data = aPresence;
                        dispatchEvent(roomEvent);
                        return;
                     case 307:
                        roomEvent = new RoomEvent(RoomEvent.USER_KICKED);
                        roomEvent.nickname = userNickname;
                        roomEvent.data = aPresence;
                        dispatchEvent(roomEvent);
                        return;
                     default:
                        continue;
                  }
               }
               roomEvent = new RoomEvent(RoomEvent.USER_DEPARTURE);
               roomEvent.nickname = userNickname;
               roomEvent.data = aPresence;
               dispatchEvent(roomEvent);
            }
            else
            {
               occupant.affiliation = item.affiliation;
               occupant.role = item.role;
               occupant.show = aPresence.show;
               roomEvent = new RoomEvent(RoomEvent.USER_PRESENCE_CHANGE);
               roomEvent.nickname = userNickname;
               roomEvent.data = aPresence;
               dispatchEvent(roomEvent);
            }
         }
         else if(aPresence.type != Presence.TYPE_UNAVAILABLE)
         {
            addItem(new RoomOccupant(userNickname,aPresence.show,item.affiliation,item.role,!!item.jid?item.jid.unescaped:null,this));
            roomEvent = new RoomEvent(RoomEvent.USER_JOIN);
            roomEvent.nickname = userNickname;
            roomEvent.data = aPresence;
            dispatchEvent(roomEvent);
         }
      }
      
      public function get affiliation() : String
      {
         return _affiliation;
      }
   }
}
