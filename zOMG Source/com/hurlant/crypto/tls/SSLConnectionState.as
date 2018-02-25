package com.hurlant.crypto.tls
{
   import com.hurlant.crypto.hash.MAC;
   import com.hurlant.crypto.symmetric.ICipher;
   import com.hurlant.crypto.symmetric.IVMode;
   import com.hurlant.util.ArrayUtil;
   import flash.utils.ByteArray;
   
   public class SSLConnectionState implements IConnectionState
   {
       
      
      private var cipher:ICipher;
      
      private var mac:MAC;
      
      private var ivmode:IVMode;
      
      private var CIPHER_IV:ByteArray;
      
      private var seq_lo:uint = 0;
      
      private var cipherType:uint;
      
      private var macAlgorithm:uint;
      
      private var seq_hi:uint = 0;
      
      private var CIPHER_key:ByteArray;
      
      private var MAC_write_secret:ByteArray;
      
      private var bulkCipher:uint;
      
      public function SSLConnectionState(bulkCipher:uint = 0, cipherType:uint = 0, macAlgorithm:uint = 0, mac_enc:ByteArray = null, key:ByteArray = null, IV:ByteArray = null)
      {
         super();
         this.bulkCipher = bulkCipher;
         this.cipherType = cipherType;
         this.macAlgorithm = macAlgorithm;
         MAC_write_secret = mac_enc;
         mac = MACs.getMAC(macAlgorithm);
         CIPHER_key = key;
         CIPHER_IV = IV;
         cipher = BulkCiphers.getCipher(bulkCipher,key,768);
         if(cipher is IVMode)
         {
            ivmode = cipher as IVMode;
            ivmode.IV = IV;
         }
      }
      
      public function decrypt(type:uint, length:uint, p:ByteArray) : ByteArray
      {
         var nextIV:ByteArray = null;
         var data:ByteArray = null;
         var len:uint = 0;
         var mac_enc:ByteArray = null;
         var mac_received:ByteArray = null;
         if(cipherType == BulkCiphers.STREAM_CIPHER)
         {
            if(bulkCipher != BulkCiphers.NULL)
            {
               cipher.decrypt(p);
            }
         }
         else
         {
            p.position = 0;
            if(bulkCipher != BulkCiphers.NULL)
            {
               nextIV = new ByteArray();
               nextIV.writeBytes(p,p.length - CIPHER_IV.length,CIPHER_IV.length);
               p.position = 0;
               cipher.decrypt(p);
               CIPHER_IV = nextIV;
               ivmode.IV = nextIV;
            }
         }
         if(macAlgorithm != MACs.NULL)
         {
            data = new ByteArray();
            len = p.length - mac.getHashSize();
            data.writeUnsignedInt(seq_hi);
            data.writeUnsignedInt(seq_lo);
            data.writeByte(type);
            data.writeShort(len);
            if(len != 0)
            {
               data.writeBytes(p,0,len);
            }
            mac_enc = mac.compute(MAC_write_secret,data);
            mac_received = new ByteArray();
            mac_received.writeBytes(p,len,mac.getHashSize());
            if(ArrayUtil.equals(mac_enc,mac_received))
            {
               p.length = len;
               p.position = 0;
            }
            else
            {
               throw new TLSError("Bad Mac Data",TLSError.bad_record_mac);
            }
         }
         seq_lo++;
         if(seq_lo == 0)
         {
            seq_hi++;
         }
         return p;
      }
      
      public function encrypt(type:uint, p:ByteArray) : ByteArray
      {
         var data:ByteArray = null;
         var nextIV:ByteArray = null;
         var mac_enc:ByteArray = null;
         if(macAlgorithm != MACs.NULL)
         {
            data = new ByteArray();
            data.writeUnsignedInt(seq_hi);
            data.writeUnsignedInt(seq_lo);
            data.writeByte(type);
            data.writeShort(p.length);
            if(p.length != 0)
            {
               data.writeBytes(p);
            }
            mac_enc = mac.compute(MAC_write_secret,data);
            p.position = p.length;
            p.writeBytes(mac_enc);
         }
         p.position = 0;
         if(cipherType == BulkCiphers.STREAM_CIPHER)
         {
            if(bulkCipher != BulkCiphers.NULL)
            {
               cipher.encrypt(p);
            }
         }
         else
         {
            cipher.encrypt(p);
            nextIV = new ByteArray();
            nextIV.writeBytes(p,p.length - CIPHER_IV.length,CIPHER_IV.length);
            CIPHER_IV = nextIV;
            ivmode.IV = nextIV;
         }
         seq_lo++;
         if(seq_lo == 0)
         {
            seq_hi++;
         }
         return p;
      }
   }
}
