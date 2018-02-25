package com.gaiaonline.battle.gateway
{
   import flash.events.Event;
   
   public final class AdminCmdListener extends Event
   {
      
      public static const TYPE:String = "admin_cmd_listener";
       
      
      private var _data:Object;
      
      private var _cmd:String;
      
      public function AdminCmdListener(cmd:String, data:Object, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(TYPE,bubbles,cancelable);
         _cmd = cmd;
         _data = data;
      }
      
      public function get data() : Object
      {
         return _data;
      }
      
      public function get cmd() : String
      {
         return _cmd;
      }
   }
}
