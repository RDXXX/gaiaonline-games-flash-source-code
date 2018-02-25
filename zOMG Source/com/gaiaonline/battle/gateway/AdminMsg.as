package com.gaiaonline.battle.gateway
{
   import flash.events.Event;
   
   public final class AdminMsg extends Event
   {
      
      public static const TYPE:String = "admin_msg";
       
      
      private var _data:Object;
      
      public function AdminMsg(data:Object, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(TYPE,bubbles,cancelable);
         _data = data;
      }
      
      public function get data() : Object
      {
         return _data;
      }
   }
}
