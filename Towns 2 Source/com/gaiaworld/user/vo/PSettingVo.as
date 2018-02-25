package com.gaiaworld.user.vo
{
   public class PSettingVo
   {
       
      
      public var bookmarks:String;
      
      public var gpsPrefs:Number;
      
      public function PSettingVo(param1:String = "", param2:Number = 0)
      {
         super();
         this.bookmarks = param1;
         this.gpsPrefs = param2;
      }
   }
}
