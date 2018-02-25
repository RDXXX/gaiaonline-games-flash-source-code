package com.gaiaonline.flexModulesAPIs.chat
{
   public interface IChat
   {
       
      
      function setHistoryVisible(param1:Boolean) : void;
      
      function getInputText() : String;
      
      function enableEmotes(param1:Boolean) : void;
      
      function setPrompt(param1:String, param2:String) : void;
      
      function showGuestReg(param1:Boolean) : void;
      
      function showWhisperPrompt(param1:Boolean) : void;
      
      function setChannels(param1:Object, param2:int = -1) : void;
      
      function enableViews(param1:Boolean) : void;
      
      function setToChannel(param1:uint) : void;
      
      function setInputTextColor(param1:Number) : void;
      
      function showInput(param1:Boolean) : void;
      
      function setChannelFilter(param1:String, param2:Boolean) : void;
      
      function setEventHandler(param1:IChatEventHandler) : void;
      
      function enableChannels(param1:Boolean) : void;
      
      function setViewFilters(param1:Object) : void;
      
      function setMaxInputChars(param1:uint) : void;
      
      function setFocus() : void;
      
      function addHtmlText(param1:String, param2:String) : void;
      
      function scrollToBottom() : void;
      
      function setInputText(param1:String) : void;
      
      function setEmotes(param1:Array) : void;
      
      function setViewFiltersVisible(param1:Boolean) : void;
   }
}
