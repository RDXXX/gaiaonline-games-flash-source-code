package com.gaiaonline.utils.signin
{
   import com.adobe.crypto.MD5;
   
   public class Authentication
   {
       
      
      public function Authentication()
      {
         super();
      }
      
      private static function cleanQuotes(dirtyString:String) : String
      {
         var I:int = dirtyString.indexOf("\'");
         while(I != -1)
         {
            dirtyString = dirtyString.substring(0,I) + "\\" + dirtyString.substring(I);
            I = I + 2;
            I = dirtyString.indexOf("\'",I);
         }
         I = dirtyString.indexOf("\"");
         while(I != -1)
         {
            dirtyString = dirtyString.substring(0,I) + "\\" + dirtyString.substring(I);
            I = I + 2;
            I = dirtyString.indexOf("\"",I);
         }
         return dirtyString;
      }
      
      public static function encrypt(pass:String) : String
      {
         var escapePass:String = cleanQuotes(pass);
         var encode:String = MD5.hash(escapePass);
         var salt:* = encode + "Go-Gaia-XD-72squared";
         encode = MD5.hash(salt);
         return encode;
      }
   }
}
