package com.gaiaonline.gateway.events
{
   import com.gaiaonline.gateway.GaiaIdentity;
   import com.gaiaonline.gateway.IGaiaChannel;
   
   public class GaiaPresenceEvent extends GaiaGatewayEvent
   {
      
      public static const PRESENCE_IN:String = GaiaGatewayEvent.PRESENCE_IN;
      
      public static const PRESENCE_OUT:String = GaiaGatewayEvent.PRESENCE_OUT;
      
      public static const PRESENCE_NEW:String = GaiaGatewayEvent.PRESENCE_NEW;
      
      public static const PRESENCE_UPDATE:String = GaiaGatewayEvent.PRESENCE_UPDATE;
       
      
      private var _memberid:Number;
      
      private var _channel:IGaiaChannel;
      
      private var _identity:GaiaIdentity;
      
      public function GaiaPresenceEvent(type:String, id:GaiaIdentity, channel:IGaiaChannel, memberid:Number = 0)
      {
         super(type);
         this._identity = id;
         this._channel = channel;
         this._memberid = memberid;
      }
      
      public function get channel() : IGaiaChannel
      {
         return this._channel;
      }
      
      public function get memberid() : Number
      {
         return this._memberid;
      }
      
      public function get identity() : GaiaIdentity
      {
         return this._identity;
      }
   }
}
