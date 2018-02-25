package com.gaiaonline.flexModulesAPIs.gatewayInterfaces
{
   import flash.events.IEventDispatcher;
   
   public interface IBattleMessage extends IEventDispatcher
   {
       
      
      function get tag() : Object;
      
      function set cmd(param1:String) : void;
      
      function set lag(param1:int) : void;
      
      function get sentTime() : int;
      
      function setError(param1:int, param2:String) : void;
      
      function get error() : Object;
      
      function set sentTime(param1:int) : void;
      
      function get requestObjUnsafeForModifying() : Object;
      
      function debugTrace() : void;
      
      function set tag(param1:Object) : void;
      
      function get responseObj() : Object;
      
      function get lag() : int;
      
      function get cmd() : String;
      
      function get requestObjSafeForModifying() : Object;
      
      function get commandName() : String;
      
      function setResult(param1:Object) : void;
   }
}
