package com.gaiaworld.sushi.controller.events
{
   import com.gaiaworld.user.vo.UserVo;
   import flash.events.Event;
   
   public class ChatEvent extends Event
   {
      
      public static const USER_HAS_JOINED_ROOM:String = "userHasJoinedRoom";
      
      public static const AVATAR_UPDATE:String = "avatarUpdate";
      
      public static const CHAT_MESSAGE_RECEIVED:String = "chatMessageReceived";
      
      public static const OTHER_AVATAR_INIT:String = "avatarInit";
      
      public static const EMOTE_RECEIVED:String = "emoteRec";
      
      public static const USER_HAS_LEFT_ROOM:String = "userHasLeftRoom";
      
      public static const AVATAR_HAS_STOPPED:String = "avatarHasStopped";
      
      public static const SILENT_UPDATE:String = "silentUpdate";
      
      public static const USER_MESSAGE:String = "userMessage";
      
      public static const UPDATE_CAR:String = "updateCar";
      
      public static const UPDATE_SPEED:String = "updateSpeed";
       
      
      public var param:String;
      
      public var userVo:UserVo;
      
      public function ChatEvent(param1:String, param2:UserVo, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.param = param3;
         this.userVo = param2;
      }
      
      override public function clone() : Event
      {
         return new ChatEvent(type,this.userVo,this.param,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("ChatEvent","type","userVo","pararm","bubbles","cancelable","eventPhase");
      }
   }
}
