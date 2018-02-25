package com.gaiaworld.gobjects.controller.events
{
   import flash.events.Event;
   
   public class ObjectEvent extends Event
   {
      
      public static const UPDATE_OBJECT_TO_SERVER:String = "updateObject";
      
      public static const UPDATED_FROM_SERVER:String = "updateFromServer";
      
      public static const ADD_STATIONARY_OBJECT:String = "addStationaryObject";
      
      public static const CLEAR_STATIONARY_OBJECTS:String = "clearStationaryObjects";
      
      public static const REMOVE_STATIONARY_OBJECT:String = "removeStationaryObject";
       
      
      public var mobID:String;
      
      public var paramString:String;
      
      public var objectName:String;
      
      public function ObjectEvent(param1:String, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.mobID = param4;
         this.paramString = param3;
         this.objectName = param2;
      }
      
      override public function clone() : Event
      {
         return new ObjectEvent(type,this.objectName,this.paramString,this.mobID,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("ObjectEvent","type","objectName","paramString","mobID","bubbles","cancelable","eventPhase");
      }
   }
}
