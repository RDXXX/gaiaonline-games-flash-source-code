package com.gaiaonline.battle.ItemLoadManager
{
   import flash.display.DisplayObject;
   import flash.events.IEventDispatcher;
   
   public interface IItemLoader extends IEventDispatcher
   {
       
      
      function get itemDescription() : String;
      
      function getNewItemDisplay() : DisplayObject;
      
      function get loaded() : Boolean;
      
      function get itemName() : String;
   }
}
