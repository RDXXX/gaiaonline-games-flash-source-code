package com.gaiaonline.platform.map
{
   import flash.events.ProgressEvent;
   
   public interface IMapSoundLoaderHandler
   {
       
      
      function onSoundIOError() : void;
      
      function onSoundProgress(param1:ProgressEvent) : void;
      
      function onSoundLoadComplete() : void;
   }
}
