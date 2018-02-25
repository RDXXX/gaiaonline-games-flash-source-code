package com.gaiaonline.gateway.events
{
   import com.gaiaonline.gateway.GaiaFunction;
   import com.gaiaonline.gateway.IGaiaChannel;
   
   public class GaiaFunctionEvent extends GaiaGatewayEvent
   {
      
      public static const FUNCTION_CALL:String = GaiaGatewayEvent.FUNCTION_CALL;
       
      
      private var _channel:IGaiaChannel;
      
      private var _data:GaiaFunction;
      
      public function GaiaFunctionEvent(type:String, data:GaiaFunction, channel:IGaiaChannel = null)
      {
         super(type);
         this._data = data;
         this._channel = channel;
      }
      
      public function get data() : GaiaFunction
      {
         return this._data;
      }
      
      public function get channel() : IGaiaChannel
      {
         return this._channel;
      }
   }
}
