package com.hurlant.crypto.tls
{
   import com.hurlant.crypto.hash.MD5Hurlant;
   import com.hurlant.crypto.hash.SHA1Hurlant;
   import com.hurlant.crypto.prng.TLSPRF;
   import com.hurlant.crypto.rsa.RSAKey;
   import com.hurlant.util.Hex;
   import flash.utils.ByteArray;
   
   public class TLSSecurityParameters implements ISecurityParameters
   {
      
      public static const COMPRESSION_NULL:uint = 0;
      
      public static const PROTOCOL_VERSION:uint = 769;
      
      public static var USER_CERTIFICATE:String;
      
      public static var IGNORE_CN_MISMATCH:Boolean = true;
      
      public static var ENABLE_USER_CLIENT_CERTIFICATE:Boolean = false;
       
      
      private var keySize:uint;
      
      private var trustSelfSigned:Boolean = false;
      
      private var tlsDebug:Boolean = false;
      
      public var keyExchange:uint;
      
      private var cert:ByteArray;
      
      private var trustAllCerts:Boolean = false;
      
      private var ignoreCNMismatch:Boolean = true;
      
      private var keyMaterialLength:uint;
      
      private var hashSize:uint;
      
      private var masterSecret:ByteArray;
      
      private var bulkCipher:uint;
      
      private var IVSize:uint;
      
      private var macAlgorithm:uint;
      
      private var entity:uint;
      
      private var cipherType:uint;
      
      private var key:RSAKey;
      
      private var compression:uint;
      
      private var clientRandom:ByteArray;
      
      private var serverRandom:ByteArray;
      
      public function TLSSecurityParameters(entity:uint, localCert:ByteArray = null, localKey:RSAKey = null)
      {
         super();
         this.entity = entity;
         reset();
         key = localKey;
         cert = localCert;
      }
      
      public function setCipher(cipher:uint) : void
      {
         bulkCipher = CipherSuites.getBulkCipher(cipher);
         cipherType = BulkCiphers.getType(bulkCipher);
         keySize = BulkCiphers.getExpandedKeyBytes(bulkCipher);
         keyMaterialLength = BulkCiphers.getKeyBytes(bulkCipher);
         IVSize = BulkCiphers.getIVSize(bulkCipher);
         keyExchange = CipherSuites.getKeyExchange(cipher);
         macAlgorithm = CipherSuites.getMac(cipher);
         hashSize = MACs.getHashSize(macAlgorithm);
      }
      
      public function getBulkCipher() : uint
      {
         return bulkCipher;
      }
      
      public function get useRSA() : Boolean
      {
         return KeyExchanges.useRSA(keyExchange);
      }
      
      public function setCompression(algo:uint) : void
      {
         compression = algo;
      }
      
      public function setPreMasterSecret(secret:ByteArray) : void
      {
         var seed:ByteArray = new ByteArray();
         seed.writeBytes(clientRandom,0,clientRandom.length);
         seed.writeBytes(serverRandom,0,serverRandom.length);
         var prf:TLSPRF = new TLSPRF(secret,"master secret",seed);
         masterSecret = new ByteArray();
         prf.nextBytes(masterSecret,48);
         if(tlsDebug)
         {
            trace("Master Secret: " + Hex.fromArray(masterSecret,true));
         }
      }
      
      public function reset() : void
      {
         bulkCipher = BulkCiphers.NULL;
         cipherType = BulkCiphers.BLOCK_CIPHER;
         macAlgorithm = MACs.NULL;
         compression = COMPRESSION_NULL;
         masterSecret = null;
      }
      
      public function get version() : uint
      {
         return PROTOCOL_VERSION;
      }
      
      public function computeVerifyData(side:uint, handshakeMessages:ByteArray) : ByteArray
      {
         var seed:ByteArray = new ByteArray();
         var md5:MD5Hurlant = new MD5Hurlant();
         if(tlsDebug)
         {
            trace("Handshake value: " + Hex.fromArray(handshakeMessages,true));
         }
         seed.writeBytes(md5.hash(handshakeMessages),0,md5.getHashSize());
         var sha:SHA1Hurlant = new SHA1Hurlant();
         seed.writeBytes(sha.hash(handshakeMessages),0,sha.getHashSize());
         if(tlsDebug)
         {
            trace("Seed in: " + Hex.fromArray(seed,true));
         }
         var prf:TLSPRF = new TLSPRF(masterSecret,side == TLSEngine.CLIENT?"client finished":"server finished",seed);
         var out:ByteArray = new ByteArray();
         prf.nextBytes(out,12);
         if(tlsDebug)
         {
            trace("Finished out: " + Hex.fromArray(out,true));
         }
         out.position = 0;
         return out;
      }
      
      public function getMacAlgorithm() : uint
      {
         return macAlgorithm;
      }
      
      public function getCipherType() : uint
      {
         return cipherType;
      }
      
      public function setServerRandom(secret:ByteArray) : void
      {
         serverRandom = secret;
      }
      
      public function setClientRandom(secret:ByteArray) : void
      {
         clientRandom = secret;
      }
      
      public function getConnectionStates() : Object
      {
         var seed:ByteArray = null;
         var prf:TLSPRF = null;
         var client_write_MAC:ByteArray = null;
         var server_write_MAC:ByteArray = null;
         var client_write_key:ByteArray = null;
         var server_write_key:ByteArray = null;
         var client_write_IV:ByteArray = null;
         var server_write_IV:ByteArray = null;
         var client_write:TLSConnectionState = null;
         var server_write:TLSConnectionState = null;
         if(masterSecret != null)
         {
            seed = new ByteArray();
            seed.writeBytes(serverRandom,0,serverRandom.length);
            seed.writeBytes(clientRandom,0,clientRandom.length);
            prf = new TLSPRF(masterSecret,"key expansion",seed);
            client_write_MAC = new ByteArray();
            prf.nextBytes(client_write_MAC,hashSize);
            server_write_MAC = new ByteArray();
            prf.nextBytes(server_write_MAC,hashSize);
            client_write_key = new ByteArray();
            prf.nextBytes(client_write_key,keyMaterialLength);
            server_write_key = new ByteArray();
            prf.nextBytes(server_write_key,keyMaterialLength);
            client_write_IV = new ByteArray();
            prf.nextBytes(client_write_IV,IVSize);
            server_write_IV = new ByteArray();
            prf.nextBytes(server_write_IV,IVSize);
            client_write = new TLSConnectionState(bulkCipher,cipherType,macAlgorithm,client_write_MAC,client_write_key,client_write_IV);
            server_write = new TLSConnectionState(bulkCipher,cipherType,macAlgorithm,server_write_MAC,server_write_key,server_write_IV);
            if(entity == TLSEngine.CLIENT)
            {
               return {
                  "read":server_write,
                  "write":client_write
               };
            }
            return {
               "read":client_write,
               "write":server_write
            };
         }
         return {
            "read":new TLSConnectionState(),
            "write":new TLSConnectionState()
         };
      }
      
      public function computeCertificateVerify(side:uint, handshakeMessages:ByteArray) : ByteArray
      {
         var seed:ByteArray = new ByteArray();
         var md5:MD5Hurlant = new MD5Hurlant();
         seed.writeBytes(md5.hash(handshakeMessages),0,md5.getHashSize());
         var sha:SHA1Hurlant = new SHA1Hurlant();
         seed.writeBytes(sha.hash(handshakeMessages),0,sha.getHashSize());
         seed.position = 0;
         var out:ByteArray = new ByteArray();
         key.sign(seed,out,seed.bytesAvailable);
         out.position = 0;
         return out;
      }
   }
}
