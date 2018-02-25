package com.hurlant.crypto.symmetric
{
   import com.hurlant.crypto.tls.TLSError;
   import flash.utils.ByteArray;
   
   public class TLSPad implements IPad
   {
       
      
      private var blockSize:uint;
      
      public function TLSPad(blockSize:uint = 0)
      {
         super();
         this.blockSize = blockSize;
      }
      
      public function pad(a:ByteArray) : void
      {
         var c:uint = blockSize - (a.length + 1) % blockSize;
         for(var i:uint = 0; i <= c; i++)
         {
            a[a.length] = c;
         }
      }
      
      public function setBlockSize(bs:uint) : void
      {
         blockSize = bs;
      }
      
      public function unpad(a:ByteArray) : void
      {
         var v:uint = 0;
         var c:uint = a.length % blockSize;
         if(c != 0)
         {
            throw new TLSError("TLSPad::unpad: ByteArray.length isn\'t a multiple of the blockSize",TLSError.bad_record_mac);
         }
         c = a[a.length - 1];
         for(var i:uint = c; i > 0; i--)
         {
            v = a[a.length - 1];
            a.length--;
            if(c != v)
            {
               throw new TLSError("TLSPad:unpad: Invalid padding value. expected [" + c + "], found [" + v + "]",TLSError.bad_record_mac);
            }
         }
         a.length--;
      }
   }
}
