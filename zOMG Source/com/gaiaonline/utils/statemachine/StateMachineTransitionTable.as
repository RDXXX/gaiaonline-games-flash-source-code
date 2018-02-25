package com.gaiaonline.utils.statemachine
{
   import flash.utils.Dictionary;
   
   public class StateMachineTransitionTable
   {
       
      
      private var _transitionTable:Dictionary;
      
      public function StateMachineTransitionTable()
      {
         _transitionTable = new Dictionary();
         super();
      }
      
      public function addState(state:StateMachineState) : StateMachineTransitionTableState
      {
         if(null != _transitionTable[state])
         {
            throw new Error("Transition table already has state: " + state);
         }
         var tableState:State = new State#468(state);
         _transitionTable[state] = tableState;
         return tableState;
      }
      
      public function validate() : void
      {
         var tableState:State = null;
         var state:StateMachineState = null;
         for each(tableState in _transitionTable)
         {
            for each(state in tableState._transitions)
            {
               if(null == _transitionTable[state])
               {
                  throw new Error("Transition state must also be a source state: " + state.toString());
               }
            }
         }
      }
      
      public function getState(state:StateMachineState) : StateMachineTransitionTableState
      {
         return _transitionTable[state];
      }
      
      public function getPossibleSymbols(state:StateMachineState) : Array
      {
         var symbol:* = null;
         var symbolArray:Array = new Array();
         var tableState:State = _transitionTable[state];
         for(symbol in tableState._transitions)
         {
            symbolArray.push(symbol);
         }
         return symbolArray;
      }
   }
}

import com.gaiaonline.utils.statemachine.StateMachineState;
import com.gaiaonline.utils.statemachine.StateMachineSymbol;
import com.gaiaonline.utils.statemachine.StateMachineTransitionTableState;
import flash.utils.Dictionary;

class State#468 implements StateMachineTransitionTableState
{
    
   
   public var _state:StateMachineState;
   
   public var _transitions:Dictionary;
   
   function State#468(state:StateMachineState)
   {
      _transitions = new Dictionary();
      super();
      _state = state;
   }
   
   public function addTransition(symbol:StateMachineSymbol, state:StateMachineState) : StateMachineTransitionTableState
   {
      if(null != _transitions[symbol])
      {
         throw new Error("State machine already has symbol: " + symbol);
      }
      _transitions[symbol] = state;
      return this;
   }
   
   public function getTransition(symbol:StateMachineSymbol) : StateMachineState
   {
      return _transitions[symbol];
   }
}
