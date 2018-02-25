package com.hurlant.crypto.symmetric
{
   import com.hurlant.crypto.prng.Random;
   import com.hurlant.util.Memory;
   import flash.utils.ByteArray;
   
   public class XTeaKey implements ISymmetricKey
   {
       
      
      private var k:Array;
      
      public const NUM_ROUNDS:uint = 64;
      
      public function XTeaKey(a:ByteArray)
      {
         super();
         a.position = 0;
         k = [a.readUnsignedInt(),a.readUnsignedInt(),a.readUnsignedInt(),a.readUnsignedInt()];
      }
      
      public static function parseKey(K:String) : XTeaKey
      {
         var a:ByteArray = new ByteArray();
         a.writeUnsignedInt(parseInt(K.substr(0,8),16));
         a.writeUnsignedInt(parseInt(K.substr(8,8),16));
         a.writeUnsignedInt(parseInt(K.substr(16,8),16));
         a.writeUnsignedInt(parseInt(K.substr(24,8),16));
         a.position = 0;
         return new XTeaKey(a);
      }
      
      public function encrypt(block:ByteArray, index:uint = 0) : void
      {
         var i:uint = 0;
         block.position = index;
         var v0:uint = block.readUnsignedInt();
         var v1:uint = block.readUnsignedInt();
         var sum:uint = 0;
         var delta:uint = 2654435769;
         for(i = 0; i < NUM_ROUNDS; i++)
         {
            v0 = v0 + ((v1 << 4 ^ v1 >> 5) + v1 ^ sum + k[sum & 3]);
            sum = sum + delta;
            v1 = v1 + ((v0 << 4 ^ v0 >> 5) + v0 ^ sum + k[sum >> 11 & 3]);
         }
         block.position = block.position - 8;
         block.writeUnsignedInt(v0);
         block.writeUnsignedInt(v1);
      }
      
      public function decrypt(block:ByteArray, index:uint = 0) : void
      {
         var i:uint = 0;
         block.position = index;
         var v0:uint = block.readUnsignedInt();
         var v1:uint = block.readUnsignedInt();
         var delta:uint = 2654435769;
         var sum:uint = delta * NUM_ROUNDS;
         for(i = 0; i < NUM_ROUNDS; i++)
         {
            v1 = v1 - ((v0 << 4 ^ v0 >> 5) + v0 ^ sum + k[sum >> 11 & 3]);
            sum = sum - delta;
            v0 = v0 - ((v1 << 4 ^ v1 >> 5) + v1 ^ sum + k[sum & 3]);
         }
         block.position = block.position - 8;
         block.writeUnsignedInt(v0);
         block.writeUnsignedInt(v1);
      }
      
      public function getBlockSize() : uint
      {
         return 8;
      }
      
      public function toString() : String
      {
         return "xtea";
      }
      
      public function dispose() : void
      {
         var r:Random = new Random();
         for(var i:uint = 0; i < k.length; i++)
         {
            k[i] = r.nextByte();
            delete k[i];
         }
         k = null;
         Memory.gc();
      }
   }
}
