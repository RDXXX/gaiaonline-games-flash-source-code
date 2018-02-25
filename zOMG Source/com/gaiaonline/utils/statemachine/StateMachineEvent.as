package com.gaiaonline.utils.statemachine
{
   import flash.events.Event;
   
   public class StateMachineEvent extends Event
   {
      
      public static var FAIL_STATE:String = "failState";
      
      public static var STATE_CHANGED:String = "stateChanged";
       
      
      private var _toState:StateMachineState = null;
      
      private var _fromState:StateMachineState = null;
      
      public function StateMachineEvent(type:String, fromState:StateMachineState, toState:StateMachineState, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
         _fromState = fromState;
         _toState = toState;
      }
      
      public function getFromState() : StateMachineState
      {
         return _fromState;
      }
      
      public function getToState() : StateMachineState
      {
         return _toState;
      }
   }
}
