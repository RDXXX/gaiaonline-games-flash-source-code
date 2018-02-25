package com.hurlant.crypto.symmetric
{
   import com.hurlant.util.Memory;
   import flash.utils.ByteArray;
   
   public class TripleDESKey extends DESKey
   {
       
      
      protected var encKey2:Array;
      
      protected var encKey3:Array;
      
      protected var decKey2:Array;
      
      protected var decKey3:Array;
      
      public function TripleDESKey(key:ByteArray)
      {
         super(key);
         encKey2 = generateWorkingKey(false,key,8);
         decKey2 = generateWorkingKey(true,key,8);
         if(key.length > 16)
         {
            encKey3 = generateWorkingKey(true,key,16);
            decKey3 = generateWorkingKey(false,key,16);
         }
         else
         {
            encKey3 = encKey;
            decKey3 = decKey;
         }
      }
      
      override public function encrypt(block:ByteArray, index:uint = 0) : void
      {
         desFunc(encKey,block,index,block,index);
         desFunc(encKey2,block,index,block,index);
         desFunc(encKey3,block,index,block,index);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         var i:uint = 0;
         if(encKey2 != null)
         {
            for(i = 0; i < encKey2.length; encKey2[i] = 0,i++)
            {
            }
            encKey2 = null;
         }
         if(encKey3 != null)
         {
            for(i = 0; i < encKey3.length; encKey3[i] = 0,i++)
            {
            }
            encKey3 = null;
         }
         if(decKey2 != null)
         {
            for(i = 0; i < decKey2.length; decKey2[i] = 0,i++)
            {
            }
            decKey2 = null;
         }
         if(decKey3 != null)
         {
            for(i = 0; i < decKey3.length; decKey3[i] = 0,i++)
            {
            }
            decKey3 = null;
         }
         Memory.gc();
      }
      
      override public function decrypt(block:ByteArray, index:uint = 0) : void
      {
         desFunc(decKey3,block,index,block,index);
         desFunc(decKey2,block,index,block,index);
         desFunc(decKey,block,index,block,index);
      }
      
      override public function toString() : String
      {
         return "3des";
      }
   }
}
