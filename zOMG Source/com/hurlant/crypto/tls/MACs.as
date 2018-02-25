package com.hurlant.crypto.tls
{
   import com.hurlant.crypto.Crypto;
   import com.hurlant.crypto.hash.HMAC;
   import com.hurlant.crypto.hash.MAC;
   
   public class MACs
   {
      
      public static const SHA1:uint = 2;
      
      public static const NULL:uint = 0;
      
      public static const MD5:uint = 1;
       
      
      public function MACs()
      {
         super();
      }
      
      public static function getHashSize(hash:uint) : uint
      {
         return [0,16,20][hash];
      }
      
      public static function getPadSize(hash:uint) : int
      {
         return [0,48,40][hash];
      }
      
      public static function getMAC(hash:uint) : MAC
      {
         return Crypto.getMAC(["","md5","sha1"][hash]);
      }
      
      public static function getHMAC(hash:uint) : HMAC
      {
         if(hash == NULL)
         {
            return null;
         }
         return Crypto.getHMAC(["","md5","sha1"][hash]);
      }
   }
}
