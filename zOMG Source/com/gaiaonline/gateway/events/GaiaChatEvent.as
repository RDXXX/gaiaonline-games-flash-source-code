package com.gaiaonline.gateway.events
{
   import com.gaiaonline.gateway.GaiaChatMessage;
   import com.gaiaonline.gateway.IGaiaChannel;
   
   public class GaiaChatEvent extends GaiaGatewayEvent
   {
      
      public static const CHAT:String = GaiaGatewayEvent.CHAT;
       
      
      private var _channel:IGaiaChannel;
      
      private var _data:GaiaChatMessage;
      
      public function GaiaChatEvent(type:String = "chat", msg:GaiaChatMessage = null, channel:IGaiaChannel = null)
      {
         super(type);
         this._data = msg;
         this._channel = channel;
      }
      
      public function get data() : GaiaChatMessage
      {
         return this._data;
      }
      
      public function get channel() : IGaiaChannel
      {
         return this._channel;
      }
   }
}
