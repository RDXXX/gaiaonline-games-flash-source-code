package com.gaiaonline.battle.ui.UiWorldListClasses
{
   public interface IOptionsHolder
   {
       
      
      function registerForOptionsEvents(param1:Function) : void;
      
      function showOptions(param1:Boolean) : void;
      
      function unregisterForOptionsEvents(param1:Function) : void;
   }
}
