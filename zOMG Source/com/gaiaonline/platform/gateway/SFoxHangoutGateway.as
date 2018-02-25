package com.gaiaonline.platform.gateway
{
   import com.gaiaonline.gateway.GaiaChatMessage;
   import com.gaiaonline.gateway.GaiaFunctionResponse;
   import com.gaiaonline.gateway.IGaiaChannel;
   import com.gaiaonline.gateway.IGaiaGateway;
   import com.gaiaonline.gateway.events.GaiaFunctionResponseEvent;
   import com.gaiaonline.gateway.sfox.SfoxGaiaGateway;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import it.gotoandplay.smartfoxserver.SocketStats;
   
   public class SFoxHangoutGateway implements IGaiaGateway
   {
      
      private static const _zone:String = "battle";
      
      private static const pluginId:String = "G_BT_PLUGIN";
       
      
      private var _sfoxGateway:IGaiaGateway;
      
      private var functionResponseDispatcher:EventDispatcher = null;
      
      public function SFoxHangoutGateway()
      {
         super();
         functionResponseDispatcher = new EventDispatcher();
         initSfoxGaiaGateway();
      }
      
      public function get port() : uint
      {
         return _sfoxGateway.port;
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return _sfoxGateway.willTrigger(type);
      }
      
      public function get connected() : Boolean
      {
         return _sfoxGateway.connected;
      }
      
      public function logout() : void
      {
         _sfoxGateway.logout();
      }
      
      public function joinChannel(cid:*, password:String = "") : void
      {
         _sfoxGateway.joinChannel(cid,password);
      }
      
      private function getDispatcher(type:String) : IEventDispatcher
      {
         if(type == GaiaFunctionResponseEvent.FUNCTION_RESPONSE)
         {
            return functionResponseDispatcher;
         }
         return _sfoxGateway;
      }
      
      public function get stats() : SocketStats
      {
         return SfoxGaiaGateway(_sfoxGateway).stats;
      }
      
      private function initSfoxGaiaGateway() : void
      {
         _sfoxGateway = new SfoxGaiaGateway(pluginId,null,_zone,false);
         _sfoxGateway.addEventListener(GaiaFunctionResponseEvent.FUNCTION_RESPONSE,onFunctionResponse,false,0,true);
      }
      
      public function get host() : String
      {
         return _sfoxGateway.host;
      }
      
      public function callWithCallback(callback:Function, functionName:String, ... args) : uint
      {
         return _sfoxGateway.callWithCallback(callback,functionName,args);
      }
      
      public function getChannelByID(cid:*) : IGaiaChannel
      {
         return _sfoxGateway.getChannelByID(cid);
      }
      
      public function getPresenceList(cid:*) : void
      {
         _sfoxGateway.getPresenceList(cid);
      }
      
      private function onFunctionResponse(evt:GaiaFunctionResponseEvent) : void
      {
         var msgIndex:int = 0;
         var gres:GaiaFunctionResponse = evt.data;
         if(gres.result.cid == null && gres.result.cmd == null)
         {
            for(msgIndex = 0; msgIndex < gres.result.length; msgIndex++)
            {
               this.processSFoxServerClientMessage(gres.result[msgIndex]);
            }
         }
         else if(gres.result.cid != null && gres.result.cmd != null)
         {
            this.processSFoxServerClientMessage(gres.result);
         }
         else
         {
            trace(" Error invalid Result object (not array or not cmd or cid)");
         }
      }
      
      public function getChannelByName(name:String) : IGaiaChannel
      {
         return _sfoxGateway.getChannelByName(name);
      }
      
      public function set timeout(val:uint) : void
      {
         _sfoxGateway.timeout = val;
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return getDispatcher(event.type).dispatchEvent(event);
      }
      
      public function leaveChannel(cid:*) : void
      {
         _sfoxGateway.leaveChannel(cid);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false) : void
      {
         getDispatcher(type).addEventListener(type,listener,useCapture,priority,useWeakReference);
      }
      
      private function processSFoxServerClientMessage(obj:Object) : void
      {
         var responseObj:Object = null;
         var i:int = 0;
         if(obj.result == null)
         {
            trace("incorrect Message, missing result",4);
            return;
         }
         if(obj.result.bmt == null)
         {
            for(i = 0; i < obj.result.length; i++)
            {
               if(obj.result[i].hasOwnProperty("bmt"))
               {
                  if(obj.result[i].bmt == "old")
                  {
                     responseObj = this.getOldSchoolObject(obj.result[i].parameters);
                  }
                  else
                  {
                     if(responseObj == null)
                     {
                        responseObj = new Array();
                     }
                     responseObj.push(obj.result[i]);
                  }
               }
               else
               {
                  trace("incorrect Message, missing bmt : cmd = " + obj.cmd,4);
               }
            }
         }
         else if(obj.bmt == "old")
         {
            responseObj = this.getOldSchoolObject(obj.result);
         }
         else
         {
            if(responseObj == null)
            {
               responseObj = new Array();
            }
            responseObj.push(obj.result);
         }
         var responseData:Object = {
            "cid":obj.cid,
            "cmd":obj.cmd,
            "length":obj.length,
            "result":responseObj
         };
         var response:GaiaFunctionResponse = new GaiaFunctionResponse(obj.cid,null,responseData);
         dispatchEvent(new GaiaFunctionResponseEvent(GaiaFunctionResponseEvent.FUNCTION_RESPONSE,response));
      }
      
      public function get channels() : Array
      {
         return _sfoxGateway.channels;
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         getDispatcher(type).removeEventListener(type,listener,useCapture);
      }
      
      public function reconnect() : Boolean
      {
         return _sfoxGateway.reconnect();
      }
      
      public function chat(msg:GaiaChatMessage) : void
      {
         _sfoxGateway.chat(msg);
      }
      
      public function leaveAllChannels() : void
      {
         _sfoxGateway.leaveAllChannels();
      }
      
      public function getAllChannels() : void
      {
         _sfoxGateway.getAllChannels();
      }
      
      public function get timeout() : uint
      {
         return _sfoxGateway.timeout;
      }
      
      private function getOldSchoolObject(sfObj:Object) : Object
      {
         var i:* = null;
         var p:Array = null;
         var obj:Object = new Object();
         obj.bmt = "old";
         for(i in sfObj)
         {
            if(sfObj[i] != null)
            {
               p = sfObj[i].split(":");
               if(p.length > 1)
               {
                  switch(p[0])
                  {
                     case "ci":
                        obj.cid = p[1];
                        continue;
                     case "cmd":
                        obj.cmd = p[1];
                        continue;
                     case "er":
                        obj.er = p[1];
                        continue;
                     default:
                        if(p[0] == "URL" && p[1] == "http")
                        {
                           obj["URL"] = p[1] + ":" + p[2];
                        }
                        else
                        {
                           obj[p[0]] = p[1];
                        }
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
         return obj;
      }
      
      public function call(functionName:String, ... args) : uint
      {
         args.splice(0,0,functionName);
         return _sfoxGateway.call.apply(_sfoxGateway,args);
      }
      
      public function createChannel(name:String, data:Object = null, password:String = "") : void
      {
         _sfoxGateway.createChannel(name,data,password);
      }
      
      public function login(un:String, epw:String) : void
      {
         _sfoxGateway.login(un,epw);
      }
      
      public function connect(host:String, port:int) : void
      {
         _sfoxGateway.connect(host,port);
      }
      
      public function registerIdentityClass(theClass:Class) : Boolean
      {
         return _sfoxGateway.registerIdentityClass(theClass);
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return getDispatcher(type).hasEventListener(type);
      }
      
      public function close() : void
      {
         _sfoxGateway.close();
      }
   }
}
