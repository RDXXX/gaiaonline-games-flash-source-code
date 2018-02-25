package com.gaiaonline.serializers
{
   import com.gaiaonline.utils.ByteArrayUtils;
   import flash.utils.ByteArray;
   
   public class Base64Encoder
   {
      
      private static const ALPHABET:Array = [65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,48,49,50,51,52,53,54,55,56,57,43,47];
      
      private static const CHARS:Array = [61,10];
       
      
      private var _output:ByteArray;
      
      private var _count:uint = 0;
      
      private var _line:uint = 0;
      
      public var insertNewLines:Boolean = true;
      
      private var _work:Array;
      
      public function Base64Encoder()
      {
         _output = new ByteArray();
         _work = [0,0,0];
         super();
      }
      
      public function flush() : String
      {
         if(_count > 0)
         {
            encodeBlock();
         }
         var result:String = drain();
         _count = 0;
         _line = 0;
         _work[0] = 0;
         _work[1] = 0;
         _work[2] = 0;
         return result;
      }
      
      public function encodeBytes(data:ByteArray, offset:uint = 0, length:uint = 0) : void
      {
         if(length == 0)
         {
            length = data.length;
         }
         var oldPosition:uint = data.position;
         data.position = offset;
         var plainIndex:uint = offset;
         while(plainIndex < length)
         {
            _work[_count] = data[plainIndex];
            _count++;
            if(_count == _work.length || offset + length - plainIndex == 1)
            {
               encodeBlock();
               _count = 0;
               _work[0] = 0;
               _work[1] = 0;
               _work[2] = 0;
            }
            plainIndex++;
         }
         data.position = oldPosition;
      }
      
      public function encode(data:String, offset:uint = 0, length:uint = 0) : void
      {
         if(length == 0)
         {
            length = data.length;
         }
         var plainIndex:uint = offset;
         while(plainIndex < offset + length)
         {
            _work[_count] = data.charCodeAt(plainIndex);
            _count++;
            if(_count == _work.length || offset + length - plainIndex == 1)
            {
               encodeBlock();
               _count = 0;
               _work[0] = 0;
               _work[1] = 0;
               _work[2] = 0;
            }
            plainIndex++;
         }
      }
      
      private function encodeBlock() : void
      {
         _output.writeByte(ALPHABET[(_work[0] & 255) >> 2]);
         _output.writeByte(ALPHABET[(_work[0] & 3) << 4 | (_work[1] & 240) >> 4]);
         if(_count > 1)
         {
            _output.writeByte(ALPHABET[(_work[1] & 15) << 2 | (_work[2] & 192) >> 6]);
         }
         else
         {
            _output.writeByte(CHARS[0]);
         }
         if(_count > 2)
         {
            _output.writeByte(ALPHABET[_work[2] & 63]);
         }
         else
         {
            _output.writeByte(CHARS[0]);
         }
         if(insertNewLines)
         {
            if((_line = _line + 4) == 76)
            {
               _output.writeByte(CHARS[1]);
               _line = 0;
            }
         }
      }
      
      public function drain() : String
      {
         var result:String = _output.toString();
         _output = ByteArrayUtils.clear(_output);
         return result;
      }
   }
}
