package it.gotoandplay.smartfoxserver
{
   import com.gaiaonline.utils.ByteArrayUtils;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.FileReference;
   import flash.net.Socket;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   import it.gotoandplay.smartfoxserver.data.Room;
   import it.gotoandplay.smartfoxserver.data.User;
   import it.gotoandplay.smartfoxserver.handlers.ExtHandler;
   import it.gotoandplay.smartfoxserver.handlers.IMessageHandler;
   import it.gotoandplay.smartfoxserver.handlers.SysHandler;
   import it.gotoandplay.smartfoxserver.util.Entities;
   import it.gotoandplay.smartfoxserver.util.ObjectSerializer;
   
   public class SmartFoxClient extends EventDispatcher
   {
      
      private static const EOM:int = 0;
      
      public static const XTMSG_TYPE_STR:String = "str";
      
      private static const MSG_JSON:String = "{";
      
      public static const MODMSG_TO_USER:String = "u";
      
      public static const MODMSG_TO_ZONE:String = "z";
      
      private static var MSG_STR:String = "%";
      
      private static const MSG_XML:String = "<";
      
      public static const XTMSG_TYPE_JSON:String = "json";
      
      public static const XTMSG_TYPE_XML:String = "xml";
      
      public static const MODMSG_TO_ROOM:String = "r";
       
      
      private var connected:Boolean;
      
      private var socketByteBuff:ByteArray;
      
      private var benchStartTime:int;
      
      public var buddyVars:Array;
      
      public var myUserId:int;
      
      private var minVersion:Number;
      
      private var roomList:Array;
      
      public var httpPort:int;
      
      private var newByteBuffer:ByteArray;
      
      public var debug:Boolean;
      
      private var byteBuffer:ByteArray;
      
      private var subVersion:Number;
      
      public var buddyList:Array;
      
      private var messageHandlers:Array;
      
      private var _stats:SocketStats;
      
      private var majVersion:Number;
      
      private var socketConnection:Socket;
      
      private var sysHandler:SysHandler;
      
      public var myUserName:String;
      
      private var byteArrayToString:ByteArray;
      
      private var ipAddress:String;
      
      private var _baEndStr:int = 0;
      
      public var playerId:int;
      
      public var amIModerator:Boolean;
      
      public var changingRoom:Boolean;
      
      private var extHandler:ExtHandler;
      
      public var activeRoomId:int;
      
      public function SmartFoxClient(debug:Boolean = false)
      {
         _stats = new SocketStats();
         socketByteBuff = new ByteArray();
         byteArrayToString = new ByteArray();
         newByteBuffer = new ByteArray();
         super();
         this.majVersion = 1;
         this.minVersion = 4;
         this.subVersion = 1;
         this.activeRoomId = -1;
         this.debug = debug;
         this.messageHandlers = [];
         setupMessageHandlers();
         socketConnection = new Socket();
         socketConnection.addEventListener(Event.CONNECT,handleSocketConnection);
         socketConnection.addEventListener(Event.CLOSE,handleSocketDisconnection);
         socketConnection.addEventListener(ProgressEvent.SOCKET_DATA,handleSocketData);
         socketConnection.addEventListener(IOErrorEvent.IO_ERROR,handleIOError);
         socketConnection.addEventListener(IOErrorEvent.NETWORK_ERROR,handleIOError);
         socketConnection.addEventListener(SecurityErrorEvent.SECURITY_ERROR,handleSecurityError);
         byteBuffer = new ByteArray();
      }
      
      private function getXmlUserVariable(uVars:Object) : String
      {
         var val:* = undefined;
         var t:String = null;
         var type:* = null;
         var key:* = null;
         var xmlStr:* = "<vars>";
         for(key in uVars)
         {
            val = uVars[key];
            type = typeof val;
            t = null;
            if(type == "boolean")
            {
               t = "b";
               val = !!val?"1":"0";
            }
            else if(type == "number")
            {
               t = "n";
            }
            else if(type == "string")
            {
               t = "s";
            }
            else if(val == null && type == "object" || type == "undefined")
            {
               t = "x";
               val = "";
            }
            if(t != null)
            {
               xmlStr = xmlStr + ("<var n=\'" + key + "\' t=\'" + t + "\'><![CDATA[" + val + "]]></var>");
            }
         }
         xmlStr = xmlStr + "</vars>";
         return xmlStr;
      }
      
      public function set isConnected(b:Boolean) : void
      {
         this.connected = b;
      }
      
      private function checkBuddyDuplicates(buddyName:String) : Boolean
      {
         var buddy:Object = null;
         var res:Boolean = false;
         for each(buddy in buddyList)
         {
            if(buddy.name == buddyName)
            {
               res = true;
               break;
            }
         }
         return res;
      }
      
      private function getXmlRoomVariable(rVar:Object) : String
      {
         var vName:String = rVar.name.toString();
         var vValue:* = rVar.val;
         var vPrivate:String = !!rVar.priv?"1":"0";
         var vPersistent:String = !!rVar.persistent?"1":"0";
         var t:String = null;
         var type:* = typeof vValue;
         if(type == "boolean")
         {
            t = "b";
            vValue = !!vValue?"1":"0";
         }
         else if(type == "number")
         {
            t = "n";
         }
         else if(type == "string")
         {
            t = "s";
         }
         else if(vValue == null && type == "object" || type == "undefined")
         {
            t = "x";
            vValue = "";
         }
         if(t != null)
         {
            return "<var n=\'" + vName + "\' t=\'" + t + "\' pr=\'" + vPrivate + "\' pe=\'" + vPersistent + "\'><![CDATA[" + vValue + "]]></var>";
         }
         return "";
      }
      
      public function getBuddyRoom(buddy:Object) : void
      {
         if(buddy.id != -1)
         {
            send({
               "t":"sys",
               "bid":buddy.id
            },"roomB",-1,"<b id=\'" + buddy.id + "\' />");
         }
      }
      
      private function handleSocketData(evt:Event) : void
      {
         var messageLength:int = 0;
         socketConnection.readBytes(byteBuffer,byteBuffer.length,socketConnection.bytesAvailable);
         var bbLen:int = byteBuffer.length;
         for(var baBeginStr:int = 0; _baEndStr < bbLen; )
         {
            if(byteBuffer[_baEndStr] == 0)
            {
               messageLength = _baEndStr - baBeginStr;
               if(messageLength > 0)
               {
                  _stats.addRead(messageLength);
                  byteArrayToString.writeBytes(byteBuffer,baBeginStr,messageLength);
                  handleMessage(byteArrayToString.toString());
                  byteArrayToString = ByteArrayUtils.clear(byteArrayToString);
               }
               baBeginStr = _baEndStr + 1;
            }
            _baEndStr++;
         }
         if(baBeginStr > 0)
         {
            if(_baEndStr - baBeginStr > 0)
            {
               newByteBuffer.writeBytes(byteBuffer,baBeginStr);
               byteBuffer = newByteBuffer;
               _baEndStr = newByteBuffer.length;
               newByteBuffer = ByteArrayUtils.clear(newByteBuffer);
            }
            else
            {
               byteBuffer = ByteArrayUtils.clear(byteBuffer);
               _baEndStr = 0;
            }
         }
      }
      
      private function handleSocketError(evt:SecurityErrorEvent) : void
      {
         debugMessage("SOCKET ERROR!!!");
      }
      
      public function getActiveRoom() : Room
      {
         return roomList[activeRoomId];
      }
      
      private function handleSocketDisconnection(evt:Event) : void
      {
         initialize();
         var sfse:SFSEvent = new SFSEvent(SFSEvent.onConnectionLost,{});
         dispatchEvent(sfse);
      }
      
      private function xmlReceived(msg:String) : void
      {
         var xmlData:XML = new XML(msg);
         var handlerId:String = xmlData.@t;
         var action:String = xmlData.body.@action;
         var roomId:int = xmlData.body.@r;
         var handler:IMessageHandler = messageHandlers[handlerId];
         if(handler != null)
         {
            handler.handleMessage(xmlData,XTMSG_TYPE_XML);
         }
      }
      
      public function switchSpectator(roomId:int = -1) : void
      {
         if(roomId == -1)
         {
            roomId = activeRoomId;
         }
         send({"t":"sys"},"swSpec",roomId,"");
      }
      
      public function roundTripBench() : void
      {
         this.benchStartTime = getTimer();
         send({"t":"sys"},"roundTrip",activeRoomId,"");
      }
      
      public function joinRoom(newRoom:*, pword:String = "", isSpectator:Boolean = false, dontLeave:Boolean = false, oldRoom:int = -1) : void
      {
         var r:Room = null;
         var header:Object = null;
         var leaveCurrRoom:String = null;
         var roomToLeave:int = 0;
         var message:* = null;
         var newRoomId:int = -1;
         var isSpec:int = !!isSpectator?1:0;
         if(!this.changingRoom)
         {
            if(typeof newRoom == "number")
            {
               newRoomId = int(newRoom);
            }
            else if(typeof newRoom == "string")
            {
               for each(r in roomList)
               {
                  if(r.getName() == newRoom)
                  {
                     newRoomId = r.getId();
                     break;
                  }
               }
            }
            if(newRoomId != -1)
            {
               header = {"t":"sys"};
               leaveCurrRoom = !!dontLeave?"0":"1";
               roomToLeave = oldRoom > -1?int(oldRoom):int(activeRoomId);
               if(activeRoomId == -1)
               {
                  leaveCurrRoom = "0";
                  roomToLeave = -1;
               }
               message = "<room id=\'" + newRoomId + "\' pwd=\'" + pword + "\' spec=\'" + isSpec + "\' leave=\'" + leaveCurrRoom + "\' old=\'" + roomToLeave + "\' />";
               send(header,"joinRoom",activeRoomId,message);
               changingRoom = true;
            }
            else
            {
               debugMessage("SmartFoxError: requested room to join does not exist!");
            }
         }
      }
      
      public function uploadFile(fileRef:FileReference, id:int = -1, nick:String = "", port:int = -1) : void
      {
         if(id == -1)
         {
            id = this.myUserId;
         }
         if(nick == "")
         {
            nick = this.myUserName;
         }
         if(port == -1)
         {
            port = this.httpPort;
         }
         fileRef.upload(new URLRequest("http://" + this.ipAddress + ":" + port + "/default/Upload.py?id=" + id + "&nick=" + nick));
         debugMessage("[UPLOAD]: http://" + this.ipAddress + ":" + port + "/default/Upload.py?id=" + id + "&nick=" + nick);
      }
      
      private function debugMessage(message:String) : void
      {
         var evt:SFSEvent = null;
         if(this.debug)
         {
            trace(message);
            evt = new SFSEvent(SFSEvent.onDebugMessage,{"message":message});
            dispatchEvent(evt);
         }
      }
      
      private function makeXmlHeader(headerObj:Object) : String
      {
         var item:* = null;
         var xmlData:* = "<msg";
         for(item in headerObj)
         {
            xmlData = xmlData + (" " + item + "=\'" + headerObj[item] + "\'");
         }
         xmlData = xmlData + ">";
         return xmlData;
      }
      
      private function strReceived(msg:String) : void
      {
         var params:Array = msg.substr(1,msg.length - 2).split(MSG_STR);
         var handlerId:String = params[0];
         var handler:IMessageHandler = messageHandlers[handlerId];
         if(handler != null)
         {
            handler.handleMessage(params.splice(1,params.length - 1),XTMSG_TYPE_STR);
         }
      }
      
      public function getRoomByName(roomName:String) : Room
      {
         var r:Room = null;
         var room:Room = null;
         for each(r in roomList)
         {
            if(r.getName() == roomName)
            {
               room = r;
               break;
            }
         }
         return room;
      }
      
      public function loadBuddyList() : void
      {
         send({"t":"sys"},"loadB",-1,"");
      }
      
      public function leaveRoom(roomId:int) : void
      {
         var header:Object = {"t":"sys"};
         var xmlMsg:* = "<rm id=\'" + roomId + "\' />";
         send(header,"leaveRoom",roomId,xmlMsg);
      }
      
      private function addMessageHandler(key:String, handler:IMessageHandler) : void
      {
         if(this.messageHandlers[key] == null)
         {
            this.messageHandlers[key] = handler;
         }
         else
         {
            debugMessage("Warning, message handler called: " + key + " already exist!");
         }
      }
      
      public function getAllRooms() : Array
      {
         return roomList;
      }
      
      public function getRoom(rid:int) : Room
      {
         return roomList[rid];
      }
      
      public function setBuddyVariables(varList:Array) : void
      {
         var vName:* = null;
         var vValue:String = null;
         var header:Object = {"t":"sys"};
         var xmlMsg:* = "<vars>";
         for(vName in varList)
         {
            vValue = varList[vName];
            if(buddyVars[vName] != vValue)
            {
               buddyVars[vName] = vValue;
               xmlMsg = xmlMsg + ("<var n=\'" + vName + "\'><![CDATA[" + vValue + "]]></var>");
            }
         }
         xmlMsg = xmlMsg + "</vars>";
         this.send(header,"setBvars",-1,xmlMsg);
      }
      
      private function handleSecurityError(evt:SecurityErrorEvent) : void
      {
         dispatchEvent(evt);
         debugMessage("[WARN] Security Error: " + evt.text);
      }
      
      private function handleIOError(evt:IOErrorEvent) : void
      {
         var sfse:SFSEvent = null;
         var params:Object = null;
         if(!connected)
         {
            params = {};
            params.success = false;
            params.error = "I/O Error";
            sfse = new SFSEvent(SFSEvent.onConnection,params);
            dispatchEvent(sfse);
         }
         else
         {
            dispatchEvent(evt);
            debugMessage("[WARN] I/O Error: last sent/received message might have failed.");
         }
      }
      
      private function setupMessageHandlers() : void
      {
         sysHandler = new SysHandler(this);
         extHandler = new ExtHandler(this);
         addMessageHandler("sys",sysHandler);
         addMessageHandler("xt",extHandler);
      }
      
      public function login(zone:String, name:String, pass:String) : void
      {
         var header:Object = {"t":"sys"};
         var message:* = "<login z=\'" + zone + "\'><nick><![CDATA[" + name + "]]></nick><pword><![CDATA[" + pass + "]]></pword></login>";
         send(header,"login",0,message);
      }
      
      public function __logout() : void
      {
         initialize(true);
      }
      
      public function autoJoin() : void
      {
         var header:Object = {"t":"sys"};
         this.send(header,"autoJoin",!!this.activeRoomId?Number(this.activeRoomId):Number(-1),"");
      }
      
      public function clearRoomList() : void
      {
         this.roomList = [];
      }
      
      private function send(header:Object, action:String, fromRoom:Number, message:String) : void
      {
         var xmlMsg:String = makeXmlHeader(header);
         xmlMsg = xmlMsg + ("<body action=\'" + action + "\' r=\'" + fromRoom + "\'>" + message + "</body>" + closeHeader());
         writeToSocket(xmlMsg);
      }
      
      public function logout() : void
      {
         var header:Object = {"t":"sys"};
         send(header,"logout",-1,"");
      }
      
      public function getRoomList() : void
      {
         var header:Object = {"t":"sys"};
         send(header,"getRmList",activeRoomId,"");
      }
      
      private function initialize(isLogOut:Boolean = false) : void
      {
         this.changingRoom = false;
         this.amIModerator = false;
         this.playerId = -1;
         this.activeRoomId = -1;
         this.myUserId = -1;
         this.myUserName = "";
         this.roomList = [];
         this.buddyList = [];
         this.buddyVars = [];
         if(!isLogOut)
         {
            this.connected = false;
         }
      }
      
      public function disconnect() : void
      {
         socketConnection.close();
         connected = false;
         sysHandler.dispatchDisconnection();
      }
      
      public function sendJson(jsMessage:String) : void
      {
         writeToSocket(jsMessage);
      }
      
      public function setRoomVariables(varList:Array, roomId:int = -1, setOwnership:Boolean = true) : void
      {
         var xmlMsg:* = null;
         var rv:Object = null;
         if(roomId == -1)
         {
            roomId = activeRoomId;
         }
         var header:Object = {"t":"sys"};
         if(setOwnership)
         {
            xmlMsg = "<vars>";
         }
         else
         {
            xmlMsg = "<vars so=\'0\'>";
         }
         for each(rv in varList)
         {
            xmlMsg = xmlMsg + getXmlRoomVariable(rv);
         }
         xmlMsg = xmlMsg + "</vars>";
         send(header,"setRvars",roomId,xmlMsg);
      }
      
      private function closeHeader() : String
      {
         return "</msg>";
      }
      
      public function getVersion() : String
      {
         return this.majVersion + "." + this.minVersion + "." + this.subVersion;
      }
      
      public function setUserVariables(varObj:Object, roomId:int = -1) : void
      {
         if(roomId == -1)
         {
            roomId = activeRoomId;
         }
         var header:Object = {"t":"sys"};
         var currRoom:Room = getActiveRoom();
         var user:User = currRoom.getUser(myUserId);
         user.setVariables(varObj);
         var xmlMsg:String = getXmlUserVariable(varObj);
         send(header,"setUvars",roomId,xmlMsg);
      }
      
      public function addBuddy(buddyName:String) : void
      {
         var xmlMsg:* = null;
         if(buddyName != myUserName && !checkBuddyDuplicates(buddyName))
         {
            xmlMsg = "<n>" + buddyName + "</n>";
            send({"t":"sys"},"addB",-1,xmlMsg);
         }
      }
      
      public function get stats() : SocketStats
      {
         return _stats;
      }
      
      public function sendPrivateMessage(message:String, recipientId:int, roomId:int = -1) : void
      {
         if(roomId == -1)
         {
            roomId = activeRoomId;
         }
         var header:Object = {"t":"sys"};
         var xmlMsg:* = "<txt rcp=\'" + recipientId + "\'><![CDATA[" + Entities.encodeEntities(message) + "]]></txt>";
         send(header,"prvMsg",roomId,xmlMsg);
      }
      
      public function sendPublicMessage(message:String, roomId:int = -1) : void
      {
         if(roomId == -1)
         {
            roomId = activeRoomId;
         }
         var header:Object = {"t":"sys"};
         var xmlMsg:* = "<txt><![CDATA[" + Entities.encodeEntities(message) + "]]></txt>";
         send(header,"pubMsg",roomId,xmlMsg);
      }
      
      public function clearBuddyList() : void
      {
         buddyList = [];
         send({"t":"sys"},"clearB",-1,"");
         var params:Object = {};
         params.list = buddyList;
         var evt:SFSEvent = new SFSEvent(SFSEvent.onBuddyList,params);
         dispatchEvent(evt);
      }
      
      public function sendString(strMessage:String) : void
      {
         writeToSocket(strMessage);
      }
      
      public function removeBuddy(buddyName:String) : void
      {
         var buddy:Object = null;
         var it:* = null;
         var header:Object = null;
         var xmlMsg:* = null;
         var params:Object = null;
         var evt:SFSEvent = null;
         var found:Boolean = false;
         for(it in buddyList)
         {
            buddy = buddyList[it];
            if(buddy.name == buddyName)
            {
               delete buddyList[it];
               found = true;
               break;
            }
         }
         if(found)
         {
            header = {"t":"sys"};
            xmlMsg = "<n>" + buddyName + "</n>";
            send(header,"remB",-1,xmlMsg);
            params = {};
            params.list = buddyList;
            evt = new SFSEvent(SFSEvent.onBuddyList,params);
            dispatchEvent(evt);
         }
      }
      
      public function getUploadPath() : String
      {
         return "http://" + this.ipAddress + ":" + this.httpPort + "/default/uploads/";
      }
      
      private function handleMessage(msg:String) : void
      {
         var type:String = msg.charAt(0);
         if(type == MSG_XML)
         {
            xmlReceived(msg);
         }
         else if(type == MSG_STR)
         {
            strReceived(msg);
         }
         else if(type == MSG_JSON)
         {
            jsonReceived(msg);
         }
      }
      
      public function sendXtMessage(xtName:String, cmd:String, paramObj:*, type:String = "xml", roomId:int = -1) : void
      {
         var header:Object = null;
         var xtReq:Object = null;
         var xmlmsg:* = null;
         var hdr:String = null;
         var i:Number = NaN;
         var body:Object = null;
         var obj:Object = null;
         var msg:String = null;
         if(roomId == -1)
         {
            roomId = activeRoomId;
         }
         if(type == XTMSG_TYPE_XML)
         {
            header = {"t":"xt"};
            xtReq = {
               "name":xtName,
               "cmd":cmd,
               "param":paramObj
            };
            xmlmsg = "<![CDATA[" + ObjectSerializer.getInstance().serialize(xtReq) + "]]>";
            send(header,"xtReq",roomId,xmlmsg);
         }
         else if(type == XTMSG_TYPE_STR)
         {
            hdr = MSG_STR + "xt" + MSG_STR + xtName + MSG_STR + cmd + MSG_STR + roomId + MSG_STR;
            for(i = 0; i < paramObj.length; i++)
            {
               hdr = hdr + (paramObj[i].toString() + MSG_STR);
            }
            sendString(hdr);
         }
         else if(type == XTMSG_TYPE_JSON)
         {
            body = {};
            body.x = xtName;
            body.c = cmd;
            body.r = roomId;
            body.p = paramObj;
            obj = {};
            obj.t = "xt";
            obj.b = body;
            msg = com.adobe.serialization.json.JSON.encode(obj);
            sendJson(msg);
         }
      }
      
      public function set rawProtocolSeparator(value:String) : void
      {
         if(value != "<" && value != "{")
         {
            MSG_STR = value;
         }
      }
      
      private function writeToSocket(msg:String) : void
      {
         socketByteBuff.writeMultiByte(msg,"utf-8");
         socketByteBuff.writeByte(0);
         if(socketConnection && socketConnection.connected)
         {
            _stats.addWrite(socketByteBuff.position);
            socketConnection.writeBytes(socketByteBuff);
            socketConnection.flush();
         }
         socketByteBuff = ByteArrayUtils.clear(socketByteBuff);
      }
      
      public function sendObjectToGroup(obj:Object, userList:Array, roomId:int = -1) : void
      {
         var i:* = null;
         var header:Object = null;
         var xmlMsg:* = null;
         if(roomId == -1)
         {
            roomId = activeRoomId;
         }
         var strList:String = "";
         for(i in userList)
         {
            if(!isNaN(userList[i]))
            {
               strList = strList + (userList[i] + ",");
            }
         }
         strList = strList.substr(0,strList.length - 1);
         obj._$$_ = strList;
         header = {"t":"sys"};
         xmlMsg = "<![CDATA[" + ObjectSerializer.getInstance().serialize(obj) + "]]>";
         send(header,"asObjG",roomId,xmlMsg);
      }
      
      public function get rawProtocolSeparator() : String
      {
         return MSG_STR;
      }
      
      public function getRandomKey() : void
      {
         send({"t":"sys"},"rndK",-1,"");
      }
      
      public function sendObject(obj:Object, roomId:int = -1) : void
      {
         if(roomId == -1)
         {
            roomId = activeRoomId;
         }
         var xmlData:* = "<![CDATA[" + ObjectSerializer.getInstance().serialize(obj) + "]]>";
         var header:Object = {"t":"sys"};
         send(header,"asObj",roomId,xmlData);
      }
      
      private function jsonReceived(msg:String) : void
      {
         var jso:Object = com.adobe.serialization.json.JSON.decode(msg);
         var handlerId:String = jso["t"];
         var handler:IMessageHandler = messageHandlers[handlerId];
         if(handler != null)
         {
            handler.handleMessage(jso["b"],XTMSG_TYPE_JSON);
         }
      }
      
      public function sendModeratorMessage(message:String, type:String, id:int = -1) : void
      {
         var header:Object = {"t":"sys"};
         var xmlMsg:* = "<txt t=\'" + type + "\' id=\'" + id + "\'><![CDATA[" + Entities.encodeEntities(message) + "]]></txt>";
         send(header,"modMsg",activeRoomId,xmlMsg);
      }
      
      public function connect(ipAdr:String, port:int = 9339) : void
      {
         if(!connected)
         {
            initialize();
            socketConnection.connect(ipAdr,port);
            this.ipAddress = ipAdr;
         }
         else
         {
            debugMessage("*** ALREADY CONNECTED ***");
         }
      }
      
      public function getBenchStartTime() : int
      {
         return this.benchStartTime;
      }
      
      public function createRoom(roomObj:Object, roomId:int = -1) : void
      {
         var i:* = null;
         if(roomId == -1)
         {
            roomId = activeRoomId;
         }
         var header:Object = {"t":"sys"};
         var isGame:String = !!roomObj.isGame?"1":"0";
         var exitCurrentRoom:String = "1";
         var maxUsers:String = roomObj.maxUsers == null?"0":String(roomObj.maxUsers);
         var maxSpectators:String = roomObj.maxSpectators == null?"0":String(roomObj.maxSpectators);
         if(roomObj.isGame && roomObj.exitCurrent != null)
         {
            exitCurrentRoom = !!roomObj.exitCurrent?"1":"0";
         }
         var xmlMsg:* = "<room tmp=\'1\' gam=\'" + isGame + "\' spec=\'" + maxSpectators + "\' exit=\'" + exitCurrentRoom + "\'>";
         xmlMsg = xmlMsg + ("<name><![CDATA[" + (roomObj.name == null?"":roomObj.name) + "]]></name>");
         xmlMsg = xmlMsg + ("<pwd><![CDATA[" + (roomObj.password == null?"":roomObj.password) + "]]></pwd>");
         xmlMsg = xmlMsg + ("<max>" + maxUsers + "</max>");
         if(roomObj.uCount != null)
         {
            xmlMsg = xmlMsg + ("<uCnt>" + (!!roomObj.uCount?"1":"0") + "</uCnt>");
         }
         if(roomObj.extension != null)
         {
            xmlMsg = xmlMsg + ("<xt n=\'" + roomObj.extension.name);
            xmlMsg = xmlMsg + ("\' s=\'" + roomObj.extension.script + "\' />");
         }
         if(roomObj.vars == null)
         {
            xmlMsg = xmlMsg + "<vars></vars>";
         }
         else
         {
            xmlMsg = xmlMsg + "<vars>";
            for(i in roomObj.vars)
            {
               xmlMsg = xmlMsg + getXmlRoomVariable(roomObj.vars[i]);
            }
            xmlMsg = xmlMsg + "</vars>";
         }
         xmlMsg = xmlMsg + "</room>";
         send(header,"createRoom",roomId,xmlMsg);
      }
      
      private function handleSocketConnection(e:Event) : void
      {
         var header:Object = {"t":"sys"};
         var xmlMsg:* = "<ver v=\'" + this.majVersion.toString() + this.minVersion.toString() + this.subVersion.toString() + "\' />";
         send(header,"verChk",0,xmlMsg);
      }
      
      public function get isConnected() : Boolean
      {
         return this.connected;
      }
   }
}
