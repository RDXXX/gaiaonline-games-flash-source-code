package com.hurlant.crypto.tls
{
   import flash.utils.ByteArray;
   
   public interface ISecurityParameters
   {
       
      
      function computeCertificateVerify(param1:uint, param2:ByteArray) : ByteArray;
      
      function setPreMasterSecret(param1:ByteArray) : void;
      
      function setCompression(param1:uint) : void;
      
      function setServerRandom(param1:ByteArray) : void;
      
      function setCipher(param1:uint) : void;
      
      function reset() : void;
      
      function setClientRandom(param1:ByteArray) : void;
      
      function getBulkCipher() : uint;
      
      function getMacAlgorithm() : uint;
      
      function get version() : uint;
      
      function get useRSA() : Boolean;
      
      function computeVerifyData(param1:uint, param2:ByteArray) : ByteArray;
      
      function getCipherType() : uint;
      
      function getConnectionStates() : Object;
   }
}
