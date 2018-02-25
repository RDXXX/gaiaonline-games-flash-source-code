package com.gaiaonline.utils.statemachine
{
   import flash.events.EventDispatcher;
   
   public class StateMachine extends EventDispatcher
   {
       
      
      private var _transitionTable:StateMachineTransitionTable = null;
      
      private var _state:StateMachineState;
      
      public function StateMachine(transitionTable:StateMachineTransitionTable, startState:StateMachineState)
      {
         super();
         transitionTable.validate();
         if(transitionTable.getState(startState) == null)
         {
            throw new Error("Start state for state machine did not exist in transition table: " + startState.toString());
         }
         _state = startState;
         _transitionTable = transitionTable;
      }
      
      public function transition(symbol:StateMachineSymbol) : void
      {
         var fromState:StateMachineState = _state;
         var transitionInfo:StateMachineTransitionTableState = _transitionTable.getState(_state);
         _state = transitionInfo.getTransition(symbol);
         dispatchEvent(new StateMachineEvent(StateMachineEvent.STATE_CHANGED,fromState,_state));
      }
   }
}
