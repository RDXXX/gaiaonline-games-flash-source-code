package com.hurlant.crypto.hash
{
   import flash.utils.ByteArray;
   
   public interface IHMAC
   {
       
      
      function toString() : String;
      
      function getHashSize() : uint;
      
      function dispose() : void;
      
      function compute(param1:ByteArray, param2:ByteArray) : ByteArray;
   }
}
