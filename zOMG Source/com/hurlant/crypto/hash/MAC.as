package com.hurlant.crypto.hash
{
   import flash.utils.ByteArray;
   
   public class MAC implements IHMAC
   {
       
      
      private var innerHash:ByteArray;
      
      private var pad_1:ByteArray;
      
      private var bits:uint;
      
      private var pad_2:ByteArray;
      
      private var hash:IHash;
      
      private var outerKey:ByteArray;
      
      private var outerHash:ByteArray;
      
      private var innerKey:ByteArray;
      
      public function MAC(hash:IHash, bits:uint = 0)
      {
         var pad_size:int = 0;
         var x:int = 0;
         super();
         this.hash = hash;
         this.bits = bits;
         innerHash = new ByteArray();
         outerHash = new ByteArray();
         innerKey = new ByteArray();
         outerKey = new ByteArray();
         if(hash != null)
         {
            pad_size = hash.getPadSize();
            pad_1 = new ByteArray();
            pad_2 = new ByteArray();
            for(x = 0; x < pad_size; x++)
            {
               pad_1.writeByte(54);
               pad_2.writeByte(92);
            }
         }
      }
      
      public function getHashSize() : uint
      {
         if(bits != 0)
         {
            return bits / 8;
         }
         return hash.getHashSize();
      }
      
      public function dispose() : void
      {
         hash = null;
         bits = 0;
      }
      
      public function toString() : String
      {
         return "mac-" + (bits > 0?bits + "-":"") + hash.toString();
      }
      
      public function setPadSize(pad_size:int) : void
      {
      }
      
      public function compute(key:ByteArray, data:ByteArray) : ByteArray
      {
         var pad_size:int = 0;
         var x:int = 0;
         if(pad_1 == null)
         {
            pad_size = hash.getPadSize();
            pad_1 = new ByteArray();
            pad_2 = new ByteArray();
            for(x = 0; x < pad_size; x++)
            {
               pad_1.writeByte(54);
               pad_2.writeByte(92);
            }
         }
         innerKey.length = 0;
         outerKey.length = 0;
         innerKey.writeBytes(key);
         innerKey.writeBytes(pad_1);
         innerKey.writeBytes(data);
         innerHash = hash.hash(innerKey);
         outerKey.writeBytes(key);
         outerKey.writeBytes(pad_2);
         outerKey.writeBytes(innerHash);
         outerHash = hash.hash(outerKey);
         if(bits > 0 && bits < 8 * outerHash.length)
         {
            outerHash.length = bits / 8;
         }
         return outerHash;
      }
   }
}
