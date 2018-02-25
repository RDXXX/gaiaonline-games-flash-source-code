package com.gaiaonline.platform.gateway
{
   public interface IAreaLoadingHandler
   {
       
      
      function onAreaLoadComplete() : void;
      
      function onAreaLoadProgress(param1:Number) : void;
   }
}
