package com.gaiaworld.avatar.controller.events
{
   import com.gaiaworld.avatar.interfaces.IAvatar;
   import flash.events.Event;
   
   public class AvatarCollisionEvent extends Event
   {
      
      public static const AVATAR_HIT_SOMETHING:String = "avatarHitSomething";
       
      
      public var av:IAvatar;
      
      public var item;
      
      public function AvatarCollisionEvent(param1:String, param2:*, param3:IAvatar, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.av = param3;
         this.item = param2;
      }
      
      override public function clone() : Event
      {
         return new AvatarCollisionEvent(type,this.item,this.av,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("AvatarCollisionEvent","type","item","av","bubbles","cancelable","eventPhase");
      }
   }
}
