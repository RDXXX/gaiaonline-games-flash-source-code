package com.gaiaonline.platform.map
{
   public interface IMapSoundLoader
   {
       
      
      function unregisterForLoadEvents(param1:IMapSoundLoaderHandler) : void;
      
      function registerForLoadEvents(param1:IMapSoundLoaderHandler) : void;
      
      function loadSoundFile(param1:String) : void;
   }
}
