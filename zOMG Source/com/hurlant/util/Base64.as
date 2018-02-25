package com.hurlant.util
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const _decodeChars:Array = InitDecodeChar();
      
      private static const _encodeChars:Array = InitEncoreChar();
       
      
      public function Base64()
      {
         super();
      }
      
      public static function InitDecodeChar() : Array
      {
         var decodeChars:Array = new Array();
         decodeChars.push(-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,62,-1,-1,-1,63,52,53,54,55,56,57,58,59,60,61,-1,-1,-1,-1,-1,-1,-1,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,-1,-1,-1,-1,-1,-1,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,-1,-1,-1,-1,-1 - 1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1);
         return decodeChars;
      }
      
      public static function InitEncoreChar() : Array
      {
         var encodeChars:Array = new Array();
         var chars:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
         for(var i:int = 0; i < 64; i++)
         {
            encodeChars.push(chars.charCodeAt(i));
         }
         return encodeChars;
      }
      
      public static function encode(data:String) : String
      {
         var bytes:ByteArray = new ByteArray();
         bytes.writeUTFBytes(data);
         return encodeByteArray(bytes);
      }
      
      public static function decodeToByteArray(str:String) : ByteArray
      {
         var c1:int = 0;
         var c2:int = 0;
         var c3:int = 0;
         var c4:int = 0;
         var i:int = 0;
         var len:int = 0;
         var out:ByteArray = null;
         len = str.length;
         i = 0;
         out = new ByteArray();
         var byteString:ByteArray = new ByteArray();
         byteString.writeUTFBytes(str);
         loop0:
         while(i < len)
         {
            do
            {
               c1 = _decodeChars[byteString[i++]];
            }
            while(i < len && c1 == -1);
            
            if(c1 == -1)
            {
               break;
            }
            do
            {
               c2 = _decodeChars[byteString[i++]];
            }
            while(i < len && c2 == -1);
            
            if(c2 == -1)
            {
               break;
            }
            out.writeByte(c1 << 2 | (c2 & 48) >> 4);
            while(true)
            {
               c3 = byteString[i++];
               if(c3 == 61)
               {
                  break;
               }
               c3 = _decodeChars[c3];
               if(!(i < len && c3 == -1))
               {
                  if(c3 == -1)
                  {
                     break loop0;
                  }
                  out.writeByte((c2 & 15) << 4 | (c3 & 60) >> 2);
                  while(true)
                  {
                     c4 = byteString[i++];
                     if(c4 == 61)
                     {
                        break;
                     }
                     c4 = _decodeChars[c4];
                     if(!(i < len && c4 == -1))
                     {
                        if(c4 == -1)
                        {
                           break loop0;
                        }
                        out.writeByte((c3 & 3) << 6 | c4);
                        continue loop0;
                     }
                  }
                  return out;
               }
            }
            return out;
         }
         out.position = 0;
         return out;
      }
      
      public static function encodeByteArray(data:ByteArray) : String
      {
         var c:* = 0;
         var out:ByteArray = new ByteArray();
         out.length = (2 + data.length - (data.length + 2) % 3) * 4 / 3;
         var i:int = 0;
         var r:int = data.length % 3;
         var len:int = data.length - r;
         while(i < len)
         {
            c = data[i++] << 16 | data[i++] << 8 | data[i++];
            c = _encodeChars[c >>> 18] << 24 | _encodeChars[c >>> 12 & 63] << 16 | _encodeChars[c >>> 6 & 63] << 8 | _encodeChars[c & 63];
            out.writeInt(c);
         }
         if(r == 1)
         {
            c = int(data[i]);
            c = _encodeChars[c >>> 2] << 24 | _encodeChars[(c & 3) << 4] << 16 | 61 << 8 | 61;
            out.writeInt(c);
         }
         else if(r == 2)
         {
            c = data[i++] << 8 | data[i];
            c = _encodeChars[c >>> 10] << 24 | _encodeChars[c >>> 4 & 63] << 16 | _encodeChars[(c & 15) << 2] << 8 | 61;
            out.writeInt(c);
         }
         out.position = 0;
         return out.readUTFBytes(out.length);
      }
      
      public static function decode(data:String) : String
      {
         var bytes:ByteArray = decodeToByteArray(data);
         return bytes.readUTFBytes(bytes.length);
      }
   }
}
