package com.hurlant.crypto.hash
{
   public class SHA256 extends SHABase implements IHash
   {
      
      protected static const k:Array = [1116352408,1899447441,3049323471,3921009573,961987163,1508970993,2453635748,2870763221,3624381080,310598401,607225278,1426881987,1925078388,2162078206,2614888103,3248222580,3835390401,4022224774,264347078,604807628,770255983,1249150122,1555081692,1996064986,2554220882,2821834349,2952996808,3210313671,3336571891,3584528711,113926993,338241895,666307205,773529912,1294757372,1396182291,1695183700,1986661051,2177026350,2456956037,2730485921,2820302411,3259730800,3345764771,3516065817,3600352804,4094571909,275423344,430227734,506948616,659060556,883997877,958139571,1322822218,1537002063,1747873779,1955562222,2024104815,2227730452,2361852424,2428436474,2756734187,3204031479,3329325298];
       
      
      protected var h:Array;
      
      public function SHA256()
      {
         h = [1779033703,3144134277,1013904242,2773480762,1359893119,2600822924,528734635,1541459225];
         super();
      }
      
      override public function toString() : String
      {
         return "sha256";
      }
      
      override public function getHashSize() : uint
      {
         return 32;
      }
      
      protected function rrol(num:uint, cnt:uint) : uint
      {
         return num << 32 - cnt | num >>> cnt;
      }
      
      override protected function core(x:Array, len:uint) : Array
      {
         var olda:uint = 0;
         var oldb:uint = 0;
         var oldc:uint = 0;
         var oldd:uint = 0;
         var olde:uint = 0;
         var oldf:uint = 0;
         var oldg:uint = 0;
         var oldh:uint = 0;
         var j:uint = 0;
         var t2:uint = 0;
         var t1:uint = 0;
         var s0:uint = 0;
         var s1:uint = 0;
         x[len >> 5] = x[len >> 5] | 128 << 24 - len % 32;
         x[(len + 64 >> 9 << 4) + 15] = len;
         var w:Array = [];
         var a:uint = h[0];
         var b:uint = h[1];
         var c:uint = h[2];
         var d:uint = h[3];
         var e:uint = h[4];
         var f:uint = h[5];
         var g:uint = h[6];
         var h:uint = h[7];
         for(var i:uint = 0; i < x.length; i = i + 16)
         {
            olda = a;
            oldb = b;
            oldc = c;
            oldd = d;
            olde = e;
            oldf = f;
            oldg = g;
            oldh = h;
            for(j = 0; j < 64; j++)
            {
               if(j < 16)
               {
                  w[j] = x[i + j] || 0;
               }
               else
               {
                  s0 = rrol(w[j - 15],7) ^ rrol(w[j - 15],18) ^ w[j - 15] >>> 3;
                  s1 = rrol(w[j - 2],17) ^ rrol(w[j - 2],19) ^ w[j - 2] >>> 10;
                  w[j] = w[j - 16] + s0 + w[j - 7] + s1;
               }
               t2 = (rrol(a,2) ^ rrol(a,13) ^ rrol(a,22)) + (a & b ^ a & c ^ b & c);
               t1 = h + (rrol(e,6) ^ rrol(e,11) ^ rrol(e,25)) + (e & f ^ g & ~e) + k[j] + w[j];
               h = g;
               g = f;
               f = e;
               e = d + t1;
               d = c;
               c = b;
               b = a;
               a = t1 + t2;
            }
            a = a + olda;
            b = b + oldb;
            c = c + oldc;
            d = d + oldd;
            e = e + olde;
            f = f + oldf;
            g = g + oldg;
            h = h + oldh;
         }
         return [a,b,c,d,e,f,g,h];
      }
   }
}
