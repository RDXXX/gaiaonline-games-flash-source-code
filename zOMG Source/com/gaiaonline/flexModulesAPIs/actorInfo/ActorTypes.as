package com.gaiaonline.flexModulesAPIs.actorInfo
{
   import com.gaiaonline.utils.Enumeration;
   
   public class ActorTypes extends Enumeration
   {
      
      public static var NPC:ActorTypes = new ActorTypes("NPC");
      
      public static var CRITTER:ActorTypes = new ActorTypes("CRITTER");
      
      public static var PLAYER:ActorTypes = new ActorTypes("PLAYER");
      
      public static var UNSET:ActorTypes = new ActorTypes("UNSET");
      
      public static var COMPANION:ActorTypes = new ActorTypes("COMPANION");
      
      private static var hash:Object = {
         0:ActorTypes.PLAYER,
         1:ActorTypes.MONSTER,
         2:ActorTypes.NPC,
         3:ActorTypes.SPAWN,
         4:ActorTypes.USABLE,
         5:ActorTypes.CRITTER,
         6:ActorTypes.GOOFBALL,
         7:ActorTypes.COMPANION
      };
      
      public static var USABLE:ActorTypes = new ActorTypes("USABLE");
      
      public static var MONSTER:ActorTypes = new ActorTypes("MONSTER");
      
      public static var SPAWN:ActorTypes = new ActorTypes("SPAWN");
      
      public static var GOOFBALL:ActorTypes = new ActorTypes("GOOFBALL");
       
      
      public function ActorTypes(name:String)
      {
         super(name);
      }
      
      public static function intToType(i:int) : ActorTypes
      {
         return hash[i];
      }
      
      public static function isActor(actorType:ActorTypes) : Boolean
      {
         return actorType == ActorTypes.MONSTER || actorType == ActorTypes.NPC || actorType == ActorTypes.PLAYER || actorType == ActorTypes.COMPANION;
      }
   }
}
