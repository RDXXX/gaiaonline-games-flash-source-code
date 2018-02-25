package com.gaiaonline.battle.jabberchat
{
   import flash.events.Event;
   
   public class JabberEvent extends Event
   {
       
      
      public var fromUserName:String;
      
      public var msg:String;
      
      public var channel:String;
      
      public var fromUserId:String;
      
      public var timeStamp:Date;
      
      public var errorMsg:String = null;
      
      public function JabberEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
      }
   }
}
