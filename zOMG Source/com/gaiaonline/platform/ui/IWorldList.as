package com.gaiaonline.platform.ui
{
   import com.gaiaonline.battle.ui.UiWorldListClasses.ServerItem;
   import com.gaiaonline.platform.serverSelect.IServerSelectUIHandler;
   
   public interface IWorldList
   {
       
      
      function selectBestServer() : void;
      
      function refreshServers(param1:Array) : void;
      
      function registerForServerSelect(param1:IServerSelectUIHandler) : void;
      
      function selectServerId(param1:String) : void;
      
      function unregisterForServerSelect(param1:IServerSelectUIHandler) : void;
      
      function get selectedItem() : ServerItem;
   }
}
