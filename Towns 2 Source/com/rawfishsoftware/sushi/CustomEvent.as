package com.rawfishsoftware.sushi
{
   public class CustomEvent extends flash.events.Event
   {
      
      public static const CUSTOM_MESSAGE:String = "customMessage";
       
      
      private var _data:String;
      
      public function CustomEvent(param1:String = "customMessage", param2:String = "")
      {
         super(param1);
         this._data = param2;
      }
      
      public function get data() : String
      {
         return this._data;
      }
   }
}
