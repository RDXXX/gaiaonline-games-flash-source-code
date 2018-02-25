package com.gaiaonline.utils
{
   import flash.events.Event;
   
   public class ApplicationInstanceMonitorEvent extends Event
   {
      
      public static const SEND_ERROR:String = "sendError";
      
      public static const INSTANCE_EXISTS:String = "instanceExists";
      
      public static const INSTANCE_STARTING:String = "instanceStarting";
       
      
      public function ApplicationInstanceMonitorEvent(type:String)
      {
         super(type);
      }
   }
}
