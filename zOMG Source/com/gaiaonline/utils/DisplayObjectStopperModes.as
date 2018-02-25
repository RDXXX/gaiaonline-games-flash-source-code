package com.gaiaonline.utils
{
   public class DisplayObjectStopperModes extends Enumeration
   {
      
      public static var SHOW_ALL_ANIM:DisplayObjectStopperModes = new DisplayObjectStopperModes("SHOW_ALL_ANIM");
      
      public static var SHOW_GC_ANIM:DisplayObjectStopperModes = new DisplayObjectStopperModes("SHOW_GC_ANIM");
      
      public static var SHOW_NO_ANIM:DisplayObjectStopperModes = new DisplayObjectStopperModes("SHOW_NO_ANIM");
      
      public static var SHOW_TOTAL_ANIM:DisplayObjectStopperModes = new DisplayObjectStopperModes("SHOW_TOTAL_ANIM");
       
      
      public function DisplayObjectStopperModes(name:String)
      {
         super(name);
      }
   }
}
