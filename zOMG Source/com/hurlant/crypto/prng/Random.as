package com.hurlant.crypto.prng
{
   import com.hurlant.util.Memory;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.text.Font;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class Random
   {
       
      
      private var ready:Boolean = false;
      
      private var pool:ByteArray;
      
      private var seeded:Boolean = false;
      
      private var psize:int;
      
      private var state:IPRNG;
      
      private var pptr:int;
      
      public function Random(prng:Class = null)
      {
         var t:uint = 0;
         super();
         if(prng == null)
         {
            prng = ARC4;
         }
         state = new prng() as IPRNG;
         psize = state.getPoolSize();
         pool = new ByteArray();
         pptr = 0;
         while(pptr < psize)
         {
            t = 65536 * Math.random();
            pool[pptr++] = t >>> 8;
            pool[pptr++] = t & 255;
         }
         pptr = 0;
         seed();
      }
      
      public function autoSeed() : void
      {
         var f:Font = null;
         var b:ByteArray = new ByteArray();
         b.writeUnsignedInt(System.totalMemory);
         b.writeUTF(Capabilities.serverString);
         b.writeUnsignedInt(getTimer());
         b.writeUnsignedInt(new Date().getTime());
         var a:Array = Font.enumerateFonts(true);
         for each(f in a)
         {
            b.writeUTF(f.fontName);
            b.writeUTF(f.fontStyle);
            b.writeUTF(f.fontType);
         }
         b.position = 0;
         while(b.bytesAvailable >= 4)
         {
            seed(b.readUnsignedInt());
         }
      }
      
      public function seed(x:int = 0) : void
      {
         if(x == 0)
         {
            x = new Date().getTime();
         }
         var _loc2_:* = pptr++;
         pool[_loc2_] = pool[_loc2_] ^ x & 255;
         pool[pptr++] = pool[_loc3_] ^ x >> 8 & 255;
         pool[pptr++] = pool[pptr++] ^ x >> 16 & 255;
         pool[pptr++] = pool[pptr++] ^ x >> 24 & 255;
         pptr = pptr % psize;
         seeded = true;
      }
      
      public function toString() : String
      {
         return "random-" + state.toString();
      }
      
      public function dispose() : void
      {
         for(var i:uint = 0; i < pool.length; i++)
         {
            pool[i] = Math.random() * 256;
         }
         pool.length = 0;
         pool = null;
         state.dispose();
         state = null;
         psize = 0;
         pptr = 0;
         Memory.gc();
      }
      
      public function nextBytes(buffer:ByteArray, length:int) : void
      {
         while(length--)
         {
            buffer.writeByte(nextByte());
         }
      }
      
      public function nextByte() : int
      {
         if(!ready)
         {
            if(!seeded)
            {
               autoSeed();
            }
            state.init(pool);
            pool.length = 0;
            pptr = 0;
            ready = true;
         }
         return state.next();
      }
   }
}
