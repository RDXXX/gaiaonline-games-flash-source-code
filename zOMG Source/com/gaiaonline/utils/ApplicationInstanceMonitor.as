package com.gaiaonline.utils
{
   import flash.events.EventDispatcher;
   import flash.events.StatusEvent;
   import flash.net.LocalConnection;
   
   public class ApplicationInstanceMonitor extends EventDispatcher
   {
      
      private static const MSG_INSTANCE_STARTING:String = "msg.instanceStarting";
       
      
      private var _localConnectionOutbound:LocalConnection;
      
      private var _localConnectionInbound:LocalConnection;
      
      public function ApplicationInstanceMonitor()
      {
         super();
      }
      
      private function onOutboundStatus(e:StatusEvent) : void
      {
         switch(e.level)
         {
            case "status":
               break;
            case "error":
               dispatchEvent(new ApplicationInstanceMonitorEvent(ApplicationInstanceMonitorEvent.SEND_ERROR));
         }
      }
      
      public function start(channel:String, allowCrossDomain:Boolean = false) : void
      {
         var name:String = null;
         if(!_localConnectionInbound)
         {
            _localConnectionInbound = new LocalConnection();
            _localConnectionInbound.client = this;
            _localConnectionInbound.addEventListener(StatusEvent.STATUS,onInboundStatus,false,0,true);
            name = "";
            if(allowCrossDomain)
            {
               name = "_";
               _localConnectionInbound.allowDomain("*");
            }
            name = name + ("com.gaiaonline." + channel);
            try
            {
               _localConnectionInbound.connect(name);
            }
            catch(aerror:ArgumentError)
            {
               onExistingInstanceFound(name);
            }
            catch(error:Error)
            {
               throw new Error("Exception in ApplicationInstanceMonitor: " + error.message);
            }
         }
      }
      
      public function receiveMessage(str:String) : void
      {
         dispatchEvent(new ApplicationInstanceMonitorEvent(ApplicationInstanceMonitorEvent.INSTANCE_STARTING));
      }
      
      public function stop() : void
      {
         _localConnectionInbound.close();
         _localConnectionInbound = null;
      }
      
      private function onExistingInstanceFound(connectionName:String) : void
      {
         _localConnectionInbound = null;
         if(_localConnectionOutbound)
         {
            _localConnectionOutbound.removeEventListener(StatusEvent.STATUS,onOutboundStatus);
            _localConnectionOutbound = null;
         }
         _localConnectionOutbound = new LocalConnection();
         _localConnectionOutbound.client = this;
         _localConnectionOutbound.addEventListener(StatusEvent.STATUS,onOutboundStatus);
         _localConnectionOutbound.send(connectionName,"receiveMessage",MSG_INSTANCE_STARTING);
         dispatchEvent(new ApplicationInstanceMonitorEvent(ApplicationInstanceMonitorEvent.INSTANCE_EXISTS));
      }
      
      private function onInboundStatus(e:StatusEvent) : void
      {
         switch(e.level)
         {
            case "status":
               break;
            case "error":
               throw new Error("Error in ApplicationInstanceMonitor.onOutboundStatus: " + e.code);
         }
      }
   }
}
