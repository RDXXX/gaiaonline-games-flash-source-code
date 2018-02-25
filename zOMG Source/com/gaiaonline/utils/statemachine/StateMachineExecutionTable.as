package com.gaiaonline.utils.statemachine
{
   import flash.utils.Dictionary;
   
   public class StateMachineExecutionTable
   {
       
      
      private var _transitionTable:Dictionary;
      
      public function StateMachineExecutionTable()
      {
         _transitionTable = new Dictionary();
         super();
      }
      
      public function addTransitionExecutor(state:StateMachineState, func:Function, funcThis:Object) : void
      {
         _transitionTable[state] = {
            "func":func,
            "funcThis":funcThis
         };
      }
      
      public function executeTransitionCallback(state:StateMachineState) : void
      {
         var object:Object = _transitionTable[state];
         if(!object)
         {
            return;
         }
         var func:Function = object.func;
         var funcThis:Object = object.funcThis;
         if(null == func || null == funcThis)
         {
            return;
         }
         func.apply(funcThis);
      }
   }
}
