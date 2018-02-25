package com.gaiaonline.battle.gateway
{
   import com.gaiaonline.gsi.GSIEvent;
   
   public class BattleGSIEvent extends GSIEvent
   {
      
      public static const SERVER_LIST_RECEIVED:String = "server_list_received";
      
      public static const NEWS_RECEIVED:String = "news_received";
      
      public static const LEVEL_COLORS_RECEIVED:String = "level_colors_received";
      
      public static const TWITTER_FEED_RECEIVED:String = "twitter_feed_received";
      
      public static const FRIENDS_LIST_RECEIVED:String = "friends_list_received";
      
      public static const LINK_LIST_RECEIVED:String = "link_list_received";
       
      
      public function BattleGSIEvent(type:String = "loaded", method:int = 0, data:Object = null)
      {
         super(type,method,data);
      }
   }
}
