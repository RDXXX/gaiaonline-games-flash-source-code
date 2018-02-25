package com.gaiaonline.gateway.events
{
   import com.gaiaonline.gateway.GaiaFunctionResponse;
   import com.gaiaonline.gateway.IGaiaChannel;
   
   public class GaiaFunctionResponseEvent extends GaiaGatewayEvent
   {
      
      public static const FUNCTION_RESPONSE:String = GaiaGatewayEvent.FUNCTION_RESPONSE;
      
      public static const FUNCTION_ERROR:String = GaiaGatewayEvent.FUNCTION_ERROR;
       
      
      private var _channel:IGaiaChannel;
      
      private var _data:GaiaFunctionResponse;
      
      public function GaiaFunctionResponseEvent(type:String, data:GaiaFunctionResponse, channel:IGaiaChannel = null)
      {
         super(type);
         this._data = data;
         this._channel = channel;
      }
      
      public function get data() : GaiaFunctionResponse
      {
         return this._data;
      }
      
      public function get channel() : IGaiaChannel
      {
         return this._channel;
      }
   }
}
