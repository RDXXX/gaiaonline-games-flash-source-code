package com.gaiaonline.battle.ApplicationInterfaces
{
   public interface ILinkManager
   {
       
      
      function getLink(param1:String) : String;
      
      function get spaceName() : String;
      
      function set spaceName(param1:String) : void;
      
      function setLink(param1:String, param2:String) : void;
      
      function set baseURL(param1:String) : void;
      
      function get baseURL() : String;
   }
}
