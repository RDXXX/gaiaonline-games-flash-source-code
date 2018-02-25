package com.gaiaonline.serializers
{
   import com.gaiaonline.utils.ByteArrayUtils;
   import flash.net.ObjectEncoding;
   import flash.utils.ByteArray;
   
   public class AMF3Base64Serializer
   {
      
      private static var base64Encoder:Base64Encoder = new Base64Encoder();
      
      public static const ENCODE_NAME:String = "amf3_base64";
      
      private static var base64Decoder:Base64Decoder = new Base64Decoder();
      
      private static var bytes2Encode:ByteArray = new ByteArray();
      
      private static var ba:ByteArray = new ByteArray();
       
      
      public function AMF3Base64Serializer()
      {
         super();
      }
      
      public static function serialize(obj:Object, compression:Boolean = false) : String
      {
         ba.objectEncoding = ObjectEncoding.AMF3;
         ba.writeObject(obj);
         ba.position = 0;
         ba.readBytes(bytes2Encode);
         if(compression)
         {
            bytes2Encode.compress();
         }
         base64Encoder.encodeBytes(bytes2Encode);
         var b64Encoded:String = base64Encoder.flush();
         bytes2Encode = ByteArrayUtils.clear(bytes2Encode);
         ba = ByteArrayUtils.clear(ba);
         return b64Encoded;
      }
      
      public static function unserialize(raw:String, compression:Boolean = false) : Object
      {
         base64Decoder.decode(raw);
         var ba:ByteArray = base64Decoder.drain();
         base64Decoder.reset();
         if(compression)
         {
            ba.uncompress();
         }
         ba.objectEncoding = ObjectEncoding.AMF3;
         var retObj:Object = ba.readObject();
         ba = ByteArrayUtils.clear(ba);
         return retObj;
      }
   }
}
