package com.gaiaonline.flexModulesAPIs.gatewayInterfaces
{
   import flash.events.IEventDispatcher;
   
   public interface IBattleGateway extends IEventDispatcher
   {
       
      
      function get logedIn() : Boolean;
      
      function sendMsg(param1:IBattleMessage) : void;
      
      function createBattleMessage(param1:String, param2:*) : IBattleMessage;
   }
}
