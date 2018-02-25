package com.gaiaonline.serializers
{
   public class JSONSerializer
   {
      
      public static const encodeName:String = "json";
       
      
      public function JSONSerializer()
      {
         super();
      }
      
      public static function serialize(o:*) : String
      {
         return com.adobe.serialization.json.JSON.encode(o);
      }
      
      public static function unserialize(s:String) : *
      {
         return com.adobe.serialization.json.JSON.decode(s);
      }
   }
}
