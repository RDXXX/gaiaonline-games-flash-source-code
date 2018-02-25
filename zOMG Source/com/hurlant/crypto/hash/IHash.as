package com.hurlant.crypto.hash
{
   import flash.utils.ByteArray;
   
   public interface IHash
   {
       
      
      function getInputSize() : uint;
      
      function getHashSize() : uint;
      
      function toString() : String;
      
      function hash(param1:ByteArray) : ByteArray;
      
      function getPadSize() : int;
   }
}
