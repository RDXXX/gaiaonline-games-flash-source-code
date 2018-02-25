package com.gaiaworld.global
{
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class TheStage extends EventDispatcher
   {
      
      private static var _STAGE:Stage;
      
      public static const STAGE_SET:String = "stageSet";
      
      private static var instance:TheStage;
       
      
      public function TheStage()
      {
         super();
      }
      
      public static function getInstance() : TheStage
      {
         if(instance == null)
         {
            instance = new TheStage();
         }
         return instance;
      }
      
      public function get STAGE() : Stage
      {
         return _STAGE;
      }
      
      public function set STAGE(param1:Stage) : void
      {
         _STAGE = param1;
         this.dispatchEvent(new Event(TheStage.STAGE_SET,true));
      }
   }
}
