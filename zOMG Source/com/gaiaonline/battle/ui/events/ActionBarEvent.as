package com.gaiaonline.battle.ui.events
{
   import com.gaiaonline.battle.newrings.ItemIconBase;
   import flash.events.Event;
   
   public class ActionBarEvent extends Event
   {
      
      public static const BTN_PDA_CLICK:String = "BtnPDAClick";
      
      public static const RING_MOUSE_UP:String = "RingMouseUp";
      
      public static const LOADED:String = "ActionBarEventLoaded";
      
      public static const RING_MOUSE_DOWN:String = "RingMouseDown";
      
      public static const BTN_MAP_CLICK:String = "BtnMapClick";
      
      public static const BTN_POSE_CLICK:String = "BtnPoseClick";
      
      public static const MENU_ITEM_CLICK:String = "MenuItemClick";
      
      public static const BTN_QUEST_CLICK:String = "BtnQuestClick";
      
      public static const GHI_MOUSE_UP:String = "GhiMouseUp";
      
      public static const SEND_CHAT:String = "SendChat";
      
      public static const CONSUMABLE_MOUSE_UP:String = "ConsumableMouseUp";
      
      public static const GHI_MOUSE_DOWN:String = "GhiMouseDown";
      
      public static const BTN_CONSUMABLE_CLICK:String = "BtnConsumableClick";
      
      public static const CONSUMABLE_MOUSE_DOWN:String = "ConsumableMouseDown";
      
      public static const BTN_INVENTORY_CLICK:String = "BtnInventoryClick";
       
      
      private var myMenuItemName:String;
      
      private var myTxtChat:String;
      
      private var myItemIcon:ItemIconBase;
      
      public function ActionBarEvent(type:String)
      {
         super(type,false,false);
      }
      
      public function get itemIco() : ItemIconBase
      {
         return this.myItemIcon;
      }
      
      public function set itemIco(v:ItemIconBase) : void
      {
         this.myItemIcon = v;
      }
      
      public function get txtChat() : String
      {
         return this.myTxtChat;
      }
      
      override public function clone() : Event
      {
         var e:ActionBarEvent = new ActionBarEvent(this.type);
         e.txtChat = this.myTxtChat;
         e.myMenuItemName = this.myMenuItemName;
         e.myItemIcon = this.myItemIcon;
         return e;
      }
      
      public function set txtChat(v:String) : void
      {
         this.myTxtChat = v;
      }
      
      public function set menuItemName(text:String) : void
      {
         this.myMenuItemName = text;
      }
      
      public function get menuItemName() : String
      {
         return this.myMenuItemName;
      }
   }
}
