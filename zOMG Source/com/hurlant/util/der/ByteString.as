package com.hurlant.util.der
{
   import com.hurlant.util.Hex;
   import flash.utils.ByteArray;
   
   public class ByteString extends ByteArray implements IAsn1Type
   {
       
      
      private var type:uint;
      
      private var len:uint;
      
      public function ByteString(type:uint = 4, length:uint = 0)
      {
         super();
         this.type = type;
         this.len = length;
      }
      
      public function getType() : uint
      {
         return type;
      }
      
      public function toDER() : ByteArray
      {
         return DER.wrapDER(type,this);
      }
      
      public function getLength() : uint
      {
         return len;
      }
      
      override public function toString() : String
      {
         return DER.indent + "ByteString[" + type + "][" + len + "][" + Hex.fromArray(this) + "]";
      }
   }
}
