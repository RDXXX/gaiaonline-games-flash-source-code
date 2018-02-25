package com.gaiaworld.global.util
{
   import com.gaiaworld.global.model.GlobalModel;
   
   public class ThumbUtil
   {
       
      
      public function ThumbUtil()
      {
         super();
      }
      
      public static function getThumb(param1:String) : *
      {
         var _loc2_:GlobalModel = GlobalModel.getInstance();
         return _loc2_.thumbPath + "/" + param1;
      }
   }
}
