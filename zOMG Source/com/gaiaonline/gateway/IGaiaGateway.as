package com.gaiaonline.gateway
{
   import flash.events.IEventDispatcher;
   
   public interface IGaiaGateway extends IEventDispatcher
   {
       
      
      function get timeout() : uint;
      
      function set timeout(param1:uint) : void;
      
      function call(param1:String, ... rest) : uint;
      
      function getChannelByID(param1:*) : IGaiaChannel;
      
      function createChannel(param1:String, param2:Object = null, param3:String = "") : void;
      
      function get port() : uint;
      
      function get connected() : Boolean;
      
      function connect(param1:String, param2:int) : void;
      
      function callWithCallback(param1:Function, param2:String, ... rest) : uint;
      
      function leaveChannel(param1:*) : void;
      
      function get host() : String;
      
      function login(param1:String, param2:String) : void;
      
      function logout() : void;
      
      function get channels() : Array;
      
      function getPresenceList(param1:*) : void;
      
      function registerIdentityClass(param1:Class) : Boolean;
      
      function close() : void;
      
      function joinChannel(param1:*, param2:String = "") : void;
      
      function leaveAllChannels() : void;
      
      function getAllChannels() : void;
      
      function getChannelByName(param1:String) : IGaiaChannel;
      
      function reconnect() : Boolean;
      
      function chat(param1:GaiaChatMessage) : void;
   }
}
