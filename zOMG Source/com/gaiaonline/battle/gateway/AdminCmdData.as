package com.gaiaonline.battle.gateway
{
   import flash.events.Event;
   
   public final class AdminCmdData extends Event
   {
      
      public static const TYPE:String = "admin_cmd_data";
       
      
      private var _cmd:String;
      
      public function AdminCmdData(cmd:String, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(TYPE,bubbles,cancelable);
         _cmd = cmd;
      }
      
      public function get cmd() : String
      {
         return _cmd;
      }
   }
}
