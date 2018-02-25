package com.gaiaonline.battle.ItemManager
{
   import com.gaiaonline.battle.ItemLoadManager.ItemIcon;
   import flash.events.Event;
   
   public class ItemManagerEvent extends Event
   {
      
      public static const STOP_CHARGE:String = "StopCharge";
      
      public static const SELECTION_CHANGE:String = "SelectionChange";
      
      public static const START_CHARGE:String = "StartCharge";
      
      public static const CANCEL_CHARGE:String = "CancelCharge";
      
      public static const ITEM_MOVE:String = "ITemMove";
       
      
      public var itemIcon:ItemIcon;
      
      public var params:Object;
      
      public function ItemManagerEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
      }
   }
}
