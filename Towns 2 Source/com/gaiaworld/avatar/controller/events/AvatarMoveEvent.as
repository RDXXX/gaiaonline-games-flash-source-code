package com.gaiaworld.avatar.controller.events
{
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import flash.events.Event;
   
   public class AvatarMoveEvent extends Event
   {
      
      public static const AVATAR_IS_MOVING:String = "avatarMoving";
      
      public static const AVATAR_HAS_STOPPED:String = "avatarHasStopped";
      
      public static const AVATAR_IS_HIT:String = "avatarIsHit";
      
      public static const OTHER_AVATAR_IS_MOVING:String = "otherAvatarMoving";
      
      public static const OTHER_AVATAR_HAS_STOPPED:String = "otherAvatarStopped";
      
      public static const JOINED:String = "joined";
      
      public static const STATUS_CHANGED:String = "statusChanged";
      
      public static const LEFT:String = "left";
       
      
      public var avatar:IAvatar;
      
      public function AvatarMoveEvent(param1:String, param2:IAvatar, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.avatar = param2;
      }
      
      override public function clone() : Event
      {
         return new AvatarMoveEvent(type,this.avatar,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("AvatarMoveEvent","type","avatar","bubbles","cancelable","eventPhase");
      }
   }
}
