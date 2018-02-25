package com.gaiaworld.sushi.controller.events
{
   import com.gaiaworld.user.vo.UserVo;
   import flash.events.Event;
   
   public class UserMessageEvent extends Event
   {
      
      public static const USER_MESSAGE_REC:String = "userMessageRec";
       
      
      public var message:String;
      
      public var sender:UserVo;
      
      public function UserMessageEvent(param1:String, param2:String, param3:UserVo, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.sender = param3;
         this.message = param2;
      }
      
      override public function clone() : Event
      {
         return new UserMessageEvent(type,this.message,this.sender,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("UserMessageEvent","type","message","sender","bubbles","cancelable","eventPhase");
      }
   }
}
