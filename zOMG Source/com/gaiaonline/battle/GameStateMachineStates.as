package com.gaiaonline.battle
{
   import com.gaiaonline.utils.statemachine.StateMachineState;
   
   public class GameStateMachineStates extends StateMachineState
   {
      
      public static var INTRO_LOAD:GameStateMachineStates = new GameStateMachineStates("introLoad");
      
      public static var BATTLE_CREATION:GameStateMachineStates = new GameStateMachineStates("battleCreation");
      
      public static var INIT_VERSION:GameStateMachineStates = new GameStateMachineStates("initVersion");
      
      public static var GATEWAY_INIT:GameStateMachineStates = new GameStateMachineStates("gatewayInit");
      
      public static var PRE_LOGIN:GameStateMachineStates = new GameStateMachineStates("preLogin");
      
      public static var REMOVE_INTRO:GameStateMachineStates = new GameStateMachineStates("removeIntro");
      
      public static var WORLD_LIST_CREATED:GameStateMachineStates = new GameStateMachineStates("worldListCreated");
      
      public static var INIT_LAYERS:GameStateMachineStates = new GameStateMachineStates("initLayers");
      
      public static var PLAY_GAME:GameStateMachineStates = new GameStateMachineStates("playGame");
      
      public static var ON_LOGGED_IN:GameStateMachineStates = new GameStateMachineStates("onLoggedIn");
      
      public static var BATTLE_START_STATE:GameStateMachineStates = new GameStateMachineStates("battleStartState");
      
      public static var LOAD_LOGIN_ASSETS:GameStateMachineStates = new GameStateMachineStates("loadLoginAssets");
      
      public static var END_STATE:GameStateMachineStates = new GameStateMachineStates("endState");
      
      public static var GET_PLAYER_DATA:GameStateMachineStates = new GameStateMachineStates("getPlayerData");
       
      
      public function GameStateMachineStates(name:String)
      {
         super(name);
      }
   }
}
