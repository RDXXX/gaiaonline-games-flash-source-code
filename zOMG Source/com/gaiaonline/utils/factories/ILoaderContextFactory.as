package com.gaiaonline.utils.factories
{
   import flash.system.LoaderContext;
   
   public interface ILoaderContextFactory
   {
       
      
      function set baseUrl(param1:String) : void;
      
      function getLoaderContext() : LoaderContext;
   }
}
