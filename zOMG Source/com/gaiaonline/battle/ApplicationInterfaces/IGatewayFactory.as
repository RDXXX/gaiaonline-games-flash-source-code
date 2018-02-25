package com.gaiaonline.battle.ApplicationInterfaces
{
   import com.gaiaonline.battle.gateway.BattleGateway;
   
   public interface IGatewayFactory
   {
       
      
      function get battleGateway() : BattleGateway;
   }
}
