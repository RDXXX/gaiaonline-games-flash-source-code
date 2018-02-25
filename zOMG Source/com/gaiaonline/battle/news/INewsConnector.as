package com.gaiaonline.battle.news
{
   public interface INewsConnector
   {
       
      
      function getNews(param1:uint = 10) : void;
      
      function unregisterForNewsEvents(param1:INewsEventHandler) : void;
      
      function registerForNewsEvents(param1:INewsEventHandler) : void;
   }
}
