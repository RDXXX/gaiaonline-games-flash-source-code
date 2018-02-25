package com.gaiaonline.usersettings
{
   public interface ISettings
   {
       
      
      function getSettings() : Object;
      
      function getDefaultNormal() : Object;
      
      function getDefaultFull() : Object;
      
      function setSettings(param1:Object) : void;
   }
}
