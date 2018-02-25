package com.gaiaonline.battle.newactors
{
   import flash.events.Event;
   
   public class BaseActorEvent extends Event
   {
      
      public static const IGNORE_LIST_CHANGED:String = "ignoreListChanged";
      
      public static const ZONE_CHANGED:String = "ZONE_CHANGED";
      
      public static const TOTAL_CHARGE_UPDATED:String = "TotalChargepdated";
      
      public static const RANK_UPDATED:String = "rankUpdated";
      
      public static const TARGET_SET:String = "target_set";
      
      public static const TOTAL_ORBS_UPDATED:String = "TotalOrbsUpdated";
      
      public static const TARGET_UNSET:String = "target_unset";
      
      public static const GHI_UPDATED:String = "GhiUpdated";
      
      public static const NAME_UPDATED:String = "nameUpdated";
      
      public static const RAGE_UPDATED:String = "rageUpdated";
      
      public static const STAMINA_UPDATED:String = "staminaUpdated";
      
      public static const LFG_UPDATED:String = "LFGUpdated";
      
      public static const KTFO_STATUS_CHANGED:String = "KTFOStatusChanged";
      
      public static const HEALTH_UPDATED:String = "healthUpdated";
      
      public static const ACTOR_CON_LEVEL_UPDATED:String = "ActorConLevelUpdated";
      
      public static const BUFFS_UPDATED:String = "buffsUpdated";
       
      
      private var _actor:BaseActor = null;
      
      public function BaseActorEvent(type:String, actor:BaseActor, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
         _actor = actor;
      }
      
      public function get actor() : BaseActor
      {
         return _actor;
      }
   }
}
