package com.hurlant.crypto.prng
{
   import com.hurlant.crypto.hash.HMAC;
   import com.hurlant.crypto.hash.MD5Hurlant;
   import com.hurlant.crypto.hash.SHA1Hurlant;
   import com.hurlant.util.Memory;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   
   public class TLSPRF
   {
       
      
      private var p1:ByteArray;
      
      private var p2:ByteArray;
      
      private var d1:ByteArray;
      
      private var d2:ByteArray;
      
      private var hmac_sha1:HMAC;
      
      private var s1:ByteArray;
      
      private var s2:ByteArray;
      
      private var hmac_md5:HMAC;
      
      private var a1:ByteArray;
      
      private var seed:ByteArray;
      
      private var a2:ByteArray;
      
      public function TLSPRF(secret:ByteArray, label:String, seed:ByteArray)
      {
         super();
         var l:int = Math.ceil(secret.length / 2);
         var s1:ByteArray = new ByteArray();
         var s2:ByteArray = new ByteArray();
         s1.writeBytes(secret,0,l);
         s2.writeBytes(secret,secret.length - l,l);
         var s:ByteArray = new ByteArray();
         s.writeUTFBytes(label);
         s.writeBytes(seed);
         this.seed = s;
         this.s1 = s1;
         this.s2 = s2;
         hmac_md5 = new HMAC(new MD5Hurlant());
         hmac_sha1 = new HMAC(new SHA1Hurlant());
         this.a1 = hmac_md5.compute(s1,this.seed);
         this.a2 = hmac_sha1.compute(s2,this.seed);
         p1 = new ByteArray();
         p2 = new ByteArray();
         d1 = new ByteArray();
         d2 = new ByteArray();
         d1.position = MD5Hurlant.HASH_SIZE;
         d1.writeBytes(this.seed);
         d2.position = SHA1Hurlant.HASH_SIZE;
         d2.writeBytes(this.seed);
      }
      
      private function more_md5() : void
      {
         d1.position = 0;
         d1.writeBytes(a1);
         var p:int = p1.position;
         var more:ByteArray = hmac_md5.compute(s1,d1);
         a1 = hmac_md5.compute(s1,a1);
         p1.writeBytes(more);
         p1.position = p;
      }
      
      public function nextByte() : int
      {
         if(p1.bytesAvailable == 0)
         {
            more_md5();
         }
         if(p2.bytesAvailable == 0)
         {
            more_sha1();
         }
         return p1.readUnsignedByte() ^ p2.readUnsignedByte();
      }
      
      private function dba(ba:ByteArray) : ByteArray
      {
         for(var i:uint = 0; i < ba.length; i++)
         {
            ba[i] = 0;
         }
         ba.length = 0;
         return null;
      }
      
      public function toString() : String
      {
         return "tls-prf";
      }
      
      public function dispose() : void
      {
         seed = dba(seed);
         s1 = dba(s1);
         s2 = dba(s2);
         a1 = dba(a1);
         a2 = dba(a2);
         p1 = dba(p1);
         p2 = dba(p2);
         d1 = dba(d1);
         d2 = dba(d2);
         hmac_md5.dispose();
         hmac_md5 = null;
         hmac_sha1.dispose();
         hmac_sha1 = null;
         Memory.gc();
      }
      
      private function more_sha1() : void
      {
         d2.position = 0;
         d2.writeBytes(a2);
         var p:int = p2.position;
         var more:ByteArray = hmac_sha1.compute(s2,d2);
         a2 = hmac_sha1.compute(s2,a2);
         p2.writeBytes(more);
         p2.position = p;
      }
      
      public function nextBytes(buffer:IDataOutput, length:int) : void
      {
         while(length--)
         {
            buffer.writeByte(nextByte());
         }
      }
   }
}
