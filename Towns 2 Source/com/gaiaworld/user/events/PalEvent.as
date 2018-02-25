package com.gaiaworld.user.events
{
   import com.gaiaworld.user.vo.PalVo;
   import flash.events.Event;
   
   public class PalEvent extends Event
   {
      
      public static const FOLLOW_PAL:String = "followPal";
      
      public static const GET_PAL_INFO:String = "getPalInfo";
      
      public static const TRANSPORT:String = "transport";
      
      public static const INVITE_TO_HOOD:String = "inviteHood";
      
      public static const DENY_INVITE:String = "denyInvite";
      
      public static const ACCEPT_INVITE:String = "acceptInvite";
      
      public static const REMOVE_INVITE:String = "removeInvite";
      
      public static const EVICT:String = "evict";
       
      
      public var palVo:PalVo;
      
      public function PalEvent(param1:String, param2:PalVo, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.palVo = param2;
      }
      
      override public function clone() : Event
      {
         return new PalEvent(type,this.palVo,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PalEvent","palVo","type","bubbles","cancelable","eventPhase");
      }
   }
}
