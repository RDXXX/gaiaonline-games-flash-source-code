package com.gaiaonline.battle.ui
{
   import com.gaiaonline.utils.Enumeration;
   
   public class DialogWindowTypes extends Enumeration
   {
      
      public static var NORMAL:DialogWindowTypes = new DialogWindowTypes("NORMAL");
      
      public static var ERROR:DialogWindowTypes = new DialogWindowTypes("ERROR");
      
      public static var LOADING:DialogWindowTypes = new DialogWindowTypes("LOADING");
       
      
      public function DialogWindowTypes(name:String)
      {
         super(name);
      }
   }
}
