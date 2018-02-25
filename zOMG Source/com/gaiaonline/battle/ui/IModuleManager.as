package com.gaiaonline.battle.ui
{
   import com.gaiaonline.containers.GameWindowManager;
   import com.gaiaonline.containers.IGameWindowFactory;
   import com.gaiaonline.flexModulesAPIs.gatewayInterfaces.IBattleGateway;
   import flash.display.DisplayObjectContainer;
   
   public interface IModuleManager
   {
       
      
      function init(param1:String, param2:String, param3:IBattleGateway, param4:DisplayObjectContainer, param5:IFlexUiManager, param6:GameWindowManager, param7:IGameWindowFactory, param8:XML = null) : void;
   }
}
