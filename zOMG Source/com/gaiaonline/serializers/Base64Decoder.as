package com.gaiaonline.serializers
{
   import flash.utils.ByteArray;
   
   public class Base64Decoder
   {
      
      private static const ESCAPE_CHAR_CODE:Number = 61;
      
      private static const inverse:Array = [64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,62,64,64,64,63,52,53,54,55,56,57,58,59,60,61,64,64,64,64,64,64,64,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,64,64,64,64,64,64,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64];
       
      
      private var filled:int = 0;
      
      private var data:ByteArray;
      
      private var count:int = 0;
      
      private var work:Array;
      
      public function Base64Decoder()
      {
         work = [0,0,0,0];
         super();
         data = new ByteArray();
      }
      
      private static function copyByteArray(source:ByteArray, destination:ByteArray, length:uint = 0) : void
      {
         var oldPosition:int = source.position;
         source.position = 0;
         destination.position = 0;
         var i:uint = 0;
         while(source.bytesAvailable > 0 && i < length)
         {
            destination.writeByte(source.readByte());
            i++;
         }
         source.position = oldPosition;
         destination.position = 0;
      }
      
      public function flush() : ByteArray
      {
         return drain();
      }
      
      public function decode(encoded:String) : void
      {
         var c:Number = NaN;
         for(var i:uint = 0; i < encoded.length; i++)
         {
            c = encoded.charCodeAt(i);
            if(c == ESCAPE_CHAR_CODE)
            {
               work[count++] = -1;
               addr75:
               if(count == 4)
               {
                  count = 0;
                  data.writeByte(work[0] << 2 | (work[1] & 255) >> 4);
                  filled++;
                  if(work[2] == -1)
                  {
                     break;
                  }
                  data.writeByte(work[1] << 4 | (work[2] & 255) >> 2);
                  filled++;
                  if(work[3] == -1)
                  {
                     break;
                  }
                  data.writeByte(work[2] << 6 | work[3]);
                  filled++;
               }
            }
            else if(inverse[c] != 64)
            {
               work[count++] = inverse[c];
               §§goto(addr75);
            }
         }
      }
      
      public function reset() : void
      {
         data = new ByteArray();
         count = 0;
         filled = 0;
      }
      
      public function drain() : ByteArray
      {
         var result:ByteArray = new ByteArray();
         copyByteArray(data,result,filled);
         filled = 0;
         return result;
      }
   }
}
