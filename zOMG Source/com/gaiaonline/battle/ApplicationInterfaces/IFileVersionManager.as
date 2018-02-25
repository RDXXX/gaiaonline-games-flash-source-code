package com.gaiaonline.battle.ApplicationInterfaces
{
   public interface IFileVersionManager
   {
       
      
      function setClientVersion(param1:String) : void;
      
      function setServerVersion(param1:String) : void;
      
      function getServerVersion() : String;
      
      function getClientVersion(param1:String) : String;
   }
}
