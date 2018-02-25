package com.gaiaonline.gateway
{
   public interface IGaiaChannel
   {
       
      
      function get id() : Number;
      
      function leave() : void;
      
      function chat(param1:GaiaChatMessage) : void;
      
      function get name() : String;
      
      function get occupancy() : uint;
      
      function getPresenceList() : void;
   }
}
