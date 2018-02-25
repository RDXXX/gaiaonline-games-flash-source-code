package com.gaiaonline.serializers
{
   public class JSONSerializer
   {
      
      public static const encodeName:String = "json";
       
      
      public function JSONSerializer()
      {
         super();
      }
      
      public static function serialize(param1:*) : String
      {
         return JSON.stringify(param1);
      }
      
      public static function unserialize(param1:String) : *
      {
         return JSON.parse(param1);
      }
   }
}
