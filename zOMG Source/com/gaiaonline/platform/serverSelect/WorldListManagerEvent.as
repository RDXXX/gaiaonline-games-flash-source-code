package com.gaiaonline.platform.serverSelect
{
   import flash.events.Event;
   
   public class WorldListManagerEvent extends Event
   {
      
      public static const UI_LOADED:String = "UI.LOADED";
      
      public static const SERVER_LIST_ERROR:String = "SERVER.LIST.ERROR";
      
      public static const SERVER_LIST_LOAD_ERROR:String = "SERVER.LIST.LOAD.ERROR";
      
      public static const SERVER_CHOSEN:String = "SERVER.CHOSEN";
       
      
      private var _data:Object = null;
      
      public function WorldListManagerEvent(type:String, data:Object = null, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         _data = data;
         super(type,bubbles,cancelable);
      }
      
      public function get data() : Object
      {
         return _data;
      }
   }
}
