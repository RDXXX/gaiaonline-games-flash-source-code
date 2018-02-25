package com.gaiaonline.battle
{
   import com.gaiaonline.battle.gateway.BattleEvent;
   import com.gaiaonline.flexModulesAPIs.globalevent.GlobalEvent;
   import com.gaiaonline.utils.statemachine.StateMachineSymbol;
   
   public class GameStateMachineSymbols extends StateMachineSymbol
   {
      
      public static var END_INTRO:GameStateMachineSymbols = new GameStateMachineSymbols(GlobalEvent.END_INTRO);
      
      public static var SERVER_LOGIN:GameStateMachineSymbols = new GameStateMachineSymbols(BattleEvent.ZOMG_LOGIN);
      
      public static var LOGIN_NOT_DEPENDANT_DATA_LOADED:GameStateMachineSymbols = new GameStateMachineSymbols(GlobalEvent.LOGIN_NOT_DEPENDANT_DATA_LOADED);
      
      public static var DEPENDANT_DATA_LOADED:GameStateMachineSymbols = new GameStateMachineSymbols(GlobalEvent.DEPENDANT_DATA_LOADED);
      
      public static var GATEWAY_INITIALIZED:GameStateMachineSymbols = new GameStateMachineSymbols(GlobalEvent.GATEWAY_INITIALIZED);
      
      public static var WORLD_LIST_CREATED:GameStateMachineSymbols = new GameStateMachineSymbols(GlobalEvent.WORLD_LIST_CREATED);
      
      public static var LOGIN_DEPENDANT_DATA_LOADED:GameStateMachineSymbols = new GameStateMachineSymbols(GlobalEvent.LOGIN_DEPENDANT_DATA_LOADED);
      
      public static var ON_LOGGED_IN:GameStateMachineSymbols = new GameStateMachineSymbols(GlobalEvent.ON_LOGGED_IN);
      
      public static var CREATE_BATTLE:GameStateMachineSymbols = new GameStateMachineSymbols(GlobalEvent.CREATE_BATTLE);
      
      public static var ON_PLAYER_INFO:GameStateMachineSymbols = new GameStateMachineSymbols(GlobalEvent.ON_PLAYER_INFO);
      
      public static var VERSION_INITIALIZED:GameStateMachineSymbols = new GameStateMachineSymbols(GlobalEvent.VERSION_INITIALIZED);
      
      public static var LOAD_INTRO:GameStateMachineSymbols = new GameStateMachineSymbols(GlobalEvent.LOAD_INTRO);
      
      public static var LAYERS_INITIALIZED:GameStateMachineSymbols = new GameStateMachineSymbols(GlobalEvent.LAYERS_INITIALIZED);
       
      
      public function GameStateMachineSymbols(name:String)
      {
         super(name);
      }
   }
}
