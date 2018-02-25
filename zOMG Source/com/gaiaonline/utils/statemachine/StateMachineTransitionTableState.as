package com.gaiaonline.utils.statemachine
{
   public interface StateMachineTransitionTableState
   {
       
      
      function getTransition(param1:StateMachineSymbol) : StateMachineState;
      
      function addTransition(param1:StateMachineSymbol, param2:StateMachineState) : StateMachineTransitionTableState;
   }
}
