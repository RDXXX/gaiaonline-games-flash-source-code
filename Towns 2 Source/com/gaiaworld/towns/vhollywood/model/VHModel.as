package com.gaiaworld.towns.vhollywood.model
{
   import flash.events.EventDispatcher;
   
   public class VHModel extends EventDispatcher
   {
      
      private static var instance:VHModel;
       
      
      private var _justArrived:Boolean = false;
      
      public var alreadyStarted:Boolean = false;
      
      public function VHModel()
      {
         super();
      }
      
      public static function getInstance() : VHModel
      {
         if(instance == null)
         {
            instance = new VHModel();
         }
         return instance;
      }
      
      public function get justArrived() : Boolean
      {
         return this._justArrived;
      }
      
      public function set justArrived(param1:Boolean) : void
      {
         this._justArrived = param1;
      }
   }
}
