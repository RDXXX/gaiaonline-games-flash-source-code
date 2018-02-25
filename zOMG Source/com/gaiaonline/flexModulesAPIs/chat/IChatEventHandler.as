package com.gaiaonline.flexModulesAPIs.chat
{
   public interface IChatEventHandler
   {
       
      
      function sendChat(param1:String) : void;
      
      function getTextAutoColor(param1:String) : Number;
      
      function onRegister() : void;
      
      function onEmotePopupChange(param1:Boolean) : void;
      
      function onViewFilterChanged(param1:String, param2:Boolean) : void;
      
      function onTextLinkClicked(param1:String) : void;
      
      function onEmote(param1:String) : void;
      
      function onMinimizedStateChanged(param1:Boolean) : void;
      
      function onSendChannelChanged(param1:String) : void;
   }
}
