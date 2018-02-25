package com.gaiaonline.battle.ui.events
{
   import flash.events.Event;
   
   public class PDAEvent extends Event
   {
      
      public static const QUEST_DATA:String = "questData";
       
      
      private var _questData:Array = null;
      
      public function PDAEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
      }
      
      public function set questData(q:Array) : void
      {
         _questData = q;
      }
      
      public function get questData() : Array
      {
         return _questData;
      }
   }
}
