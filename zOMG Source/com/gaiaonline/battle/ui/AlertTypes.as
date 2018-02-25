package com.gaiaonline.battle.ui
{
   import com.gaiaonline.utils.Enumeration;
   
   public class AlertTypes extends Enumeration
   {
      
      public static var COUNTER_DONE:AlertTypes = new AlertTypes("COUNTER_DONE");
      
      public static var RING_GRANTED:AlertTypes = new AlertTypes("RING_GRANTED");
      
      public static var ZONE_BROADCAST_START:AlertTypes = new AlertTypes("ZONE_BROADCAST_START");
      
      public static var MISSION_COMPLETED:AlertTypes = new AlertTypes("MISSION_COMPLETED");
      
      public static var COUNTER_START:AlertTypes = new AlertTypes("COUNTER_START");
      
      public static var YOU_ARE_TOO_FAR:AlertTypes = new AlertTypes("YOU_ARE_TOO_FAR");
      
      public static var IRIS_CLOSE:AlertTypes = new AlertTypes("IRIS_CLOSE");
      
      public static var GENERIC_FAIL:AlertTypes = new AlertTypes("GENERIC_FAIL");
      
      public static var UPDATE_PDA_STEP:AlertTypes = new AlertTypes("UPDATE_PDA_STEP");
      
      public static var CENTER_PRINT_START:AlertTypes = new AlertTypes("CENTER_PRINT_START");
      
      public static var RING_EQUIP:AlertTypes = new AlertTypes("RING_EQUIP");
      
      public static var GENERIC_CLOSE:AlertTypes = new AlertTypes("CLOSE_WINDOW");
      
      public static var GENERIC_OPEN:AlertTypes = new AlertTypes("OPEN_WINDOW");
      
      public static var POWER_UP_FOUND:AlertTypes = new AlertTypes("POWER_UP_FOUND");
      
      public static var LOOT_RARE:AlertTypes = new AlertTypes("LOOT_RARE");
      
      public static var GENERIC_SUCCESS:AlertTypes = new AlertTypes("GENERIC_FAIL");
      
      public static var ITEM_SPECIFIC:AlertTypes = new AlertTypes("ITEM_SPECIFIC");
      
      public static var POWER_UP_PURCHASED:AlertTypes = new AlertTypes("POWERR_UP_PURCHASED");
      
      public static var LOOT_COMMON:AlertTypes = new AlertTypes("LOOT_COMMON");
      
      public static var GHI_ABILITY_EARNED:AlertTypes = new AlertTypes("GHI_ABILITY_EARNED");
      
      public static var QUEST_UPDATE:AlertTypes = new AlertTypes("QUEST_UPDATED");
      
      public static var LOOT_RING:AlertTypes = new AlertTypes("LOOT_RING");
      
      public static var ZONE_BROADCAST_STOP:AlertTypes = new AlertTypes("ZONE_BROADCAST_STOP");
      
      public static var RING_UPGRADE:AlertTypes = new AlertTypes("RING_UPGRADE");
      
      public static var YOU_ARE_DAZED_CANT_DO_THAT:AlertTypes = new AlertTypes("YOU_ARE_DAZED");
      
      public static var RECIPE_FOUND:AlertTypes = new AlertTypes("RECIPE_FOUND");
      
      public static var IRIS_OPEN:AlertTypes = new AlertTypes("IRIS_OPEN");
      
      public static var MESSAGE_RECIEVED_OR_SENT:AlertTypes = new AlertTypes("MESSAGE_RECEIVED_OR_SENT");
       
      
      public function AlertTypes(name:String)
      {
         super(name);
      }
   }
}
