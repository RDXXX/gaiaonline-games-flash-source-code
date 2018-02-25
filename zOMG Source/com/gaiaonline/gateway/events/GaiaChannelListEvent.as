package com.gaiaonline.gateway.events
{
   public class GaiaChannelListEvent extends GaiaGatewayEvent
   {
      
      public static const CHANNEL_LIST:String = GaiaGatewayEvent.CHANNEL_LIST;
       
      
      private var _channels:Array;
      
      public function GaiaChannelListEvent(type:String, channels:Array)
      {
         super(type);
         this._channels = channels;
      }
      
      public function get channels() : Array
      {
         return this._channels;
      }
   }
}
