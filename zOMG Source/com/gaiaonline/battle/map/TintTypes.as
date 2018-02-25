package com.gaiaonline.battle.map
{
   import com.gaiaonline.utils.Enumeration;
   
   public class TintTypes extends Enumeration
   {
      
      public static var ALL:TintTypes = new TintTypes("ALL");
      
      public static var NO_SHADOWS:TintTypes = new TintTypes("NO_SHADOWS");
      
      public static var NONE:TintTypes = new TintTypes("NONE");
       
      
      public function TintTypes(name:String)
      {
         super(name);
      }
   }
}
