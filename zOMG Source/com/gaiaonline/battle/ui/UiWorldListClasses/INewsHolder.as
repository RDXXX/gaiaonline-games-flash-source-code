package com.gaiaonline.battle.ui.UiWorldListClasses
{
   import com.gaiaonline.battle.news.INewsConnector;
   
   public interface INewsHolder
   {
       
      
      function showNews(param1:INewsConnector, param2:String, param3:String) : void;
   }
}
