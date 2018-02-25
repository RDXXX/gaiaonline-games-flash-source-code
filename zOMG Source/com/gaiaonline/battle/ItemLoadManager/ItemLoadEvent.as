package com.gaiaonline.battle.ItemLoadManager
{
   import flash.events.Event;
   
   public class ItemLoadEvent extends Event
   {
      
      public static const ITEM_LOADED:String = "ItemLoaded";
      
      public static const ITEM_MOVE_ERROR:String = "ItemMoveError";
      
      public static const ITEM_LIST_LOADED:String = "ItemListLoaded";
       
      
      public var params:Object;
      
      public var itemIcons:Array;
      
      public function ItemLoadEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         itemIcons = new Array();
         params = new Object();
         super(type,bubbles,cancelable);
      }
   }
}
