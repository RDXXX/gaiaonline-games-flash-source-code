package com.hurlant.crypto.tls
{
   import com.hurlant.crypto.hash.MD5Hurlant;
   import com.hurlant.crypto.hash.SHA1Hurlant;
   import com.hurlant.util.Hex;
   import flash.utils.ByteArray;
   
   public class SSLSecurityParameters implements ISecurityParameters
   {
      
      public static const COMPRESSION_NULL:uint = 0;
      
      public static const PROTOCOL_VERSION:uint = 768;
       
      
      private var keySize:uint;
      
      private var pad_1:ByteArray;
      
      private var pad_2:ByteArray;
      
      private var trustSelfSigned:Boolean = false;
      
      public var keyExchange:uint;
      
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
      
      private var compression:uint;
      
      private var serverRandom:ByteArray;
      
      private var keyBlock:ByteArray;
      
      private var clientRandom:ByteArray;
      
      private var MAC_length:uint;
      
      public function SSLSecurityParameters(entity:uint, localCert:ByteArray = null, localKey:ByteArray = null)
      {
         super();
         this.entity = entity;
         reset();
      }
      
      public function computeCertificateVerify(side:uint, handshakeMessages:ByteArray) : ByteArray
      {
         return null;
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
         pad_1 = new ByteArray();
         pad_2 = new ByteArray();
         for(var x:int = 0; x < 48; x++)
         {
            pad_1.writeByte(54);
            pad_2.writeByte(92);
         }
      }
      
      public function setCompression(algo:uint) : void
      {
         compression = algo;
      }
      
      public function get useRSA() : Boolean
      {
         return KeyExchanges.useRSA(keyExchange);
      }
      
      public function getBulkCipher() : uint
      {
         return bulkCipher;
      }
      
      public function setPreMasterSecret(secret:ByteArray) : void
      {
         var shaHash:ByteArray = null;
         var mdHash:ByteArray = null;
         var i:int = 0;
         var j:int = 0;
         var tempHashA:ByteArray = new ByteArray();
         var tempHashB:ByteArray = new ByteArray();
         var sha:SHA1Hurlant = new SHA1Hurlant();
         var md:MD5Hurlant = new MD5Hurlant();
         var k:ByteArray = new ByteArray();
         k.writeBytes(secret);
         k.writeBytes(clientRandom);
         k.writeBytes(serverRandom);
         masterSecret = new ByteArray();
         var pad_char:uint = 65;
         for(i = 0; i < 3; i++)
         {
            tempHashA.position = 0;
            for(j = 0; j < i + 1; j++)
            {
               tempHashA.writeByte(pad_char);
            }
            pad_char++;
            tempHashA.writeBytes(k);
            shaHash = sha.hash(tempHashA);
            tempHashB.position = 0;
            tempHashB.writeBytes(secret);
            tempHashB.writeBytes(shaHash);
            mdHash = md.hash(tempHashB);
            masterSecret.writeBytes(mdHash);
         }
         k.position = 0;
         k.writeBytes(masterSecret);
         k.writeBytes(serverRandom);
         k.writeBytes(clientRandom);
         keyBlock = new ByteArray();
         tempHashA = new ByteArray();
         tempHashB = new ByteArray();
         pad_char = 65;
         for(i = 0; i < 16; i++)
         {
            tempHashA.position = 0;
            for(j = 0; j < i + 1; j++)
            {
               tempHashA.writeByte(pad_char);
            }
            pad_char++;
            tempHashA.writeBytes(k);
            shaHash = sha.hash(tempHashA);
            tempHashB.position = 0;
            tempHashB.writeBytes(masterSecret);
            tempHashB.writeBytes(shaHash,0);
            mdHash = md.hash(tempHashB);
            keyBlock.writeBytes(mdHash);
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
      
      public function computeVerifyData(side:uint, handshakeMessages:ByteArray) : ByteArray
      {
         var innerKey:ByteArray = null;
         var hashSha:ByteArray = null;
         var hashMD:ByteArray = null;
         var sha:SHA1Hurlant = new SHA1Hurlant();
         var md:MD5Hurlant = new MD5Hurlant();
         var k:ByteArray = new ByteArray();
         var j:ByteArray = new ByteArray();
         var outerKey:ByteArray = new ByteArray();
         var sideBytes:ByteArray = new ByteArray();
         if(side == TLSEngine.CLIENT)
         {
            sideBytes.writeUnsignedInt(1129074260);
         }
         else
         {
            sideBytes.writeUnsignedInt(1397904978);
         }
         masterSecret.position = 0;
         k.writeBytes(handshakeMessages);
         k.writeBytes(sideBytes);
         k.writeBytes(masterSecret);
         k.writeBytes(pad_1,0,40);
         innerKey = sha.hash(k);
         j.writeBytes(masterSecret);
         j.writeBytes(pad_2,0,40);
         j.writeBytes(innerKey);
         hashSha = sha.hash(j);
         k = new ByteArray();
         k.writeBytes(handshakeMessages);
         k.writeBytes(sideBytes);
         k.writeBytes(masterSecret);
         k.writeBytes(pad_1);
         innerKey = md.hash(k);
         j = new ByteArray();
         j.writeBytes(masterSecret);
         j.writeBytes(pad_2);
         j.writeBytes(innerKey);
         hashMD = md.hash(j);
         outerKey.writeBytes(hashMD,0,hashMD.length);
         outerKey.writeBytes(hashSha,0,hashSha.length);
         var out:String = Hex.fromArray(outerKey);
         outerKey.position = 0;
         return outerKey;
      }
      
      public function getMacAlgorithm() : uint
      {
         return macAlgorithm;
      }
      
      public function get version() : uint
      {
         return PROTOCOL_VERSION;
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
         var mac_length:int = 0;
         var key_length:int = 0;
         var iv_length:int = 0;
         var client_write_MAC:ByteArray = null;
         var server_write_MAC:ByteArray = null;
         var client_write_key:ByteArray = null;
         var server_write_key:ByteArray = null;
         var client_write_IV:ByteArray = null;
         var server_write_IV:ByteArray = null;
         var client_write:SSLConnectionState = null;
         var server_write:SSLConnectionState = null;
         if(masterSecret != null)
         {
            mac_length = hashSize as Number;
            key_length = keySize as Number;
            iv_length = IVSize as Number;
            client_write_MAC = new ByteArray();
            server_write_MAC = new ByteArray();
            client_write_key = new ByteArray();
            server_write_key = new ByteArray();
            client_write_IV = new ByteArray();
            server_write_IV = new ByteArray();
            keyBlock.position = 0;
            keyBlock.readBytes(client_write_MAC,0,mac_length);
            keyBlock.readBytes(server_write_MAC,0,mac_length);
            keyBlock.readBytes(client_write_key,0,key_length);
            keyBlock.readBytes(server_write_key,0,key_length);
            keyBlock.readBytes(client_write_IV,0,iv_length);
            keyBlock.readBytes(server_write_IV,0,iv_length);
            keyBlock.position = 0;
            client_write = new SSLConnectionState(bulkCipher,cipherType,macAlgorithm,client_write_MAC,client_write_key,client_write_IV);
            server_write = new SSLConnectionState(bulkCipher,cipherType,macAlgorithm,server_write_MAC,server_write_key,server_write_IV);
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
            "read":new SSLConnectionState(),
            "write":new SSLConnectionState()
         };
      }
   }
}
