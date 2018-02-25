package com.gaiaonline.gateway.events
{
   import com.gaiaonline.gateway.IGaiaChannel;
   
   public class GaiaChannelEvent extends GaiaGatewayEvent
   {
      
      public static const CHANNEL_CREATE_ERROR:String = GaiaGatewayEvent.CHANNEL_CREATE_ERROR;
      
      public static const CHANNEL_JOIN:String = GaiaGatewayEvent.CHANNEL_JOIN;
      
      public static const CHANNEL_CREATE:String = GaiaGatewayEvent.CHANNEL_CREATE;
      
      public static const CHANNEL_LEAVE:String = GaiaGatewayEvent.CHANNEL_LEAVE;
      
      public static const CHANNEL_JOIN_ERROR:String = GaiaGatewayEvent.CHANNEL_JOIN_ERROR;
       
      
      private var _channel:IGaiaChannel;
      
      private var _error:int;
      
      public function GaiaChannelEvent(type:String = "channelJoin", channel:IGaiaChannel = null, error:int = 0)
      {
         super(type);
         this._channel = channel;
         this._error = error;
      }
      
      public function get channel() : IGaiaChannel
      {
         return this._channel;
      }
      
      public function get error() : int
      {
         return this._error;
      }
   }
}
