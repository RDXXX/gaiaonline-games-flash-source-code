package com.gaiaonline.gsi
{
   import flash.events.Event;
   
   public class GSIEvent extends Event
   {
      
      public static const SERIALIZED:String = "serialized";
      
      public static const LOADED:String = "loaded";
      
      public static const ERROR:String = "error";
      
      public static const RAW_LOADED:String = "raw_loaded";
       
      
      private var _gsiData:Object;
      
      private var _gsiMethod:int;
      
      public function GSIEvent(type:String = "loaded", method:int = 0, data:Object = null)
      {
         super(type);
         this._gsiMethod = method;
         this._gsiData = data;
      }
      
      public function get gsiData() : Object
      {
         return _gsiData;
      }
      
      override public function clone() : Event
      {
         return new GSIEvent(type,_gsiMethod,_gsiData);
      }
      
      public function get gsiMethod() : int
      {
         return _gsiMethod;
      }
   }
}
