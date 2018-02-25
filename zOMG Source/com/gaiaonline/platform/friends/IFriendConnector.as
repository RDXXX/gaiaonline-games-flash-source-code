package com.gaiaonline.platform.friends
{
   public interface IFriendConnector
   {
       
      
      function registerForFriendsEvents(param1:IFriendConnectorHandler) : void;
      
      function unregisterForFriendsEvents(param1:IFriendConnectorHandler) : void;
      
      function getFriendsList() : void;
   }
}
