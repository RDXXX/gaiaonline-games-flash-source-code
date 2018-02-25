package com.gaiaonline.gsi
{
   import flash.events.Event;
   
   public class GSIEvent extends Event
   {
      
      public static const ERROR:String = "error";
      
      public static const LOADED:String = "loaded";
      
      public static const SERIALIZED:String = "serialized";
      
      public static const RAW_LOADED:String = "raw_loaded";
       
      
      private var _gsiMethod:int;
      
      private var _gsiData:Object;
      
      public function GSIEvent(param1:String = "loaded", param2:int = 0, param3:Object = null)
      {
         super(param1);
         this._gsiMethod = param2;
         this._gsiData = param3;
      }
      
      public function get gsiMethod() : int
      {
         return this._gsiMethod;
      }
      
      public function get gsiData() : Object
      {
         return this._gsiData;
      }
      
      override public function clone() : Event
      {
         return new GSIEvent(type,this._gsiMethod,this._gsiData);
      }
   }
}
