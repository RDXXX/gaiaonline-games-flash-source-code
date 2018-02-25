package com.gaiaonline.battle.ApplicationImplementations
{
   import com.gaiaonline.battle.ApplicationInterfaces.IGatewayFactory;
   import com.gaiaonline.battle.gateway.BattleGateway;
   
   public class GatewayFactory implements IGatewayFactory
   {
       
      
      private var _battleGateway:BattleGateway;
      
      public function GatewayFactory(bg:BattleGateway)
      {
         super();
         _battleGateway = bg;
      }
      
      public function get battleGateway() : BattleGateway
      {
         return _battleGateway;
      }
   }
}
