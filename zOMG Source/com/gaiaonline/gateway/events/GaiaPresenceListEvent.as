package com.gaiaonline.gateway.events
{
   import com.gaiaonline.gateway.IGaiaChannel;
   
   public class GaiaPresenceListEvent extends GaiaGatewayEvent
   {
      
      public static const PRESENCE_LIST:String = GaiaGatewayEvent.PRESENCE_LIST;
       
      
      private var _channel:IGaiaChannel;
      
      private var _identities:Array;
      
      public function GaiaPresenceListEvent(type:String, ids:Array, channel:IGaiaChannel)
      {
         super(type);
         this._identities = ids;
         this._channel = channel;
      }
      
      public function get channel() : IGaiaChannel
      {
         return this._channel;
      }
      
      public function get identities() : Array
      {
         return this._identities;
      }
   }
}
