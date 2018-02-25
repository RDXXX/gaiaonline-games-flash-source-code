package com.gaiaonline.battle.news
{
   public interface ITickerConnector
   {
       
      
      function unregisterForTickerEvents(param1:ITwitterEventHandler) : void;
      
      function registerForTickerEvents(param1:ITwitterEventHandler) : void;
      
      function getTweets() : void;
   }
}
