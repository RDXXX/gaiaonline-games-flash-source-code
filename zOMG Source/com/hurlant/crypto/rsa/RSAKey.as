package com.hurlant.crypto.rsa
{
   import com.hurlant.crypto.prng.Random;
   import com.hurlant.crypto.tls.TLSError;
   import com.hurlant.math.BigInteger;
   import com.hurlant.util.Memory;
   import flash.utils.ByteArray;
   
   public class RSAKey
   {
       
      
      public var dmp1:BigInteger;
      
      protected var canDecrypt:Boolean;
      
      public var d:BigInteger;
      
      public var e:int;
      
      public var dmq1:BigInteger;
      
      public var n:BigInteger;
      
      public var p:BigInteger;
      
      public var q:BigInteger;
      
      protected var canEncrypt:Boolean;
      
      public var coeff:BigInteger;
      
      public function RSAKey(N:BigInteger, E:int, D:BigInteger = null, P:BigInteger = null, Q:BigInteger = null, DP:BigInteger = null, DQ:BigInteger = null, C:BigInteger = null)
      {
         super();
         this.n = N;
         this.e = E;
         this.d = D;
         this.p = P;
         this.q = Q;
         this.dmp1 = DP;
         this.dmq1 = DQ;
         this.coeff = C;
         canEncrypt = n != null && e != 0;
         canDecrypt = canEncrypt && d != null;
      }
      
      protected static function bigRandom(bits:int, rnd:Random) : BigInteger
      {
         if(bits < 2)
         {
            return BigInteger.nbv(1);
         }
         var x:ByteArray = new ByteArray();
         rnd.nextBytes(x,bits >> 3);
         x.position = 0;
         var b:BigInteger = new BigInteger(x,0,true);
         b.primify(bits,1);
         return b;
      }
      
      public static function parsePublicKey(N:String, E:String) : RSAKey
      {
         return new RSAKey(new BigInteger(N,16,true),parseInt(E,16));
      }
      
      public static function generate(B:uint, E:String) : RSAKey
      {
         var p1:BigInteger = null;
         var q1:BigInteger = null;
         var phi:BigInteger = null;
         var t:BigInteger = null;
         var rng:Random = new Random();
         var qs:uint = B >> 1;
         var key:RSAKey = new RSAKey(null,0,null);
         key.e = parseInt(E,16);
         var ee:BigInteger = new BigInteger(E,16,true);
         do
         {
            do
            {
               key.p = bigRandom(B - qs,rng);
            }
            while(!(key.p.subtract(BigInteger.ONE).gcd(ee).compareTo(BigInteger.ONE) == 0 && key.p.isProbablePrime(10)));
            
            do
            {
               key.q = bigRandom(qs,rng);
            }
            while(!(key.q.subtract(BigInteger.ONE).gcd(ee).compareTo(BigInteger.ONE) == 0 && key.q.isProbablePrime(10)));
            
            if(key.p.compareTo(key.q) <= 0)
            {
               t = key.p;
               key.p = key.q;
               key.q = t;
            }
            p1 = key.p.subtract(BigInteger.ONE);
            q1 = key.q.subtract(BigInteger.ONE);
            phi = p1.multiply(q1);
         }
         while(phi.gcd(ee).compareTo(BigInteger.ONE) != 0);
         
         key.n = key.p.multiply(key.q);
         key.d = ee.modInverse(phi);
         key.dmp1 = key.d.mod(p1);
         key.dmq1 = key.d.mod(q1);
         key.coeff = key.q.modInverse(key.p);
         return key;
      }
      
      public static function parsePrivateKey(N:String, E:String, D:String, P:String = null, Q:String = null, DMP1:String = null, DMQ1:String = null, IQMP:String = null) : RSAKey
      {
         if(P == null)
         {
            return new RSAKey(new BigInteger(N,16,true),parseInt(E,16),new BigInteger(D,16,true));
         }
         return new RSAKey(new BigInteger(N,16,true),parseInt(E,16),new BigInteger(D,16,true),new BigInteger(P,16,true),new BigInteger(Q,16,true),new BigInteger(DMP1,16,true),new BigInteger(DMQ1,16,true),new BigInteger(IQMP,16,true));
      }
      
      public function verify(src:ByteArray, dst:ByteArray, length:uint, pad:Function = null) : void
      {
         _decrypt(doPublic,src,dst,length,pad,1);
      }
      
      public function rawunpad(src:BigInteger, n:uint, type:uint = 0) : ByteArray
      {
         return src.toByteArray();
      }
      
      public function dump() : String
      {
         var s:* = "N=" + n.toString(16) + "\n" + "E=" + e.toString(16) + "\n";
         if(canDecrypt)
         {
            s = s + ("D=" + d.toString(16) + "\n");
            if(p != null && q != null)
            {
               s = s + ("P=" + p.toString(16) + "\n");
               s = s + ("Q=" + q.toString(16) + "\n");
               s = s + ("DMP1=" + dmp1.toString(16) + "\n");
               s = s + ("DMQ1=" + dmq1.toString(16) + "\n");
               s = s + ("IQMP=" + coeff.toString(16) + "\n");
            }
         }
         return s;
      }
      
      protected function doPrivate2(x:BigInteger) : BigInteger
      {
         if(p == null && q == null)
         {
            return x.modPow(d,n);
         }
         var xp:BigInteger = x.mod(p).modPow(dmp1,p);
         var xq:BigInteger = x.mod(q).modPow(dmq1,q);
         while(xp.compareTo(xq) < 0)
         {
            xp = xp.add(p);
         }
         var r:BigInteger = xp.subtract(xq).multiply(coeff).mod(p).multiply(q).add(xq);
         return r;
      }
      
      public function decrypt(src:ByteArray, dst:ByteArray, length:uint, pad:Function = null) : void
      {
         _decrypt(doPrivate2,src,dst,length,pad,2);
      }
      
      private function _decrypt(op:Function, src:ByteArray, dst:ByteArray, length:uint, pad:Function, padType:int) : void
      {
         var block:BigInteger = null;
         var chunk:BigInteger = null;
         var b:ByteArray = null;
         if(pad == null)
         {
            pad = pkcs1unpad;
         }
         if(src.position >= src.length)
         {
            src.position = 0;
         }
         var bl:uint = getBlockSize();
         var end:int = src.position + length;
         while(src.position < end)
         {
            block = new BigInteger(src,bl,true);
            chunk = op(block);
            b = pad(chunk,bl,padType);
            if(b == null)
            {
               throw new TLSError("Decrypt error - padding function returned null!",TLSError.decode_error);
            }
            dst.writeBytes(b);
         }
      }
      
      protected function doPublic(x:BigInteger) : BigInteger
      {
         return x.modPowInt(e,n);
      }
      
      public function dispose() : void
      {
         e = 0;
         n.dispose();
         n = null;
         Memory.gc();
      }
      
      private function _encrypt(op:Function, src:ByteArray, dst:ByteArray, length:uint, pad:Function, padType:int) : void
      {
         var block:BigInteger = null;
         var chunk:BigInteger = null;
         if(pad == null)
         {
            pad = pkcs1pad;
         }
         if(src.position >= src.length)
         {
            src.position = 0;
         }
         var bl:uint = getBlockSize();
         var end:int = src.position + length;
         while(src.position < end)
         {
            block = new BigInteger(pad(src,end,bl,padType),bl,true);
            chunk = op(block);
            chunk.toArray(dst);
         }
      }
      
      public function rawpad(src:ByteArray, end:int, n:uint, type:uint = 0) : ByteArray
      {
         return src;
      }
      
      public function encrypt(src:ByteArray, dst:ByteArray, length:uint, pad:Function = null) : void
      {
         _encrypt(doPublic,src,dst,length,pad,2);
      }
      
      private function pkcs1pad(src:ByteArray, end:int, n:uint, type:uint = 2) : ByteArray
      {
         var rng:Random = null;
         var x:int = 0;
         var out:ByteArray = new ByteArray();
         var p:uint = src.position;
         end = Math.min(end,src.length,p + n - 11);
         src.position = end;
         var i:int = end - 1;
         while(i >= p && n > 11)
         {
            out[--n] = src[i--];
         }
         out[--n] = 0;
         if(type == 2)
         {
            rng = new Random();
            x = 0;
            while(n > 2)
            {
               do
               {
                  x = rng.nextByte();
               }
               while(x == 0);
               
               out[--n] = x;
            }
         }
         else
         {
            while(n > 2)
            {
               out[--n] = 255;
            }
         }
         out[--n] = type;
         var _loc12_:* = --n;
         out[_loc12_] = 0;
         return out;
      }
      
      private function pkcs1unpad(src:BigInteger, n:uint, type:uint = 2) : ByteArray
      {
         var b:ByteArray = src.toByteArray();
         var out:ByteArray = new ByteArray();
         b.position = 0;
         var i:int = 0;
         while(i < b.length && b[i] == 0)
         {
            i++;
         }
         if(b.length - i != n - 1 || b[i] != type)
         {
            trace("PKCS#1 unpad: i=" + i + ", expected b[i]==" + type + ", got b[i]=" + b[i].toString(16));
            return null;
         }
         i++;
         while(b[i] != 0)
         {
            if(++i >= b.length)
            {
               trace("PKCS#1 unpad: i=" + i + ", b[i-1]!=0 (=" + b[i - 1].toString(16) + ")");
               return null;
            }
         }
         while(++i < b.length)
         {
            out.writeByte(b[i]);
         }
         out.position = 0;
         return out;
      }
      
      public function getBlockSize() : uint
      {
         return (n.bitLength() + 7) / 8;
      }
      
      public function toString() : String
      {
         return "rsa";
      }
      
      public function sign(src:ByteArray, dst:ByteArray, length:uint, pad:Function = null) : void
      {
         _encrypt(doPrivate2,src,dst,length,pad,1);
      }
      
      protected function doPrivate(x:BigInteger) : BigInteger
      {
         if(p == null || q == null)
         {
            return x.modPow(d,n);
         }
         var xp:BigInteger = x.mod(p).modPow(dmp1,p);
         var xq:BigInteger = x.mod(q).modPow(dmq1,q);
         while(xp.compareTo(xq) < 0)
         {
            xp = xp.add(p);
         }
         return xp.subtract(xq).multiply(coeff).mod(p).multiply(q).add(xq);
      }
   }
}
