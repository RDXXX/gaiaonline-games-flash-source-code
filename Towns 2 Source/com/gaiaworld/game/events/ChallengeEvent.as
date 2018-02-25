package com.gaiaworld.game.events
{
   import com.gaiaworld.game.vo.ChallengedVo;
   import flash.events.Event;
   
   public class ChallengeEvent extends Event
   {
      
      public static const CHALLENGE:String = "challenge";
      
      public static const ACCEPTED:String = "accepted";
       
      
      public var challenge:ChallengedVo;
      
      public function ChallengeEvent(param1:String, param2:ChallengedVo, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.challenge = param2;
      }
      
      override public function clone() : Event
      {
         return new ChallengeEvent(type,this.challenge,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("ChallengeEvent","challenge","type","bubbles","cancelable","eventPhase");
      }
   }
}
