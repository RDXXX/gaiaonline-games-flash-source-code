package com.gaiaonline.utils.statemachine
{
   import com.gaiaonline.utils.DisplayObjectUtils;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class EventBastedStateMachine
   {
       
      
      private var _eventDispatcher:EventDispatcher = null;
      
      private var _state:StateMachineState = null;
      
      private var _executionTable:StateMachineExecutionTable = null;
      
      private var _transitionTable:StateMachineTransitionTable = null;
      
      private var _stateMachine:StateMachine = null;
      
      public function EventBastedStateMachine(transitionTable:StateMachineTransitionTable, executionTable:StateMachineExecutionTable, startState:StateMachineState, eventDispatcher:EventDispatcher)
      {
         super();
         _stateMachine = new StateMachine(transitionTable,startState);
         _stateMachine.addEventListener(StateMachineEvent.STATE_CHANGED,onStateChanged);
         _state = startState;
         _transitionTable = transitionTable;
         _executionTable = executionTable;
         _eventDispatcher = eventDispatcher;
         initializeState(startState);
      }
      
      private function deinitializeState(state:StateMachineState) : void
      {
         var symbol:StateMachineSymbol = null;
         var eventName:String = null;
         var symbols:Array = _transitionTable.getPossibleSymbols(state);
         for each(symbol in symbols)
         {
            eventName = symbol.toString();
            _eventDispatcher.removeEventListener(eventName,eventListener);
         }
      }
      
      private function initializeState(state:StateMachineState) : void
      {
         var symbol:StateMachineSymbol = null;
         var eventName:String = null;
         var symbols:Array = _transitionTable.getPossibleSymbols(state);
         for each(symbol in symbols)
         {
            eventName = symbol.toString();
            DisplayObjectUtils.addWeakListener(_eventDispatcher,eventName,eventListener);
         }
      }
      
      private function onStateChanged(event:StateMachineEvent) : void
      {
         var fromState:StateMachineState = event.getFromState();
         var toState:StateMachineState = event.getToState();
         deinitializeState(fromState);
         initializeState(toState);
         _state = toState;
         _executionTable.executeTransitionCallback(toState);
      }
      
      private function eventListener(event:Event) : void
      {
         var symbol:StateMachineSymbol = null;
         var symbolString:String = null;
         var eventName:String = event.type;
         var symbols:Array = _transitionTable.getPossibleSymbols(_state);
         for each(symbol in symbols)
         {
            symbolString = symbol.toString();
            if(symbolString == eventName)
            {
               _stateMachine.transition(symbol);
               break;
            }
         }
      }
   }
}
